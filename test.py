#!/usr/bin/env python3

from __future__ import print_function

import os

import pythondata_cpu_vexriscv_stream

print("Found vexriscv_stream @ version", pythondata_cpu_vexriscv_stream.version_str, "(with data", pythondata_cpu_vexriscv_stream.data_version_str, ")")
print()
print("Data is in", pythondata_cpu_vexriscv_stream.data_location)
assert os.path.exists(pythondata_cpu_vexriscv_stream.data_location)
print("Data is version", pythondata_cpu_vexriscv_stream.data_version_str, pythondata_cpu_vexriscv_stream.data_git_hash)
print("-"*75)
print(pythondata_cpu_vexriscv_stream.data_git_msg)
print("-"*75)
print()
print("It contains:")
for root, dirs, files in os.walk(pythondata_cpu_vexriscv_stream.data_location):
    dirs.sort()
    for f in sorted(files):
        path = os.path.relpath(os.path.join(root, f), pythondata_cpu_vexriscv_stream.data_location)
        print(" -", path)
