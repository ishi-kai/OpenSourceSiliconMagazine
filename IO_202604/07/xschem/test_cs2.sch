v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -60 160 -60 {lab=GND}
N 60 -60 60 -40 {lab=GND}
N 160 -140 160 -60 {lab=GND}
N 60 -80 60 -60 {lab=GND}
N 60 -240 60 -140 {lab=VDD}
N 60 -240 160 -240 {lab=VDD}
N 160 -240 160 -220 {lab=VDD}
N 260 -180 300 -180 {lab=VOUT}
N 300 -90 300 -60 {lab=GND}
N 300 -180 300 -150 {lab=VOUT}
N 160 -60 300 -60 {lab=GND}
N 160 -240 440 -240 {lab=VDD}
N 440 -240 440 -220 {lab=VDD}
N 440 -140 440 -60 {lab=GND}
N 300 -60 440 -60 {lab=GND}
N 540 -180 580 -180 {lab=VOUT2}
N 580 -90 580 -60 {lab=GND}
N 580 -180 580 -150 {lab=VOUT2}
N 440 -60 580 -60 {lab=GND}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -110 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/lab_wire.sym} 60 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {RS.sym} 300 -150 0 0 {name=R2
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/code.sym} -180 -180 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} -170 20 0 0 {name=s1 
only_toplevel=false 
value=".option savecurrents
.temp 40
.param vthMN = 0
.param vthMP = 0
.param rr = 1
.control
set units=degree
save all

*dc Vdd 4.5 5.5 0.1
*plot v(x1.v1) ylimit 0.75 0.8 xlabel Vdd ylabel Vs
*plot v(x1.v2) ylimit 0.75 0.8 xlabel Vdd ylabel Vs
*plot @m.x1.xmp3.m1[id] ylimit 450u 550u xlabel Vdd ylabel Iout
*plot @m.x1.xmp1.m1[id] @m.x1.xmp2.m1[id] xlabel Vdd ylabel Iref
*plot @m.x2.xmp1.m1[id] @m.x2.xmp2.m1[id] ylimit 25.2u 26.2u xlabel Vdd ylabel Iref
*plot v(VDD)-v(x1.net2) xlabel Vdd ylabel VdsMp1
*plot v(VDD)-v(x1.net1) ylimit 1.05 1.15 xlabel Vdd ylabel VgsVdsMp2
*plot v(x1.net2)-v(x1.v1) ylimit 1.3 1.4 xlabel Vdd ylabel VgsVdsMn1
*plot v(x1.net1)-v(x1.v2) xlabel Vdd ylabel VdsMn2
*plot v(VDD)-v(x2.net4) ylimit 0.4 0.5 xlabel Vdd ylabel VdsMp1
*plot v(VDD)-v(x2.net1) ylimit 1.03 1.13 xlabel Vdd ylabel VgsMp2
*plot v(VDD)-v(x2.net5) ylimit 0.4 0.5 xlabel Vdd ylabel VdsMp2
*plot v(x2.net2)-v(x2.v1) ylimit 1.3 1.4 xlabel Vdd ylabel VgsMn1
*plot v(x2.net7)-v(x2.v1) ylimit 0.34 0.54 xlabel Vdd ylabel VdsMn1
*plot v(x2.net8)-v(x2.v2) ylimit 0.34 0.54 xlabel Vdd ylabel VdsMn2
*plot v(x2.v1) ylimit 0.75 0.8 xlabel Vdd ylabel Vs
*plot v(x2.v2) ylimit 0.75 0.8 xlabel Vdd ylabel Vs
*plot @m.x2.xmp3.m1[id] ylimit 450u 550u xlabel Vdd ylabel Iout

*dc temp 0 80 0.1
*plot v(x1.v1) ylimit 0.73 0.82 ylabel Vs
*plot v(x1.v2) ylimit 0.73 0.82 ylabel Vs
*plot @m.x1.xmp3.m1[id] ylimit 430u 570u ylabel Iout
*plot v(x2.v1) ylimit 0.73 0.82 ylabel Vs
*plot v(x2.v2) ylimit 0.73 0.82 ylabel Vs
*plot @m.x2.xmp3.m1[id] ylimit 430u 570u ylabel Iout

let i = 0
let num_points = 3
let iout_vec1 = vector(num_points)
let v1_vec1 = vector(num_points)
let v2_vec1 = vector(num_points)
let iout_vec2 = vector(num_points)
let v1_vec2 = vector(num_points)
let v2_vec2 = vector(num_points)
let delvth_vec = vector(num_points)
foreach delvth -0.1 0 0.1
  alterparam vthMN = $delvth
  alterparam vthMP = $delvth
  alterparam rr = 1+$delvth*1.5
  reset

  op

  let iout_vec1[i] = @m.x1.xmp3.m1[id]
  let v1_vec1 = v(x1.v1)
  let v2_vec1 = v(x1.v2)
  let iout_vec2[i] = @m.x2.xmp3.m1[id]
  let v1_vec2 = v(x2.v1)
  let v2_vec2 = v(x2.v2)
  let delvth_vec[i] = $delvth
  let i = i+1
end

*plot iout_vec1 vs delvth_vec ylimit 450u 550u ylabel 'Iout' xlabel 'delVth'
*plot v1_vec1 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'
*plot v2_vec1 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'
*plot iout_vec2 vs delvth_vec ylimit 450u 550u ylabel 'Iout' xlabel 'delVth'
plot iout_vec2 vs delvth_vec ylabel 'Iout' xlabel 'delVth'
plot v1_vec2 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'
plot v2_vec2 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'

.endc"
}
C {devices/lab_wire.sym} 300 -180 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {cs2.sym} 180 -180 0 0 {name=x1}
C {cs2_2.sym} 460 -180 0 0 {name=x2}
C {RS.sym} 580 -150 0 0 {name=R1
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/lab_wire.sym} 580 -180 0 0 {name=p3 sig_type=std_logic lab=VOUT2}
