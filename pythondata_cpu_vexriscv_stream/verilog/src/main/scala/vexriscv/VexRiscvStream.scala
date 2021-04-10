package vexriscv

import vexriscv.plugin._
import vexriscv.ip.{DataCacheConfig, InstructionCacheConfig}
// import vexriscv.{plugin, VexRiscv, VexRiscvConfig, StreamrPlugin, StreamwPlugin}
import spinal.core._
import spinal.lib._
import vexriscv.plugin.CsrAccess.WRITE_ONLY

object VexRiscvStream extends App {
  def cpuOut() : VexRiscv = {
    val config = VexRiscvConfig(
      plugins = List(
        new IBusCachedPlugin(
            resetVector = 0x00000000l,
            relaxedPcCalculation = false,
            prediction = STATIC,
            compressedGen = false,
            config = InstructionCacheConfig(
              cacheSize = 4096,
              bytePerLine = 32,
              wayCount = 1,
              addressWidth = 32,
              cpuDataWidth = 32,
              memDataWidth = 32,
              catchIllegalAccess = true,
              catchAccessFault = true,
              asyncTagMemory = false,
              twoCycleRam = false,
              twoCycleCache = false
            )
          ),
        new DBusCachedPlugin(
            dBusCmdMasterPipe = true,
            dBusCmdSlavePipe = true,
            dBusRspSlavePipe = false,
            relaxedMemoryTranslationRegister = false,
            config = new DataCacheConfig(
              cacheSize = 4096,
              bytePerLine = 32,
              wayCount = 1,
              addressWidth = 32,
              cpuDataWidth = 32,
              memDataWidth = 32,
              catchAccessError = true,
              catchIllegal = true,
              catchUnaligned = true,
              withLrSc = false,
              withAmo = false,
              earlyWaysHits = true
            ),
            csrInfo = true
          ),
        // new IBusSimplePlugin(
        //   resetVector = 0x80000000l,
        //   cmdForkOnSecondStage = false,
        //   cmdForkPersistence = false,
        //   prediction = STATIC,
        //   catchAccessFault = false,
        //   compressedGen = false
        // ),
        // new DBusSimplePlugin(
        //   catchAddressMisaligned = false,
        //   catchAccessFault = false
        // ),
        new StaticMemoryTranslatorPlugin(
          ioRange      = _.msb
        ),
        new DecoderSimplePlugin(
          catchIllegalInstruction = true
        ),
        new RegFilePlugin(
          regFileReadyKind = plugin.SYNC,
          zeroBoot = false
        ),
        new IntAluPlugin,
        new SrcPlugin(
          separatedAddSub = false,
          executeInsertion = true
        ),
        new FullBarrelShifterPlugin,
        new HazardSimplePlugin(
          bypassExecute           = true,
          bypassMemory            = true,
          bypassWriteBack         = true,
          bypassWriteBackBuffer   = true,
          pessimisticUseSrc       = false,
          pessimisticWriteRegFile = false,
          pessimisticAddressMatch = false
        ),
        new MulPlugin,
        new DivPlugin,
        new CsrPlugin(CsrPluginConfig.small(mtvecInit = null).copy(mtvecAccess = WRITE_ONLY, ecallGen = true, wfiGenAsNop = true)),
        // new ExternalInterruptArrayPlugin(
        //   machineMaskCsrId = 0xBC0,
        //   machinePendingsCsrId = 0xFC0,
        //   supervisorMaskCsrId = 0x9C0,
        //   supervisorPendingsCsrId = 0xDC0
        // ),
        // new DebugPlugin(ClockDomain.current.clone(reset = Bool().setName("debugReset"))),
        new BranchPlugin(
          earlyBranch = false,
          catchAddressMisaligned = true
        ),
        new ExternalInterruptArrayPlugin(
          machineMaskCsrId = 0xBC0,
          machinePendingsCsrId = 0xFC0,
          supervisorMaskCsrId = 0x9C0,
          supervisorPendingsCsrId = 0xDC0
        ),
        new YamlPlugin("VexRiscv_Stream.yaml"),
        new StreamrPlugin(streamCount = 5),
        new StreamwPlugin(streamCount = 5)
      )
    )

    val cpu = new VexRiscv(config)

    cpu.rework {
      for (plugin <- config.plugins) plugin match {
        // case plugin: IBusSimplePlugin => {
        //   plugin.iBus.setAsDirectionLess() //Unset IO properties of iBus
        //   master(plugin.iBus.toAxi4ReadOnly()).setName("iBusAxi")
        // }
        // case plugin: IBusCachedPlugin => {
        //   plugin.iBus.setAsDirectionLess()
        //   master(plugin.iBus.toAxi4ReadOnly()).setName("iBusAxi")
        // }
        // case plugin: DBusSimplePlugin => {
        //   plugin.dBus.setAsDirectionLess()
        //   master(plugin.dBus.toAxi4Shared()).setName("dBusAxi")
        // }
        // case plugin: DBusCachedPlugin => {
        //   plugin.dBus.setAsDirectionLess()
        //   master(plugin.dBus.toAxi4Shared(true)).setName("dBusAxi")
        // }
        // // case plugin : IBusSimplePlugin => plugin.iBus.toAxi4ReadOnly()
        // // case plugin : IBusCachedPlugin => plugin.iBus.toAxi4ReadOnly()
        // // case plugin : DBusSimplePlugin => plugin.dBus.toAxi4Shared()
        // // case plugin : DBusCachedPlugin => plugin.dBus.toAxi4Shared(true)
        // case _ =>
        case plugin: IBusSimplePlugin => {
          plugin.iBus.setAsDirectionLess() //Unset IO properties of iBus
          master(plugin.iBus.toWishbone()).setName("iBusWishbone")
        }
        case plugin: IBusCachedPlugin => {
          plugin.iBus.setAsDirectionLess()
          master(plugin.iBus.toWishbone()).setName("iBusWishbone")
        }
        case plugin: DBusSimplePlugin => {
          plugin.dBus.setAsDirectionLess()
          master(plugin.dBus.toWishbone()).setName("dBusWishbone")
        }
        case plugin: DBusCachedPlugin => {
          plugin.dBus.setAsDirectionLess()
          master(plugin.dBus.toWishbone()).setName("dBusWishbone")
        }
        case _ =>
      }
    }
    cpu
  }

  SpinalConfig(
    mode=Verilog,
    netlistFileName = "VexRiscv_Stream.v",
    targetDirectory="."
  ).generate(cpuOut())
}
