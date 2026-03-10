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
N 440 -140 440 -60 {lab=GND}
N 440 -240 440 -220 {lab=VDD}
N 540 -180 640 -180 {lab=VOUT2}
N 640 -90 640 -60 {lab=GND}
N 640 -180 640 -150 {lab=VOUT2}
N 440 -60 640 -60 {lab=GND}
N 160 -240 440 -240 {lab=VDD}
N 300 -60 440 -60 {lab=GND}
N 440 -220 440 -200 {lab=VDD}
N 560 -90 560 -60 {lab=GND}
N 560 -160 560 -150 {lab=#net1}
N 540 -160 560 -160 {lab=#net1}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
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
.param vthMP = 0
.param rr = 1
.control
set units=degree
save all
*op
*show b

dc Vdd 4.5 5.5 0.1
plot v(VOUT) ylimit 1.1 1.3 xlabel Vdd ylabel Vbgr
*plot @m.x1.xmp3.m1[id] xlabel Vdd ylabel Iout
*plot v(VOUT2) ylimit 1.1 1.3 xlabel Vdd ylabel Vbgr
*plot @m.x2.xmp3.m1[id] xlabel Vdd ylabel Iout

dc temp 0 80 0.1
plot v(VOUT) ylimit 1.1 1.3 xlabel Temp ylabel Vbgr
*plot @m.x1.xmp3.m1[id] xlabel Temp ylabel Iout
*plot v(VOUT2) ylimit 1.1 1.3 xlabel Temp ylabel Vbgr
*plot @m.x2.xmp3.m1[id] xlabel Temp ylabel Iout

*let i = 0
*let num_points = 3
*let iout_vec1 = vector(num_points)
*let v1_vec1 = vector(num_points)
*let v2_vec1 = vector(num_points)
*let iout_vec2 = vector(num_points)
*let v1_vec2 = vector(num_points)
*let v2_vec2 = vector(num_points)
*let delvth_vec = vector(num_points)
*foreach delvth -0.1 0 0.1
*  alterparam vthMN = $delvth
*  alterparam vthMP = $delvth
*  alterparam rr = 1+$delvth*1.5
*  reset
*
*  op
*
*  let iout_vec1[i] = @m.x1.xmp3.m1[id]
*  let v1_vec1 = v(x1.v1)
*  let v2_vec1 = v(x1.v2)
*  let iout_vec2[i] = @m.x2.xmp3.m1[id]
*  let v1_vec2 = v(x2.v1)
*  let v2_vec2 = v(x2.v2)
*  let delvth_vec[i] = $delvth
*  let i = i+1
*end
*
*plot iout_vec1 vs delvth_vec ylimit 450u 550u ylabel 'Iout' xlabel 'delVth'
*plot v1_vec1 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'
*plot v2_vec1 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'
*plot iout_vec2 vs delvth_vec ylimit 450u 550u ylabel 'Iout' xlabel 'delVth'
*plot v1_vec2 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'
*plot v2_vec2 vs delvth_vec ylimit 0.75 0.8 ylabel 'Vs' xlabel 'delVth'

.endc"
}
C {devices/lab_wire.sym} 300 -180 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {bgr.sym} 180 -180 0 0 {name=x1}
C {devices/vsource.sym} 60 -110 0 0 {name=Vdd value="5" savecurrent=false}
C {devices/lab_wire.sym} 580 -180 0 0 {name=p3 sig_type=std_logic lab=VOUT2}
C {devices/capa-2.sym} 300 -120 0 0 {name=C1
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {devices/capa-2.sym} 640 -120 0 0 {name=C2
m=1
value=10p
footprint=1206
device=polarized_capacitor}
C {bgr_2.sym} 460 -170 0 0 {name=x2}
C {RS.sym} 560 -150 0 0 {name=R6
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
