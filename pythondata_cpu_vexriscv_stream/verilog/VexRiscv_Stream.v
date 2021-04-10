// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : VexRiscv
// Git hash  : 7f9db486d402066f6adee5028ae031f09145f4be


`define BranchCtrlEnum_defaultEncoding_type [1:0]
`define BranchCtrlEnum_defaultEncoding_INC 2'b00
`define BranchCtrlEnum_defaultEncoding_B 2'b01
`define BranchCtrlEnum_defaultEncoding_JAL 2'b10
`define BranchCtrlEnum_defaultEncoding_JALR 2'b11

`define EnvCtrlEnum_defaultEncoding_type [1:0]
`define EnvCtrlEnum_defaultEncoding_NONE 2'b00
`define EnvCtrlEnum_defaultEncoding_XRET 2'b01
`define EnvCtrlEnum_defaultEncoding_ECALL 2'b10

`define ShiftCtrlEnum_defaultEncoding_type [1:0]
`define ShiftCtrlEnum_defaultEncoding_DISABLE_1 2'b00
`define ShiftCtrlEnum_defaultEncoding_SLL_1 2'b01
`define ShiftCtrlEnum_defaultEncoding_SRL_1 2'b10
`define ShiftCtrlEnum_defaultEncoding_SRA_1 2'b11

`define AluBitwiseCtrlEnum_defaultEncoding_type [1:0]
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 2'b00
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 2'b01
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 2'b10

`define Src2CtrlEnum_defaultEncoding_type [1:0]
`define Src2CtrlEnum_defaultEncoding_RS 2'b00
`define Src2CtrlEnum_defaultEncoding_IMI 2'b01
`define Src2CtrlEnum_defaultEncoding_IMS 2'b10
`define Src2CtrlEnum_defaultEncoding_PC 2'b11

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD_SUB 2'b00
`define AluCtrlEnum_defaultEncoding_SLT_SLTU 2'b01
`define AluCtrlEnum_defaultEncoding_BITWISE 2'b10

`define Src1CtrlEnum_defaultEncoding_type [1:0]
`define Src1CtrlEnum_defaultEncoding_RS 2'b00
`define Src1CtrlEnum_defaultEncoding_IMU 2'b01
`define Src1CtrlEnum_defaultEncoding_PC_INCREMENT 2'b10
`define Src1CtrlEnum_defaultEncoding_URS1 2'b11


module VexRiscv (
  input               timerInterrupt,
  input               softwareInterrupt,
  input      [31:0]   externalInterruptArray,
  input      [31:0]   readStream0_data,
  input               readStream0_valid,
  output reg          readStream0_ready,
  input      [31:0]   readStream1_data,
  input               readStream1_valid,
  output reg          readStream1_ready,
  input      [31:0]   readStream2_data,
  input               readStream2_valid,
  output reg          readStream2_ready,
  input      [31:0]   readStream3_data,
  input               readStream3_valid,
  output reg          readStream3_ready,
  input      [31:0]   readStream4_data,
  input               readStream4_valid,
  output reg          readStream4_ready,
  output reg [31:0]   writeStream0_data,
  output reg          writeStream0_valid,
  input               writeStream0_ready,
  output reg [31:0]   writeStream1_data,
  output reg          writeStream1_valid,
  input               writeStream1_ready,
  output reg [31:0]   writeStream2_data,
  output reg          writeStream2_valid,
  input               writeStream2_ready,
  output reg [31:0]   writeStream3_data,
  output reg          writeStream3_valid,
  input               writeStream3_ready,
  output reg [31:0]   writeStream4_data,
  output reg          writeStream4_valid,
  input               writeStream4_ready,
  output reg          iBusWishbone_CYC,
  output reg          iBusWishbone_STB,
  input               iBusWishbone_ACK,
  output              iBusWishbone_WE,
  output     [29:0]   iBusWishbone_ADR,
  input      [31:0]   iBusWishbone_DAT_MISO,
  output     [31:0]   iBusWishbone_DAT_MOSI,
  output     [3:0]    iBusWishbone_SEL,
  input               iBusWishbone_ERR,
  output     [2:0]    iBusWishbone_CTI,
  output     [1:0]    iBusWishbone_BTE,
  output              dBusWishbone_CYC,
  output              dBusWishbone_STB,
  input               dBusWishbone_ACK,
  output              dBusWishbone_WE,
  output     [29:0]   dBusWishbone_ADR,
  input      [31:0]   dBusWishbone_DAT_MISO,
  output     [31:0]   dBusWishbone_DAT_MOSI,
  output     [3:0]    dBusWishbone_SEL,
  input               dBusWishbone_ERR,
  output     [2:0]    dBusWishbone_CTI,
  output     [1:0]    dBusWishbone_BTE,
  input               clk,
  input               reset
);
  wire                _zz_170;
  wire                _zz_171;
  wire                _zz_172;
  wire                _zz_173;
  wire                _zz_174;
  wire                _zz_175;
  wire                _zz_176;
  wire                _zz_177;
  wire       [31:0]   _zz_178;
  reg                 _zz_179;
  wire                _zz_180;
  wire       [31:0]   _zz_181;
  wire                _zz_182;
  wire       [31:0]   _zz_183;
  reg                 _zz_184;
  wire                _zz_185;
  wire                _zz_186;
  wire       [31:0]   _zz_187;
  wire                _zz_188;
  wire                _zz_189;
  wire                _zz_190;
  wire                _zz_191;
  wire                _zz_192;
  wire                _zz_193;
  wire                _zz_194;
  wire                _zz_195;
  wire       [3:0]    _zz_196;
  wire                _zz_197;
  wire                _zz_198;
  reg        [31:0]   _zz_199;
  reg        [31:0]   _zz_200;
  reg        [31:0]   _zz_201;
  wire                IBusCachedPlugin_cache_io_cpu_prefetch_haltIt;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_error;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_mmuException;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_data;
  wire                IBusCachedPlugin_cache_io_cpu_fetch_cacheMiss;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_data;
  wire       [31:0]   IBusCachedPlugin_cache_io_cpu_decode_physicalAddress;
  wire                IBusCachedPlugin_cache_io_mem_cmd_valid;
  wire       [31:0]   IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  wire       [2:0]    IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  wire                dataCache_1_io_cpu_execute_haltIt;
  wire                dataCache_1_io_cpu_execute_refilling;
  wire                dataCache_1_io_cpu_memory_isWrite;
  wire                dataCache_1_io_cpu_writeBack_haltIt;
  wire       [31:0]   dataCache_1_io_cpu_writeBack_data;
  wire                dataCache_1_io_cpu_writeBack_mmuException;
  wire                dataCache_1_io_cpu_writeBack_unalignedAccess;
  wire                dataCache_1_io_cpu_writeBack_accessError;
  wire                dataCache_1_io_cpu_writeBack_isWrite;
  wire                dataCache_1_io_cpu_writeBack_keepMemRspData;
  wire                dataCache_1_io_cpu_flush_ready;
  wire                dataCache_1_io_cpu_redo;
  wire                dataCache_1_io_mem_cmd_valid;
  wire                dataCache_1_io_mem_cmd_payload_wr;
  wire                dataCache_1_io_mem_cmd_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_payload_mask;
  wire       [2:0]    dataCache_1_io_mem_cmd_payload_length;
  wire                dataCache_1_io_mem_cmd_payload_last;
  wire                _zz_202;
  wire                _zz_203;
  wire                _zz_204;
  wire                _zz_205;
  wire                _zz_206;
  wire                _zz_207;
  wire                _zz_208;
  wire                _zz_209;
  wire                _zz_210;
  wire                _zz_211;
  wire                _zz_212;
  wire                _zz_213;
  wire                _zz_214;
  wire                _zz_215;
  wire                _zz_216;
  wire                _zz_217;
  wire                _zz_218;
  wire                _zz_219;
  wire                _zz_220;
  wire                _zz_221;
  wire                _zz_222;
  wire                _zz_223;
  wire                _zz_224;
  wire       [1:0]    _zz_225;
  wire                _zz_226;
  wire                _zz_227;
  wire                _zz_228;
  wire                _zz_229;
  wire                _zz_230;
  wire                _zz_231;
  wire                _zz_232;
  wire       [1:0]    _zz_233;
  wire                _zz_234;
  wire                _zz_235;
  wire                _zz_236;
  wire                _zz_237;
  wire                _zz_238;
  wire                _zz_239;
  wire                _zz_240;
  wire                _zz_241;
  wire                _zz_242;
  wire                _zz_243;
  wire       [1:0]    _zz_244;
  wire       [1:0]    _zz_245;
  wire                _zz_246;
  wire       [51:0]   _zz_247;
  wire       [51:0]   _zz_248;
  wire       [51:0]   _zz_249;
  wire       [32:0]   _zz_250;
  wire       [51:0]   _zz_251;
  wire       [49:0]   _zz_252;
  wire       [51:0]   _zz_253;
  wire       [49:0]   _zz_254;
  wire       [51:0]   _zz_255;
  wire       [32:0]   _zz_256;
  wire       [31:0]   _zz_257;
  wire       [32:0]   _zz_258;
  wire       [0:0]    _zz_259;
  wire       [0:0]    _zz_260;
  wire       [0:0]    _zz_261;
  wire       [0:0]    _zz_262;
  wire       [0:0]    _zz_263;
  wire       [0:0]    _zz_264;
  wire       [0:0]    _zz_265;
  wire       [0:0]    _zz_266;
  wire       [0:0]    _zz_267;
  wire       [0:0]    _zz_268;
  wire       [0:0]    _zz_269;
  wire       [0:0]    _zz_270;
  wire       [0:0]    _zz_271;
  wire       [0:0]    _zz_272;
  wire       [0:0]    _zz_273;
  wire       [0:0]    _zz_274;
  wire       [0:0]    _zz_275;
  wire       [0:0]    _zz_276;
  wire       [0:0]    _zz_277;
  wire       [3:0]    _zz_278;
  wire       [2:0]    _zz_279;
  wire       [31:0]   _zz_280;
  wire       [11:0]   _zz_281;
  wire       [31:0]   _zz_282;
  wire       [19:0]   _zz_283;
  wire       [11:0]   _zz_284;
  wire       [31:0]   _zz_285;
  wire       [31:0]   _zz_286;
  wire       [19:0]   _zz_287;
  wire       [11:0]   _zz_288;
  wire       [2:0]    _zz_289;
  wire       [2:0]    _zz_290;
  wire       [0:0]    _zz_291;
  wire       [2:0]    _zz_292;
  wire       [4:0]    _zz_293;
  wire       [11:0]   _zz_294;
  wire       [11:0]   _zz_295;
  wire       [31:0]   _zz_296;
  wire       [31:0]   _zz_297;
  wire       [31:0]   _zz_298;
  wire       [31:0]   _zz_299;
  wire       [31:0]   _zz_300;
  wire       [31:0]   _zz_301;
  wire       [31:0]   _zz_302;
  wire       [65:0]   _zz_303;
  wire       [65:0]   _zz_304;
  wire       [31:0]   _zz_305;
  wire       [31:0]   _zz_306;
  wire       [0:0]    _zz_307;
  wire       [5:0]    _zz_308;
  wire       [32:0]   _zz_309;
  wire       [31:0]   _zz_310;
  wire       [31:0]   _zz_311;
  wire       [32:0]   _zz_312;
  wire       [32:0]   _zz_313;
  wire       [32:0]   _zz_314;
  wire       [32:0]   _zz_315;
  wire       [0:0]    _zz_316;
  wire       [32:0]   _zz_317;
  wire       [0:0]    _zz_318;
  wire       [32:0]   _zz_319;
  wire       [0:0]    _zz_320;
  wire       [31:0]   _zz_321;
  wire       [1:0]    _zz_322;
  wire       [1:0]    _zz_323;
  wire       [11:0]   _zz_324;
  wire       [19:0]   _zz_325;
  wire       [11:0]   _zz_326;
  wire       [31:0]   _zz_327;
  wire       [31:0]   _zz_328;
  wire       [31:0]   _zz_329;
  wire       [11:0]   _zz_330;
  wire       [19:0]   _zz_331;
  wire       [11:0]   _zz_332;
  wire       [2:0]    _zz_333;
  wire       [0:0]    _zz_334;
  wire       [0:0]    _zz_335;
  wire       [0:0]    _zz_336;
  wire       [0:0]    _zz_337;
  wire       [0:0]    _zz_338;
  wire       [0:0]    _zz_339;
  wire       [26:0]   _zz_340;
  wire                _zz_341;
  wire                _zz_342;
  wire       [1:0]    _zz_343;
  wire       [31:0]   _zz_344;
  wire       [31:0]   _zz_345;
  wire       [31:0]   _zz_346;
  wire                _zz_347;
  wire       [0:0]    _zz_348;
  wire       [14:0]   _zz_349;
  wire       [31:0]   _zz_350;
  wire       [31:0]   _zz_351;
  wire       [31:0]   _zz_352;
  wire                _zz_353;
  wire       [0:0]    _zz_354;
  wire       [8:0]    _zz_355;
  wire       [31:0]   _zz_356;
  wire       [31:0]   _zz_357;
  wire       [31:0]   _zz_358;
  wire                _zz_359;
  wire       [0:0]    _zz_360;
  wire       [2:0]    _zz_361;
  wire                _zz_362;
  wire                _zz_363;
  wire                _zz_364;
  wire       [31:0]   _zz_365;
  wire       [31:0]   _zz_366;
  wire       [0:0]    _zz_367;
  wire       [0:0]    _zz_368;
  wire       [0:0]    _zz_369;
  wire       [0:0]    _zz_370;
  wire                _zz_371;
  wire       [0:0]    _zz_372;
  wire       [27:0]   _zz_373;
  wire       [31:0]   _zz_374;
  wire       [31:0]   _zz_375;
  wire       [31:0]   _zz_376;
  wire       [0:0]    _zz_377;
  wire       [0:0]    _zz_378;
  wire       [0:0]    _zz_379;
  wire       [0:0]    _zz_380;
  wire                _zz_381;
  wire       [0:0]    _zz_382;
  wire       [23:0]   _zz_383;
  wire       [31:0]   _zz_384;
  wire       [31:0]   _zz_385;
  wire                _zz_386;
  wire       [1:0]    _zz_387;
  wire       [1:0]    _zz_388;
  wire                _zz_389;
  wire       [0:0]    _zz_390;
  wire       [19:0]   _zz_391;
  wire       [31:0]   _zz_392;
  wire       [31:0]   _zz_393;
  wire       [31:0]   _zz_394;
  wire       [31:0]   _zz_395;
  wire                _zz_396;
  wire       [0:0]    _zz_397;
  wire       [0:0]    _zz_398;
  wire                _zz_399;
  wire       [0:0]    _zz_400;
  wire       [0:0]    _zz_401;
  wire                _zz_402;
  wire       [0:0]    _zz_403;
  wire       [16:0]   _zz_404;
  wire       [31:0]   _zz_405;
  wire       [31:0]   _zz_406;
  wire       [31:0]   _zz_407;
  wire       [31:0]   _zz_408;
  wire       [31:0]   _zz_409;
  wire       [0:0]    _zz_410;
  wire       [0:0]    _zz_411;
  wire       [0:0]    _zz_412;
  wire       [0:0]    _zz_413;
  wire                _zz_414;
  wire       [0:0]    _zz_415;
  wire       [13:0]   _zz_416;
  wire       [31:0]   _zz_417;
  wire       [31:0]   _zz_418;
  wire       [31:0]   _zz_419;
  wire                _zz_420;
  wire       [0:0]    _zz_421;
  wire       [0:0]    _zz_422;
  wire       [0:0]    _zz_423;
  wire       [1:0]    _zz_424;
  wire       [0:0]    _zz_425;
  wire       [0:0]    _zz_426;
  wire                _zz_427;
  wire       [0:0]    _zz_428;
  wire       [10:0]   _zz_429;
  wire       [31:0]   _zz_430;
  wire       [31:0]   _zz_431;
  wire       [31:0]   _zz_432;
  wire       [31:0]   _zz_433;
  wire       [31:0]   _zz_434;
  wire       [31:0]   _zz_435;
  wire       [31:0]   _zz_436;
  wire                _zz_437;
  wire       [0:0]    _zz_438;
  wire       [3:0]    _zz_439;
  wire       [0:0]    _zz_440;
  wire       [3:0]    _zz_441;
  wire       [6:0]    _zz_442;
  wire       [6:0]    _zz_443;
  wire                _zz_444;
  wire       [0:0]    _zz_445;
  wire       [7:0]    _zz_446;
  wire       [31:0]   _zz_447;
  wire       [31:0]   _zz_448;
  wire       [31:0]   _zz_449;
  wire       [0:0]    _zz_450;
  wire       [1:0]    _zz_451;
  wire                _zz_452;
  wire       [0:0]    _zz_453;
  wire       [1:0]    _zz_454;
  wire       [0:0]    _zz_455;
  wire       [4:0]    _zz_456;
  wire       [0:0]    _zz_457;
  wire       [0:0]    _zz_458;
  wire       [1:0]    _zz_459;
  wire       [1:0]    _zz_460;
  wire                _zz_461;
  wire       [0:0]    _zz_462;
  wire       [5:0]    _zz_463;
  wire       [31:0]   _zz_464;
  wire       [31:0]   _zz_465;
  wire                _zz_466;
  wire                _zz_467;
  wire       [31:0]   _zz_468;
  wire       [31:0]   _zz_469;
  wire       [31:0]   _zz_470;
  wire                _zz_471;
  wire                _zz_472;
  wire       [31:0]   _zz_473;
  wire       [31:0]   _zz_474;
  wire                _zz_475;
  wire       [0:0]    _zz_476;
  wire       [2:0]    _zz_477;
  wire       [31:0]   _zz_478;
  wire       [31:0]   _zz_479;
  wire                _zz_480;
  wire       [0:0]    _zz_481;
  wire       [0:0]    _zz_482;
  wire                _zz_483;
  wire       [0:0]    _zz_484;
  wire       [3:0]    _zz_485;
  wire       [31:0]   _zz_486;
  wire       [31:0]   _zz_487;
  wire       [31:0]   _zz_488;
  wire       [31:0]   _zz_489;
  wire       [31:0]   _zz_490;
  wire       [31:0]   _zz_491;
  wire       [31:0]   _zz_492;
  wire                _zz_493;
  wire       [0:0]    _zz_494;
  wire       [0:0]    _zz_495;
  wire       [31:0]   _zz_496;
  wire       [31:0]   _zz_497;
  wire       [31:0]   _zz_498;
  wire       [0:0]    _zz_499;
  wire       [2:0]    _zz_500;
  wire       [0:0]    _zz_501;
  wire       [0:0]    _zz_502;
  wire                _zz_503;
  wire       [0:0]    _zz_504;
  wire       [1:0]    _zz_505;
  wire       [31:0]   _zz_506;
  wire       [31:0]   _zz_507;
  wire       [31:0]   _zz_508;
  wire       [31:0]   _zz_509;
  wire                _zz_510;
  wire                _zz_511;
  wire       [31:0]   _zz_512;
  wire                _zz_513;
  wire       [0:0]    _zz_514;
  wire       [0:0]    _zz_515;
  wire       [0:0]    _zz_516;
  wire       [0:0]    _zz_517;
  wire       [1:0]    _zz_518;
  wire       [1:0]    _zz_519;
  wire       [0:0]    _zz_520;
  wire       [0:0]    _zz_521;
  wire       [31:0]   _zz_522;
  wire       [31:0]   _zz_523;
  wire       [31:0]   _zz_524;
  wire       [31:0]   _zz_525;
  wire       [31:0]   _zz_526;
  wire       [31:0]   _zz_527;
  wire                _zz_528;
  wire                _zz_529;
  wire                _zz_530;
  wire       [51:0]   memory_MUL_LOW;
  wire       [31:0]   execute_BRANCH_CALC;
  wire                execute_BRANCH_DO;
  wire       [33:0]   memory_MUL_HH;
  wire       [33:0]   execute_MUL_HH;
  wire       [33:0]   execute_MUL_HL;
  wire       [33:0]   execute_MUL_LH;
  wire       [31:0]   execute_MUL_LL;
  wire       [31:0]   execute_SHIFT_RIGHT;
  wire       [31:0]   execute_REGFILE_WRITE_DATA;
  wire       [1:0]    memory_MEMORY_ADDRESS_LOW;
  wire       [1:0]    execute_MEMORY_ADDRESS_LOW;
  wire                decode_PREDICTION_HAD_BRANCHED2;
  wire                decode_CSR_READ_OPCODE;
  wire                decode_CSR_WRITE_OPCODE;
  wire                decode_SRC2_FORCE_ZERO;
  wire                execute_IS_STREAMW;
  wire                decode_IS_STREAMW;
  wire                execute_IS_STREAMR;
  wire                decode_IS_STREAMR;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_1;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_2;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_3;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_4;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_5;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_6;
  wire       `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_7;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_8;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_9;
  wire                decode_IS_CSR;
  wire                decode_IS_RS2_SIGNED;
  wire                decode_IS_RS1_SIGNED;
  wire                decode_IS_DIV;
  wire                memory_IS_MUL;
  wire                execute_IS_MUL;
  wire                decode_IS_MUL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_10;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_11;
  wire       `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_12;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_13;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_14;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_15;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_16;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_17;
  wire                decode_SRC_LESS_UNSIGNED;
  wire                decode_MEMORY_MANAGMENT;
  wire                memory_MEMORY_WR;
  wire                decode_MEMORY_WR;
  wire                execute_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_MEMORY_STAGE;
  wire                decode_BYPASSABLE_EXECUTE_STAGE;
  wire       `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_18;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_19;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_20;
  wire       `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_21;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_22;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_23;
  wire       `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_24;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_25;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_26;
  wire                decode_MEMORY_FORCE_CONSTISTENCY;
  wire       [31:0]   writeBack_FORMAL_PC_NEXT;
  wire       [31:0]   memory_FORMAL_PC_NEXT;
  wire       [31:0]   execute_FORMAL_PC_NEXT;
  wire       [31:0]   decode_FORMAL_PC_NEXT;
  wire       [31:0]   memory_PC;
  wire                memory_IS_STREAMW;
  wire       [31:0]   memory_RS2;
  wire                memory_IS_STREAMR;
  wire       [31:0]   memory_RS1;
  wire       [31:0]   memory_BRANCH_CALC;
  wire                memory_BRANCH_DO;
  wire       [31:0]   execute_PC;
  wire                execute_PREDICTION_HAD_BRANCHED2;
  wire                execute_BRANCH_COND_RESULT;
  wire       `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_27;
  wire                execute_CSR_READ_OPCODE;
  wire                execute_CSR_WRITE_OPCODE;
  wire                execute_IS_CSR;
  wire       `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_28;
  wire       `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_29;
  wire       `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_30;
  wire                execute_IS_RS1_SIGNED;
  wire                execute_IS_DIV;
  wire                execute_IS_RS2_SIGNED;
  wire                memory_IS_DIV;
  wire                writeBack_IS_MUL;
  wire       [33:0]   writeBack_MUL_HH;
  wire       [51:0]   writeBack_MUL_LOW;
  wire       [33:0]   memory_MUL_HL;
  wire       [33:0]   memory_MUL_LH;
  wire       [31:0]   memory_MUL_LL;
  (* keep , syn_keep *) wire       [31:0]   execute_RS1 /* synthesis syn_keep = 1 */ ;
  wire                decode_RS2_USE;
  wire                decode_RS1_USE;
  reg        [31:0]   _zz_31;
  wire                execute_REGFILE_WRITE_VALID;
  wire                execute_BYPASSABLE_EXECUTE_STAGE;
  wire                memory_REGFILE_WRITE_VALID;
  wire       [31:0]   memory_INSTRUCTION;
  wire                memory_BYPASSABLE_MEMORY_STAGE;
  wire                writeBack_REGFILE_WRITE_VALID;
  reg        [31:0]   decode_RS2;
  reg        [31:0]   decode_RS1;
  wire       [31:0]   memory_SHIFT_RIGHT;
  reg        [31:0]   _zz_32;
  wire       `ShiftCtrlEnum_defaultEncoding_type memory_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_33;
  wire       `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_34;
  wire                execute_SRC_LESS_UNSIGNED;
  wire                execute_SRC2_FORCE_ZERO;
  wire                execute_SRC_USE_SUB_LESS;
  wire       [31:0]   _zz_35;
  wire       [31:0]   _zz_36;
  wire       `Src2CtrlEnum_defaultEncoding_type execute_SRC2_CTRL;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_37;
  wire       [31:0]   _zz_38;
  wire       `Src1CtrlEnum_defaultEncoding_type execute_SRC1_CTRL;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_39;
  wire                decode_SRC_USE_SUB_LESS;
  wire                decode_SRC_ADD_ZERO;
  wire       [31:0]   execute_SRC_ADD_SUB;
  wire                execute_SRC_LESS;
  wire       `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_40;
  wire       [31:0]   execute_SRC2;
  wire       [31:0]   execute_SRC1;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_41;
  wire       [31:0]   _zz_42;
  wire                _zz_43;
  reg                 _zz_44;
  wire       [31:0]   decode_INSTRUCTION_ANTICIPATED;
  reg                 decode_REGFILE_WRITE_VALID;
  wire                decode_LEGAL_INSTRUCTION;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_45;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_46;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_47;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_48;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_49;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_50;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_51;
  reg        [31:0]   _zz_52;
  wire       [1:0]    writeBack_MEMORY_ADDRESS_LOW;
  wire                writeBack_MEMORY_WR;
  wire       [31:0]   writeBack_REGFILE_WRITE_DATA;
  wire                writeBack_MEMORY_ENABLE;
  wire       [31:0]   memory_REGFILE_WRITE_DATA;
  wire                memory_MEMORY_ENABLE;
  wire                execute_MEMORY_FORCE_CONSTISTENCY;
  wire                execute_MEMORY_MANAGMENT;
  (* keep , syn_keep *) wire       [31:0]   execute_RS2 /* synthesis syn_keep = 1 */ ;
  wire                execute_MEMORY_WR;
  wire       [31:0]   execute_SRC_ADD;
  wire                execute_MEMORY_ENABLE;
  wire       [31:0]   execute_INSTRUCTION;
  wire                decode_MEMORY_ENABLE;
  wire                decode_FLUSH_ALL;
  reg                 IBusCachedPlugin_rsp_issueDetected_4;
  reg                 IBusCachedPlugin_rsp_issueDetected_3;
  reg                 IBusCachedPlugin_rsp_issueDetected_2;
  reg                 IBusCachedPlugin_rsp_issueDetected_1;
  wire       `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_53;
  reg        [31:0]   _zz_54;
  reg        [31:0]   _zz_55;
  wire       [31:0]   decode_PC;
  wire       [31:0]   decode_INSTRUCTION;
  wire       [31:0]   writeBack_PC;
  wire       [31:0]   writeBack_INSTRUCTION;
  reg                 decode_arbitration_haltItself;
  reg                 decode_arbitration_haltByOther;
  reg                 decode_arbitration_removeIt;
  wire                decode_arbitration_flushIt;
  reg                 decode_arbitration_flushNext;
  wire                decode_arbitration_isValid;
  wire                decode_arbitration_isStuck;
  wire                decode_arbitration_isStuckByOthers;
  wire                decode_arbitration_isFlushed;
  wire                decode_arbitration_isMoving;
  wire                decode_arbitration_isFiring;
  reg                 execute_arbitration_haltItself;
  reg                 execute_arbitration_haltByOther;
  reg                 execute_arbitration_removeIt;
  wire                execute_arbitration_flushIt;
  reg                 execute_arbitration_flushNext;
  reg                 execute_arbitration_isValid;
  wire                execute_arbitration_isStuck;
  wire                execute_arbitration_isStuckByOthers;
  wire                execute_arbitration_isFlushed;
  wire                execute_arbitration_isMoving;
  wire                execute_arbitration_isFiring;
  reg                 memory_arbitration_haltItself;
  wire                memory_arbitration_haltByOther;
  reg                 memory_arbitration_removeIt;
  wire                memory_arbitration_flushIt;
  reg                 memory_arbitration_flushNext;
  reg                 memory_arbitration_isValid;
  wire                memory_arbitration_isStuck;
  wire                memory_arbitration_isStuckByOthers;
  wire                memory_arbitration_isFlushed;
  wire                memory_arbitration_isMoving;
  wire                memory_arbitration_isFiring;
  reg                 writeBack_arbitration_haltItself;
  wire                writeBack_arbitration_haltByOther;
  reg                 writeBack_arbitration_removeIt;
  reg                 writeBack_arbitration_flushIt;
  reg                 writeBack_arbitration_flushNext;
  reg                 writeBack_arbitration_isValid;
  wire                writeBack_arbitration_isStuck;
  wire                writeBack_arbitration_isStuckByOthers;
  wire                writeBack_arbitration_isFlushed;
  wire                writeBack_arbitration_isMoving;
  wire                writeBack_arbitration_isFiring;
  wire       [31:0]   lastStageInstruction /* verilator public */ ;
  wire       [31:0]   lastStagePc /* verilator public */ ;
  wire                lastStageIsValid /* verilator public */ ;
  wire                lastStageIsFiring /* verilator public */ ;
  reg                 IBusCachedPlugin_fetcherHalt;
  reg                 IBusCachedPlugin_incomingInstruction;
  wire                IBusCachedPlugin_predictionJumpInterface_valid;
  (* keep , syn_keep *) wire       [31:0]   IBusCachedPlugin_predictionJumpInterface_payload /* synthesis syn_keep = 1 */ ;
  reg                 IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  wire                IBusCachedPlugin_decodePrediction_rsp_wasWrong;
  wire                IBusCachedPlugin_pcValids_0;
  wire                IBusCachedPlugin_pcValids_1;
  wire                IBusCachedPlugin_pcValids_2;
  wire                IBusCachedPlugin_pcValids_3;
  reg                 IBusCachedPlugin_decodeExceptionPort_valid;
  reg        [3:0]    IBusCachedPlugin_decodeExceptionPort_payload_code;
  wire       [31:0]   IBusCachedPlugin_decodeExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                IBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   IBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                IBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                IBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                IBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                IBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                IBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                IBusCachedPlugin_mmuBus_rsp_exception;
  wire                IBusCachedPlugin_mmuBus_rsp_refilling;
  wire                IBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                IBusCachedPlugin_mmuBus_end;
  wire                IBusCachedPlugin_mmuBus_busy;
  wire                dBus_cmd_valid;
  wire                dBus_cmd_ready;
  wire                dBus_cmd_payload_wr;
  wire                dBus_cmd_payload_uncached;
  wire       [31:0]   dBus_cmd_payload_address;
  wire       [31:0]   dBus_cmd_payload_data;
  wire       [3:0]    dBus_cmd_payload_mask;
  wire       [2:0]    dBus_cmd_payload_length;
  wire                dBus_cmd_payload_last;
  wire                dBus_rsp_valid;
  wire                dBus_rsp_payload_last;
  wire       [31:0]   dBus_rsp_payload_data;
  wire                dBus_rsp_payload_error;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isValid;
  wire                DBusCachedPlugin_mmuBus_cmd_0_isStuck;
  wire       [31:0]   DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  wire                DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation;
  wire       [31:0]   DBusCachedPlugin_mmuBus_rsp_physicalAddress;
  wire                DBusCachedPlugin_mmuBus_rsp_isIoAccess;
  wire                DBusCachedPlugin_mmuBus_rsp_isPaging;
  wire                DBusCachedPlugin_mmuBus_rsp_allowRead;
  wire                DBusCachedPlugin_mmuBus_rsp_allowWrite;
  wire                DBusCachedPlugin_mmuBus_rsp_allowExecute;
  wire                DBusCachedPlugin_mmuBus_rsp_exception;
  wire                DBusCachedPlugin_mmuBus_rsp_refilling;
  wire                DBusCachedPlugin_mmuBus_rsp_bypassTranslation;
  wire                DBusCachedPlugin_mmuBus_end;
  wire                DBusCachedPlugin_mmuBus_busy;
  reg                 DBusCachedPlugin_redoBranch_valid;
  wire       [31:0]   DBusCachedPlugin_redoBranch_payload;
  reg                 DBusCachedPlugin_exceptionBus_valid;
  reg        [3:0]    DBusCachedPlugin_exceptionBus_payload_code;
  wire       [31:0]   DBusCachedPlugin_exceptionBus_payload_badAddr;
  wire                decodeExceptionPort_valid;
  wire       [3:0]    decodeExceptionPort_payload_code;
  wire       [31:0]   decodeExceptionPort_payload_badAddr;
  wire                CsrPlugin_inWfi /* verilator public */ ;
  wire                CsrPlugin_thirdPartyWake;
  reg                 CsrPlugin_jumpInterface_valid;
  reg        [31:0]   CsrPlugin_jumpInterface_payload;
  wire                CsrPlugin_exceptionPendings_0;
  wire                CsrPlugin_exceptionPendings_1;
  wire                CsrPlugin_exceptionPendings_2;
  wire                CsrPlugin_exceptionPendings_3;
  wire                externalInterrupt;
  wire                contextSwitching;
  reg        [1:0]    CsrPlugin_privilege;
  wire                CsrPlugin_forceMachineWire;
  reg                 CsrPlugin_selfException_valid;
  reg        [3:0]    CsrPlugin_selfException_payload_code;
  wire       [31:0]   CsrPlugin_selfException_payload_badAddr;
  wire                CsrPlugin_allowInterrupts;
  wire                CsrPlugin_allowException;
  wire                BranchPlugin_jumpInterface_valid;
  wire       [31:0]   BranchPlugin_jumpInterface_payload;
  wire                BranchPlugin_branchExceptionPort_valid;
  wire       [3:0]    BranchPlugin_branchExceptionPort_payload_code;
  wire       [31:0]   BranchPlugin_branchExceptionPort_payload_badAddr;
  wire                IBusCachedPlugin_externalFlush;
  wire                IBusCachedPlugin_jump_pcLoad_valid;
  wire       [31:0]   IBusCachedPlugin_jump_pcLoad_payload;
  wire       [3:0]    _zz_56;
  wire       [3:0]    _zz_57;
  wire                _zz_58;
  wire                _zz_59;
  wire                _zz_60;
  wire                IBusCachedPlugin_fetchPc_output_valid;
  wire                IBusCachedPlugin_fetchPc_output_ready;
  wire       [31:0]   IBusCachedPlugin_fetchPc_output_payload;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg                 IBusCachedPlugin_fetchPc_correction;
  reg                 IBusCachedPlugin_fetchPc_correctionReg;
  wire                IBusCachedPlugin_fetchPc_corrected;
  reg                 IBusCachedPlugin_fetchPc_pcRegPropagate;
  reg                 IBusCachedPlugin_fetchPc_booted;
  reg                 IBusCachedPlugin_fetchPc_inc;
  reg        [31:0]   IBusCachedPlugin_fetchPc_pc;
  wire                IBusCachedPlugin_fetchPc_redo_valid;
  wire       [31:0]   IBusCachedPlugin_fetchPc_redo_payload;
  reg                 IBusCachedPlugin_fetchPc_flushed;
  reg                 IBusCachedPlugin_iBusRsp_redoFetch;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire                IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg                 IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire                _zz_61;
  wire                _zz_62;
  wire                IBusCachedPlugin_iBusRsp_flush;
  wire                _zz_63;
  wire                _zz_64;
  reg                 _zz_65;
  reg                 IBusCachedPlugin_iBusRsp_readyForError;
  wire                IBusCachedPlugin_iBusRsp_output_valid;
  wire                IBusCachedPlugin_iBusRsp_output_ready;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_pc;
  wire                IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
  wire                IBusCachedPlugin_iBusRsp_output_payload_isRvc;
  wire                IBusCachedPlugin_injector_decodeInput_valid;
  wire                IBusCachedPlugin_injector_decodeInput_ready;
  wire       [31:0]   IBusCachedPlugin_injector_decodeInput_payload_pc;
  wire                IBusCachedPlugin_injector_decodeInput_payload_rsp_error;
  wire       [31:0]   IBusCachedPlugin_injector_decodeInput_payload_rsp_inst;
  wire                IBusCachedPlugin_injector_decodeInput_payload_isRvc;
  reg                 _zz_66;
  reg        [31:0]   _zz_67;
  reg                 _zz_68;
  reg        [31:0]   _zz_69;
  reg                 _zz_70;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_1;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_2;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_3;
  reg                 IBusCachedPlugin_injector_nextPcCalc_valids_4;
  reg        [31:0]   IBusCachedPlugin_injector_formal_rawInDecode;
  wire                _zz_71;
  reg        [18:0]   _zz_72;
  wire                _zz_73;
  reg        [10:0]   _zz_74;
  wire                _zz_75;
  reg        [18:0]   _zz_76;
  reg                 _zz_77;
  wire                _zz_78;
  reg        [10:0]   _zz_79;
  wire                _zz_80;
  reg        [18:0]   _zz_81;
  wire                iBus_cmd_valid;
  wire                iBus_cmd_ready;
  reg        [31:0]   iBus_cmd_payload_address;
  wire       [2:0]    iBus_cmd_payload_size;
  wire                iBus_rsp_valid;
  wire       [31:0]   iBus_rsp_payload_data;
  wire                iBus_rsp_payload_error;
  wire       [31:0]   _zz_82;
  reg        [31:0]   IBusCachedPlugin_rspCounter;
  wire                IBusCachedPlugin_s0_tightlyCoupledHit;
  reg                 IBusCachedPlugin_s1_tightlyCoupledHit;
  wire                IBusCachedPlugin_rsp_iBusRspOutputHalt;
  wire                IBusCachedPlugin_rsp_issueDetected;
  reg                 IBusCachedPlugin_rsp_redoFetch;
  wire                dataCache_1_io_mem_cmd_s2mPipe_valid;
  wire                dataCache_1_io_mem_cmd_s2mPipe_ready;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
  wire       [2:0]    dataCache_1_io_mem_cmd_s2mPipe_payload_length;
  wire                dataCache_1_io_mem_cmd_s2mPipe_payload_last;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rValid;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_wr;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_uncached;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_address;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_rData_data;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_mask;
  reg        [2:0]    dataCache_1_io_mem_cmd_s2mPipe_rData_length;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_rData_last;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_ready;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_wr;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_uncached;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_address;
  wire       [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_data;
  wire       [3:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_mask;
  wire       [2:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_length;
  wire                dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_last;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_wr;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_uncached;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_address;
  reg        [31:0]   dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_data;
  reg        [3:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_mask;
  reg        [2:0]    dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_length;
  reg                 dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_last;
  wire       [31:0]   _zz_83;
  reg        [31:0]   DBusCachedPlugin_rspCounter;
  wire       [1:0]    execute_DBusCachedPlugin_size;
  reg        [31:0]   _zz_84;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspShifted;
  wire                _zz_85;
  reg        [31:0]   _zz_86;
  wire                _zz_87;
  reg        [31:0]   _zz_88;
  reg        [31:0]   writeBack_DBusCachedPlugin_rspFormated;
  wire       [33:0]   _zz_89;
  wire                _zz_90;
  wire                _zz_91;
  wire                _zz_92;
  wire                _zz_93;
  wire                _zz_94;
  wire                _zz_95;
  wire       `Src1CtrlEnum_defaultEncoding_type _zz_96;
  wire       `AluCtrlEnum_defaultEncoding_type _zz_97;
  wire       `Src2CtrlEnum_defaultEncoding_type _zz_98;
  wire       `AluBitwiseCtrlEnum_defaultEncoding_type _zz_99;
  wire       `ShiftCtrlEnum_defaultEncoding_type _zz_100;
  wire       `EnvCtrlEnum_defaultEncoding_type _zz_101;
  wire       `BranchCtrlEnum_defaultEncoding_type _zz_102;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress1;
  wire       [4:0]    decode_RegFilePlugin_regFileReadAddress2;
  wire       [31:0]   decode_RegFilePlugin_rs1Data;
  wire       [31:0]   decode_RegFilePlugin_rs2Data;
  reg                 lastStageRegFileWrite_valid /* verilator public */ ;
  reg        [4:0]    lastStageRegFileWrite_payload_address /* verilator public */ ;
  reg        [31:0]   lastStageRegFileWrite_payload_data /* verilator public */ ;
  reg                 _zz_103;
  reg        [31:0]   execute_IntAluPlugin_bitwise;
  reg        [31:0]   _zz_104;
  reg        [31:0]   _zz_105;
  wire                _zz_106;
  reg        [19:0]   _zz_107;
  wire                _zz_108;
  reg        [19:0]   _zz_109;
  reg        [31:0]   _zz_110;
  reg        [31:0]   execute_SrcPlugin_addSub;
  wire                execute_SrcPlugin_less;
  wire       [4:0]    execute_FullBarrelShifterPlugin_amplitude;
  reg        [31:0]   _zz_111;
  wire       [31:0]   execute_FullBarrelShifterPlugin_reversed;
  reg        [31:0]   _zz_112;
  reg                 _zz_113;
  reg                 _zz_114;
  reg                 _zz_115;
  reg        [4:0]    _zz_116;
  reg        [31:0]   _zz_117;
  wire                _zz_118;
  wire                _zz_119;
  wire                _zz_120;
  wire                _zz_121;
  wire                _zz_122;
  wire                _zz_123;
  reg                 execute_MulPlugin_aSigned;
  reg                 execute_MulPlugin_bSigned;
  wire       [31:0]   execute_MulPlugin_a;
  wire       [31:0]   execute_MulPlugin_b;
  wire       [15:0]   execute_MulPlugin_aULow;
  wire       [15:0]   execute_MulPlugin_bULow;
  wire       [16:0]   execute_MulPlugin_aSLow;
  wire       [16:0]   execute_MulPlugin_bSLow;
  wire       [16:0]   execute_MulPlugin_aHigh;
  wire       [16:0]   execute_MulPlugin_bHigh;
  wire       [65:0]   writeBack_MulPlugin_result;
  reg        [32:0]   memory_DivPlugin_rs1;
  reg        [31:0]   memory_DivPlugin_rs2;
  reg        [64:0]   memory_DivPlugin_accumulator;
  wire                memory_DivPlugin_frontendOk;
  reg                 memory_DivPlugin_div_needRevert;
  reg                 memory_DivPlugin_div_counter_willIncrement;
  reg                 memory_DivPlugin_div_counter_willClear;
  reg        [5:0]    memory_DivPlugin_div_counter_valueNext;
  reg        [5:0]    memory_DivPlugin_div_counter_value;
  wire                memory_DivPlugin_div_counter_willOverflowIfInc;
  wire                memory_DivPlugin_div_counter_willOverflow;
  reg                 memory_DivPlugin_div_done;
  reg        [31:0]   memory_DivPlugin_div_result;
  wire       [31:0]   _zz_124;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderShifted;
  wire       [32:0]   memory_DivPlugin_div_stage_0_remainderMinusDenominator;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outRemainder;
  wire       [31:0]   memory_DivPlugin_div_stage_0_outNumerator;
  wire       [31:0]   _zz_125;
  wire                _zz_126;
  wire                _zz_127;
  reg        [32:0]   _zz_128;
  wire       [1:0]    CsrPlugin_misa_base;
  wire       [25:0]   CsrPlugin_misa_extensions;
  reg        [1:0]    CsrPlugin_mtvec_mode;
  reg        [29:0]   CsrPlugin_mtvec_base;
  reg        [31:0]   CsrPlugin_mepc;
  reg                 CsrPlugin_mstatus_MIE;
  reg                 CsrPlugin_mstatus_MPIE;
  reg        [1:0]    CsrPlugin_mstatus_MPP;
  reg                 CsrPlugin_mip_MEIP;
  reg                 CsrPlugin_mip_MTIP;
  reg                 CsrPlugin_mip_MSIP;
  reg                 CsrPlugin_mie_MEIE;
  reg                 CsrPlugin_mie_MTIE;
  reg                 CsrPlugin_mie_MSIE;
  reg                 CsrPlugin_mcause_interrupt;
  reg        [3:0]    CsrPlugin_mcause_exceptionCode;
  reg        [31:0]   CsrPlugin_mtval;
  reg        [63:0]   CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg        [63:0]   CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  wire                _zz_129;
  wire                _zz_130;
  wire                _zz_131;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg                 CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg        [3:0]    CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg        [31:0]   CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped;
  wire       [1:0]    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire       [1:0]    _zz_132;
  wire                _zz_133;
  reg                 CsrPlugin_interrupt_valid;
  reg        [3:0]    CsrPlugin_interrupt_code /* verilator public */ ;
  reg        [1:0]    CsrPlugin_interrupt_targetPrivilege;
  wire                CsrPlugin_exception;
  wire                CsrPlugin_lastStageWasWfi;
  reg                 CsrPlugin_pipelineLiberator_pcValids_0;
  reg                 CsrPlugin_pipelineLiberator_pcValids_1;
  reg                 CsrPlugin_pipelineLiberator_pcValids_2;
  wire                CsrPlugin_pipelineLiberator_active;
  reg                 CsrPlugin_pipelineLiberator_done;
  wire                CsrPlugin_interruptJump /* verilator public */ ;
  reg                 CsrPlugin_hadException /* verilator public */ ;
  reg        [1:0]    CsrPlugin_targetPrivilege;
  reg        [3:0]    CsrPlugin_trapCause;
  reg        [1:0]    CsrPlugin_xtvec_mode;
  reg        [29:0]   CsrPlugin_xtvec_base;
  reg                 execute_CsrPlugin_wfiWake;
  wire                execute_CsrPlugin_blockedBySideEffects;
  reg                 execute_CsrPlugin_illegalAccess;
  reg                 execute_CsrPlugin_illegalInstruction;
  wire       [31:0]   execute_CsrPlugin_readData;
  reg                 execute_CsrPlugin_writeInstruction;
  reg                 execute_CsrPlugin_readInstruction;
  wire                execute_CsrPlugin_writeEnable;
  wire                execute_CsrPlugin_readEnable;
  wire       [31:0]   execute_CsrPlugin_readToWriteData;
  reg        [31:0]   execute_CsrPlugin_writeData;
  wire       [11:0]   execute_CsrPlugin_csrAddress;
  wire                execute_BranchPlugin_eq;
  wire       [2:0]    _zz_134;
  reg                 _zz_135;
  reg                 _zz_136;
  wire                _zz_137;
  reg        [19:0]   _zz_138;
  wire                _zz_139;
  reg        [10:0]   _zz_140;
  wire                _zz_141;
  reg        [18:0]   _zz_142;
  reg                 _zz_143;
  wire                execute_BranchPlugin_missAlignedTarget;
  reg        [31:0]   execute_BranchPlugin_branch_src1;
  reg        [31:0]   execute_BranchPlugin_branch_src2;
  wire                _zz_144;
  reg        [19:0]   _zz_145;
  wire                _zz_146;
  reg        [10:0]   _zz_147;
  wire                _zz_148;
  reg        [18:0]   _zz_149;
  wire       [31:0]   execute_BranchPlugin_branchAdder;
  reg        [31:0]   externalInterruptArray_regNext;
  reg        [31:0]   _zz_150;
  wire       [31:0]   _zz_151;
  reg        [31:0]   memory_StreamrPlugin_rd;
  reg        [31:0]   decode_to_execute_PC;
  reg        [31:0]   execute_to_memory_PC;
  reg        [31:0]   memory_to_writeBack_PC;
  reg        [31:0]   decode_to_execute_INSTRUCTION;
  reg        [31:0]   execute_to_memory_INSTRUCTION;
  reg        [31:0]   memory_to_writeBack_INSTRUCTION;
  reg        [31:0]   decode_to_execute_FORMAL_PC_NEXT;
  reg        [31:0]   execute_to_memory_FORMAL_PC_NEXT;
  reg        [31:0]   memory_to_writeBack_FORMAL_PC_NEXT;
  reg                 decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  reg        `Src1CtrlEnum_defaultEncoding_type decode_to_execute_SRC1_CTRL;
  reg                 decode_to_execute_SRC_USE_SUB_LESS;
  reg                 decode_to_execute_MEMORY_ENABLE;
  reg                 execute_to_memory_MEMORY_ENABLE;
  reg                 memory_to_writeBack_MEMORY_ENABLE;
  reg        `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg        `Src2CtrlEnum_defaultEncoding_type decode_to_execute_SRC2_CTRL;
  reg                 decode_to_execute_REGFILE_WRITE_VALID;
  reg                 execute_to_memory_REGFILE_WRITE_VALID;
  reg                 memory_to_writeBack_REGFILE_WRITE_VALID;
  reg                 decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg                 decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  reg                 execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  reg                 decode_to_execute_MEMORY_WR;
  reg                 execute_to_memory_MEMORY_WR;
  reg                 memory_to_writeBack_MEMORY_WR;
  reg                 decode_to_execute_MEMORY_MANAGMENT;
  reg                 decode_to_execute_SRC_LESS_UNSIGNED;
  reg        `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
  reg        `ShiftCtrlEnum_defaultEncoding_type execute_to_memory_SHIFT_CTRL;
  reg                 decode_to_execute_IS_MUL;
  reg                 execute_to_memory_IS_MUL;
  reg                 memory_to_writeBack_IS_MUL;
  reg                 decode_to_execute_IS_DIV;
  reg                 execute_to_memory_IS_DIV;
  reg                 decode_to_execute_IS_RS1_SIGNED;
  reg                 decode_to_execute_IS_RS2_SIGNED;
  reg                 decode_to_execute_IS_CSR;
  reg        `EnvCtrlEnum_defaultEncoding_type decode_to_execute_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type execute_to_memory_ENV_CTRL;
  reg        `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_ENV_CTRL;
  reg        `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg                 decode_to_execute_IS_STREAMR;
  reg                 execute_to_memory_IS_STREAMR;
  reg                 decode_to_execute_IS_STREAMW;
  reg                 execute_to_memory_IS_STREAMW;
  reg        [31:0]   decode_to_execute_RS1;
  reg        [31:0]   execute_to_memory_RS1;
  reg        [31:0]   decode_to_execute_RS2;
  reg        [31:0]   execute_to_memory_RS2;
  reg                 decode_to_execute_SRC2_FORCE_ZERO;
  reg                 decode_to_execute_CSR_WRITE_OPCODE;
  reg                 decode_to_execute_CSR_READ_OPCODE;
  reg                 decode_to_execute_PREDICTION_HAD_BRANCHED2;
  reg        [1:0]    execute_to_memory_MEMORY_ADDRESS_LOW;
  reg        [1:0]    memory_to_writeBack_MEMORY_ADDRESS_LOW;
  reg        [31:0]   execute_to_memory_REGFILE_WRITE_DATA;
  reg        [31:0]   memory_to_writeBack_REGFILE_WRITE_DATA;
  reg        [31:0]   execute_to_memory_SHIFT_RIGHT;
  reg        [31:0]   execute_to_memory_MUL_LL;
  reg        [33:0]   execute_to_memory_MUL_LH;
  reg        [33:0]   execute_to_memory_MUL_HL;
  reg        [33:0]   execute_to_memory_MUL_HH;
  reg        [33:0]   memory_to_writeBack_MUL_HH;
  reg                 execute_to_memory_BRANCH_DO;
  reg        [31:0]   execute_to_memory_BRANCH_CALC;
  reg        [51:0]   memory_to_writeBack_MUL_LOW;
  reg                 execute_CsrPlugin_csr_3264;
  reg                 execute_CsrPlugin_csr_768;
  reg                 execute_CsrPlugin_csr_836;
  reg                 execute_CsrPlugin_csr_772;
  reg                 execute_CsrPlugin_csr_773;
  reg                 execute_CsrPlugin_csr_833;
  reg                 execute_CsrPlugin_csr_834;
  reg                 execute_CsrPlugin_csr_835;
  reg                 execute_CsrPlugin_csr_3008;
  reg                 execute_CsrPlugin_csr_4032;
  reg        [31:0]   _zz_152;
  reg        [31:0]   _zz_153;
  reg        [31:0]   _zz_154;
  reg        [31:0]   _zz_155;
  reg        [31:0]   _zz_156;
  reg        [31:0]   _zz_157;
  reg        [31:0]   _zz_158;
  reg        [31:0]   _zz_159;
  reg        [31:0]   _zz_160;
  reg        [2:0]    _zz_161;
  reg                 _zz_162;
  reg        [31:0]   iBusWishbone_DAT_MISO_regNext;
  reg        [2:0]    _zz_163;
  wire                _zz_164;
  wire                _zz_165;
  wire                _zz_166;
  wire                _zz_167;
  wire                _zz_168;
  reg                 _zz_169;
  reg        [31:0]   dBusWishbone_DAT_MISO_regNext;
  `ifndef SYNTHESIS
  reg [31:0] _zz_1_string;
  reg [31:0] _zz_2_string;
  reg [39:0] _zz_3_string;
  reg [39:0] _zz_4_string;
  reg [39:0] _zz_5_string;
  reg [39:0] _zz_6_string;
  reg [39:0] decode_ENV_CTRL_string;
  reg [39:0] _zz_7_string;
  reg [39:0] _zz_8_string;
  reg [39:0] _zz_9_string;
  reg [71:0] _zz_10_string;
  reg [71:0] _zz_11_string;
  reg [71:0] decode_SHIFT_CTRL_string;
  reg [71:0] _zz_12_string;
  reg [71:0] _zz_13_string;
  reg [71:0] _zz_14_string;
  reg [39:0] decode_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_15_string;
  reg [39:0] _zz_16_string;
  reg [39:0] _zz_17_string;
  reg [23:0] decode_SRC2_CTRL_string;
  reg [23:0] _zz_18_string;
  reg [23:0] _zz_19_string;
  reg [23:0] _zz_20_string;
  reg [63:0] decode_ALU_CTRL_string;
  reg [63:0] _zz_21_string;
  reg [63:0] _zz_22_string;
  reg [63:0] _zz_23_string;
  reg [95:0] decode_SRC1_CTRL_string;
  reg [95:0] _zz_24_string;
  reg [95:0] _zz_25_string;
  reg [95:0] _zz_26_string;
  reg [31:0] execute_BRANCH_CTRL_string;
  reg [31:0] _zz_27_string;
  reg [39:0] memory_ENV_CTRL_string;
  reg [39:0] _zz_28_string;
  reg [39:0] execute_ENV_CTRL_string;
  reg [39:0] _zz_29_string;
  reg [39:0] writeBack_ENV_CTRL_string;
  reg [39:0] _zz_30_string;
  reg [71:0] memory_SHIFT_CTRL_string;
  reg [71:0] _zz_33_string;
  reg [71:0] execute_SHIFT_CTRL_string;
  reg [71:0] _zz_34_string;
  reg [23:0] execute_SRC2_CTRL_string;
  reg [23:0] _zz_37_string;
  reg [95:0] execute_SRC1_CTRL_string;
  reg [95:0] _zz_39_string;
  reg [63:0] execute_ALU_CTRL_string;
  reg [63:0] _zz_40_string;
  reg [39:0] execute_ALU_BITWISE_CTRL_string;
  reg [39:0] _zz_41_string;
  reg [31:0] _zz_45_string;
  reg [39:0] _zz_46_string;
  reg [71:0] _zz_47_string;
  reg [39:0] _zz_48_string;
  reg [23:0] _zz_49_string;
  reg [63:0] _zz_50_string;
  reg [95:0] _zz_51_string;
  reg [31:0] decode_BRANCH_CTRL_string;
  reg [31:0] _zz_53_string;
  reg [95:0] _zz_96_string;
  reg [63:0] _zz_97_string;
  reg [23:0] _zz_98_string;
  reg [39:0] _zz_99_string;
  reg [71:0] _zz_100_string;
  reg [39:0] _zz_101_string;
  reg [31:0] _zz_102_string;
  reg [95:0] decode_to_execute_SRC1_CTRL_string;
  reg [63:0] decode_to_execute_ALU_CTRL_string;
  reg [23:0] decode_to_execute_SRC2_CTRL_string;
  reg [39:0] decode_to_execute_ALU_BITWISE_CTRL_string;
  reg [71:0] decode_to_execute_SHIFT_CTRL_string;
  reg [71:0] execute_to_memory_SHIFT_CTRL_string;
  reg [39:0] decode_to_execute_ENV_CTRL_string;
  reg [39:0] execute_to_memory_ENV_CTRL_string;
  reg [39:0] memory_to_writeBack_ENV_CTRL_string;
  reg [31:0] decode_to_execute_BRANCH_CTRL_string;
  `endif

  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;

  assign _zz_202 = (execute_arbitration_isValid && execute_IS_CSR);
  assign _zz_203 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_204 = 1'b1;
  assign _zz_205 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_206 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_207 = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_208 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_fetch_error) && (! IBusCachedPlugin_rsp_issueDetected_3));
  assign _zz_209 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_fetch_cacheMiss) && (! IBusCachedPlugin_rsp_issueDetected_2));
  assign _zz_210 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_fetch_mmuException) && (! IBusCachedPlugin_rsp_issueDetected_1));
  assign _zz_211 = ((_zz_172 && IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling) && (! IBusCachedPlugin_rsp_issueDetected));
  assign _zz_212 = ({decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid} != 2'b00);
  assign _zz_213 = ((memory_arbitration_isValid && memory_IS_STREAMR) && (memory_RS1 == 32'h0));
  assign _zz_214 = ((memory_arbitration_isValid && memory_IS_STREAMR) && (memory_RS1 == 32'h00000001));
  assign _zz_215 = ((memory_arbitration_isValid && memory_IS_STREAMR) && (memory_RS1 == 32'h00000002));
  assign _zz_216 = ((memory_arbitration_isValid && memory_IS_STREAMR) && (memory_RS1 == 32'h00000003));
  assign _zz_217 = ((memory_arbitration_isValid && memory_IS_STREAMR) && (memory_RS1 == 32'h00000004));
  assign _zz_218 = ((memory_arbitration_isValid && memory_IS_STREAMW) && (memory_RS1 == 32'h0));
  assign _zz_219 = ((memory_arbitration_isValid && memory_IS_STREAMW) && (memory_RS1 == 32'h00000001));
  assign _zz_220 = ((memory_arbitration_isValid && memory_IS_STREAMW) && (memory_RS1 == 32'h00000002));
  assign _zz_221 = ((memory_arbitration_isValid && memory_IS_STREAMW) && (memory_RS1 == 32'h00000003));
  assign _zz_222 = ((memory_arbitration_isValid && memory_IS_STREAMW) && (memory_RS1 == 32'h00000004));
  assign _zz_223 = (CsrPlugin_hadException || CsrPlugin_interruptJump);
  assign _zz_224 = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_225 = writeBack_INSTRUCTION[29 : 28];
  assign _zz_226 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_227 = (writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID);
  assign _zz_228 = (1'b0 || (! 1'b1));
  assign _zz_229 = (memory_arbitration_isValid && memory_REGFILE_WRITE_VALID);
  assign _zz_230 = (1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE));
  assign _zz_231 = (execute_arbitration_isValid && execute_REGFILE_WRITE_VALID);
  assign _zz_232 = (1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE));
  assign _zz_233 = execute_INSTRUCTION[13 : 12];
  assign _zz_234 = (memory_DivPlugin_frontendOk && (! memory_DivPlugin_div_done));
  assign _zz_235 = (! memory_arbitration_isStuck);
  assign _zz_236 = (CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]);
  assign _zz_237 = (execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_ECALL));
  assign _zz_238 = (iBus_cmd_valid || (_zz_161 != 3'b000));
  assign _zz_239 = (_zz_198 && (! dataCache_1_io_mem_cmd_s2mPipe_ready));
  assign _zz_240 = (CsrPlugin_mstatus_MIE || (CsrPlugin_privilege < 2'b11));
  assign _zz_241 = ((_zz_129 && 1'b1) && (! 1'b0));
  assign _zz_242 = ((_zz_130 && 1'b1) && (! 1'b0));
  assign _zz_243 = ((_zz_131 && 1'b1) && (! 1'b0));
  assign _zz_244 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_245 = writeBack_INSTRUCTION[13 : 12];
  assign _zz_246 = execute_INSTRUCTION[13];
  assign _zz_247 = ($signed(_zz_248) + $signed(_zz_253));
  assign _zz_248 = ($signed(_zz_249) + $signed(_zz_251));
  assign _zz_249 = 52'h0;
  assign _zz_250 = {1'b0,memory_MUL_LL};
  assign _zz_251 = {{19{_zz_250[32]}}, _zz_250};
  assign _zz_252 = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_253 = {{2{_zz_252[49]}}, _zz_252};
  assign _zz_254 = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_255 = {{2{_zz_254[49]}}, _zz_254};
  assign _zz_256 = ($signed(_zz_258) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_257 = _zz_256[31 : 0];
  assign _zz_258 = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_259 = _zz_89[33 : 33];
  assign _zz_260 = _zz_89[32 : 32];
  assign _zz_261 = _zz_89[27 : 27];
  assign _zz_262 = _zz_89[26 : 26];
  assign _zz_263 = _zz_89[25 : 25];
  assign _zz_264 = _zz_89[24 : 24];
  assign _zz_265 = _zz_89[23 : 23];
  assign _zz_266 = _zz_89[17 : 17];
  assign _zz_267 = _zz_89[16 : 16];
  assign _zz_268 = _zz_89[13 : 13];
  assign _zz_269 = _zz_89[12 : 12];
  assign _zz_270 = _zz_89[11 : 11];
  assign _zz_271 = _zz_89[15 : 15];
  assign _zz_272 = _zz_89[5 : 5];
  assign _zz_273 = _zz_89[3 : 3];
  assign _zz_274 = _zz_89[20 : 20];
  assign _zz_275 = _zz_89[10 : 10];
  assign _zz_276 = _zz_89[4 : 4];
  assign _zz_277 = _zz_89[0 : 0];
  assign _zz_278 = (_zz_56 - 4'b0001);
  assign _zz_279 = {IBusCachedPlugin_fetchPc_inc,2'b00};
  assign _zz_280 = {29'd0, _zz_279};
  assign _zz_281 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_282 = {{_zz_72,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_283 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_284 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_285 = {{_zz_74,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_286 = {{_zz_76,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_287 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_288 = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_289 = (writeBack_MEMORY_WR ? 3'b111 : 3'b101);
  assign _zz_290 = (writeBack_MEMORY_WR ? 3'b110 : 3'b100);
  assign _zz_291 = execute_SRC_LESS;
  assign _zz_292 = 3'b100;
  assign _zz_293 = execute_INSTRUCTION[19 : 15];
  assign _zz_294 = execute_INSTRUCTION[31 : 20];
  assign _zz_295 = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]};
  assign _zz_296 = ($signed(_zz_297) + $signed(_zz_300));
  assign _zz_297 = ($signed(_zz_298) + $signed(_zz_299));
  assign _zz_298 = execute_SRC1;
  assign _zz_299 = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_300 = (execute_SRC_USE_SUB_LESS ? _zz_301 : _zz_302);
  assign _zz_301 = 32'h00000001;
  assign _zz_302 = 32'h0;
  assign _zz_303 = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_304 = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz_305 = writeBack_MUL_LOW[31 : 0];
  assign _zz_306 = writeBack_MulPlugin_result[63 : 32];
  assign _zz_307 = memory_DivPlugin_div_counter_willIncrement;
  assign _zz_308 = {5'd0, _zz_307};
  assign _zz_309 = {1'd0, memory_DivPlugin_rs2};
  assign _zz_310 = memory_DivPlugin_div_stage_0_remainderMinusDenominator[31:0];
  assign _zz_311 = memory_DivPlugin_div_stage_0_remainderShifted[31:0];
  assign _zz_312 = {_zz_124,(! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32])};
  assign _zz_313 = _zz_314;
  assign _zz_314 = _zz_315;
  assign _zz_315 = ({memory_DivPlugin_div_needRevert,(memory_DivPlugin_div_needRevert ? (~ _zz_125) : _zz_125)} + _zz_317);
  assign _zz_316 = memory_DivPlugin_div_needRevert;
  assign _zz_317 = {32'd0, _zz_316};
  assign _zz_318 = _zz_127;
  assign _zz_319 = {32'd0, _zz_318};
  assign _zz_320 = _zz_126;
  assign _zz_321 = {31'd0, _zz_320};
  assign _zz_322 = (_zz_132 & (~ _zz_323));
  assign _zz_323 = (_zz_132 - 2'b01);
  assign _zz_324 = execute_INSTRUCTION[31 : 20];
  assign _zz_325 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_326 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_327 = {_zz_138,execute_INSTRUCTION[31 : 20]};
  assign _zz_328 = {{_zz_140,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_329 = {{_zz_142,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_330 = execute_INSTRUCTION[31 : 20];
  assign _zz_331 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_332 = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_333 = 3'b100;
  assign _zz_334 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_335 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_336 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_337 = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_338 = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_339 = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_340 = (iBus_cmd_payload_address >>> 5);
  assign _zz_341 = 1'b1;
  assign _zz_342 = 1'b1;
  assign _zz_343 = {_zz_60,_zz_59};
  assign _zz_344 = 32'h0000107f;
  assign _zz_345 = (decode_INSTRUCTION & 32'h0000207f);
  assign _zz_346 = 32'h00002073;
  assign _zz_347 = ((decode_INSTRUCTION & 32'h0000407f) == 32'h00004063);
  assign _zz_348 = ((decode_INSTRUCTION & 32'h0000207f) == 32'h00002013);
  assign _zz_349 = {((decode_INSTRUCTION & 32'h0000603f) == 32'h00000023),{((decode_INSTRUCTION & 32'h0000207f) == 32'h00000003),{((decode_INSTRUCTION & _zz_350) == 32'h00000003),{(_zz_351 == _zz_352),{_zz_353,{_zz_354,_zz_355}}}}}};
  assign _zz_350 = 32'h0000505f;
  assign _zz_351 = (decode_INSTRUCTION & 32'h0000707b);
  assign _zz_352 = 32'h00000063;
  assign _zz_353 = ((decode_INSTRUCTION & 32'h0000607f) == 32'h0000000f);
  assign _zz_354 = ((decode_INSTRUCTION & 32'hfc00007f) == 32'h00000033);
  assign _zz_355 = {((decode_INSTRUCTION & 32'h01f0707f) == 32'h0000500f),{((decode_INSTRUCTION & 32'hbc00707f) == 32'h00005013),{((decode_INSTRUCTION & _zz_356) == 32'h00001013),{(_zz_357 == _zz_358),{_zz_359,{_zz_360,_zz_361}}}}}};
  assign _zz_356 = 32'hfc00307f;
  assign _zz_357 = (decode_INSTRUCTION & 32'hfe00607f);
  assign _zz_358 = 32'hfe00000b;
  assign _zz_359 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00005033);
  assign _zz_360 = ((decode_INSTRUCTION & 32'hbe00707f) == 32'h00000033);
  assign _zz_361 = {((decode_INSTRUCTION & 32'hdfffffff) == 32'h10200073),{((decode_INSTRUCTION & 32'hffffffff) == 32'h10500073),((decode_INSTRUCTION & 32'hffffffff) == 32'h00000073)}};
  assign _zz_362 = decode_INSTRUCTION[31];
  assign _zz_363 = decode_INSTRUCTION[31];
  assign _zz_364 = decode_INSTRUCTION[7];
  assign _zz_365 = (decode_INSTRUCTION & 32'h0000100c);
  assign _zz_366 = 32'h00001008;
  assign _zz_367 = _zz_93;
  assign _zz_368 = ((decode_INSTRUCTION & 32'h0000001c) == 32'h00000004);
  assign _zz_369 = ((decode_INSTRUCTION & 32'h00000058) == 32'h00000040);
  assign _zz_370 = 1'b0;
  assign _zz_371 = (((decode_INSTRUCTION & _zz_374) == 32'h00000050) != 1'b0);
  assign _zz_372 = ((_zz_375 == _zz_376) != 1'b0);
  assign _zz_373 = {({_zz_377,_zz_378} != 2'b00),{(_zz_379 != _zz_380),{_zz_381,{_zz_382,_zz_383}}}};
  assign _zz_374 = 32'h10003050;
  assign _zz_375 = (decode_INSTRUCTION & 32'h10403050);
  assign _zz_376 = 32'h10000050;
  assign _zz_377 = ((decode_INSTRUCTION & 32'h00001050) == 32'h00001050);
  assign _zz_378 = ((decode_INSTRUCTION & 32'h00002050) == 32'h00002050);
  assign _zz_379 = _zz_95;
  assign _zz_380 = 1'b0;
  assign _zz_381 = (_zz_95 != 1'b0);
  assign _zz_382 = ((_zz_384 == _zz_385) != 1'b0);
  assign _zz_383 = {(_zz_386 != 1'b0),{(_zz_387 != _zz_388),{_zz_389,{_zz_390,_zz_391}}}};
  assign _zz_384 = (decode_INSTRUCTION & 32'h02004064);
  assign _zz_385 = 32'h02004020;
  assign _zz_386 = ((decode_INSTRUCTION & 32'h02004074) == 32'h02000030);
  assign _zz_387 = {(_zz_392 == _zz_393),(_zz_394 == _zz_395)};
  assign _zz_388 = 2'b00;
  assign _zz_389 = ({_zz_396,{_zz_397,_zz_398}} != 3'b000);
  assign _zz_390 = (_zz_399 != 1'b0);
  assign _zz_391 = {(_zz_400 != _zz_401),{_zz_402,{_zz_403,_zz_404}}};
  assign _zz_392 = (decode_INSTRUCTION & 32'h00007034);
  assign _zz_393 = 32'h00005010;
  assign _zz_394 = (decode_INSTRUCTION & 32'h02007064);
  assign _zz_395 = 32'h00005020;
  assign _zz_396 = ((decode_INSTRUCTION & 32'h40003054) == 32'h40001010);
  assign _zz_397 = ((decode_INSTRUCTION & _zz_405) == 32'h00001010);
  assign _zz_398 = ((decode_INSTRUCTION & _zz_406) == 32'h00001010);
  assign _zz_399 = ((decode_INSTRUCTION & 32'h00000064) == 32'h00000024);
  assign _zz_400 = ((decode_INSTRUCTION & _zz_407) == 32'h00001000);
  assign _zz_401 = 1'b0;
  assign _zz_402 = ((_zz_408 == _zz_409) != 1'b0);
  assign _zz_403 = ({_zz_410,_zz_411} != 2'b00);
  assign _zz_404 = {(_zz_412 != _zz_413),{_zz_414,{_zz_415,_zz_416}}};
  assign _zz_405 = 32'h00007034;
  assign _zz_406 = 32'h02007054;
  assign _zz_407 = 32'h00001000;
  assign _zz_408 = (decode_INSTRUCTION & 32'h00003000);
  assign _zz_409 = 32'h00002000;
  assign _zz_410 = ((decode_INSTRUCTION & _zz_417) == 32'h00002000);
  assign _zz_411 = ((decode_INSTRUCTION & _zz_418) == 32'h00001000);
  assign _zz_412 = ((decode_INSTRUCTION & _zz_419) == 32'h00004008);
  assign _zz_413 = 1'b0;
  assign _zz_414 = ({_zz_420,{_zz_421,_zz_422}} != 3'b000);
  assign _zz_415 = ({_zz_423,_zz_424} != 3'b000);
  assign _zz_416 = {(_zz_425 != _zz_426),{_zz_427,{_zz_428,_zz_429}}};
  assign _zz_417 = 32'h00002010;
  assign _zz_418 = 32'h00005000;
  assign _zz_419 = 32'h00004048;
  assign _zz_420 = ((decode_INSTRUCTION & 32'h00000034) == 32'h00000020);
  assign _zz_421 = _zz_94;
  assign _zz_422 = ((decode_INSTRUCTION & _zz_430) == 32'h00000020);
  assign _zz_423 = ((decode_INSTRUCTION & _zz_431) == 32'h00000040);
  assign _zz_424 = {(_zz_432 == _zz_433),(_zz_434 == _zz_435)};
  assign _zz_425 = ((decode_INSTRUCTION & _zz_436) == 32'h00000020);
  assign _zz_426 = 1'b0;
  assign _zz_427 = ({_zz_437,{_zz_438,_zz_439}} != 6'h0);
  assign _zz_428 = ({_zz_440,_zz_441} != 5'h0);
  assign _zz_429 = {(_zz_442 != _zz_443),{_zz_444,{_zz_445,_zz_446}}};
  assign _zz_430 = 32'h00000064;
  assign _zz_431 = 32'h00000050;
  assign _zz_432 = (decode_INSTRUCTION & 32'h00000038);
  assign _zz_433 = 32'h0;
  assign _zz_434 = (decode_INSTRUCTION & 32'h00403040);
  assign _zz_435 = 32'h00000040;
  assign _zz_436 = 32'h00000020;
  assign _zz_437 = ((decode_INSTRUCTION & _zz_447) == 32'h00000008);
  assign _zz_438 = (_zz_448 == _zz_449);
  assign _zz_439 = {_zz_92,{_zz_450,_zz_451}};
  assign _zz_440 = _zz_92;
  assign _zz_441 = {_zz_452,{_zz_453,_zz_454}};
  assign _zz_442 = {_zz_93,{_zz_455,_zz_456}};
  assign _zz_443 = 7'h0;
  assign _zz_444 = ({_zz_457,_zz_458} != 2'b00);
  assign _zz_445 = (_zz_459 != _zz_460);
  assign _zz_446 = {_zz_461,{_zz_462,_zz_463}};
  assign _zz_447 = 32'h00000008;
  assign _zz_448 = (decode_INSTRUCTION & 32'h00000040);
  assign _zz_449 = 32'h00000040;
  assign _zz_450 = (_zz_464 == _zz_465);
  assign _zz_451 = {_zz_466,_zz_467};
  assign _zz_452 = ((decode_INSTRUCTION & _zz_468) == 32'h00002010);
  assign _zz_453 = (_zz_469 == _zz_470);
  assign _zz_454 = {_zz_471,_zz_472};
  assign _zz_455 = (_zz_473 == _zz_474);
  assign _zz_456 = {_zz_475,{_zz_476,_zz_477}};
  assign _zz_457 = _zz_92;
  assign _zz_458 = (_zz_478 == _zz_479);
  assign _zz_459 = {_zz_92,_zz_91};
  assign _zz_460 = 2'b00;
  assign _zz_461 = (_zz_480 != 1'b0);
  assign _zz_462 = (_zz_481 != _zz_482);
  assign _zz_463 = {_zz_483,{_zz_484,_zz_485}};
  assign _zz_464 = (decode_INSTRUCTION & 32'h00004020);
  assign _zz_465 = 32'h00004020;
  assign _zz_466 = ((decode_INSTRUCTION & _zz_486) == 32'h00000010);
  assign _zz_467 = ((decode_INSTRUCTION & _zz_487) == 32'h00000020);
  assign _zz_468 = 32'h00002030;
  assign _zz_469 = (decode_INSTRUCTION & 32'h00001030);
  assign _zz_470 = 32'h00000010;
  assign _zz_471 = ((decode_INSTRUCTION & _zz_488) == 32'h00002020);
  assign _zz_472 = ((decode_INSTRUCTION & _zz_489) == 32'h00000020);
  assign _zz_473 = (decode_INSTRUCTION & 32'h00001010);
  assign _zz_474 = 32'h00001010;
  assign _zz_475 = ((decode_INSTRUCTION & _zz_490) == 32'h00002010);
  assign _zz_476 = (_zz_491 == _zz_492);
  assign _zz_477 = {_zz_493,{_zz_494,_zz_495}};
  assign _zz_478 = (decode_INSTRUCTION & 32'h00000070);
  assign _zz_479 = 32'h00000020;
  assign _zz_480 = ((decode_INSTRUCTION & _zz_496) == 32'h00004010);
  assign _zz_481 = (_zz_497 == _zz_498);
  assign _zz_482 = 1'b0;
  assign _zz_483 = ({_zz_499,_zz_500} != 4'b0000);
  assign _zz_484 = (_zz_501 != _zz_502);
  assign _zz_485 = {_zz_503,{_zz_504,_zz_505}};
  assign _zz_486 = 32'h00000030;
  assign _zz_487 = 32'h02000020;
  assign _zz_488 = 32'h02002060;
  assign _zz_489 = 32'h02003020;
  assign _zz_490 = 32'h00002010;
  assign _zz_491 = (decode_INSTRUCTION & 32'h00000050);
  assign _zz_492 = 32'h00000010;
  assign _zz_493 = ((decode_INSTRUCTION & 32'h0000000c) == 32'h00000004);
  assign _zz_494 = _zz_91;
  assign _zz_495 = ((decode_INSTRUCTION & _zz_506) == 32'h00001000);
  assign _zz_496 = 32'h00004014;
  assign _zz_497 = (decode_INSTRUCTION & 32'h00006014);
  assign _zz_498 = 32'h00002010;
  assign _zz_499 = ((decode_INSTRUCTION & _zz_507) == 32'h0);
  assign _zz_500 = {(_zz_508 == _zz_509),{_zz_510,_zz_511}};
  assign _zz_501 = ((decode_INSTRUCTION & _zz_512) == 32'h0);
  assign _zz_502 = 1'b0;
  assign _zz_503 = ({_zz_513,{_zz_514,_zz_515}} != 3'b000);
  assign _zz_504 = ({_zz_516,_zz_517} != 2'b00);
  assign _zz_505 = {(_zz_518 != _zz_519),(_zz_520 != _zz_521)};
  assign _zz_506 = 32'h00001024;
  assign _zz_507 = 32'h00000044;
  assign _zz_508 = (decode_INSTRUCTION & 32'h00000018);
  assign _zz_509 = 32'h0;
  assign _zz_510 = ((decode_INSTRUCTION & 32'h00006004) == 32'h00002000);
  assign _zz_511 = ((decode_INSTRUCTION & 32'h00005004) == 32'h00001000);
  assign _zz_512 = 32'h00000058;
  assign _zz_513 = ((decode_INSTRUCTION & 32'h00000044) == 32'h00000040);
  assign _zz_514 = ((decode_INSTRUCTION & _zz_522) == 32'h00002010);
  assign _zz_515 = ((decode_INSTRUCTION & _zz_523) == 32'h40000030);
  assign _zz_516 = ((decode_INSTRUCTION & _zz_524) == 32'h00000004);
  assign _zz_517 = _zz_90;
  assign _zz_518 = {(_zz_525 == _zz_526),_zz_90};
  assign _zz_519 = 2'b00;
  assign _zz_520 = ((decode_INSTRUCTION & _zz_527) == 32'h00001004);
  assign _zz_521 = 1'b0;
  assign _zz_522 = 32'h00002014;
  assign _zz_523 = 32'h40000034;
  assign _zz_524 = 32'h00000014;
  assign _zz_525 = (decode_INSTRUCTION & 32'h00000044);
  assign _zz_526 = 32'h00000004;
  assign _zz_527 = 32'h00005054;
  assign _zz_528 = execute_INSTRUCTION[31];
  assign _zz_529 = execute_INSTRUCTION[31];
  assign _zz_530 = execute_INSTRUCTION[7];
  always @ (posedge clk) begin
    if(_zz_341) begin
      _zz_199 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @ (posedge clk) begin
    if(_zz_342) begin
      _zz_200 <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  always @ (posedge clk) begin
    if(_zz_44) begin
      RegFilePlugin_regFile[lastStageRegFileWrite_payload_address] <= lastStageRegFileWrite_payload_data;
    end
  end

  InstructionCache IBusCachedPlugin_cache (
    .io_flush                                 (_zz_170                                                     ), //i
    .io_cpu_prefetch_isValid                  (_zz_171                                                     ), //i
    .io_cpu_prefetch_haltIt                   (IBusCachedPlugin_cache_io_cpu_prefetch_haltIt               ), //o
    .io_cpu_prefetch_pc                       (IBusCachedPlugin_iBusRsp_stages_0_input_payload[31:0]       ), //i
    .io_cpu_fetch_isValid                     (_zz_172                                                     ), //i
    .io_cpu_fetch_isStuck                     (_zz_173                                                     ), //i
    .io_cpu_fetch_isRemoved                   (_zz_174                                                     ), //i
    .io_cpu_fetch_pc                          (IBusCachedPlugin_iBusRsp_stages_1_input_payload[31:0]       ), //i
    .io_cpu_fetch_data                        (IBusCachedPlugin_cache_io_cpu_fetch_data[31:0]              ), //o
    .io_cpu_fetch_mmuRsp_physicalAddress      (IBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]           ), //i
    .io_cpu_fetch_mmuRsp_isIoAccess           (IBusCachedPlugin_mmuBus_rsp_isIoAccess                      ), //i
    .io_cpu_fetch_mmuRsp_isPaging             (IBusCachedPlugin_mmuBus_rsp_isPaging                        ), //i
    .io_cpu_fetch_mmuRsp_allowRead            (IBusCachedPlugin_mmuBus_rsp_allowRead                       ), //i
    .io_cpu_fetch_mmuRsp_allowWrite           (IBusCachedPlugin_mmuBus_rsp_allowWrite                      ), //i
    .io_cpu_fetch_mmuRsp_allowExecute         (IBusCachedPlugin_mmuBus_rsp_allowExecute                    ), //i
    .io_cpu_fetch_mmuRsp_exception            (IBusCachedPlugin_mmuBus_rsp_exception                       ), //i
    .io_cpu_fetch_mmuRsp_refilling            (IBusCachedPlugin_mmuBus_rsp_refilling                       ), //i
    .io_cpu_fetch_mmuRsp_bypassTranslation    (IBusCachedPlugin_mmuBus_rsp_bypassTranslation               ), //i
    .io_cpu_fetch_physicalAddress             (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //o
    .io_cpu_fetch_cacheMiss                   (IBusCachedPlugin_cache_io_cpu_fetch_cacheMiss               ), //o
    .io_cpu_fetch_error                       (IBusCachedPlugin_cache_io_cpu_fetch_error                   ), //o
    .io_cpu_fetch_mmuRefilling                (IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling            ), //o
    .io_cpu_fetch_mmuException                (IBusCachedPlugin_cache_io_cpu_fetch_mmuException            ), //o
    .io_cpu_fetch_isUser                      (_zz_175                                                     ), //i
    .io_cpu_decode_isValid                    (_zz_176                                                     ), //i
    .io_cpu_decode_isStuck                    (_zz_177                                                     ), //i
    .io_cpu_decode_pc                         (_zz_178[31:0]                                               ), //i
    .io_cpu_decode_physicalAddress            (IBusCachedPlugin_cache_io_cpu_decode_physicalAddress[31:0]  ), //o
    .io_cpu_decode_data                       (IBusCachedPlugin_cache_io_cpu_decode_data[31:0]             ), //o
    .io_cpu_fill_valid                        (_zz_179                                                     ), //i
    .io_cpu_fill_payload                      (IBusCachedPlugin_cache_io_cpu_fetch_physicalAddress[31:0]   ), //i
    .io_mem_cmd_valid                         (IBusCachedPlugin_cache_io_mem_cmd_valid                     ), //o
    .io_mem_cmd_ready                         (iBus_cmd_ready                                              ), //i
    .io_mem_cmd_payload_address               (IBusCachedPlugin_cache_io_mem_cmd_payload_address[31:0]     ), //o
    .io_mem_cmd_payload_size                  (IBusCachedPlugin_cache_io_mem_cmd_payload_size[2:0]         ), //o
    .io_mem_rsp_valid                         (iBus_rsp_valid                                              ), //i
    .io_mem_rsp_payload_data                  (iBus_rsp_payload_data[31:0]                                 ), //i
    .io_mem_rsp_payload_error                 (iBus_rsp_payload_error                                      ), //i
    .clk                                      (clk                                                         ), //i
    .reset                                    (reset                                                       )  //i
  );
  DataCache dataCache_1 (
    .io_cpu_execute_isValid                    (_zz_180                                            ), //i
    .io_cpu_execute_address                    (_zz_181[31:0]                                      ), //i
    .io_cpu_execute_haltIt                     (dataCache_1_io_cpu_execute_haltIt                  ), //o
    .io_cpu_execute_args_wr                    (execute_MEMORY_WR                                  ), //i
    .io_cpu_execute_args_data                  (_zz_84[31:0]                                       ), //i
    .io_cpu_execute_args_size                  (execute_DBusCachedPlugin_size[1:0]                 ), //i
    .io_cpu_execute_args_totalyConsistent      (execute_MEMORY_FORCE_CONSTISTENCY                  ), //i
    .io_cpu_execute_refilling                  (dataCache_1_io_cpu_execute_refilling               ), //o
    .io_cpu_memory_isValid                     (_zz_182                                            ), //i
    .io_cpu_memory_isStuck                     (memory_arbitration_isStuck                         ), //i
    .io_cpu_memory_isWrite                     (dataCache_1_io_cpu_memory_isWrite                  ), //o
    .io_cpu_memory_address                     (_zz_183[31:0]                                      ), //i
    .io_cpu_memory_mmuRsp_physicalAddress      (DBusCachedPlugin_mmuBus_rsp_physicalAddress[31:0]  ), //i
    .io_cpu_memory_mmuRsp_isIoAccess           (_zz_184                                            ), //i
    .io_cpu_memory_mmuRsp_isPaging             (DBusCachedPlugin_mmuBus_rsp_isPaging               ), //i
    .io_cpu_memory_mmuRsp_allowRead            (DBusCachedPlugin_mmuBus_rsp_allowRead              ), //i
    .io_cpu_memory_mmuRsp_allowWrite           (DBusCachedPlugin_mmuBus_rsp_allowWrite             ), //i
    .io_cpu_memory_mmuRsp_allowExecute         (DBusCachedPlugin_mmuBus_rsp_allowExecute           ), //i
    .io_cpu_memory_mmuRsp_exception            (DBusCachedPlugin_mmuBus_rsp_exception              ), //i
    .io_cpu_memory_mmuRsp_refilling            (DBusCachedPlugin_mmuBus_rsp_refilling              ), //i
    .io_cpu_memory_mmuRsp_bypassTranslation    (DBusCachedPlugin_mmuBus_rsp_bypassTranslation      ), //i
    .io_cpu_writeBack_isValid                  (_zz_185                                            ), //i
    .io_cpu_writeBack_isStuck                  (writeBack_arbitration_isStuck                      ), //i
    .io_cpu_writeBack_isUser                   (_zz_186                                            ), //i
    .io_cpu_writeBack_haltIt                   (dataCache_1_io_cpu_writeBack_haltIt                ), //o
    .io_cpu_writeBack_isWrite                  (dataCache_1_io_cpu_writeBack_isWrite               ), //o
    .io_cpu_writeBack_data                     (dataCache_1_io_cpu_writeBack_data[31:0]            ), //o
    .io_cpu_writeBack_address                  (_zz_187[31:0]                                      ), //i
    .io_cpu_writeBack_mmuException             (dataCache_1_io_cpu_writeBack_mmuException          ), //o
    .io_cpu_writeBack_unalignedAccess          (dataCache_1_io_cpu_writeBack_unalignedAccess       ), //o
    .io_cpu_writeBack_accessError              (dataCache_1_io_cpu_writeBack_accessError           ), //o
    .io_cpu_writeBack_keepMemRspData           (dataCache_1_io_cpu_writeBack_keepMemRspData        ), //o
    .io_cpu_writeBack_fence_SW                 (_zz_188                                            ), //i
    .io_cpu_writeBack_fence_SR                 (_zz_189                                            ), //i
    .io_cpu_writeBack_fence_SO                 (_zz_190                                            ), //i
    .io_cpu_writeBack_fence_SI                 (_zz_191                                            ), //i
    .io_cpu_writeBack_fence_PW                 (_zz_192                                            ), //i
    .io_cpu_writeBack_fence_PR                 (_zz_193                                            ), //i
    .io_cpu_writeBack_fence_PO                 (_zz_194                                            ), //i
    .io_cpu_writeBack_fence_PI                 (_zz_195                                            ), //i
    .io_cpu_writeBack_fence_FM                 (_zz_196[3:0]                                       ), //i
    .io_cpu_redo                               (dataCache_1_io_cpu_redo                            ), //o
    .io_cpu_flush_valid                        (_zz_197                                            ), //i
    .io_cpu_flush_ready                        (dataCache_1_io_cpu_flush_ready                     ), //o
    .io_mem_cmd_valid                          (dataCache_1_io_mem_cmd_valid                       ), //o
    .io_mem_cmd_ready                          (_zz_198                                            ), //i
    .io_mem_cmd_payload_wr                     (dataCache_1_io_mem_cmd_payload_wr                  ), //o
    .io_mem_cmd_payload_uncached               (dataCache_1_io_mem_cmd_payload_uncached            ), //o
    .io_mem_cmd_payload_address                (dataCache_1_io_mem_cmd_payload_address[31:0]       ), //o
    .io_mem_cmd_payload_data                   (dataCache_1_io_mem_cmd_payload_data[31:0]          ), //o
    .io_mem_cmd_payload_mask                   (dataCache_1_io_mem_cmd_payload_mask[3:0]           ), //o
    .io_mem_cmd_payload_length                 (dataCache_1_io_mem_cmd_payload_length[2:0]         ), //o
    .io_mem_cmd_payload_last                   (dataCache_1_io_mem_cmd_payload_last                ), //o
    .io_mem_rsp_valid                          (dBus_rsp_valid                                     ), //i
    .io_mem_rsp_payload_last                   (dBus_rsp_payload_last                              ), //i
    .io_mem_rsp_payload_data                   (dBus_rsp_payload_data[31:0]                        ), //i
    .io_mem_rsp_payload_error                  (dBus_rsp_payload_error                             ), //i
    .clk                                       (clk                                                ), //i
    .reset                                     (reset                                              )  //i
  );
  always @(*) begin
    case(_zz_343)
      2'b00 : begin
        _zz_201 = DBusCachedPlugin_redoBranch_payload;
      end
      2'b01 : begin
        _zz_201 = CsrPlugin_jumpInterface_payload;
      end
      2'b10 : begin
        _zz_201 = BranchPlugin_jumpInterface_payload;
      end
      default : begin
        _zz_201 = IBusCachedPlugin_predictionJumpInterface_payload;
      end
    endcase
  end

  `ifndef SYNTHESIS
  always @(*) begin
    case(_zz_1)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_1_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_1_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_1_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_1_string = "JALR";
      default : _zz_1_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_2)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_2_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_2_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_2_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_2_string = "JALR";
      default : _zz_2_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_3)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_3_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_3_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_3_string = "ECALL";
      default : _zz_3_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_4)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_4_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_4_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_4_string = "ECALL";
      default : _zz_4_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_5)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_5_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_5_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_5_string = "ECALL";
      default : _zz_5_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_6)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_6_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_6_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_6_string = "ECALL";
      default : _zz_6_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_ENV_CTRL_string = "ECALL";
      default : decode_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_7)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_7_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_7_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_7_string = "ECALL";
      default : _zz_7_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_8)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_8_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_8_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_8_string = "ECALL";
      default : _zz_8_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_9)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_9_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_9_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_9_string = "ECALL";
      default : _zz_9_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_10)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_10_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_10_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_10_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_10_string = "SRA_1    ";
      default : _zz_10_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_11)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_11_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_11_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_11_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_11_string = "SRA_1    ";
      default : _zz_11_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_12)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_12_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_12_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_12_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_12_string = "SRA_1    ";
      default : _zz_12_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_13)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_13_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_13_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_13_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_13_string = "SRA_1    ";
      default : _zz_13_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_14)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_14_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_14_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_14_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_14_string = "SRA_1    ";
      default : _zz_14_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_15)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_15_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_15_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_15_string = "AND_1";
      default : _zz_15_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_16)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_16_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_16_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_16_string = "AND_1";
      default : _zz_16_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_17)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_17_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_17_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_17_string = "AND_1";
      default : _zz_17_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_SRC2_CTRL_string = "PC ";
      default : decode_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_18)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_18_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_18_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_18_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_18_string = "PC ";
      default : _zz_18_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_19)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_19_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_19_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_19_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_19_string = "PC ";
      default : _zz_19_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_20)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_20_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_20_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_20_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_20_string = "PC ";
      default : _zz_20_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_ALU_CTRL_string = "BITWISE ";
      default : decode_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_21)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_21_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_21_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_21_string = "BITWISE ";
      default : _zz_21_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_22)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_22_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_22_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_22_string = "BITWISE ";
      default : _zz_22_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_23)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_23_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_23_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_23_string = "BITWISE ";
      default : _zz_23_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_SRC1_CTRL_string = "URS1        ";
      default : decode_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_24)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_24_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_24_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_24_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_24_string = "URS1        ";
      default : _zz_24_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_25)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_25_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_25_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_25_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_25_string = "URS1        ";
      default : _zz_25_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_26)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_26_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_26_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_26_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_26_string = "URS1        ";
      default : _zz_26_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : execute_BRANCH_CTRL_string = "JALR";
      default : execute_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_27)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_27_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_27_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_27_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_27_string = "JALR";
      default : _zz_27_string = "????";
    endcase
  end
  always @(*) begin
    case(memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_ENV_CTRL_string = "ECALL";
      default : memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_28)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_28_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_28_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_28_string = "ECALL";
      default : _zz_28_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_ENV_CTRL_string = "ECALL";
      default : execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_29)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_29_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_29_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_29_string = "ECALL";
      default : _zz_29_string = "?????";
    endcase
  end
  always @(*) begin
    case(writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : writeBack_ENV_CTRL_string = "ECALL";
      default : writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_30)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_30_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_30_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_30_string = "ECALL";
      default : _zz_30_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : memory_SHIFT_CTRL_string = "SRA_1    ";
      default : memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_33)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_33_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_33_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_33_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_33_string = "SRA_1    ";
      default : _zz_33_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_34)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_34_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_34_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_34_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_34_string = "SRA_1    ";
      default : _zz_34_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : execute_SRC2_CTRL_string = "PC ";
      default : execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_37)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_37_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_37_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_37_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_37_string = "PC ";
      default : _zz_37_string = "???";
    endcase
  end
  always @(*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : execute_SRC1_CTRL_string = "URS1        ";
      default : execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_39)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_39_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_39_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_39_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_39_string = "URS1        ";
      default : _zz_39_string = "????????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : execute_ALU_CTRL_string = "BITWISE ";
      default : execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_40)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_40_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_40_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_40_string = "BITWISE ";
      default : _zz_40_string = "????????";
    endcase
  end
  always @(*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_41)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_41_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_41_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_41_string = "AND_1";
      default : _zz_41_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_45)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_45_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_45_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_45_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_45_string = "JALR";
      default : _zz_45_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_46)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_46_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_46_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_46_string = "ECALL";
      default : _zz_46_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_47)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_47_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_47_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_47_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_47_string = "SRA_1    ";
      default : _zz_47_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_48)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_48_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_48_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_48_string = "AND_1";
      default : _zz_48_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_49)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_49_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_49_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_49_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_49_string = "PC ";
      default : _zz_49_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_50)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_50_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_50_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_50_string = "BITWISE ";
      default : _zz_50_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_51)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_51_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_51_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_51_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_51_string = "URS1        ";
      default : _zz_51_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_BRANCH_CTRL_string = "JALR";
      default : decode_BRANCH_CTRL_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_53)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_53_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_53_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_53_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_53_string = "JALR";
      default : _zz_53_string = "????";
    endcase
  end
  always @(*) begin
    case(_zz_96)
      `Src1CtrlEnum_defaultEncoding_RS : _zz_96_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : _zz_96_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : _zz_96_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : _zz_96_string = "URS1        ";
      default : _zz_96_string = "????????????";
    endcase
  end
  always @(*) begin
    case(_zz_97)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : _zz_97_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : _zz_97_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : _zz_97_string = "BITWISE ";
      default : _zz_97_string = "????????";
    endcase
  end
  always @(*) begin
    case(_zz_98)
      `Src2CtrlEnum_defaultEncoding_RS : _zz_98_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : _zz_98_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : _zz_98_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : _zz_98_string = "PC ";
      default : _zz_98_string = "???";
    endcase
  end
  always @(*) begin
    case(_zz_99)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : _zz_99_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : _zz_99_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : _zz_99_string = "AND_1";
      default : _zz_99_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_100)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : _zz_100_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : _zz_100_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : _zz_100_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : _zz_100_string = "SRA_1    ";
      default : _zz_100_string = "?????????";
    endcase
  end
  always @(*) begin
    case(_zz_101)
      `EnvCtrlEnum_defaultEncoding_NONE : _zz_101_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : _zz_101_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : _zz_101_string = "ECALL";
      default : _zz_101_string = "?????";
    endcase
  end
  always @(*) begin
    case(_zz_102)
      `BranchCtrlEnum_defaultEncoding_INC : _zz_102_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : _zz_102_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : _zz_102_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : _zz_102_string = "JALR";
      default : _zz_102_string = "????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : decode_to_execute_SRC1_CTRL_string = "RS          ";
      `Src1CtrlEnum_defaultEncoding_IMU : decode_to_execute_SRC1_CTRL_string = "IMU         ";
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : decode_to_execute_SRC1_CTRL_string = "PC_INCREMENT";
      `Src1CtrlEnum_defaultEncoding_URS1 : decode_to_execute_SRC1_CTRL_string = "URS1        ";
      default : decode_to_execute_SRC1_CTRL_string = "????????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_ADD_SUB : decode_to_execute_ALU_CTRL_string = "ADD_SUB ";
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : decode_to_execute_ALU_CTRL_string = "SLT_SLTU";
      `AluCtrlEnum_defaultEncoding_BITWISE : decode_to_execute_ALU_CTRL_string = "BITWISE ";
      default : decode_to_execute_ALU_CTRL_string = "????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : decode_to_execute_SRC2_CTRL_string = "RS ";
      `Src2CtrlEnum_defaultEncoding_IMI : decode_to_execute_SRC2_CTRL_string = "IMI";
      `Src2CtrlEnum_defaultEncoding_IMS : decode_to_execute_SRC2_CTRL_string = "IMS";
      `Src2CtrlEnum_defaultEncoding_PC : decode_to_execute_SRC2_CTRL_string = "PC ";
      default : decode_to_execute_SRC2_CTRL_string = "???";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "XOR_1";
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "OR_1 ";
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : decode_to_execute_ALU_BITWISE_CTRL_string = "AND_1";
      default : decode_to_execute_ALU_BITWISE_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : decode_to_execute_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : decode_to_execute_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : decode_to_execute_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : decode_to_execute_SHIFT_CTRL_string = "SRA_1    ";
      default : decode_to_execute_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_DISABLE_1 : execute_to_memory_SHIFT_CTRL_string = "DISABLE_1";
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : execute_to_memory_SHIFT_CTRL_string = "SLL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRL_1 : execute_to_memory_SHIFT_CTRL_string = "SRL_1    ";
      `ShiftCtrlEnum_defaultEncoding_SRA_1 : execute_to_memory_SHIFT_CTRL_string = "SRA_1    ";
      default : execute_to_memory_SHIFT_CTRL_string = "?????????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : decode_to_execute_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : decode_to_execute_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : decode_to_execute_ENV_CTRL_string = "ECALL";
      default : decode_to_execute_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(execute_to_memory_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : execute_to_memory_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : execute_to_memory_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : execute_to_memory_ENV_CTRL_string = "ECALL";
      default : execute_to_memory_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(memory_to_writeBack_ENV_CTRL)
      `EnvCtrlEnum_defaultEncoding_NONE : memory_to_writeBack_ENV_CTRL_string = "NONE ";
      `EnvCtrlEnum_defaultEncoding_XRET : memory_to_writeBack_ENV_CTRL_string = "XRET ";
      `EnvCtrlEnum_defaultEncoding_ECALL : memory_to_writeBack_ENV_CTRL_string = "ECALL";
      default : memory_to_writeBack_ENV_CTRL_string = "?????";
    endcase
  end
  always @(*) begin
    case(decode_to_execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : decode_to_execute_BRANCH_CTRL_string = "INC ";
      `BranchCtrlEnum_defaultEncoding_B : decode_to_execute_BRANCH_CTRL_string = "B   ";
      `BranchCtrlEnum_defaultEncoding_JAL : decode_to_execute_BRANCH_CTRL_string = "JAL ";
      `BranchCtrlEnum_defaultEncoding_JALR : decode_to_execute_BRANCH_CTRL_string = "JALR";
      default : decode_to_execute_BRANCH_CTRL_string = "????";
    endcase
  end
  `endif

  assign memory_MUL_LOW = ($signed(_zz_247) + $signed(_zz_255));
  assign execute_BRANCH_CALC = {execute_BranchPlugin_branchAdder[31 : 1],1'b0};
  assign execute_BRANCH_DO = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_HL = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign execute_MUL_LH = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign execute_MUL_LL = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign execute_SHIFT_RIGHT = _zz_257;
  assign execute_REGFILE_WRITE_DATA = _zz_104;
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_181[1 : 0];
  assign decode_PREDICTION_HAD_BRANCHED2 = IBusCachedPlugin_decodePrediction_cmd_hadBranch;
  assign decode_CSR_READ_OPCODE = (decode_INSTRUCTION[13 : 7] != 7'h20);
  assign decode_CSR_WRITE_OPCODE = (! (((decode_INSTRUCTION[14 : 13] == 2'b01) && (decode_INSTRUCTION[19 : 15] == 5'h0)) || ((decode_INSTRUCTION[14 : 13] == 2'b11) && (decode_INSTRUCTION[19 : 15] == 5'h0))));
  assign decode_SRC2_FORCE_ZERO = (decode_SRC_ADD_ZERO && (! decode_SRC_USE_SUB_LESS));
  assign execute_IS_STREAMW = decode_to_execute_IS_STREAMW;
  assign decode_IS_STREAMW = _zz_259[0];
  assign execute_IS_STREAMR = decode_to_execute_IS_STREAMR;
  assign decode_IS_STREAMR = _zz_260[0];
  assign _zz_1 = _zz_2;
  assign _zz_3 = _zz_4;
  assign _zz_5 = _zz_6;
  assign decode_ENV_CTRL = _zz_7;
  assign _zz_8 = _zz_9;
  assign decode_IS_CSR = _zz_261[0];
  assign decode_IS_RS2_SIGNED = _zz_262[0];
  assign decode_IS_RS1_SIGNED = _zz_263[0];
  assign decode_IS_DIV = _zz_264[0];
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_265[0];
  assign _zz_10 = _zz_11;
  assign decode_SHIFT_CTRL = _zz_12;
  assign _zz_13 = _zz_14;
  assign decode_ALU_BITWISE_CTRL = _zz_15;
  assign _zz_16 = _zz_17;
  assign decode_SRC_LESS_UNSIGNED = _zz_266[0];
  assign decode_MEMORY_MANAGMENT = _zz_267[0];
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_268[0];
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_269[0];
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_270[0];
  assign decode_SRC2_CTRL = _zz_18;
  assign _zz_19 = _zz_20;
  assign decode_ALU_CTRL = _zz_21;
  assign _zz_22 = _zz_23;
  assign decode_SRC1_CTRL = _zz_24;
  assign _zz_25 = _zz_26;
  assign decode_MEMORY_FORCE_CONSTISTENCY = 1'b0;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = (decode_PC + 32'h00000004);
  assign memory_PC = execute_to_memory_PC;
  assign memory_IS_STREAMW = execute_to_memory_IS_STREAMW;
  assign memory_RS2 = execute_to_memory_RS2;
  assign memory_IS_STREAMR = execute_to_memory_IS_STREAMR;
  assign memory_RS1 = execute_to_memory_RS1;
  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_BRANCH_COND_RESULT = _zz_136;
  assign execute_BRANCH_CTRL = _zz_27;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_28;
  assign execute_ENV_CTRL = _zz_29;
  assign writeBack_ENV_CTRL = _zz_30;
  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign writeBack_IS_MUL = memory_to_writeBack_IS_MUL;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign execute_RS1 = decode_to_execute_RS1;
  assign decode_RS2_USE = _zz_271[0];
  assign decode_RS1_USE = _zz_272[0];
  always @ (*) begin
    _zz_31 = execute_REGFILE_WRITE_DATA;
    if(_zz_202)begin
      _zz_31 = execute_CsrPlugin_readData;
    end
  end

  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = decode_RegFilePlugin_rs2Data;
    if(_zz_115)begin
      if((_zz_116 == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_117;
      end
    end
    if(_zz_203)begin
      if(_zz_204)begin
        if(_zz_119)begin
          decode_RS2 = _zz_52;
        end
      end
    end
    if(_zz_205)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_121)begin
          decode_RS2 = _zz_32;
        end
      end
    end
    if(_zz_206)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_123)begin
          decode_RS2 = _zz_31;
        end
      end
    end
  end

  always @ (*) begin
    decode_RS1 = decode_RegFilePlugin_rs1Data;
    if(_zz_115)begin
      if((_zz_116 == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_117;
      end
    end
    if(_zz_203)begin
      if(_zz_204)begin
        if(_zz_118)begin
          decode_RS1 = _zz_52;
        end
      end
    end
    if(_zz_205)begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_120)begin
          decode_RS1 = _zz_32;
        end
      end
    end
    if(_zz_206)begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_122)begin
          decode_RS1 = _zz_31;
        end
      end
    end
  end

  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @ (*) begin
    _zz_32 = memory_REGFILE_WRITE_DATA;
    if(memory_arbitration_isValid)begin
      case(memory_SHIFT_CTRL)
        `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
          _zz_32 = _zz_112;
        end
        `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
          _zz_32 = memory_SHIFT_RIGHT;
        end
        default : begin
        end
      endcase
    end
    if(_zz_207)begin
      _zz_32 = memory_DivPlugin_div_result;
    end
    if(memory_IS_STREAMR)begin
      _zz_32 = memory_StreamrPlugin_rd;
    end
  end

  assign memory_SHIFT_CTRL = _zz_33;
  assign execute_SHIFT_CTRL = _zz_34;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC2_FORCE_ZERO = decode_to_execute_SRC2_FORCE_ZERO;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_35 = execute_PC;
  assign _zz_36 = execute_RS2;
  assign execute_SRC2_CTRL = _zz_37;
  assign _zz_38 = execute_RS1;
  assign execute_SRC1_CTRL = _zz_39;
  assign decode_SRC_USE_SUB_LESS = _zz_273[0];
  assign decode_SRC_ADD_ZERO = _zz_274[0];
  assign execute_SRC_ADD_SUB = execute_SrcPlugin_addSub;
  assign execute_SRC_LESS = execute_SrcPlugin_less;
  assign execute_ALU_CTRL = _zz_40;
  assign execute_SRC2 = _zz_110;
  assign execute_SRC1 = _zz_105;
  assign execute_ALU_BITWISE_CTRL = _zz_41;
  assign _zz_42 = writeBack_INSTRUCTION;
  assign _zz_43 = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_44 = 1'b0;
    if(lastStageRegFileWrite_valid)begin
      _zz_44 = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = (decode_arbitration_isStuck ? decode_INSTRUCTION : IBusCachedPlugin_iBusRsp_output_payload_rsp_inst);
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_275[0];
    if((decode_INSTRUCTION[11 : 7] == 5'h0))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = ({((decode_INSTRUCTION & 32'h0000005f) == 32'h00000017),{((decode_INSTRUCTION & 32'h0000007f) == 32'h0000006f),{((decode_INSTRUCTION & 32'h0000106f) == 32'h00000003),{((decode_INSTRUCTION & _zz_344) == 32'h00001073),{(_zz_345 == _zz_346),{_zz_347,{_zz_348,_zz_349}}}}}}} != 22'h0);
  always @ (*) begin
    _zz_52 = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_52 = writeBack_DBusCachedPlugin_rspFormated;
    end
    if((writeBack_arbitration_isValid && writeBack_IS_MUL))begin
      case(_zz_245)
        2'b00 : begin
          _zz_52 = _zz_305;
        end
        default : begin
          _zz_52 = _zz_306;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MEMORY_FORCE_CONSTISTENCY = decode_to_execute_MEMORY_FORCE_CONSTISTENCY;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_SRC_ADD = execute_SrcPlugin_addSub;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign decode_MEMORY_ENABLE = _zz_276[0];
  assign decode_FLUSH_ALL = _zz_277[0];
  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_4 = IBusCachedPlugin_rsp_issueDetected_3;
    if(_zz_208)begin
      IBusCachedPlugin_rsp_issueDetected_4 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_3 = IBusCachedPlugin_rsp_issueDetected_2;
    if(_zz_209)begin
      IBusCachedPlugin_rsp_issueDetected_3 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_2 = IBusCachedPlugin_rsp_issueDetected_1;
    if(_zz_210)begin
      IBusCachedPlugin_rsp_issueDetected_2 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_rsp_issueDetected_1 = IBusCachedPlugin_rsp_issueDetected;
    if(_zz_211)begin
      IBusCachedPlugin_rsp_issueDetected_1 = 1'b1;
    end
  end

  assign decode_BRANCH_CTRL = _zz_53;
  always @ (*) begin
    _zz_54 = memory_FORMAL_PC_NEXT;
    if(BranchPlugin_jumpInterface_valid)begin
      _zz_54 = BranchPlugin_jumpInterface_payload;
    end
  end

  always @ (*) begin
    _zz_55 = decode_FORMAL_PC_NEXT;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      _zz_55 = IBusCachedPlugin_predictionJumpInterface_payload;
    end
  end

  assign decode_PC = IBusCachedPlugin_injector_decodeInput_payload_pc;
  assign decode_INSTRUCTION = IBusCachedPlugin_injector_decodeInput_payload_rsp_inst;
  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    if(((DBusCachedPlugin_mmuBus_busy && decode_arbitration_isValid) && decode_MEMORY_ENABLE))begin
      decode_arbitration_haltItself = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if((decode_arbitration_isValid && (_zz_113 || _zz_114)))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(CsrPlugin_pipelineLiberator_active)begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(({(writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),{(memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)),(execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))}} != 3'b000))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(_zz_212)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_flushIt = 1'b0;
  always @ (*) begin
    decode_arbitration_flushNext = 1'b0;
    if(IBusCachedPlugin_predictionJumpInterface_valid)begin
      decode_arbitration_flushNext = 1'b1;
    end
    if(_zz_212)begin
      decode_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_haltItself = 1'b0;
    if(((_zz_197 && (! dataCache_1_io_cpu_flush_ready)) || dataCache_1_io_cpu_execute_haltIt))begin
      execute_arbitration_haltItself = 1'b1;
    end
    if(_zz_202)begin
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  always @ (*) begin
    execute_arbitration_haltByOther = 1'b0;
    if((dataCache_1_io_cpu_execute_refilling && execute_arbitration_isValid))begin
      execute_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(CsrPlugin_selfException_valid)begin
      execute_arbitration_removeIt = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  assign execute_arbitration_flushIt = 1'b0;
  always @ (*) begin
    execute_arbitration_flushNext = 1'b0;
    if(CsrPlugin_selfException_valid)begin
      execute_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_haltItself = 1'b0;
    if(_zz_207)begin
      if(((! memory_DivPlugin_frontendOk) || (! memory_DivPlugin_div_done)))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_213)begin
      if(! readStream0_valid) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_214)begin
      if(! readStream1_valid) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_215)begin
      if(! readStream2_valid) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_216)begin
      if(! readStream3_valid) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_217)begin
      if(! readStream4_valid) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_218)begin
      if(! writeStream0_ready) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_219)begin
      if(! writeStream1_ready) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_220)begin
      if(! writeStream2_ready) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_221)begin
      if(! writeStream3_ready) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_222)begin
      if(! writeStream4_ready) begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_flushIt = 1'b0;
  always @ (*) begin
    memory_arbitration_flushNext = 1'b0;
    if(BranchPlugin_branchExceptionPort_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
    if(BranchPlugin_jumpInterface_valid)begin
      memory_arbitration_flushNext = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(dataCache_1_io_cpu_writeBack_haltIt)begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    writeBack_arbitration_removeIt = 1'b0;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushIt = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushIt = 1'b1;
    end
  end

  always @ (*) begin
    writeBack_arbitration_flushNext = 1'b0;
    if(DBusCachedPlugin_redoBranch_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_223)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
    if(_zz_224)begin
      writeBack_arbitration_flushNext = 1'b1;
    end
  end

  assign lastStageInstruction = writeBack_INSTRUCTION;
  assign lastStagePc = writeBack_PC;
  assign lastStageIsValid = writeBack_arbitration_isValid;
  assign lastStageIsFiring = writeBack_arbitration_isFiring;
  always @ (*) begin
    IBusCachedPlugin_fetcherHalt = 1'b0;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValids_memory,{CsrPlugin_exceptionPortCtrl_exceptionValids_execute,CsrPlugin_exceptionPortCtrl_exceptionValids_decode}}} != 4'b0000))begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_223)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
    if(_zz_224)begin
      IBusCachedPlugin_fetcherHalt = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_incomingInstruction = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_valid)begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
    if(IBusCachedPlugin_injector_decodeInput_valid)begin
      IBusCachedPlugin_incomingInstruction = 1'b1;
    end
  end

  assign CsrPlugin_inWfi = 1'b0;
  assign CsrPlugin_thirdPartyWake = 1'b0;
  always @ (*) begin
    CsrPlugin_jumpInterface_valid = 1'b0;
    if(_zz_223)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
    if(_zz_224)begin
      CsrPlugin_jumpInterface_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_jumpInterface_payload = 32'h0;
    if(_zz_223)begin
      CsrPlugin_jumpInterface_payload = {CsrPlugin_xtvec_base,2'b00};
    end
    if(_zz_224)begin
      case(_zz_225)
        2'b11 : begin
          CsrPlugin_jumpInterface_payload = CsrPlugin_mepc;
        end
        default : begin
        end
      endcase
    end
  end

  assign CsrPlugin_forceMachineWire = 1'b0;
  assign CsrPlugin_allowInterrupts = 1'b1;
  assign CsrPlugin_allowException = 1'b1;
  assign IBusCachedPlugin_externalFlush = ({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,{execute_arbitration_flushNext,decode_arbitration_flushNext}}} != 4'b0000);
  assign IBusCachedPlugin_jump_pcLoad_valid = ({BranchPlugin_jumpInterface_valid,{CsrPlugin_jumpInterface_valid,{DBusCachedPlugin_redoBranch_valid,IBusCachedPlugin_predictionJumpInterface_valid}}} != 4'b0000);
  assign _zz_56 = {IBusCachedPlugin_predictionJumpInterface_valid,{BranchPlugin_jumpInterface_valid,{CsrPlugin_jumpInterface_valid,DBusCachedPlugin_redoBranch_valid}}};
  assign _zz_57 = (_zz_56 & (~ _zz_278));
  assign _zz_58 = _zz_57[3];
  assign _zz_59 = (_zz_57[1] || _zz_58);
  assign _zz_60 = (_zz_57[2] || _zz_58);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_201;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_correction = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_correction = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_corrected = (IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_correctionReg);
  always @ (*) begin
    IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b0;
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_fetchPc_pcRegPropagate = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_280);
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_fetchPc_redo_payload;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_flushed = 1'b0;
    if(IBusCachedPlugin_fetchPc_redo_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_flushed = 1'b1;
    end
  end

  assign IBusCachedPlugin_fetchPc_output_valid = ((! IBusCachedPlugin_fetcherHalt) && IBusCachedPlugin_fetchPc_booted);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_pc;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_redoFetch = 1'b0;
    if(IBusCachedPlugin_rsp_redoFetch)begin
      IBusCachedPlugin_iBusRsp_redoFetch = 1'b1;
    end
  end

  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(IBusCachedPlugin_cache_io_cpu_prefetch_haltIt)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_61 = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_61);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_61);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(IBusCachedPlugin_mmuBus_busy)begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
    if((IBusCachedPlugin_rsp_issueDetected_4 || IBusCachedPlugin_rsp_iBusRspOutputHalt))begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_62 = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_62);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_62);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_fetchPc_redo_valid = IBusCachedPlugin_iBusRsp_redoFetch;
  assign IBusCachedPlugin_fetchPc_redo_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_iBusRsp_flush = (IBusCachedPlugin_externalFlush || IBusCachedPlugin_iBusRsp_redoFetch);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_63;
  assign _zz_63 = ((1'b0 && (! _zz_64)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_64 = _zz_65;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_64;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
    if(IBusCachedPlugin_injector_decodeInput_valid)begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
    if((! IBusCachedPlugin_pcValids_0))begin
      IBusCachedPlugin_iBusRsp_readyForError = 1'b0;
    end
  end

  assign IBusCachedPlugin_iBusRsp_output_ready = ((1'b0 && (! IBusCachedPlugin_injector_decodeInput_valid)) || IBusCachedPlugin_injector_decodeInput_ready);
  assign IBusCachedPlugin_injector_decodeInput_valid = _zz_66;
  assign IBusCachedPlugin_injector_decodeInput_payload_pc = _zz_67;
  assign IBusCachedPlugin_injector_decodeInput_payload_rsp_error = _zz_68;
  assign IBusCachedPlugin_injector_decodeInput_payload_rsp_inst = _zz_69;
  assign IBusCachedPlugin_injector_decodeInput_payload_isRvc = _zz_70;
  assign IBusCachedPlugin_pcValids_0 = IBusCachedPlugin_injector_nextPcCalc_valids_1;
  assign IBusCachedPlugin_pcValids_1 = IBusCachedPlugin_injector_nextPcCalc_valids_2;
  assign IBusCachedPlugin_pcValids_2 = IBusCachedPlugin_injector_nextPcCalc_valids_3;
  assign IBusCachedPlugin_pcValids_3 = IBusCachedPlugin_injector_nextPcCalc_valids_4;
  assign IBusCachedPlugin_injector_decodeInput_ready = (! decode_arbitration_isStuck);
  assign decode_arbitration_isValid = IBusCachedPlugin_injector_decodeInput_valid;
  assign _zz_71 = _zz_281[11];
  always @ (*) begin
    _zz_72[18] = _zz_71;
    _zz_72[17] = _zz_71;
    _zz_72[16] = _zz_71;
    _zz_72[15] = _zz_71;
    _zz_72[14] = _zz_71;
    _zz_72[13] = _zz_71;
    _zz_72[12] = _zz_71;
    _zz_72[11] = _zz_71;
    _zz_72[10] = _zz_71;
    _zz_72[9] = _zz_71;
    _zz_72[8] = _zz_71;
    _zz_72[7] = _zz_71;
    _zz_72[6] = _zz_71;
    _zz_72[5] = _zz_71;
    _zz_72[4] = _zz_71;
    _zz_72[3] = _zz_71;
    _zz_72[2] = _zz_71;
    _zz_72[1] = _zz_71;
    _zz_72[0] = _zz_71;
  end

  always @ (*) begin
    IBusCachedPlugin_decodePrediction_cmd_hadBranch = ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) || ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_B) && _zz_282[31]));
    if(_zz_77)begin
      IBusCachedPlugin_decodePrediction_cmd_hadBranch = 1'b0;
    end
  end

  assign _zz_73 = _zz_283[19];
  always @ (*) begin
    _zz_74[10] = _zz_73;
    _zz_74[9] = _zz_73;
    _zz_74[8] = _zz_73;
    _zz_74[7] = _zz_73;
    _zz_74[6] = _zz_73;
    _zz_74[5] = _zz_73;
    _zz_74[4] = _zz_73;
    _zz_74[3] = _zz_73;
    _zz_74[2] = _zz_73;
    _zz_74[1] = _zz_73;
    _zz_74[0] = _zz_73;
  end

  assign _zz_75 = _zz_284[11];
  always @ (*) begin
    _zz_76[18] = _zz_75;
    _zz_76[17] = _zz_75;
    _zz_76[16] = _zz_75;
    _zz_76[15] = _zz_75;
    _zz_76[14] = _zz_75;
    _zz_76[13] = _zz_75;
    _zz_76[12] = _zz_75;
    _zz_76[11] = _zz_75;
    _zz_76[10] = _zz_75;
    _zz_76[9] = _zz_75;
    _zz_76[8] = _zz_75;
    _zz_76[7] = _zz_75;
    _zz_76[6] = _zz_75;
    _zz_76[5] = _zz_75;
    _zz_76[4] = _zz_75;
    _zz_76[3] = _zz_75;
    _zz_76[2] = _zz_75;
    _zz_76[1] = _zz_75;
    _zz_76[0] = _zz_75;
  end

  always @ (*) begin
    case(decode_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_77 = _zz_285[1];
      end
      default : begin
        _zz_77 = _zz_286[1];
      end
    endcase
  end

  assign IBusCachedPlugin_predictionJumpInterface_valid = (decode_arbitration_isValid && IBusCachedPlugin_decodePrediction_cmd_hadBranch);
  assign _zz_78 = _zz_287[19];
  always @ (*) begin
    _zz_79[10] = _zz_78;
    _zz_79[9] = _zz_78;
    _zz_79[8] = _zz_78;
    _zz_79[7] = _zz_78;
    _zz_79[6] = _zz_78;
    _zz_79[5] = _zz_78;
    _zz_79[4] = _zz_78;
    _zz_79[3] = _zz_78;
    _zz_79[2] = _zz_78;
    _zz_79[1] = _zz_78;
    _zz_79[0] = _zz_78;
  end

  assign _zz_80 = _zz_288[11];
  always @ (*) begin
    _zz_81[18] = _zz_80;
    _zz_81[17] = _zz_80;
    _zz_81[16] = _zz_80;
    _zz_81[15] = _zz_80;
    _zz_81[14] = _zz_80;
    _zz_81[13] = _zz_80;
    _zz_81[12] = _zz_80;
    _zz_81[11] = _zz_80;
    _zz_81[10] = _zz_80;
    _zz_81[9] = _zz_80;
    _zz_81[8] = _zz_80;
    _zz_81[7] = _zz_80;
    _zz_81[6] = _zz_80;
    _zz_81[5] = _zz_80;
    _zz_81[4] = _zz_80;
    _zz_81[3] = _zz_80;
    _zz_81[2] = _zz_80;
    _zz_81[1] = _zz_80;
    _zz_81[0] = _zz_80;
  end

  assign IBusCachedPlugin_predictionJumpInterface_payload = (decode_PC + ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_79,{{{_zz_362,decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_81,{{{_zz_363,_zz_364},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = IBusCachedPlugin_cache_io_mem_cmd_valid;
  always @ (*) begin
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
    iBus_cmd_payload_address = IBusCachedPlugin_cache_io_mem_cmd_payload_address;
  end

  assign iBus_cmd_payload_size = IBusCachedPlugin_cache_io_mem_cmd_payload_size;
  assign IBusCachedPlugin_s0_tightlyCoupledHit = 1'b0;
  assign _zz_171 = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && (! IBusCachedPlugin_s0_tightlyCoupledHit));
  assign _zz_172 = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && (! IBusCachedPlugin_s1_tightlyCoupledHit));
  assign _zz_173 = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_172;
  assign IBusCachedPlugin_mmuBus_cmd_0_isStuck = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign IBusCachedPlugin_mmuBus_cmd_0_virtualAddress = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  assign IBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign IBusCachedPlugin_mmuBus_end = (IBusCachedPlugin_iBusRsp_stages_1_input_ready || IBusCachedPlugin_externalFlush);
  assign _zz_175 = (CsrPlugin_privilege == 2'b00);
  assign IBusCachedPlugin_rsp_iBusRspOutputHalt = 1'b0;
  assign IBusCachedPlugin_rsp_issueDetected = 1'b0;
  always @ (*) begin
    IBusCachedPlugin_rsp_redoFetch = 1'b0;
    if(_zz_211)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
    if(_zz_209)begin
      IBusCachedPlugin_rsp_redoFetch = 1'b1;
    end
  end

  always @ (*) begin
    _zz_179 = (IBusCachedPlugin_rsp_redoFetch && (! IBusCachedPlugin_cache_io_cpu_fetch_mmuRefilling));
    if(_zz_209)begin
      _zz_179 = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_valid = 1'b0;
    if(_zz_210)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
    if(_zz_208)begin
      IBusCachedPlugin_decodeExceptionPort_valid = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_decodeExceptionPort_payload_code = 4'bxxxx;
    if(_zz_210)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b1100;
    end
    if(_zz_208)begin
      IBusCachedPlugin_decodeExceptionPort_payload_code = 4'b0001;
    end
  end

  assign IBusCachedPlugin_decodeExceptionPort_payload_badAddr = {IBusCachedPlugin_iBusRsp_stages_1_input_payload[31 : 2],2'b00};
  assign IBusCachedPlugin_iBusRsp_output_valid = IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = IBusCachedPlugin_iBusRsp_output_ready;
  assign IBusCachedPlugin_iBusRsp_output_payload_rsp_inst = IBusCachedPlugin_cache_io_cpu_fetch_data;
  assign IBusCachedPlugin_iBusRsp_output_payload_pc = IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  assign _zz_170 = (decode_arbitration_isValid && decode_FLUSH_ALL);
  assign dataCache_1_io_mem_cmd_s2mPipe_valid = (dataCache_1_io_mem_cmd_valid || dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign _zz_198 = (! dataCache_1_io_mem_cmd_s2mPipe_rValid);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_wr = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_wr : dataCache_1_io_mem_cmd_payload_wr);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_uncached = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_uncached : dataCache_1_io_mem_cmd_payload_uncached);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_address = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_address : dataCache_1_io_mem_cmd_payload_address);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_data = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_data : dataCache_1_io_mem_cmd_payload_data);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_mask = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_mask : dataCache_1_io_mem_cmd_payload_mask);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_length = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_length : dataCache_1_io_mem_cmd_payload_length);
  assign dataCache_1_io_mem_cmd_s2mPipe_payload_last = (dataCache_1_io_mem_cmd_s2mPipe_rValid ? dataCache_1_io_mem_cmd_s2mPipe_rData_last : dataCache_1_io_mem_cmd_payload_last);
  assign dataCache_1_io_mem_cmd_s2mPipe_ready = ((1'b1 && (! dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid)) || dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_ready);
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_wr = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_wr;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_uncached = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_uncached;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_address = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_address;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_data = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_data;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_mask = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_mask;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_length = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_length;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_last = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_last;
  assign dBus_cmd_valid = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_valid;
  assign dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_ready = dBus_cmd_ready;
  assign dBus_cmd_payload_wr = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_wr;
  assign dBus_cmd_payload_uncached = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_uncached;
  assign dBus_cmd_payload_address = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_address;
  assign dBus_cmd_payload_data = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_data;
  assign dBus_cmd_payload_mask = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_mask;
  assign dBus_cmd_payload_length = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_length;
  assign dBus_cmd_payload_last = dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_payload_last;
  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  assign _zz_180 = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign _zz_181 = execute_SRC_ADD;
  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_84 = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_84 = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_84 = execute_RS2[31 : 0];
      end
    endcase
  end

  assign _zz_197 = (execute_arbitration_isValid && execute_MEMORY_MANAGMENT);
  assign _zz_182 = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
  assign _zz_183 = memory_REGFILE_WRITE_DATA;
  assign DBusCachedPlugin_mmuBus_cmd_0_isValid = _zz_182;
  assign DBusCachedPlugin_mmuBus_cmd_0_isStuck = memory_arbitration_isStuck;
  assign DBusCachedPlugin_mmuBus_cmd_0_virtualAddress = _zz_183;
  assign DBusCachedPlugin_mmuBus_cmd_0_bypassTranslation = 1'b0;
  assign DBusCachedPlugin_mmuBus_end = ((! memory_arbitration_isStuck) || memory_arbitration_removeIt);
  always @ (*) begin
    _zz_184 = DBusCachedPlugin_mmuBus_rsp_isIoAccess;
    if((1'b0 && (! dataCache_1_io_cpu_memory_isWrite)))begin
      _zz_184 = 1'b1;
    end
  end

  assign _zz_185 = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_186 = (CsrPlugin_privilege == 2'b00);
  assign _zz_187 = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_redoBranch_valid = 1'b0;
    if(_zz_226)begin
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_redoBranch_valid = 1'b1;
      end
    end
  end

  assign DBusCachedPlugin_redoBranch_payload = writeBack_PC;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_valid = 1'b0;
    if(_zz_226)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b1;
      end
      if(dataCache_1_io_cpu_redo)begin
        DBusCachedPlugin_exceptionBus_valid = 1'b0;
      end
    end
  end

  assign DBusCachedPlugin_exceptionBus_payload_badAddr = writeBack_REGFILE_WRITE_DATA;
  always @ (*) begin
    DBusCachedPlugin_exceptionBus_payload_code = 4'bxxxx;
    if(_zz_226)begin
      if(dataCache_1_io_cpu_writeBack_accessError)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_289};
      end
      if(dataCache_1_io_cpu_writeBack_mmuException)begin
        DBusCachedPlugin_exceptionBus_payload_code = (writeBack_MEMORY_WR ? 4'b1111 : 4'b1101);
      end
      if(dataCache_1_io_cpu_writeBack_unalignedAccess)begin
        DBusCachedPlugin_exceptionBus_payload_code = {1'd0, _zz_290};
      end
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspShifted = dataCache_1_io_cpu_writeBack_data;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1_io_cpu_writeBack_data[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusCachedPlugin_rspShifted[15 : 0] = dataCache_1_io_cpu_writeBack_data[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = dataCache_1_io_cpu_writeBack_data[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_85 = (writeBack_DBusCachedPlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_86[31] = _zz_85;
    _zz_86[30] = _zz_85;
    _zz_86[29] = _zz_85;
    _zz_86[28] = _zz_85;
    _zz_86[27] = _zz_85;
    _zz_86[26] = _zz_85;
    _zz_86[25] = _zz_85;
    _zz_86[24] = _zz_85;
    _zz_86[23] = _zz_85;
    _zz_86[22] = _zz_85;
    _zz_86[21] = _zz_85;
    _zz_86[20] = _zz_85;
    _zz_86[19] = _zz_85;
    _zz_86[18] = _zz_85;
    _zz_86[17] = _zz_85;
    _zz_86[16] = _zz_85;
    _zz_86[15] = _zz_85;
    _zz_86[14] = _zz_85;
    _zz_86[13] = _zz_85;
    _zz_86[12] = _zz_85;
    _zz_86[11] = _zz_85;
    _zz_86[10] = _zz_85;
    _zz_86[9] = _zz_85;
    _zz_86[8] = _zz_85;
    _zz_86[7 : 0] = writeBack_DBusCachedPlugin_rspShifted[7 : 0];
  end

  assign _zz_87 = (writeBack_DBusCachedPlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_88[31] = _zz_87;
    _zz_88[30] = _zz_87;
    _zz_88[29] = _zz_87;
    _zz_88[28] = _zz_87;
    _zz_88[27] = _zz_87;
    _zz_88[26] = _zz_87;
    _zz_88[25] = _zz_87;
    _zz_88[24] = _zz_87;
    _zz_88[23] = _zz_87;
    _zz_88[22] = _zz_87;
    _zz_88[21] = _zz_87;
    _zz_88[20] = _zz_87;
    _zz_88[19] = _zz_87;
    _zz_88[18] = _zz_87;
    _zz_88[17] = _zz_87;
    _zz_88[16] = _zz_87;
    _zz_88[15 : 0] = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_244)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_86;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_88;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
      end
    endcase
  end

  assign IBusCachedPlugin_mmuBus_rsp_physicalAddress = IBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign IBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign IBusCachedPlugin_mmuBus_rsp_isIoAccess = IBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign IBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign IBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign IBusCachedPlugin_mmuBus_busy = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_physicalAddress = DBusCachedPlugin_mmuBus_cmd_0_virtualAddress;
  assign DBusCachedPlugin_mmuBus_rsp_allowRead = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowWrite = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_allowExecute = 1'b1;
  assign DBusCachedPlugin_mmuBus_rsp_isIoAccess = DBusCachedPlugin_mmuBus_rsp_physicalAddress[31];
  assign DBusCachedPlugin_mmuBus_rsp_isPaging = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_exception = 1'b0;
  assign DBusCachedPlugin_mmuBus_rsp_refilling = 1'b0;
  assign DBusCachedPlugin_mmuBus_busy = 1'b0;
  assign _zz_90 = ((decode_INSTRUCTION & 32'h00004050) == 32'h00004050);
  assign _zz_91 = ((decode_INSTRUCTION & 32'h00000028) == 32'h0);
  assign _zz_92 = ((decode_INSTRUCTION & 32'h00000004) == 32'h00000004);
  assign _zz_93 = ((decode_INSTRUCTION & 32'h00000048) == 32'h00000048);
  assign _zz_94 = ((decode_INSTRUCTION & 32'h0000100c) == 32'h00000008);
  assign _zz_95 = ((decode_INSTRUCTION & 32'h00001000) == 32'h0);
  assign _zz_89 = {(_zz_94 != 1'b0),{((_zz_365 == _zz_366) != 1'b0),{({_zz_367,_zz_368} != 2'b00),{(_zz_369 != _zz_370),{_zz_371,{_zz_372,_zz_373}}}}}};
  assign _zz_96 = _zz_89[2 : 1];
  assign _zz_51 = _zz_96;
  assign _zz_97 = _zz_89[7 : 6];
  assign _zz_50 = _zz_97;
  assign _zz_98 = _zz_89[9 : 8];
  assign _zz_49 = _zz_98;
  assign _zz_99 = _zz_89[19 : 18];
  assign _zz_48 = _zz_99;
  assign _zz_100 = _zz_89[22 : 21];
  assign _zz_47 = _zz_100;
  assign _zz_101 = _zz_89[29 : 28];
  assign _zz_46 = _zz_101;
  assign _zz_102 = _zz_89[31 : 30];
  assign _zz_45 = _zz_102;
  assign decodeExceptionPort_valid = (decode_arbitration_isValid && (! decode_LEGAL_INSTRUCTION));
  assign decodeExceptionPort_payload_code = 4'b0010;
  assign decodeExceptionPort_payload_badAddr = decode_INSTRUCTION;
  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_199;
  assign decode_RegFilePlugin_rs2Data = _zz_200;
  always @ (*) begin
    lastStageRegFileWrite_valid = (_zz_43 && writeBack_arbitration_isFiring);
    if(_zz_103)begin
      lastStageRegFileWrite_valid = 1'b1;
    end
  end

  always @ (*) begin
    lastStageRegFileWrite_payload_address = _zz_42[11 : 7];
    if(_zz_103)begin
      lastStageRegFileWrite_payload_address = 5'h0;
    end
  end

  always @ (*) begin
    lastStageRegFileWrite_payload_data = _zz_52;
    if(_zz_103)begin
      lastStageRegFileWrite_payload_data = 32'h0;
    end
  end

  always @ (*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
    endcase
  end

  always @ (*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_BITWISE : begin
        _zz_104 = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_104 = {31'd0, _zz_291};
      end
      default : begin
        _zz_104 = execute_SRC_ADD_SUB;
      end
    endcase
  end

  always @ (*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_105 = _zz_38;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_105 = {29'd0, _zz_292};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_105 = {execute_INSTRUCTION[31 : 12],12'h0};
      end
      default : begin
        _zz_105 = {27'd0, _zz_293};
      end
    endcase
  end

  assign _zz_106 = _zz_294[11];
  always @ (*) begin
    _zz_107[19] = _zz_106;
    _zz_107[18] = _zz_106;
    _zz_107[17] = _zz_106;
    _zz_107[16] = _zz_106;
    _zz_107[15] = _zz_106;
    _zz_107[14] = _zz_106;
    _zz_107[13] = _zz_106;
    _zz_107[12] = _zz_106;
    _zz_107[11] = _zz_106;
    _zz_107[10] = _zz_106;
    _zz_107[9] = _zz_106;
    _zz_107[8] = _zz_106;
    _zz_107[7] = _zz_106;
    _zz_107[6] = _zz_106;
    _zz_107[5] = _zz_106;
    _zz_107[4] = _zz_106;
    _zz_107[3] = _zz_106;
    _zz_107[2] = _zz_106;
    _zz_107[1] = _zz_106;
    _zz_107[0] = _zz_106;
  end

  assign _zz_108 = _zz_295[11];
  always @ (*) begin
    _zz_109[19] = _zz_108;
    _zz_109[18] = _zz_108;
    _zz_109[17] = _zz_108;
    _zz_109[16] = _zz_108;
    _zz_109[15] = _zz_108;
    _zz_109[14] = _zz_108;
    _zz_109[13] = _zz_108;
    _zz_109[12] = _zz_108;
    _zz_109[11] = _zz_108;
    _zz_109[10] = _zz_108;
    _zz_109[9] = _zz_108;
    _zz_109[8] = _zz_108;
    _zz_109[7] = _zz_108;
    _zz_109[6] = _zz_108;
    _zz_109[5] = _zz_108;
    _zz_109[4] = _zz_108;
    _zz_109[3] = _zz_108;
    _zz_109[2] = _zz_108;
    _zz_109[1] = _zz_108;
    _zz_109[0] = _zz_108;
  end

  always @ (*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_110 = _zz_36;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_110 = {_zz_107,execute_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_110 = {_zz_109,{execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_110 = _zz_35;
      end
    endcase
  end

  always @ (*) begin
    execute_SrcPlugin_addSub = _zz_296;
    if(execute_SRC2_FORCE_ZERO)begin
      execute_SrcPlugin_addSub = execute_SRC1;
    end
  end

  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_111[0] = execute_SRC1[31];
    _zz_111[1] = execute_SRC1[30];
    _zz_111[2] = execute_SRC1[29];
    _zz_111[3] = execute_SRC1[28];
    _zz_111[4] = execute_SRC1[27];
    _zz_111[5] = execute_SRC1[26];
    _zz_111[6] = execute_SRC1[25];
    _zz_111[7] = execute_SRC1[24];
    _zz_111[8] = execute_SRC1[23];
    _zz_111[9] = execute_SRC1[22];
    _zz_111[10] = execute_SRC1[21];
    _zz_111[11] = execute_SRC1[20];
    _zz_111[12] = execute_SRC1[19];
    _zz_111[13] = execute_SRC1[18];
    _zz_111[14] = execute_SRC1[17];
    _zz_111[15] = execute_SRC1[16];
    _zz_111[16] = execute_SRC1[15];
    _zz_111[17] = execute_SRC1[14];
    _zz_111[18] = execute_SRC1[13];
    _zz_111[19] = execute_SRC1[12];
    _zz_111[20] = execute_SRC1[11];
    _zz_111[21] = execute_SRC1[10];
    _zz_111[22] = execute_SRC1[9];
    _zz_111[23] = execute_SRC1[8];
    _zz_111[24] = execute_SRC1[7];
    _zz_111[25] = execute_SRC1[6];
    _zz_111[26] = execute_SRC1[5];
    _zz_111[27] = execute_SRC1[4];
    _zz_111[28] = execute_SRC1[3];
    _zz_111[29] = execute_SRC1[2];
    _zz_111[30] = execute_SRC1[1];
    _zz_111[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_111 : execute_SRC1);
  always @ (*) begin
    _zz_112[0] = memory_SHIFT_RIGHT[31];
    _zz_112[1] = memory_SHIFT_RIGHT[30];
    _zz_112[2] = memory_SHIFT_RIGHT[29];
    _zz_112[3] = memory_SHIFT_RIGHT[28];
    _zz_112[4] = memory_SHIFT_RIGHT[27];
    _zz_112[5] = memory_SHIFT_RIGHT[26];
    _zz_112[6] = memory_SHIFT_RIGHT[25];
    _zz_112[7] = memory_SHIFT_RIGHT[24];
    _zz_112[8] = memory_SHIFT_RIGHT[23];
    _zz_112[9] = memory_SHIFT_RIGHT[22];
    _zz_112[10] = memory_SHIFT_RIGHT[21];
    _zz_112[11] = memory_SHIFT_RIGHT[20];
    _zz_112[12] = memory_SHIFT_RIGHT[19];
    _zz_112[13] = memory_SHIFT_RIGHT[18];
    _zz_112[14] = memory_SHIFT_RIGHT[17];
    _zz_112[15] = memory_SHIFT_RIGHT[16];
    _zz_112[16] = memory_SHIFT_RIGHT[15];
    _zz_112[17] = memory_SHIFT_RIGHT[14];
    _zz_112[18] = memory_SHIFT_RIGHT[13];
    _zz_112[19] = memory_SHIFT_RIGHT[12];
    _zz_112[20] = memory_SHIFT_RIGHT[11];
    _zz_112[21] = memory_SHIFT_RIGHT[10];
    _zz_112[22] = memory_SHIFT_RIGHT[9];
    _zz_112[23] = memory_SHIFT_RIGHT[8];
    _zz_112[24] = memory_SHIFT_RIGHT[7];
    _zz_112[25] = memory_SHIFT_RIGHT[6];
    _zz_112[26] = memory_SHIFT_RIGHT[5];
    _zz_112[27] = memory_SHIFT_RIGHT[4];
    _zz_112[28] = memory_SHIFT_RIGHT[3];
    _zz_112[29] = memory_SHIFT_RIGHT[2];
    _zz_112[30] = memory_SHIFT_RIGHT[1];
    _zz_112[31] = memory_SHIFT_RIGHT[0];
  end

  always @ (*) begin
    _zz_113 = 1'b0;
    if(_zz_227)begin
      if(_zz_228)begin
        if(_zz_118)begin
          _zz_113 = 1'b1;
        end
      end
    end
    if(_zz_229)begin
      if(_zz_230)begin
        if(_zz_120)begin
          _zz_113 = 1'b1;
        end
      end
    end
    if(_zz_231)begin
      if(_zz_232)begin
        if(_zz_122)begin
          _zz_113 = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_113 = 1'b0;
    end
  end

  always @ (*) begin
    _zz_114 = 1'b0;
    if(_zz_227)begin
      if(_zz_228)begin
        if(_zz_119)begin
          _zz_114 = 1'b1;
        end
      end
    end
    if(_zz_229)begin
      if(_zz_230)begin
        if(_zz_121)begin
          _zz_114 = 1'b1;
        end
      end
    end
    if(_zz_231)begin
      if(_zz_232)begin
        if(_zz_123)begin
          _zz_114 = 1'b1;
        end
      end
    end
    if((! decode_RS2_USE))begin
      _zz_114 = 1'b0;
    end
  end

  assign _zz_118 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_119 = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_120 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_121 = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_122 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_123 = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign execute_MulPlugin_a = execute_RS1;
  assign execute_MulPlugin_b = execute_RS2;
  always @ (*) begin
    case(_zz_233)
      2'b01 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_aSigned = 1'b1;
      end
      default : begin
        execute_MulPlugin_aSigned = 1'b0;
      end
    endcase
  end

  always @ (*) begin
    case(_zz_233)
      2'b01 : begin
        execute_MulPlugin_bSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
      default : begin
        execute_MulPlugin_bSigned = 1'b0;
      end
    endcase
  end

  assign execute_MulPlugin_aULow = execute_MulPlugin_a[15 : 0];
  assign execute_MulPlugin_bULow = execute_MulPlugin_b[15 : 0];
  assign execute_MulPlugin_aSLow = {1'b0,execute_MulPlugin_a[15 : 0]};
  assign execute_MulPlugin_bSLow = {1'b0,execute_MulPlugin_b[15 : 0]};
  assign execute_MulPlugin_aHigh = {(execute_MulPlugin_aSigned && execute_MulPlugin_a[31]),execute_MulPlugin_a[31 : 16]};
  assign execute_MulPlugin_bHigh = {(execute_MulPlugin_bSigned && execute_MulPlugin_b[31]),execute_MulPlugin_b[31 : 16]};
  assign writeBack_MulPlugin_result = ($signed(_zz_303) + $signed(_zz_304));
  assign memory_DivPlugin_frontendOk = 1'b1;
  always @ (*) begin
    memory_DivPlugin_div_counter_willIncrement = 1'b0;
    if(_zz_207)begin
      if(_zz_234)begin
        memory_DivPlugin_div_counter_willIncrement = 1'b1;
      end
    end
  end

  always @ (*) begin
    memory_DivPlugin_div_counter_willClear = 1'b0;
    if(_zz_235)begin
      memory_DivPlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_DivPlugin_div_counter_willOverflowIfInc = (memory_DivPlugin_div_counter_value == 6'h21);
  assign memory_DivPlugin_div_counter_willOverflow = (memory_DivPlugin_div_counter_willOverflowIfInc && memory_DivPlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_DivPlugin_div_counter_willOverflow)begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end else begin
      memory_DivPlugin_div_counter_valueNext = (memory_DivPlugin_div_counter_value + _zz_308);
    end
    if(memory_DivPlugin_div_counter_willClear)begin
      memory_DivPlugin_div_counter_valueNext = 6'h0;
    end
  end

  assign _zz_124 = memory_DivPlugin_rs1[31 : 0];
  assign memory_DivPlugin_div_stage_0_remainderShifted = {memory_DivPlugin_accumulator[31 : 0],_zz_124[31]};
  assign memory_DivPlugin_div_stage_0_remainderMinusDenominator = (memory_DivPlugin_div_stage_0_remainderShifted - _zz_309);
  assign memory_DivPlugin_div_stage_0_outRemainder = ((! memory_DivPlugin_div_stage_0_remainderMinusDenominator[32]) ? _zz_310 : _zz_311);
  assign memory_DivPlugin_div_stage_0_outNumerator = _zz_312[31:0];
  assign _zz_125 = (memory_INSTRUCTION[13] ? memory_DivPlugin_accumulator[31 : 0] : memory_DivPlugin_rs1[31 : 0]);
  assign _zz_126 = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_127 = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_128[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_128[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    CsrPlugin_privilege = 2'b11;
    if(CsrPlugin_forceMachineWire)begin
      CsrPlugin_privilege = 2'b11;
    end
  end

  assign CsrPlugin_misa_base = 2'b01;
  assign CsrPlugin_misa_extensions = 26'h0000042;
  assign _zz_129 = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_130 = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_131 = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped = 2'b11;
  assign CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = ((CsrPlugin_privilege < CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped) ? CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilegeUncapped : CsrPlugin_privilege);
  assign _zz_132 = {decodeExceptionPort_valid,IBusCachedPlugin_decodeExceptionPort_valid};
  assign _zz_133 = _zz_322[0];
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(_zz_212)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(CsrPlugin_selfException_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b1;
    end
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(BranchPlugin_branchExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(writeBack_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b0;
    end
  end

  assign CsrPlugin_exceptionPendings_0 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  assign CsrPlugin_exceptionPendings_1 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  assign CsrPlugin_exceptionPendings_2 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  assign CsrPlugin_exceptionPendings_3 = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && CsrPlugin_allowException);
  assign CsrPlugin_lastStageWasWfi = 1'b0;
  assign CsrPlugin_pipelineLiberator_active = ((CsrPlugin_interrupt_valid && CsrPlugin_allowInterrupts) && decode_arbitration_isValid);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = CsrPlugin_pipelineLiberator_pcValids_2;
    if(({CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack,{CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory,CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute}} != 3'b000))begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
    if(CsrPlugin_hadException)begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign CsrPlugin_interruptJump = ((CsrPlugin_interrupt_valid && CsrPlugin_pipelineLiberator_done) && CsrPlugin_allowInterrupts);
  always @ (*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interrupt_targetPrivilege;
    if(CsrPlugin_hadException)begin
      CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
    end
  end

  always @ (*) begin
    CsrPlugin_trapCause = CsrPlugin_interrupt_code;
    if(CsrPlugin_hadException)begin
      CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
    end
  end

  always @ (*) begin
    CsrPlugin_xtvec_mode = 2'bxx;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_mode = CsrPlugin_mtvec_mode;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    CsrPlugin_xtvec_base = 30'h0;
    case(CsrPlugin_targetPrivilege)
      2'b11 : begin
        CsrPlugin_xtvec_base = CsrPlugin_mtvec_base;
      end
      default : begin
      end
    endcase
  end

  assign contextSwitching = CsrPlugin_jumpInterface_valid;
  assign execute_CsrPlugin_blockedBySideEffects = (({writeBack_arbitration_isValid,memory_arbitration_isValid} != 2'b00) || 1'b0);
  always @ (*) begin
    execute_CsrPlugin_illegalAccess = 1'b1;
    if(execute_CsrPlugin_csr_3264)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_768)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_836)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_772)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_773)begin
      if(execute_CSR_WRITE_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_833)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_834)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_835)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(execute_CsrPlugin_csr_3008)begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
    if(execute_CsrPlugin_csr_4032)begin
      if(execute_CSR_READ_OPCODE)begin
        execute_CsrPlugin_illegalAccess = 1'b0;
      end
    end
    if(_zz_236)begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
    if(((! execute_arbitration_isValid) || (! execute_IS_CSR)))begin
      execute_CsrPlugin_illegalAccess = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)))begin
      if((CsrPlugin_privilege < execute_INSTRUCTION[29 : 28]))begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_valid = 1'b0;
    if(_zz_237)begin
      CsrPlugin_selfException_valid = 1'b1;
    end
  end

  always @ (*) begin
    CsrPlugin_selfException_payload_code = 4'bxxxx;
    if(_zz_237)begin
      case(CsrPlugin_privilege)
        2'b00 : begin
          CsrPlugin_selfException_payload_code = 4'b1000;
        end
        default : begin
          CsrPlugin_selfException_payload_code = 4'b1011;
        end
      endcase
    end
  end

  assign CsrPlugin_selfException_payload_badAddr = execute_INSTRUCTION;
  always @ (*) begin
    execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
    if(_zz_236)begin
      execute_CsrPlugin_writeInstruction = 1'b0;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
    if(_zz_236)begin
      execute_CsrPlugin_readInstruction = 1'b0;
    end
  end

  assign execute_CsrPlugin_writeEnable = (execute_CsrPlugin_writeInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readEnable = (execute_CsrPlugin_readInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readToWriteData = execute_CsrPlugin_readData;
  always @ (*) begin
    case(_zz_246)
      1'b0 : begin
        execute_CsrPlugin_writeData = execute_SRC1;
      end
      default : begin
        execute_CsrPlugin_writeData = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readToWriteData & (~ execute_SRC1)) : (execute_CsrPlugin_readToWriteData | execute_SRC1));
      end
    endcase
  end

  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign _zz_134 = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_134 == 3'b000)) begin
        _zz_135 = execute_BranchPlugin_eq;
    end else if((_zz_134 == 3'b001)) begin
        _zz_135 = (! execute_BranchPlugin_eq);
    end else if((((_zz_134 & 3'b101) == 3'b101))) begin
        _zz_135 = (! execute_SRC_LESS);
    end else begin
        _zz_135 = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_136 = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_136 = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_136 = 1'b1;
      end
      default : begin
        _zz_136 = _zz_135;
      end
    endcase
  end

  assign _zz_137 = _zz_324[11];
  always @ (*) begin
    _zz_138[19] = _zz_137;
    _zz_138[18] = _zz_137;
    _zz_138[17] = _zz_137;
    _zz_138[16] = _zz_137;
    _zz_138[15] = _zz_137;
    _zz_138[14] = _zz_137;
    _zz_138[13] = _zz_137;
    _zz_138[12] = _zz_137;
    _zz_138[11] = _zz_137;
    _zz_138[10] = _zz_137;
    _zz_138[9] = _zz_137;
    _zz_138[8] = _zz_137;
    _zz_138[7] = _zz_137;
    _zz_138[6] = _zz_137;
    _zz_138[5] = _zz_137;
    _zz_138[4] = _zz_137;
    _zz_138[3] = _zz_137;
    _zz_138[2] = _zz_137;
    _zz_138[1] = _zz_137;
    _zz_138[0] = _zz_137;
  end

  assign _zz_139 = _zz_325[19];
  always @ (*) begin
    _zz_140[10] = _zz_139;
    _zz_140[9] = _zz_139;
    _zz_140[8] = _zz_139;
    _zz_140[7] = _zz_139;
    _zz_140[6] = _zz_139;
    _zz_140[5] = _zz_139;
    _zz_140[4] = _zz_139;
    _zz_140[3] = _zz_139;
    _zz_140[2] = _zz_139;
    _zz_140[1] = _zz_139;
    _zz_140[0] = _zz_139;
  end

  assign _zz_141 = _zz_326[11];
  always @ (*) begin
    _zz_142[18] = _zz_141;
    _zz_142[17] = _zz_141;
    _zz_142[16] = _zz_141;
    _zz_142[15] = _zz_141;
    _zz_142[14] = _zz_141;
    _zz_142[13] = _zz_141;
    _zz_142[12] = _zz_141;
    _zz_142[11] = _zz_141;
    _zz_142[10] = _zz_141;
    _zz_142[9] = _zz_141;
    _zz_142[8] = _zz_141;
    _zz_142[7] = _zz_141;
    _zz_142[6] = _zz_141;
    _zz_142[5] = _zz_141;
    _zz_142[4] = _zz_141;
    _zz_142[3] = _zz_141;
    _zz_142[2] = _zz_141;
    _zz_142[1] = _zz_141;
    _zz_142[0] = _zz_141;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_143 = (_zz_327[1] ^ execute_RS1[1]);
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_143 = _zz_328[1];
      end
      default : begin
        _zz_143 = _zz_329[1];
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = (execute_BRANCH_COND_RESULT && _zz_143);
  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
      end
    endcase
  end

  assign _zz_144 = _zz_330[11];
  always @ (*) begin
    _zz_145[19] = _zz_144;
    _zz_145[18] = _zz_144;
    _zz_145[17] = _zz_144;
    _zz_145[16] = _zz_144;
    _zz_145[15] = _zz_144;
    _zz_145[14] = _zz_144;
    _zz_145[13] = _zz_144;
    _zz_145[12] = _zz_144;
    _zz_145[11] = _zz_144;
    _zz_145[10] = _zz_144;
    _zz_145[9] = _zz_144;
    _zz_145[8] = _zz_144;
    _zz_145[7] = _zz_144;
    _zz_145[6] = _zz_144;
    _zz_145[5] = _zz_144;
    _zz_145[4] = _zz_144;
    _zz_145[3] = _zz_144;
    _zz_145[2] = _zz_144;
    _zz_145[1] = _zz_144;
    _zz_145[0] = _zz_144;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src2 = {_zz_145,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_147,{{{_zz_528,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_149,{{{_zz_529,_zz_530},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if(execute_PREDICTION_HAD_BRANCHED2)begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_333};
        end
      end
    endcase
  end

  assign _zz_146 = _zz_331[19];
  always @ (*) begin
    _zz_147[10] = _zz_146;
    _zz_147[9] = _zz_146;
    _zz_147[8] = _zz_146;
    _zz_147[7] = _zz_146;
    _zz_147[6] = _zz_146;
    _zz_147[5] = _zz_146;
    _zz_147[4] = _zz_146;
    _zz_147[3] = _zz_146;
    _zz_147[2] = _zz_146;
    _zz_147[1] = _zz_146;
    _zz_147[0] = _zz_146;
  end

  assign _zz_148 = _zz_332[11];
  always @ (*) begin
    _zz_149[18] = _zz_148;
    _zz_149[17] = _zz_148;
    _zz_149[16] = _zz_148;
    _zz_149[15] = _zz_148;
    _zz_149[14] = _zz_148;
    _zz_149[13] = _zz_148;
    _zz_149[12] = _zz_148;
    _zz_149[11] = _zz_148;
    _zz_149[10] = _zz_148;
    _zz_149[9] = _zz_148;
    _zz_149[8] = _zz_148;
    _zz_149[7] = _zz_148;
    _zz_149[6] = _zz_148;
    _zz_149[5] = _zz_148;
    _zz_149[4] = _zz_148;
    _zz_149[3] = _zz_148;
    _zz_149[2] = _zz_148;
    _zz_149[1] = _zz_148;
    _zz_149[0] = _zz_148;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign BranchPlugin_jumpInterface_valid = ((memory_arbitration_isValid && memory_BRANCH_DO) && (! 1'b0));
  assign BranchPlugin_jumpInterface_payload = memory_BRANCH_CALC;
  assign BranchPlugin_branchExceptionPort_valid = (memory_arbitration_isValid && (memory_BRANCH_DO && memory_BRANCH_CALC[1]));
  assign BranchPlugin_branchExceptionPort_payload_code = 4'b0000;
  assign BranchPlugin_branchExceptionPort_payload_badAddr = memory_BRANCH_CALC;
  assign IBusCachedPlugin_decodePrediction_rsp_wasWrong = BranchPlugin_jumpInterface_valid;
  assign _zz_151 = (_zz_150 & externalInterruptArray_regNext);
  assign externalInterrupt = (_zz_151 != 32'h0);
  always @ (*) begin
    memory_StreamrPlugin_rd = 32'h0;
    if(_zz_213)begin
      if(readStream0_valid)begin
        memory_StreamrPlugin_rd = readStream0_data;
      end
    end
    if(_zz_214)begin
      if(readStream1_valid)begin
        memory_StreamrPlugin_rd = readStream1_data;
      end
    end
    if(_zz_215)begin
      if(readStream2_valid)begin
        memory_StreamrPlugin_rd = readStream2_data;
      end
    end
    if(_zz_216)begin
      if(readStream3_valid)begin
        memory_StreamrPlugin_rd = readStream3_data;
      end
    end
    if(_zz_217)begin
      if(readStream4_valid)begin
        memory_StreamrPlugin_rd = readStream4_data;
      end
    end
  end

  always @ (*) begin
    readStream0_ready = 1'b0;
    if(_zz_213)begin
      readStream0_ready = 1'b1;
    end
  end

  always @ (*) begin
    readStream1_ready = 1'b0;
    if(_zz_214)begin
      readStream1_ready = 1'b1;
    end
  end

  always @ (*) begin
    readStream2_ready = 1'b0;
    if(_zz_215)begin
      readStream2_ready = 1'b1;
    end
  end

  always @ (*) begin
    readStream3_ready = 1'b0;
    if(_zz_216)begin
      readStream3_ready = 1'b1;
    end
  end

  always @ (*) begin
    readStream4_ready = 1'b0;
    if(_zz_217)begin
      readStream4_ready = 1'b1;
    end
  end

  always @ (*) begin
    writeStream0_valid = 1'b0;
    if(_zz_218)begin
      writeStream0_valid = 1'b1;
    end
  end

  always @ (*) begin
    writeStream0_data = 32'h0;
    if(_zz_218)begin
      if(writeStream0_ready)begin
        writeStream0_data = memory_RS2;
      end
    end
  end

  always @ (*) begin
    writeStream1_valid = 1'b0;
    if(_zz_219)begin
      writeStream1_valid = 1'b1;
    end
  end

  always @ (*) begin
    writeStream1_data = 32'h0;
    if(_zz_219)begin
      if(writeStream1_ready)begin
        writeStream1_data = memory_RS2;
      end
    end
  end

  always @ (*) begin
    writeStream2_valid = 1'b0;
    if(_zz_220)begin
      writeStream2_valid = 1'b1;
    end
  end

  always @ (*) begin
    writeStream2_data = 32'h0;
    if(_zz_220)begin
      if(writeStream2_ready)begin
        writeStream2_data = memory_RS2;
      end
    end
  end

  always @ (*) begin
    writeStream3_valid = 1'b0;
    if(_zz_221)begin
      writeStream3_valid = 1'b1;
    end
  end

  always @ (*) begin
    writeStream3_data = 32'h0;
    if(_zz_221)begin
      if(writeStream3_ready)begin
        writeStream3_data = memory_RS2;
      end
    end
  end

  always @ (*) begin
    writeStream4_valid = 1'b0;
    if(_zz_222)begin
      writeStream4_valid = 1'b1;
    end
  end

  always @ (*) begin
    writeStream4_data = 32'h0;
    if(_zz_222)begin
      if(writeStream4_ready)begin
        writeStream4_data = memory_RS2;
      end
    end
  end

  assign _zz_26 = decode_SRC1_CTRL;
  assign _zz_24 = _zz_51;
  assign _zz_39 = decode_to_execute_SRC1_CTRL;
  assign _zz_23 = decode_ALU_CTRL;
  assign _zz_21 = _zz_50;
  assign _zz_40 = decode_to_execute_ALU_CTRL;
  assign _zz_20 = decode_SRC2_CTRL;
  assign _zz_18 = _zz_49;
  assign _zz_37 = decode_to_execute_SRC2_CTRL;
  assign _zz_17 = decode_ALU_BITWISE_CTRL;
  assign _zz_15 = _zz_48;
  assign _zz_41 = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_14 = decode_SHIFT_CTRL;
  assign _zz_11 = execute_SHIFT_CTRL;
  assign _zz_12 = _zz_47;
  assign _zz_34 = decode_to_execute_SHIFT_CTRL;
  assign _zz_33 = execute_to_memory_SHIFT_CTRL;
  assign _zz_9 = decode_ENV_CTRL;
  assign _zz_6 = execute_ENV_CTRL;
  assign _zz_4 = memory_ENV_CTRL;
  assign _zz_7 = _zz_46;
  assign _zz_29 = decode_to_execute_ENV_CTRL;
  assign _zz_28 = execute_to_memory_ENV_CTRL;
  assign _zz_30 = memory_to_writeBack_ENV_CTRL;
  assign _zz_2 = decode_BRANCH_CTRL;
  assign _zz_53 = _zz_45;
  assign _zz_27 = decode_to_execute_BRANCH_CTRL;
  assign decode_arbitration_isFlushed = (({writeBack_arbitration_flushNext,{memory_arbitration_flushNext,execute_arbitration_flushNext}} != 3'b000) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,{execute_arbitration_flushIt,decode_arbitration_flushIt}}} != 4'b0000));
  assign execute_arbitration_isFlushed = (({writeBack_arbitration_flushNext,memory_arbitration_flushNext} != 2'b00) || ({writeBack_arbitration_flushIt,{memory_arbitration_flushIt,execute_arbitration_flushIt}} != 3'b000));
  assign memory_arbitration_isFlushed = ((writeBack_arbitration_flushNext != 1'b0) || ({writeBack_arbitration_flushIt,memory_arbitration_flushIt} != 2'b00));
  assign writeBack_arbitration_isFlushed = (1'b0 || (writeBack_arbitration_flushIt != 1'b0));
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  always @ (*) begin
    _zz_152 = 32'h0;
    if(execute_CsrPlugin_csr_3264)begin
      _zz_152[12 : 0] = 13'h1000;
      _zz_152[25 : 20] = 6'h20;
    end
  end

  always @ (*) begin
    _zz_153 = 32'h0;
    if(execute_CsrPlugin_csr_768)begin
      _zz_153[12 : 11] = CsrPlugin_mstatus_MPP;
      _zz_153[7 : 7] = CsrPlugin_mstatus_MPIE;
      _zz_153[3 : 3] = CsrPlugin_mstatus_MIE;
    end
  end

  always @ (*) begin
    _zz_154 = 32'h0;
    if(execute_CsrPlugin_csr_836)begin
      _zz_154[11 : 11] = CsrPlugin_mip_MEIP;
      _zz_154[7 : 7] = CsrPlugin_mip_MTIP;
      _zz_154[3 : 3] = CsrPlugin_mip_MSIP;
    end
  end

  always @ (*) begin
    _zz_155 = 32'h0;
    if(execute_CsrPlugin_csr_772)begin
      _zz_155[11 : 11] = CsrPlugin_mie_MEIE;
      _zz_155[7 : 7] = CsrPlugin_mie_MTIE;
      _zz_155[3 : 3] = CsrPlugin_mie_MSIE;
    end
  end

  always @ (*) begin
    _zz_156 = 32'h0;
    if(execute_CsrPlugin_csr_833)begin
      _zz_156[31 : 0] = CsrPlugin_mepc;
    end
  end

  always @ (*) begin
    _zz_157 = 32'h0;
    if(execute_CsrPlugin_csr_834)begin
      _zz_157[31 : 31] = CsrPlugin_mcause_interrupt;
      _zz_157[3 : 0] = CsrPlugin_mcause_exceptionCode;
    end
  end

  always @ (*) begin
    _zz_158 = 32'h0;
    if(execute_CsrPlugin_csr_835)begin
      _zz_158[31 : 0] = CsrPlugin_mtval;
    end
  end

  always @ (*) begin
    _zz_159 = 32'h0;
    if(execute_CsrPlugin_csr_3008)begin
      _zz_159[31 : 0] = _zz_150;
    end
  end

  always @ (*) begin
    _zz_160 = 32'h0;
    if(execute_CsrPlugin_csr_4032)begin
      _zz_160[31 : 0] = _zz_151;
    end
  end

  assign execute_CsrPlugin_readData = ((((_zz_152 | _zz_153) | (_zz_154 | _zz_155)) | ((_zz_156 | _zz_157) | (_zz_158 | _zz_159))) | _zz_160);
  assign iBusWishbone_ADR = {_zz_340,_zz_161};
  assign iBusWishbone_CTI = ((_zz_161 == 3'b111) ? 3'b111 : 3'b010);
  assign iBusWishbone_BTE = 2'b00;
  assign iBusWishbone_SEL = 4'b1111;
  assign iBusWishbone_WE = 1'b0;
  assign iBusWishbone_DAT_MOSI = 32'h0;
  always @ (*) begin
    iBusWishbone_CYC = 1'b0;
    if(_zz_238)begin
      iBusWishbone_CYC = 1'b1;
    end
  end

  always @ (*) begin
    iBusWishbone_STB = 1'b0;
    if(_zz_238)begin
      iBusWishbone_STB = 1'b1;
    end
  end

  assign iBus_cmd_ready = (iBus_cmd_valid && iBusWishbone_ACK);
  assign iBus_rsp_valid = _zz_162;
  assign iBus_rsp_payload_data = iBusWishbone_DAT_MISO_regNext;
  assign iBus_rsp_payload_error = 1'b0;
  assign _zz_168 = (dBus_cmd_payload_length != 3'b000);
  assign _zz_164 = dBus_cmd_valid;
  assign _zz_166 = dBus_cmd_payload_wr;
  assign _zz_167 = (_zz_163 == dBus_cmd_payload_length);
  assign dBus_cmd_ready = (_zz_165 && (_zz_166 || _zz_167));
  assign dBusWishbone_ADR = ((_zz_168 ? {{dBus_cmd_payload_address[31 : 5],_zz_163},2'b00} : {dBus_cmd_payload_address[31 : 2],2'b00}) >>> 2);
  assign dBusWishbone_CTI = (_zz_168 ? (_zz_167 ? 3'b111 : 3'b010) : 3'b000);
  assign dBusWishbone_BTE = 2'b00;
  assign dBusWishbone_SEL = (_zz_166 ? dBus_cmd_payload_mask : 4'b1111);
  assign dBusWishbone_WE = _zz_166;
  assign dBusWishbone_DAT_MOSI = dBus_cmd_payload_data;
  assign _zz_165 = (_zz_164 && dBusWishbone_ACK);
  assign dBusWishbone_CYC = _zz_164;
  assign dBusWishbone_STB = _zz_164;
  assign dBus_rsp_valid = _zz_169;
  assign dBus_rsp_payload_data = dBusWishbone_DAT_MISO_regNext;
  assign dBus_rsp_payload_error = 1'b0;
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      IBusCachedPlugin_fetchPc_pcReg <= 32'h0;
      IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      IBusCachedPlugin_fetchPc_booted <= 1'b0;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_65 <= 1'b0;
      _zz_66 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      IBusCachedPlugin_rspCounter <= _zz_82;
      IBusCachedPlugin_rspCounter <= 32'h0;
      dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid <= 1'b0;
      DBusCachedPlugin_rspCounter <= _zz_83;
      DBusCachedPlugin_rspCounter <= 32'h0;
      _zz_103 <= 1'b1;
      _zz_115 <= 1'b0;
      memory_DivPlugin_div_counter_value <= 6'h0;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= 2'b11;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_interrupt_valid <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
      CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      execute_CsrPlugin_wfiWake <= 1'b0;
      _zz_150 <= 32'h0;
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      _zz_161 <= 3'b000;
      _zz_162 <= 1'b0;
      _zz_163 <= 3'b000;
      _zz_169 <= 1'b0;
    end else begin
      if(IBusCachedPlugin_fetchPc_correction)begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b1;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_correctionReg <= 1'b0;
      end
      IBusCachedPlugin_fetchPc_booted <= 1'b1;
      if((IBusCachedPlugin_fetchPc_correction || IBusCachedPlugin_fetchPc_pcRegPropagate))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_output_valid && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(((! IBusCachedPlugin_fetchPc_output_valid) && IBusCachedPlugin_fetchPc_output_ready))begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if((IBusCachedPlugin_fetchPc_booted && ((IBusCachedPlugin_fetchPc_output_ready || IBusCachedPlugin_fetchPc_correction) || IBusCachedPlugin_fetchPc_pcRegPropagate)))begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      if(IBusCachedPlugin_iBusRsp_flush)begin
        _zz_65 <= 1'b0;
      end
      if(_zz_63)begin
        _zz_65 <= (IBusCachedPlugin_iBusRsp_stages_0_output_valid && (! 1'b0));
      end
      if(decode_arbitration_removeIt)begin
        _zz_66 <= 1'b0;
      end
      if(IBusCachedPlugin_iBusRsp_output_ready)begin
        _zz_66 <= (IBusCachedPlugin_iBusRsp_output_valid && (! IBusCachedPlugin_externalFlush));
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_injector_decodeInput_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_1 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= IBusCachedPlugin_injector_nextPcCalc_valids_1;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_2 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= IBusCachedPlugin_injector_nextPcCalc_valids_2;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_3 <= 1'b0;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= IBusCachedPlugin_injector_nextPcCalc_valids_3;
      end
      if(IBusCachedPlugin_fetchPc_flushed)begin
        IBusCachedPlugin_injector_nextPcCalc_valids_4 <= 1'b0;
      end
      if(iBus_rsp_valid)begin
        IBusCachedPlugin_rspCounter <= (IBusCachedPlugin_rspCounter + 32'h00000001);
      end
      if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= 1'b0;
      end
      if(_zz_239)begin
        dataCache_1_io_mem_cmd_s2mPipe_rValid <= dataCache_1_io_mem_cmd_valid;
      end
      if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
        dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rValid <= dataCache_1_io_mem_cmd_s2mPipe_valid;
      end
      if(dBus_rsp_valid)begin
        DBusCachedPlugin_rspCounter <= (DBusCachedPlugin_rspCounter + 32'h00000001);
      end
      _zz_103 <= 1'b0;
      _zz_115 <= (_zz_43 && writeBack_arbitration_isFiring);
      memory_DivPlugin_div_counter_value <= memory_DivPlugin_div_counter_valueNext;
      if((! decode_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_interrupt_valid <= 1'b0;
      if(_zz_240)begin
        if(_zz_241)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_242)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
        if(_zz_243)begin
          CsrPlugin_interrupt_valid <= 1'b1;
        end
      end
      if(CsrPlugin_pipelineLiberator_active)begin
        if((! execute_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b1;
        end
        if((! memory_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_1 <= CsrPlugin_pipelineLiberator_pcValids_0;
        end
        if((! writeBack_arbitration_isStuck))begin
          CsrPlugin_pipelineLiberator_pcValids_2 <= CsrPlugin_pipelineLiberator_pcValids_1;
        end
      end
      if(((! CsrPlugin_pipelineLiberator_active) || decode_arbitration_removeIt))begin
        CsrPlugin_pipelineLiberator_pcValids_0 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_1 <= 1'b0;
        CsrPlugin_pipelineLiberator_pcValids_2 <= 1'b0;
      end
      if(CsrPlugin_interruptJump)begin
        CsrPlugin_interrupt_valid <= 1'b0;
      end
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_223)begin
        case(CsrPlugin_targetPrivilege)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_224)begin
        case(_zz_225)
          2'b11 : begin
            CsrPlugin_mstatus_MPP <= 2'b00;
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPIE <= 1'b1;
          end
          default : begin
          end
        endcase
      end
      execute_CsrPlugin_wfiWake <= (({_zz_131,{_zz_130,_zz_129}} != 3'b000) || CsrPlugin_thirdPartyWake);
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      if(execute_CsrPlugin_csr_768)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
          CsrPlugin_mstatus_MPIE <= _zz_334[0];
          CsrPlugin_mstatus_MIE <= _zz_335[0];
        end
      end
      if(execute_CsrPlugin_csr_772)begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mie_MEIE <= _zz_337[0];
          CsrPlugin_mie_MTIE <= _zz_338[0];
          CsrPlugin_mie_MSIE <= _zz_339[0];
        end
      end
      if(execute_CsrPlugin_csr_3008)begin
        if(execute_CsrPlugin_writeEnable)begin
          _zz_150 <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      if(_zz_238)begin
        if(iBusWishbone_ACK)begin
          _zz_161 <= (_zz_161 + 3'b001);
        end
      end
      _zz_162 <= (iBusWishbone_CYC && iBusWishbone_ACK);
      if((_zz_164 && _zz_165))begin
        _zz_163 <= (_zz_163 + 3'b001);
        if(_zz_167)begin
          _zz_163 <= 3'b000;
        end
      end
      _zz_169 <= ((_zz_164 && (! dBusWishbone_WE)) && dBusWishbone_ACK);
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_output_ready)begin
      _zz_67 <= IBusCachedPlugin_iBusRsp_output_payload_pc;
      _zz_68 <= IBusCachedPlugin_iBusRsp_output_payload_rsp_error;
      _zz_69 <= IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
      _zz_70 <= IBusCachedPlugin_iBusRsp_output_payload_isRvc;
    end
    if(IBusCachedPlugin_injector_decodeInput_ready)begin
      IBusCachedPlugin_injector_formal_rawInDecode <= IBusCachedPlugin_iBusRsp_output_payload_rsp_inst;
    end
    if(IBusCachedPlugin_iBusRsp_stages_1_input_ready)begin
      IBusCachedPlugin_s1_tightlyCoupledHit <= IBusCachedPlugin_s0_tightlyCoupledHit;
    end
    if(_zz_239)begin
      dataCache_1_io_mem_cmd_s2mPipe_rData_wr <= dataCache_1_io_mem_cmd_payload_wr;
      dataCache_1_io_mem_cmd_s2mPipe_rData_uncached <= dataCache_1_io_mem_cmd_payload_uncached;
      dataCache_1_io_mem_cmd_s2mPipe_rData_address <= dataCache_1_io_mem_cmd_payload_address;
      dataCache_1_io_mem_cmd_s2mPipe_rData_data <= dataCache_1_io_mem_cmd_payload_data;
      dataCache_1_io_mem_cmd_s2mPipe_rData_mask <= dataCache_1_io_mem_cmd_payload_mask;
      dataCache_1_io_mem_cmd_s2mPipe_rData_length <= dataCache_1_io_mem_cmd_payload_length;
      dataCache_1_io_mem_cmd_s2mPipe_rData_last <= dataCache_1_io_mem_cmd_payload_last;
    end
    if(dataCache_1_io_mem_cmd_s2mPipe_ready)begin
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_wr <= dataCache_1_io_mem_cmd_s2mPipe_payload_wr;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_uncached <= dataCache_1_io_mem_cmd_s2mPipe_payload_uncached;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_address <= dataCache_1_io_mem_cmd_s2mPipe_payload_address;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_data <= dataCache_1_io_mem_cmd_s2mPipe_payload_data;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_mask <= dataCache_1_io_mem_cmd_s2mPipe_payload_mask;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_length <= dataCache_1_io_mem_cmd_s2mPipe_payload_length;
      dataCache_1_io_mem_cmd_s2mPipe_m2sPipe_rData_last <= dataCache_1_io_mem_cmd_s2mPipe_payload_last;
    end
    _zz_116 <= _zz_42[11 : 7];
    _zz_117 <= _zz_52;
    if((memory_DivPlugin_div_counter_value == 6'h20))begin
      memory_DivPlugin_div_done <= 1'b1;
    end
    if((! memory_arbitration_isStuck))begin
      memory_DivPlugin_div_done <= 1'b0;
    end
    if(_zz_207)begin
      if(_zz_234)begin
        memory_DivPlugin_rs1[31 : 0] <= memory_DivPlugin_div_stage_0_outNumerator;
        memory_DivPlugin_accumulator[31 : 0] <= memory_DivPlugin_div_stage_0_outRemainder;
        if((memory_DivPlugin_div_counter_value == 6'h20))begin
          memory_DivPlugin_div_result <= _zz_313[31:0];
        end
      end
    end
    if(_zz_235)begin
      memory_DivPlugin_accumulator <= 65'h0;
      memory_DivPlugin_rs1 <= ((_zz_127 ? (~ _zz_128) : _zz_128) + _zz_319);
      memory_DivPlugin_rs2 <= ((_zz_126 ? (~ execute_RS2) : execute_RS2) + _zz_321);
      memory_DivPlugin_div_needRevert <= ((_zz_127 ^ (_zz_126 && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == 32'h0) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    CsrPlugin_mip_MEIP <= externalInterrupt;
    CsrPlugin_mip_MTIP <= timerInterrupt;
    CsrPlugin_mip_MSIP <= softwareInterrupt;
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + 64'h0000000000000001);
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + 64'h0000000000000001);
    end
    if(_zz_212)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= (_zz_133 ? IBusCachedPlugin_decodeExceptionPort_payload_code : decodeExceptionPort_payload_code);
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= (_zz_133 ? IBusCachedPlugin_decodeExceptionPort_payload_badAddr : decodeExceptionPort_payload_badAddr);
    end
    if(CsrPlugin_selfException_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= CsrPlugin_selfException_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= CsrPlugin_selfException_payload_badAddr;
    end
    if(BranchPlugin_branchExceptionPort_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= BranchPlugin_branchExceptionPort_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= BranchPlugin_branchExceptionPort_payload_badAddr;
    end
    if(DBusCachedPlugin_exceptionBus_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= DBusCachedPlugin_exceptionBus_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= DBusCachedPlugin_exceptionBus_payload_badAddr;
    end
    if(_zz_240)begin
      if(_zz_241)begin
        CsrPlugin_interrupt_code <= 4'b0111;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_242)begin
        CsrPlugin_interrupt_code <= 4'b0011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
      if(_zz_243)begin
        CsrPlugin_interrupt_code <= 4'b1011;
        CsrPlugin_interrupt_targetPrivilege <= 2'b11;
      end
    end
    if(_zz_223)begin
      case(CsrPlugin_targetPrivilege)
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= (! CsrPlugin_hadException);
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mepc <= writeBack_PC;
          if(CsrPlugin_hadException)begin
            CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
          end
        end
        default : begin
        end
      endcase
    end
    externalInterruptArray_regNext <= externalInterruptArray;
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= decode_PC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= _zz_35;
    end
    if(((! writeBack_arbitration_isStuck) && (! CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack)))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= decode_INSTRUCTION;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_55;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_54;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_FORCE_CONSTISTENCY <= decode_MEMORY_FORCE_CONSTISTENCY;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC1_CTRL <= _zz_25;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_22;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_CTRL <= _zz_19;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_16;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_13;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_CTRL <= _zz_10;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_IS_MUL <= memory_IS_MUL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ENV_CTRL <= _zz_8;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_5;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_3;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_STREAMR <= decode_IS_STREAMR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_STREAMR <= execute_IS_STREAMR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_STREAMW <= decode_IS_STREAMW;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_STREAMW <= execute_IS_STREAMW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= decode_RS1;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_RS1 <= _zz_38;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= decode_RS2;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_RS2 <= _zz_36;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_FORCE_ZERO <= decode_SRC2_FORCE_ZERO;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_31;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_32;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3264 <= (decode_INSTRUCTION[31 : 20] == 12'hcc0);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_768 <= (decode_INSTRUCTION[31 : 20] == 12'h300);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_836 <= (decode_INSTRUCTION[31 : 20] == 12'h344);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_772 <= (decode_INSTRUCTION[31 : 20] == 12'h304);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_773 <= (decode_INSTRUCTION[31 : 20] == 12'h305);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_833 <= (decode_INSTRUCTION[31 : 20] == 12'h341);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_834 <= (decode_INSTRUCTION[31 : 20] == 12'h342);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_835 <= (decode_INSTRUCTION[31 : 20] == 12'h343);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_3008 <= (decode_INSTRUCTION[31 : 20] == 12'hbc0);
    end
    if((! execute_arbitration_isStuck))begin
      execute_CsrPlugin_csr_4032 <= (decode_INSTRUCTION[31 : 20] == 12'hfc0);
    end
    if(execute_CsrPlugin_csr_836)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mip_MSIP <= _zz_336[0];
      end
    end
    if(execute_CsrPlugin_csr_773)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mtvec_base <= execute_CsrPlugin_writeData[31 : 2];
        CsrPlugin_mtvec_mode <= execute_CsrPlugin_writeData[1 : 0];
      end
    end
    if(execute_CsrPlugin_csr_833)begin
      if(execute_CsrPlugin_writeEnable)begin
        CsrPlugin_mepc <= execute_CsrPlugin_writeData[31 : 0];
      end
    end
    iBusWishbone_DAT_MISO_regNext <= iBusWishbone_DAT_MISO;
    dBusWishbone_DAT_MISO_regNext <= dBusWishbone_DAT_MISO;
  end


endmodule

module DataCache (
  input               io_cpu_execute_isValid,
  input      [31:0]   io_cpu_execute_address,
  output              io_cpu_execute_haltIt,
  input               io_cpu_execute_args_wr,
  input      [31:0]   io_cpu_execute_args_data,
  input      [1:0]    io_cpu_execute_args_size,
  input               io_cpu_execute_args_totalyConsistent,
  output              io_cpu_execute_refilling,
  input               io_cpu_memory_isValid,
  input               io_cpu_memory_isStuck,
  output              io_cpu_memory_isWrite,
  input      [31:0]   io_cpu_memory_address,
  input      [31:0]   io_cpu_memory_mmuRsp_physicalAddress,
  input               io_cpu_memory_mmuRsp_isIoAccess,
  input               io_cpu_memory_mmuRsp_isPaging,
  input               io_cpu_memory_mmuRsp_allowRead,
  input               io_cpu_memory_mmuRsp_allowWrite,
  input               io_cpu_memory_mmuRsp_allowExecute,
  input               io_cpu_memory_mmuRsp_exception,
  input               io_cpu_memory_mmuRsp_refilling,
  input               io_cpu_memory_mmuRsp_bypassTranslation,
  input               io_cpu_writeBack_isValid,
  input               io_cpu_writeBack_isStuck,
  input               io_cpu_writeBack_isUser,
  output reg          io_cpu_writeBack_haltIt,
  output              io_cpu_writeBack_isWrite,
  output reg [31:0]   io_cpu_writeBack_data,
  input      [31:0]   io_cpu_writeBack_address,
  output              io_cpu_writeBack_mmuException,
  output              io_cpu_writeBack_unalignedAccess,
  output reg          io_cpu_writeBack_accessError,
  output              io_cpu_writeBack_keepMemRspData,
  input               io_cpu_writeBack_fence_SW,
  input               io_cpu_writeBack_fence_SR,
  input               io_cpu_writeBack_fence_SO,
  input               io_cpu_writeBack_fence_SI,
  input               io_cpu_writeBack_fence_PW,
  input               io_cpu_writeBack_fence_PR,
  input               io_cpu_writeBack_fence_PO,
  input               io_cpu_writeBack_fence_PI,
  input      [3:0]    io_cpu_writeBack_fence_FM,
  output reg          io_cpu_redo,
  input               io_cpu_flush_valid,
  output reg          io_cpu_flush_ready,
  output reg          io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output reg          io_mem_cmd_payload_wr,
  output              io_mem_cmd_payload_uncached,
  output reg [31:0]   io_mem_cmd_payload_address,
  output     [31:0]   io_mem_cmd_payload_data,
  output     [3:0]    io_mem_cmd_payload_mask,
  output reg [2:0]    io_mem_cmd_payload_length,
  output              io_mem_cmd_payload_last,
  input               io_mem_rsp_valid,
  input               io_mem_rsp_payload_last,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               reset
);
  reg        [21:0]   _zz_10;
  reg        [31:0]   _zz_11;
  wire                _zz_12;
  wire                _zz_13;
  wire                _zz_14;
  wire                _zz_15;
  wire                _zz_16;
  wire                _zz_17;
  wire                _zz_18;
  wire       [0:0]    _zz_19;
  wire       [0:0]    _zz_20;
  wire       [9:0]    _zz_21;
  wire       [9:0]    _zz_22;
  wire       [0:0]    _zz_23;
  wire       [0:0]    _zz_24;
  wire       [2:0]    _zz_25;
  wire       [1:0]    _zz_26;
  wire       [21:0]   _zz_27;
  reg                 _zz_1;
  reg                 _zz_2;
  wire                haltCpu;
  reg                 tagsReadCmd_valid;
  reg        [6:0]    tagsReadCmd_payload;
  reg                 tagsWriteCmd_valid;
  reg        [0:0]    tagsWriteCmd_payload_way;
  reg        [6:0]    tagsWriteCmd_payload_address;
  reg                 tagsWriteCmd_payload_data_valid;
  reg                 tagsWriteCmd_payload_data_error;
  reg        [19:0]   tagsWriteCmd_payload_data_address;
  reg                 tagsWriteLastCmd_valid;
  reg        [0:0]    tagsWriteLastCmd_payload_way;
  reg        [6:0]    tagsWriteLastCmd_payload_address;
  reg                 tagsWriteLastCmd_payload_data_valid;
  reg                 tagsWriteLastCmd_payload_data_error;
  reg        [19:0]   tagsWriteLastCmd_payload_data_address;
  reg                 dataReadCmd_valid;
  reg        [9:0]    dataReadCmd_payload;
  reg                 dataWriteCmd_valid;
  reg        [0:0]    dataWriteCmd_payload_way;
  reg        [9:0]    dataWriteCmd_payload_address;
  reg        [31:0]   dataWriteCmd_payload_data;
  reg        [3:0]    dataWriteCmd_payload_mask;
  wire                _zz_3;
  wire                ways_0_tagsReadRsp_valid;
  wire                ways_0_tagsReadRsp_error;
  wire       [19:0]   ways_0_tagsReadRsp_address;
  wire       [21:0]   _zz_4;
  wire                _zz_5;
  wire       [31:0]   ways_0_dataReadRspMem;
  wire       [31:0]   ways_0_dataReadRsp;
  wire                rspSync;
  wire                rspLast;
  reg                 memCmdSent;
  reg        [3:0]    _zz_6;
  wire       [3:0]    stage0_mask;
  wire       [0:0]    stage0_dataColisions;
  wire       [0:0]    stage0_wayInvalidate;
  wire                stage0_isAmo;
  reg                 stageA_request_wr;
  reg        [31:0]   stageA_request_data;
  reg        [1:0]    stageA_request_size;
  reg                 stageA_request_totalyConsistent;
  reg        [3:0]    stageA_mask;
  wire                stageA_isAmo;
  wire                stageA_isLrsc;
  wire       [0:0]    stageA_wayHits;
  wire       [0:0]    _zz_7;
  reg        [0:0]    stageA_wayInvalidate;
  reg        [0:0]    stage0_dataColisions_regNextWhen;
  wire       [0:0]    _zz_8;
  wire       [0:0]    stageA_dataColisions;
  reg                 stageB_request_wr;
  reg        [31:0]   stageB_request_data;
  reg        [1:0]    stageB_request_size;
  reg                 stageB_request_totalyConsistent;
  reg                 stageB_mmuRspFreeze;
  reg        [31:0]   stageB_mmuRsp_physicalAddress;
  reg                 stageB_mmuRsp_isIoAccess;
  reg                 stageB_mmuRsp_isPaging;
  reg                 stageB_mmuRsp_allowRead;
  reg                 stageB_mmuRsp_allowWrite;
  reg                 stageB_mmuRsp_allowExecute;
  reg                 stageB_mmuRsp_exception;
  reg                 stageB_mmuRsp_refilling;
  reg                 stageB_mmuRsp_bypassTranslation;
  reg                 stageB_tagsReadRsp_0_valid;
  reg                 stageB_tagsReadRsp_0_error;
  reg        [19:0]   stageB_tagsReadRsp_0_address;
  reg        [31:0]   stageB_dataReadRsp_0;
  reg        [0:0]    stageB_wayInvalidate;
  wire                stageB_consistancyHazard;
  reg        [0:0]    stageB_dataColisions;
  reg                 stageB_unaligned;
  reg        [0:0]    stageB_waysHitsBeforeInvalidate;
  wire       [0:0]    stageB_waysHits;
  wire                stageB_waysHit;
  wire       [31:0]   stageB_dataMux;
  reg        [3:0]    stageB_mask;
  reg                 stageB_loaderValid;
  wire       [31:0]   stageB_ioMemRspMuxed;
  reg                 stageB_flusher_valid;
  wire                stageB_flusher_hold;
  reg                 stageB_flusher_start;
  wire                stageB_isAmo;
  wire                stageB_isAmoCached;
  wire                stageB_isExternalLsrc;
  wire                stageB_isExternalAmo;
  wire       [31:0]   stageB_requestDataBypass;
  reg                 stageB_cpuWriteToCache;
  wire                stageB_badPermissions;
  wire                stageB_loadStoreFault;
  wire                stageB_bypassCache;
  wire       [0:0]    _zz_9;
  reg                 loader_valid;
  reg                 loader_counter_willIncrement;
  wire                loader_counter_willClear;
  reg        [2:0]    loader_counter_valueNext;
  reg        [2:0]    loader_counter_value;
  wire                loader_counter_willOverflowIfInc;
  wire                loader_counter_willOverflow;
  reg        [0:0]    loader_waysAllocator;
  reg                 loader_error;
  wire                loader_kill;
  reg                 loader_killReg;
  wire                loader_done;
  reg                 loader_valid_regNext;
  reg [21:0] ways_0_tags [0:127];
  reg [7:0] ways_0_data_symbol0 [0:1023];
  reg [7:0] ways_0_data_symbol1 [0:1023];
  reg [7:0] ways_0_data_symbol2 [0:1023];
  reg [7:0] ways_0_data_symbol3 [0:1023];
  reg [7:0] _zz_28;
  reg [7:0] _zz_29;
  reg [7:0] _zz_30;
  reg [7:0] _zz_31;

  assign _zz_12 = (io_cpu_execute_isValid && (! io_cpu_memory_isStuck));
  assign _zz_13 = ((((stageB_consistancyHazard || stageB_mmuRsp_refilling) || io_cpu_writeBack_accessError) || io_cpu_writeBack_mmuException) || io_cpu_writeBack_unalignedAccess);
  assign _zz_14 = ((loader_valid && io_mem_rsp_valid) && rspLast);
  assign _zz_15 = (stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc);
  assign _zz_16 = (stageB_waysHit || (stageB_request_wr && (! stageB_isAmoCached)));
  assign _zz_17 = (! stageB_flusher_hold);
  assign _zz_18 = (stageB_mmuRsp_physicalAddress[11 : 5] != 7'h7f);
  assign _zz_19 = _zz_4[0 : 0];
  assign _zz_20 = _zz_4[1 : 1];
  assign _zz_21 = (io_cpu_execute_address[11 : 2] >>> 0);
  assign _zz_22 = (io_cpu_memory_address[11 : 2] >>> 0);
  assign _zz_23 = 1'b1;
  assign _zz_24 = loader_counter_willIncrement;
  assign _zz_25 = {2'd0, _zz_24};
  assign _zz_26 = {loader_waysAllocator,loader_waysAllocator[0]};
  assign _zz_27 = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_error,tagsWriteCmd_payload_data_valid}};
  always @ (posedge clk) begin
    if(_zz_3) begin
      _zz_10 <= ways_0_tags[tagsReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(_zz_2) begin
      ways_0_tags[tagsWriteCmd_payload_address] <= _zz_27;
    end
  end

  always @ (*) begin
    _zz_11 = {_zz_31, _zz_30, _zz_29, _zz_28};
  end
  always @ (posedge clk) begin
    if(_zz_5) begin
      _zz_28 <= ways_0_data_symbol0[dataReadCmd_payload];
      _zz_29 <= ways_0_data_symbol1[dataReadCmd_payload];
      _zz_30 <= ways_0_data_symbol2[dataReadCmd_payload];
      _zz_31 <= ways_0_data_symbol3[dataReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(dataWriteCmd_payload_mask[0] && _zz_1) begin
      ways_0_data_symbol0[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[7 : 0];
    end
    if(dataWriteCmd_payload_mask[1] && _zz_1) begin
      ways_0_data_symbol1[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[15 : 8];
    end
    if(dataWriteCmd_payload_mask[2] && _zz_1) begin
      ways_0_data_symbol2[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[23 : 16];
    end
    if(dataWriteCmd_payload_mask[3] && _zz_1) begin
      ways_0_data_symbol3[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[31 : 24];
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if((dataWriteCmd_valid && dataWriteCmd_payload_way[0]))begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if((tagsWriteCmd_valid && tagsWriteCmd_payload_way[0]))begin
      _zz_2 = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  assign _zz_3 = (tagsReadCmd_valid && (! io_cpu_memory_isStuck));
  assign _zz_4 = _zz_10;
  assign ways_0_tagsReadRsp_valid = _zz_19[0];
  assign ways_0_tagsReadRsp_error = _zz_20[0];
  assign ways_0_tagsReadRsp_address = _zz_4[21 : 2];
  assign _zz_5 = (dataReadCmd_valid && (! io_cpu_memory_isStuck));
  assign ways_0_dataReadRspMem = _zz_11;
  assign ways_0_dataReadRsp = ways_0_dataReadRspMem[31 : 0];
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    if(_zz_12)begin
      tagsReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsReadCmd_payload = 7'h0;
    if(_zz_12)begin
      tagsReadCmd_payload = io_cpu_execute_address[11 : 5];
    end
  end

  always @ (*) begin
    dataReadCmd_valid = 1'b0;
    if(_zz_12)begin
      dataReadCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataReadCmd_payload = 10'h0;
    if(_zz_12)begin
      dataReadCmd_payload = io_cpu_execute_address[11 : 2];
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_valid = stageB_flusher_valid;
    end
    if(_zz_13)begin
      tagsWriteCmd_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_way = 1'bx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_way = 1'b1;
    end
    if(loader_done)begin
      tagsWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_address = 7'h0;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
    if(loader_done)begin
      tagsWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 5];
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_valid = 1'bx;
    if(stageB_flusher_valid)begin
      tagsWriteCmd_payload_data_valid = 1'b0;
    end
    if(loader_done)begin
      tagsWriteCmd_payload_data_valid = (! (loader_kill || loader_killReg));
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_error = 1'bx;
    if(loader_done)begin
      tagsWriteCmd_payload_data_error = (loader_error || (io_mem_rsp_valid && io_mem_rsp_payload_error));
    end
  end

  always @ (*) begin
    tagsWriteCmd_payload_data_address = 20'h0;
    if(loader_done)begin
      tagsWriteCmd_payload_data_address = stageB_mmuRsp_physicalAddress[31 : 12];
    end
  end

  always @ (*) begin
    dataWriteCmd_valid = 1'b0;
    if(stageB_cpuWriteToCache)begin
      if((stageB_request_wr && stageB_waysHit))begin
        dataWriteCmd_valid = 1'b1;
      end
    end
    if(_zz_13)begin
      dataWriteCmd_valid = 1'b0;
    end
    if(_zz_14)begin
      dataWriteCmd_valid = 1'b1;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_way = 1'bx;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_way = stageB_waysHits;
    end
    if(_zz_14)begin
      dataWriteCmd_payload_way = loader_waysAllocator;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_address = 10'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_address = stageB_mmuRsp_physicalAddress[11 : 2];
    end
    if(_zz_14)begin
      dataWriteCmd_payload_address = {stageB_mmuRsp_physicalAddress[11 : 5],loader_counter_value};
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_data = 32'h0;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_data[31 : 0] = stageB_requestDataBypass;
    end
    if(_zz_14)begin
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
    end
  end

  always @ (*) begin
    dataWriteCmd_payload_mask = 4'bxxxx;
    if(stageB_cpuWriteToCache)begin
      dataWriteCmd_payload_mask = 4'b0000;
      if(_zz_23[0])begin
        dataWriteCmd_payload_mask[3 : 0] = stageB_mask;
      end
    end
    if(_zz_14)begin
      dataWriteCmd_payload_mask = 4'b1111;
    end
  end

  assign io_cpu_execute_haltIt = 1'b0;
  assign rspSync = 1'b1;
  assign rspLast = 1'b1;
  always @ (*) begin
    case(io_cpu_execute_args_size)
      2'b00 : begin
        _zz_6 = 4'b0001;
      end
      2'b01 : begin
        _zz_6 = 4'b0011;
      end
      default : begin
        _zz_6 = 4'b1111;
      end
    endcase
  end

  assign stage0_mask = (_zz_6 <<< io_cpu_execute_address[1 : 0]);
  assign stage0_dataColisions[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_21)) && ((stage0_mask & dataWriteCmd_payload_mask[3 : 0]) != 4'b0000));
  assign stage0_wayInvalidate = 1'b0;
  assign stage0_isAmo = 1'b0;
  assign io_cpu_memory_isWrite = stageA_request_wr;
  assign stageA_isAmo = 1'b0;
  assign stageA_isLrsc = 1'b0;
  assign _zz_7[0] = ((io_cpu_memory_mmuRsp_physicalAddress[31 : 12] == ways_0_tagsReadRsp_address) && ways_0_tagsReadRsp_valid);
  assign stageA_wayHits = _zz_7;
  assign _zz_8[0] = (((dataWriteCmd_valid && dataWriteCmd_payload_way[0]) && (dataWriteCmd_payload_address == _zz_22)) && ((stageA_mask & dataWriteCmd_payload_mask[3 : 0]) != 4'b0000));
  assign stageA_dataColisions = (stage0_dataColisions_regNextWhen | _zz_8);
  always @ (*) begin
    stageB_mmuRspFreeze = 1'b0;
    if((stageB_loaderValid || loader_valid))begin
      stageB_mmuRspFreeze = 1'b1;
    end
  end

  assign stageB_consistancyHazard = 1'b0;
  assign stageB_waysHits = (stageB_waysHitsBeforeInvalidate & (~ stageB_wayInvalidate));
  assign stageB_waysHit = (stageB_waysHits != 1'b0);
  assign stageB_dataMux = stageB_dataReadRsp_0;
  always @ (*) begin
    stageB_loaderValid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_15) begin
          if(! _zz_16) begin
            if(io_mem_cmd_ready)begin
              stageB_loaderValid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_13)begin
      stageB_loaderValid = 1'b0;
    end
  end

  assign stageB_ioMemRspMuxed = io_mem_rsp_payload_data[31 : 0];
  always @ (*) begin
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    if(stageB_flusher_valid)begin
      io_cpu_writeBack_haltIt = 1'b1;
    end
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(_zz_15)begin
          if(((! stageB_request_wr) ? (io_mem_rsp_valid && rspSync) : io_mem_cmd_ready))begin
            io_cpu_writeBack_haltIt = 1'b0;
          end
        end else begin
          if(_zz_16)begin
            if(((! stageB_request_wr) || io_mem_cmd_ready))begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
        end
      end
    end
    if(_zz_13)begin
      io_cpu_writeBack_haltIt = 1'b0;
    end
  end

  assign stageB_flusher_hold = 1'b0;
  always @ (*) begin
    io_cpu_flush_ready = 1'b0;
    if(stageB_flusher_start)begin
      io_cpu_flush_ready = 1'b1;
    end
  end

  assign stageB_isAmo = 1'b0;
  assign stageB_isAmoCached = 1'b0;
  assign stageB_isExternalLsrc = 1'b0;
  assign stageB_isExternalAmo = 1'b0;
  assign stageB_requestDataBypass = stageB_request_data;
  always @ (*) begin
    stageB_cpuWriteToCache = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_15) begin
          if(_zz_16)begin
            stageB_cpuWriteToCache = 1'b1;
          end
        end
      end
    end
  end

  assign stageB_badPermissions = (((! stageB_mmuRsp_allowWrite) && stageB_request_wr) || ((! stageB_mmuRsp_allowRead) && ((! stageB_request_wr) || stageB_isAmo)));
  assign stageB_loadStoreFault = (io_cpu_writeBack_isValid && (stageB_mmuRsp_exception || stageB_badPermissions));
  always @ (*) begin
    io_cpu_redo = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_15) begin
          if(_zz_16)begin
            if((((! stageB_request_wr) || stageB_isAmoCached) && ((stageB_dataColisions & stageB_waysHits) != 1'b0)))begin
              io_cpu_redo = 1'b1;
            end
          end
        end
      end
    end
    if((io_cpu_writeBack_isValid && (stageB_mmuRsp_refilling || stageB_consistancyHazard)))begin
      io_cpu_redo = 1'b1;
    end
    if((loader_valid && (! loader_valid_regNext)))begin
      io_cpu_redo = 1'b1;
    end
  end

  always @ (*) begin
    io_cpu_writeBack_accessError = 1'b0;
    if(stageB_bypassCache)begin
      io_cpu_writeBack_accessError = ((((! stageB_request_wr) && 1'b1) && io_mem_rsp_valid) && io_mem_rsp_payload_error);
    end else begin
      io_cpu_writeBack_accessError = (((stageB_waysHits & _zz_9) != 1'b0) || (stageB_loadStoreFault && (! stageB_mmuRsp_isPaging)));
    end
  end

  assign io_cpu_writeBack_mmuException = (stageB_loadStoreFault && stageB_mmuRsp_isPaging);
  assign io_cpu_writeBack_unalignedAccess = (io_cpu_writeBack_isValid && stageB_unaligned);
  assign io_cpu_writeBack_isWrite = stageB_request_wr;
  always @ (*) begin
    io_mem_cmd_valid = 1'b0;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(_zz_15)begin
          io_mem_cmd_valid = (! memCmdSent);
        end else begin
          if(_zz_16)begin
            if(stageB_request_wr)begin
              io_mem_cmd_valid = 1'b1;
            end
          end else begin
            if((! memCmdSent))begin
              io_mem_cmd_valid = 1'b1;
            end
          end
        end
      end
    end
    if(_zz_13)begin
      io_mem_cmd_valid = 1'b0;
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_15) begin
          if(_zz_16)begin
            io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 2],2'b00};
          end else begin
            io_mem_cmd_payload_address = {stageB_mmuRsp_physicalAddress[31 : 5],5'h0};
          end
        end
      end
    end
  end

  always @ (*) begin
    io_mem_cmd_payload_length = 3'b000;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_15) begin
          if(_zz_16)begin
            io_mem_cmd_payload_length = 3'b000;
          end else begin
            io_mem_cmd_payload_length = 3'b111;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_last = 1'b1;
  always @ (*) begin
    io_mem_cmd_payload_wr = stageB_request_wr;
    if(io_cpu_writeBack_isValid)begin
      if(! stageB_isExternalAmo) begin
        if(! _zz_15) begin
          if(! _zz_16) begin
            io_mem_cmd_payload_wr = 1'b0;
          end
        end
      end
    end
  end

  assign io_mem_cmd_payload_mask = stageB_mask;
  assign io_mem_cmd_payload_data = stageB_requestDataBypass;
  assign io_mem_cmd_payload_uncached = stageB_mmuRsp_isIoAccess;
  assign stageB_bypassCache = ((stageB_mmuRsp_isIoAccess || stageB_isExternalLsrc) || stageB_isExternalAmo);
  assign io_cpu_writeBack_keepMemRspData = 1'b0;
  always @ (*) begin
    if(stageB_bypassCache)begin
      io_cpu_writeBack_data = stageB_ioMemRspMuxed;
    end else begin
      io_cpu_writeBack_data = stageB_dataMux;
    end
  end

  assign _zz_9[0] = stageB_tagsReadRsp_0_error;
  always @ (*) begin
    loader_counter_willIncrement = 1'b0;
    if(_zz_14)begin
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == 3'b111);
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_25);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = 3'b000;
    end
  end

  assign loader_kill = 1'b0;
  assign loader_done = loader_counter_willOverflow;
  assign io_cpu_execute_refilling = loader_valid;
  always @ (posedge clk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_way <= tagsWriteCmd_payload_way;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_valid <= tagsWriteCmd_payload_data_valid;
    tagsWriteLastCmd_payload_data_error <= tagsWriteCmd_payload_data_error;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if((! io_cpu_memory_isStuck))begin
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_data <= io_cpu_execute_args_data;
      stageA_request_size <= io_cpu_execute_args_size;
      stageA_request_totalyConsistent <= io_cpu_execute_args_totalyConsistent;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_mask <= stage0_mask;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_wayInvalidate <= stage0_wayInvalidate;
    end
    if((! io_cpu_memory_isStuck))begin
      stage0_dataColisions_regNextWhen <= stage0_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_request_wr <= stageA_request_wr;
      stageB_request_data <= stageA_request_data;
      stageB_request_size <= stageA_request_size;
      stageB_request_totalyConsistent <= stageA_request_totalyConsistent;
    end
    if(((! io_cpu_writeBack_isStuck) && (! stageB_mmuRspFreeze)))begin
      stageB_mmuRsp_physicalAddress <= io_cpu_memory_mmuRsp_physicalAddress;
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuRsp_isIoAccess;
      stageB_mmuRsp_isPaging <= io_cpu_memory_mmuRsp_isPaging;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuRsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuRsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuRsp_allowExecute;
      stageB_mmuRsp_exception <= io_cpu_memory_mmuRsp_exception;
      stageB_mmuRsp_refilling <= io_cpu_memory_mmuRsp_refilling;
      stageB_mmuRsp_bypassTranslation <= io_cpu_memory_mmuRsp_bypassTranslation;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_tagsReadRsp_0_valid <= ways_0_tagsReadRsp_valid;
      stageB_tagsReadRsp_0_error <= ways_0_tagsReadRsp_error;
      stageB_tagsReadRsp_0_address <= ways_0_tagsReadRsp_address;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataReadRsp_0 <= ways_0_dataReadRsp;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_wayInvalidate <= stageA_wayInvalidate;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_dataColisions <= stageA_dataColisions;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_unaligned <= (((stageA_request_size == 2'b10) && (io_cpu_memory_address[1 : 0] != 2'b00)) || ((stageA_request_size == 2'b01) && (io_cpu_memory_address[0 : 0] != 1'b0)));
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHitsBeforeInvalidate <= stageA_wayHits;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_mask <= stageA_mask;
    end
    if(stageB_flusher_valid)begin
      if(_zz_17)begin
        if(_zz_18)begin
          stageB_mmuRsp_physicalAddress[11 : 5] <= (stageB_mmuRsp_physicalAddress[11 : 5] + 7'h01);
        end
      end
    end
    if(stageB_flusher_start)begin
      stageB_mmuRsp_physicalAddress[11 : 5] <= 7'h0;
    end
    loader_valid_regNext <= loader_valid;
  end

  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      memCmdSent <= 1'b0;
      stageB_flusher_valid <= 1'b0;
      stageB_flusher_start <= 1'b1;
      loader_valid <= 1'b0;
      loader_counter_value <= 3'b000;
      loader_waysAllocator <= 1'b1;
      loader_error <= 1'b0;
      loader_killReg <= 1'b0;
    end else begin
      if(io_mem_cmd_ready)begin
        memCmdSent <= 1'b1;
      end
      if((! io_cpu_writeBack_isStuck))begin
        memCmdSent <= 1'b0;
      end
      if(stageB_flusher_valid)begin
        if(_zz_17)begin
          if(! _zz_18) begin
            stageB_flusher_valid <= 1'b0;
          end
        end
      end
      stageB_flusher_start <= ((((((! stageB_flusher_start) && io_cpu_flush_valid) && (! io_cpu_execute_isValid)) && (! io_cpu_memory_isValid)) && (! io_cpu_writeBack_isValid)) && (! io_cpu_redo));
      if(stageB_flusher_start)begin
        stageB_flusher_valid <= 1'b1;
      end
      `ifndef SYNTHESIS
        `ifdef FORMAL
          assert((! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck)));
        `else
          if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
            $display("FAILURE writeBack stuck by another plugin is not allowed");
            $finish;
          end
        `endif
      `endif
      if(stageB_loaderValid)begin
        loader_valid <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_kill)begin
        loader_killReg <= 1'b1;
      end
      if(_zz_14)begin
        loader_error <= (loader_error || io_mem_rsp_payload_error);
      end
      if(loader_done)begin
        loader_valid <= 1'b0;
        loader_error <= 1'b0;
        loader_killReg <= 1'b0;
      end
      if((! loader_valid))begin
        loader_waysAllocator <= _zz_26[0:0];
      end
    end
  end


endmodule

module InstructionCache (
  input               io_flush,
  input               io_cpu_prefetch_isValid,
  output reg          io_cpu_prefetch_haltIt,
  input      [31:0]   io_cpu_prefetch_pc,
  input               io_cpu_fetch_isValid,
  input               io_cpu_fetch_isStuck,
  input               io_cpu_fetch_isRemoved,
  input      [31:0]   io_cpu_fetch_pc,
  output     [31:0]   io_cpu_fetch_data,
  input      [31:0]   io_cpu_fetch_mmuRsp_physicalAddress,
  input               io_cpu_fetch_mmuRsp_isIoAccess,
  input               io_cpu_fetch_mmuRsp_isPaging,
  input               io_cpu_fetch_mmuRsp_allowRead,
  input               io_cpu_fetch_mmuRsp_allowWrite,
  input               io_cpu_fetch_mmuRsp_allowExecute,
  input               io_cpu_fetch_mmuRsp_exception,
  input               io_cpu_fetch_mmuRsp_refilling,
  input               io_cpu_fetch_mmuRsp_bypassTranslation,
  output     [31:0]   io_cpu_fetch_physicalAddress,
  output              io_cpu_fetch_cacheMiss,
  output              io_cpu_fetch_error,
  output              io_cpu_fetch_mmuRefilling,
  output              io_cpu_fetch_mmuException,
  input               io_cpu_fetch_isUser,
  input               io_cpu_decode_isValid,
  input               io_cpu_decode_isStuck,
  input      [31:0]   io_cpu_decode_pc,
  output     [31:0]   io_cpu_decode_physicalAddress,
  output     [31:0]   io_cpu_decode_data,
  input               io_cpu_fill_valid,
  input      [31:0]   io_cpu_fill_payload,
  output              io_mem_cmd_valid,
  input               io_mem_cmd_ready,
  output     [31:0]   io_mem_cmd_payload_address,
  output     [2:0]    io_mem_cmd_payload_size,
  input               io_mem_rsp_valid,
  input      [31:0]   io_mem_rsp_payload_data,
  input               io_mem_rsp_payload_error,
  input               clk,
  input               reset
);
  reg        [31:0]   _zz_9;
  reg        [21:0]   _zz_10;
  wire                _zz_11;
  wire                _zz_12;
  wire       [0:0]    _zz_13;
  wire       [0:0]    _zz_14;
  wire       [21:0]   _zz_15;
  reg                 _zz_1;
  reg                 _zz_2;
  reg                 lineLoader_fire;
  reg                 lineLoader_valid;
  (* keep , syn_keep *) reg        [31:0]   lineLoader_address /* synthesis syn_keep = 1 */ ;
  reg                 lineLoader_hadError;
  reg                 lineLoader_flushPending;
  reg        [7:0]    lineLoader_flushCounter;
  reg                 _zz_3;
  reg                 lineLoader_cmdSent;
  reg                 lineLoader_wayToAllocate_willIncrement;
  wire                lineLoader_wayToAllocate_willClear;
  wire                lineLoader_wayToAllocate_willOverflowIfInc;
  wire                lineLoader_wayToAllocate_willOverflow;
  (* keep , syn_keep *) reg        [2:0]    lineLoader_wordIndex /* synthesis syn_keep = 1 */ ;
  wire                lineLoader_write_tag_0_valid;
  wire       [6:0]    lineLoader_write_tag_0_payload_address;
  wire                lineLoader_write_tag_0_payload_data_valid;
  wire                lineLoader_write_tag_0_payload_data_error;
  wire       [19:0]   lineLoader_write_tag_0_payload_data_address;
  wire                lineLoader_write_data_0_valid;
  wire       [9:0]    lineLoader_write_data_0_payload_address;
  wire       [31:0]   lineLoader_write_data_0_payload_data;
  wire       [9:0]    _zz_4;
  wire                _zz_5;
  wire       [31:0]   fetchStage_read_banksValue_0_dataMem;
  wire       [31:0]   fetchStage_read_banksValue_0_data;
  wire       [6:0]    _zz_6;
  wire                _zz_7;
  wire                fetchStage_read_waysValues_0_tag_valid;
  wire                fetchStage_read_waysValues_0_tag_error;
  wire       [19:0]   fetchStage_read_waysValues_0_tag_address;
  wire       [21:0]   _zz_8;
  wire                fetchStage_hit_hits_0;
  wire                fetchStage_hit_valid;
  wire                fetchStage_hit_error;
  wire       [31:0]   fetchStage_hit_data;
  wire       [31:0]   fetchStage_hit_word;
  reg [31:0] banks_0 [0:1023];
  reg [21:0] ways_0_tags [0:127];

  assign _zz_11 = (! lineLoader_flushCounter[7]);
  assign _zz_12 = (lineLoader_flushPending && (! (lineLoader_valid || io_cpu_fetch_isValid)));
  assign _zz_13 = _zz_8[0 : 0];
  assign _zz_14 = _zz_8[1 : 1];
  assign _zz_15 = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @ (posedge clk) begin
    if(_zz_1) begin
      banks_0[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_5) begin
      _zz_9 <= banks_0[_zz_4];
    end
  end

  always @ (posedge clk) begin
    if(_zz_2) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_15;
    end
  end

  always @ (posedge clk) begin
    if(_zz_7) begin
      _zz_10 <= ways_0_tags[_zz_6];
    end
  end

  always @ (*) begin
    _zz_1 = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_1 = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2 = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_2 = 1'b1;
    end
  end

  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == 3'b111))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = (lineLoader_valid || lineLoader_flushPending);
    if(_zz_11)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_3))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],5'h0};
  assign io_mem_cmd_payload_size = 3'b101;
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if((! lineLoader_valid))begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign lineLoader_write_tag_0_valid = ((1'b1 && lineLoader_fire) || (! lineLoader_flushCounter[7]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[7] ? lineLoader_address[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[7];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && 1'b1);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[11 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign _zz_4 = io_cpu_prefetch_pc[11 : 2];
  assign _zz_5 = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_banksValue_0_dataMem = _zz_9;
  assign fetchStage_read_banksValue_0_data = fetchStage_read_banksValue_0_dataMem[31 : 0];
  assign _zz_6 = io_cpu_prefetch_pc[11 : 5];
  assign _zz_7 = (! io_cpu_fetch_isStuck);
  assign _zz_8 = _zz_10;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_13[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_14[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_8[21 : 2];
  assign fetchStage_hit_hits_0 = (fetchStage_read_waysValues_0_tag_valid && (fetchStage_read_waysValues_0_tag_address == io_cpu_fetch_mmuRsp_physicalAddress[31 : 12]));
  assign fetchStage_hit_valid = (fetchStage_hit_hits_0 != 1'b0);
  assign fetchStage_hit_error = fetchStage_read_waysValues_0_tag_error;
  assign fetchStage_hit_data = fetchStage_read_banksValue_0_data;
  assign fetchStage_hit_word = fetchStage_hit_data;
  assign io_cpu_fetch_data = fetchStage_hit_word;
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuRsp_physicalAddress;
  assign io_cpu_fetch_cacheMiss = (! fetchStage_hit_valid);
  assign io_cpu_fetch_error = (fetchStage_hit_error || ((! io_cpu_fetch_mmuRsp_isPaging) && (io_cpu_fetch_mmuRsp_exception || (! io_cpu_fetch_mmuRsp_allowExecute))));
  assign io_cpu_fetch_mmuRefilling = io_cpu_fetch_mmuRsp_refilling;
  assign io_cpu_fetch_mmuException = (((! io_cpu_fetch_mmuRsp_refilling) && io_cpu_fetch_mmuRsp_isPaging) && (io_cpu_fetch_mmuRsp_exception || (! io_cpu_fetch_mmuRsp_allowExecute)));
  always @ (posedge clk or posedge reset) begin
    if (reset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushPending <= 1'b1;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= 3'b000;
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(io_flush)begin
        lineLoader_flushPending <= 1'b1;
      end
      if(_zz_12)begin
        lineLoader_flushPending <= 1'b0;
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + 3'b001);
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    if(_zz_11)begin
      lineLoader_flushCounter <= (lineLoader_flushCounter + 8'h01);
    end
    _zz_3 <= lineLoader_flushCounter[7];
    if(_zz_12)begin
      lineLoader_flushCounter <= 8'h0;
    end
  end


endmodule
