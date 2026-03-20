v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -40 180 -40 {lab=GND}
N 80 -40 80 -20 {lab=GND}
N 180 -60 180 -40 {lab=GND}
N 80 -70 80 -40 {lab=GND}
N 80 -220 80 -130 {lab=VDD}
N 80 -220 180 -220 {lab=VDD}
N 180 -220 180 -140 {lab=VDD}
N 280 -100 320 -100 {lab=VOUT}
N 320 -140 320 -100 {lab=VOUT}
N 180 -220 320 -220 {lab=VDD}
N 320 -220 320 -200 {lab=VDD}
C {devices/gnd.sym} 80 -20 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 80 -100 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/lab_wire.sym} 80 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {RS.sym} 320 -200 0 0 {name=R2
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {cs1.sym} 200 -100 0 0 {name=x1}
C {devices/code.sym} -160 -160 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} -150 40 0 0 {name=s1 
only_toplevel=false 
value=".option savecurrents
.temp 40
.param vthMN = 0
.param rr = 1
.control
set units=degree
save all
*dc Vdd 4.5 5.5 0.1
*plot @m.x1.xm1.m1[id]
*dc temp 0 80 0.1
*plot @m.x1.xm1.m1[id]

let i = 0
let num_points = 3
let iout_vec = vector(num_points)
let delvth_vec = vector(num_points)
foreach delvth -0.1 0 0.1
  alterparam vthMN = $delvth
  alterparam rr = 1+$delvth*1.5
  reset

  op

  let iout_vec[i] = @m.x1.xm1.m1[id]
  let delvth_vec[i] = $delvth
  let i = i+1
end

plot iout_vec vs delvth_vec ylabel 'Iout' xlabel 'delVth'

.endc"
}
C {devices/lab_wire.sym} 320 -100 0 0 {name=p2 sig_type=std_logic lab=VOUT}
