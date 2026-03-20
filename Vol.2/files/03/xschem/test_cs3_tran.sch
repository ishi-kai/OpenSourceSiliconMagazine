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
N 540 -180 580 -180 {lab=VOUT2}
N 580 -90 580 -60 {lab=GND}
N 580 -180 580 -150 {lab=VOUT2}
N 440 -60 580 -60 {lab=GND}
N 160 -240 440 -240 {lab=VDD}
N 300 -60 440 -60 {lab=GND}
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

tran 10ns 5us
plot v(VDD) ylabel Vdd
plot @m.x1.xmp3.m1[id] ylimit -100u 600u ylabel Iout
plot @m.x2.xmp3.m1[id] ylimit -100u 600u ylabel Iout
plot v(x1.net1) v(x1.net2)
plot v(x2.net1) v(x2.net2)

.endc"
}
C {devices/lab_wire.sym} 300 -180 0 0 {name=p2 sig_type=std_logic lab=VOUT}
C {cs3.sym} 180 -180 0 0 {name=x1}
C {devices/vsource.sym} 60 -110 0 0 {name=V1 value="pwl(0 0 1u 5)" savecurrent=false}
C {RS.sym} 580 -150 0 0 {name=R1
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/lab_wire.sym} 580 -180 0 0 {name=p3 sig_type=std_logic lab=VOUT2}
C {cs3_2.sym} 460 -180 0 0 {name=x2}
