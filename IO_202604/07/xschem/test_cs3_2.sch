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
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
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
C {devices/code_shown.sym} -180 20 0 0 {name=s1 
only_toplevel=false 
value=".option savecurrents
.temp 40
.param vthMN = 0
.control
set units=degree
save all
op
show m

dc Vdd 4.5 5.5 0.1
plot v(x1.v1) ylimit 0.7 0.81 xlabel Vdd ylabel Vs
plot v(x1.v2) ylimit 0.7 0.81 xlabel Vdd ylabel Vs
plot @m.x1.xmp3.m1[id] ylimit 490u 510u xlabel Vdd ylabel Iout
*plot v(x1.v1) xlabel Vdd ylabel Vs
*plot v(x1.v2) xlabel Vdd ylabel Vs
*plot @m.x1.xmp3.m1[id] xlabel Vdd ylabel Iout

dc temp 0 80 0.1
plot v(x1.v1) ylimit 0.7 0.81 ylabel Vs
plot v(x1.v2) ylimit 0.7 0.81 ylabel Vs
plot @m.x1.xmp3.m1[id] ylimit 490u 510u ylabel Iout
*plot v(x1.v1) ylabel Vs
*plot v(x1.v2) ylabel Vs
*plot @m.x1.xmp3.m1[id] ylabel Iout

let i = 0
let num_points = 21
let iout_vec = vector(num_points)
let delvth_vec = vector(num_points)
*dowhile i < 21
*  let delvth = -0.1 + i*0.01
*  param vthMN = delvth
*
*  op
*
*  let iout_vec[i] = @m.x1.xm1.m1[id]
*  let delvth_vec[i] = delvth
*  let i = i+1
*end
*
*plot iout_vec vs delvth_vec ylabel 'Iout' xlabel 'delVth'

tran 10ns 5us
plot v(VDD) ylabel Vdd
plot @m.x1.xmp3.m1[id] ylimit -100u 600u ylabel Iout

.endc"
}
C {devices/lab_wire.sym} 300 -180 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {cs3.sym} 180 -180 0 0 {name=x1}
C {devices/vsource.sym} 60 -110 0 0 {name=V1 value="pwl(0 0 1u 5)" savecurrent=false}
