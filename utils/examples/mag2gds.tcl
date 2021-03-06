# SPDX-FileCopyrightText: 2020 Efabless Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# SPDX-License-Identifier: Apache-2.0

# assumes an /ef tree or at least a symlink
drc off
gds readonly true
gds rescale false
set ::env(MAGTYPE) mag

# gds read <hard macros read as-is.gds>
gds read ../gds/sram_1rw1r_32_256_8_sky130_lp1.gds

load sram_1rw1r_32_256_8_sky130 -dereference
load openram_tc_core -dereference
load openram_tc_1kb -dereference

select top cell

cif *hier write disable

gds write openram_tc_1kb.gds
