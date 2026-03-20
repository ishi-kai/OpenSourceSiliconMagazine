v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Wien bridge frequency response} -550 -360 0 0 1 1 {}
N 20 -140 20 -110 {lab=GND}
N 20 -240 20 -200 {lab=VDD}
N 100 -240 100 -200 {lab=VREF}
N 100 -140 100 -110 {lab=GND}
N 160 220 160 260 {lab=VREF}
N 240 220 240 260 {lab=VREF}
N 160 120 160 160 {lab=VINP}
N 240 120 240 160 {lab=VINP}
N 240 -240 240 -200 {lab=VOUT}
N 240 -120 240 -100 {lab=#net1}
N 240 100 240 120 {lab=VINP}
N 160 120 240 120 {lab=VINP}
N 240 80 240 100 {lab=VINP}
N 160 260 240 260 {lab=VREF}
N 240 260 240 280 {lab=VREF}
N 240 120 260 120 {lab=VINP}
N 240 -140 240 -120 {lab=#net1}
N 240 -40 240 80 {lab=VINP}
N 20 -30 20 10 {lab=VOUT}
N 20 70 20 100 {lab=GND}
C {devices/vsource.sym} 20 -170 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} 20 -240 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 20 -110 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -540 -170 0 0 {name=spice only_toplevel=false value="
.control
set units = degrees
ac dec 10 1 100k
plot v(VINP)
plot cph(VINP)
.endc
"}
C {devices/vsource.sym} 100 -170 0 0 {name=Vdd2 value="DC 2.5" savecurrent=false}
C {devices/vdd.sym} 100 -240 0 0 {name=l12 lab=VREF}
C {devices/gnd.sym} 100 -110 0 0 {name=l13 lab=GND}
C {devices/res.sym} 240 -170 0 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 240 -70 0 0 {name=C1
m=1
value=0.01u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 240 190 2 0 {name=R7
value=100k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 160 190 2 0 {name=C2
m=1
value=0.01u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 260 120 0 1 {name=p2  lab=VINP}
C {devices/vdd.sym} 240 -240 0 0 {name=l9 lab=VOUT}
C {devices/gnd.sym} 240 280 0 0 {name=l11 lab=VREF}
C {devices/code_shown.sym} -540 310 0 0 {name=model only_toplevel=false value="
.MODEL D_1N4007 D( IS=76.9p RS=42.0m BV=1.00k IBV=5.00u CJO=26.5p  M=0.333 N=1.45 TT=4.32u )
"}
C {devices/vsource.sym} 20 40 0 0 {name=Vdd3 value="DC 2.5 AC 1" savecurrent=false}
C {devices/vdd.sym} 20 -30 0 0 {name=l1 lab=VOUT}
C {devices/gnd.sym} 20 100 0 0 {name=l2 lab=GND}
