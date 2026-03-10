v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {x8} 350 -120 0 0 0.25 0.25 {}
N 60 -60 60 -40 {lab=GND}
N 60 -80 60 -60 {lab=GND}
N 60 -240 60 -140 {lab=VDD}
N 60 -60 320 -60 {lab=GND}
N 320 -80 320 -60 {lab=GND}
N 200 -80 200 -60 {lab=GND}
N 320 -160 320 -140 {lab=#net1}
N 60 -240 320 -240 {lab=VDD}
N 320 -240 320 -220 {lab=VDD}
N 200 -240 200 -140 {lab=VDD}
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/vsource.sym} 60 -110 0 0 {name=Vdd value=5 savecurrent=false}
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
.control
set units=degree
save all
op
show d

dc Vdd 0.1 1 0.001
plot @d1[id] @d2[id] ylog xlabel Vd ylabel Current

.endc"
}
C {IP62LIB/DP.sym} 200 -80 2 0 {name=D1 model=DP m=1}
C {IP62LIB/DP.sym} 320 -80 2 0 {name=D2 model=DP m=8}
C {IP62LIB/RS.sym} 320 -220 0 0 {name=R1
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
