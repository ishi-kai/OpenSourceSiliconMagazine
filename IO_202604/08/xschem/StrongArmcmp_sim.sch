v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 930 -280 {}
N 720 -170 720 -160 {lab=GND}
N 720 -300 720 -290 {lab=VDD}
N 620 -260 640 -260 {lab=vinp}
N 620 -200 640 -200 {lab=vinn}
N 470 -240 470 -230 {lab=VDD}
N 470 -170 470 -160 {lab=GND}
N 560 -250 560 -240 {lab=vinp}
N 560 -180 560 -170 {lab=GND}
N 560 -260 560 -250 {lab=vinp}
N 620 -190 620 -180 {lab=vinn}
N 620 -120 620 -110 {lab=GND}
N 620 -200 620 -190 {lab=vinn}
N 760 -70 760 -60 {lab=GND}
N 840 -230 840 -220 {lab=out}
N 840 -160 840 -150 {lab=GND}
N 760 -170 760 -130 {lab=#net1}
N 560 -260 620 -260 {lab=vinp}
N 820 -230 840 -230 {lab=out}
N 640 -200 660 -200 {lab=vinn}
N 640 -260 660 -260 {lab=vinp}
C {devices/gnd.sym} 720 -160 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 720 -300 0 0 {name=l2 lab=VDD}
C {devices/vsource.sym} 470 -200 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/gnd.sym} 470 -160 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 470 -240 0 0 {name=l4 lab=VDD}
C {devices/vsource.sym} 560 -210 0 0 {name=vin value="sin(2.5 2.5 10k 0 0 45.0)" savecurrent=false}
C {devices/gnd.sym} 560 -170 0 0 {name=l5 lab=GND}
C {devices/code.sym} 310 -490 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {devices/code_shown.sym} 530 -540 0 0 {name=spice only_toplevel=false value=".option savecurrent
.control
save all

* DC analysis (I/O curve)
*dc vin 0 5.0 0.01
tran 100n 200u
plot out vinn vinp
* plot i(vd)
* wrdata ~/inverter_tb.txt v(vout)
* write inverter_tb.raw
.endc"}
C {devices/vsource.sym} 620 -150 0 0 {name=V3 value=0.6 savecurrent=false}
C {devices/gnd.sym} 620 -110 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 760 -100 0 0 {name=V4 value=2 savecurrent=false}
C {devices/gnd.sym} 760 -60 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 840 -150 0 0 {name=l8}
C {devices/capa.sym} 840 -190 0 0 {name=Cload
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 840 -230 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 620 -200 0 0 {name=p2 sig_type=std_logic lab=vinn}
C {design/IO_Self-published/StrongArmcmp.sym} 660 -230 0 0 {name=x1}
C {devices/lab_pin.sym} 560 -260 0 0 {name=p3 sig_type=std_logic lab=vinp}
