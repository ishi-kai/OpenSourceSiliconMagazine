v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 60 -60 160 -60 {lab=GND}
N 60 -60 60 -40 {lab=GND}
N 60 -80 60 -60 {lab=GND}
N 60 -300 60 -140 {lab=VDD}
N 60 -300 160 -300 {lab=VDD}
N 160 -300 160 -240 {lab=VDD}
N 160 -120 160 -60 {lab=GND}
N 160 -60 320 -60 {lab=GND}
N 320 -80 320 -60 {lab=GND}
N 260 -200 320 -200 {lab=#net1}
N 320 -200 320 -140 {lab=#net1}
N 260 -160 300 -160 {lab=#net2}
N 300 -220 300 -160 {lab=#net2}
N 300 -300 300 -280 {lab=VDD}
N 160 -300 300 -300 {lab=VDD}
N 460 -300 460 -240 {lab=VDD}
N 460 -120 460 -60 {lab=GND}
N 460 -60 620 -60 {lab=GND}
N 620 -80 620 -60 {lab=GND}
N 560 -200 620 -200 {lab=#net3}
N 620 -200 620 -140 {lab=#net3}
N 560 -160 600 -160 {lab=#net4}
N 600 -220 600 -160 {lab=#net4}
N 600 -300 600 -280 {lab=VDD}
N 460 -300 600 -300 {lab=VDD}
N 300 -300 460 -300 {lab=VDD}
N 320 -60 460 -60 {lab=GND}
C {devices/code.sym} -180 -180 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} -180 20 0 0 {name=s1 
only_toplevel=false 
value=".option savecurrents
.temp 40
.control
set units=degree
save all
*op
*show m

tran 10ns 5us
plot v(VDD) ylabel Vdd
*plot v(x1.net1)
plot @m.x1.xmp3.m1[id] ylimit -100u 600u ylabel Iout
plot @m.x2.xmp3.m1[id] ylimit -100u 600u ylabel Iout
plot @m.x2.xmn4.m1[id] ylimit -10u 10u ylabel Iout


.endc"
}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {IP62LIB/RS.sym} 320 -140 0 0 {name=R1
w=4e-6
R=1
l=100e-6
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {vthref.sym} 190 -180 0 0 {name=x1}
C {IP62LIB/RS.sym} 300 -280 0 0 {name=R2
w=4e-6
R=1
l=100e-6
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {vthref_2.sym} 490 -180 0 0 {name=x2}
C {IP62LIB/RS.sym} 620 -140 0 0 {name=R3
w=4e-6
R=1
l=100e-6
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {IP62LIB/RS.sym} 600 -280 0 0 {name=R4
w=4e-6
R=1
l=100e-6
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/vsource.sym} 60 -110 0 0 {name=V1 value="pwl(0 0 1u 5)" savecurrent=false}
