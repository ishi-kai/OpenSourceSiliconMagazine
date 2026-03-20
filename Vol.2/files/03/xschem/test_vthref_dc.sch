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
C {devices/gnd.sym} 60 -40 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 60 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
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

dc Vdd 4.5 5.5 0.1
*plot v(x1.vgp) xlabel Vdd ylabel Vg
plot @b.xr1.br[i] ylimit 450u 550u xlabel Vdd ylabel Iout
*plot v(x1.vgn) xlabel Vdd ylabel Vg
*plot @b.xr2.br[i] ylimit 450u 550u xlabel Vdd ylabel Iout

dc temp 0 80 0.1
*plot v(x1.vgp) xlabel Vdd ylabel Vg
plot @b.xr1.br[i] ylimit 450u 550u ylabel Iout
*plot v(x1.vgn) xlabel Vdd ylabel Vg
*plot @b.xr2.br[i] ylimit 450u 550u ylabel Iout
.endc"
}
C {devices/vsource.sym} 60 -110 0 0 {name=Vdd value="5" savecurrent=false}
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
