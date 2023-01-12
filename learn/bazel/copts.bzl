# Copyright (c) 2018-2022 curoky(cccuroky@gmail.com).
#
# This file is part of learn-cpp.
# See https://github.com/curoky/learn-cpp for further info.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""specific copts.
"""

CPP_COPTS = [
    "-g",
    "-ggdb",
    "-O0",
    "-fno-omit-frame-pointer",
    "-gno-statement-frontiers",
    "-gno-variable-location-views",
    "-Wall",
    "-std=c++23",
    # "-fsanitize=address",

    # Note: We cannot require external libraries to conform to specifications
    "-Wno-deprecated-declarations",
    "-Wno-deprecated",
    "-Wno-sign-compare",
    "-Wno-unknown-pragmas",
    "-Wno-unused-but-set-variable",
    "-Wno-unused-function",
    "-Wno-unused-value",
    "-Wno-unused-variable",
    "-Wno-unused-local-typedefs",
    "-Wno-maybe-uninitialized",
]

LINKOPTS = [
    "-latomic",
    "-lpthread",
    "-ldl",
    "-fuse-ld=lld",
    # "-fsanitize=address",
]
