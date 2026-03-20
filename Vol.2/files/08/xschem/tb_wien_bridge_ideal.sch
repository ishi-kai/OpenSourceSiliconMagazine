v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Wien bridge} -560 -290 0 0 1 1 {}
T {ideal opamp} 510 -20 0 0 0.5 0.5 {}
N 20 -140 20 -110 {lab=GND}
N 20 -240 20 -200 {lab=VDD}
N 380 -20 380 0 {lab=#net1}
N 380 -120 380 -100 {lab=#net2}
N 380 -240 380 -220 {lab=VOUT}
N 380 100 380 160 {lab=VINN}
N 380 -220 380 -200 {lab=VOUT}
N 380 -140 380 -120 {lab=#net2}
N 380 220 380 280 {lab=VREF}
N 380 120 400 120 {lab=VINN}
N 100 -240 100 -200 {lab=VREF}
N 100 -140 100 -110 {lab=GND}
N 380 60 380 100 {lab=VINN}
N 380 -40 380 -20 {lab=#net1}
N 380 -220 540 -220 {lab=VOUT}
N 540 -220 540 -200 {lab=VOUT}
N 500 -220 500 -200 {lab=VOUT}
N 540 -140 540 -120 {lab=#net2}
N 380 -120 540 -120 {lab=#net2}
N 500 -140 500 -120 {lab=#net2}
N 160 220 160 260 {lab=VREF}
N 240 220 240 260 {lab=VREF}
N 160 120 160 160 {lab=VINP}
N 240 120 240 160 {lab=VINP}
N 240 -240 240 -200 {lab=VOUT}
N 240 -120 240 -100 {lab=#net3}
N 240 100 240 120 {lab=VINP}
N 160 120 240 120 {lab=VINP}
N 240 80 240 100 {lab=VINP}
N 160 260 240 260 {lab=VREF}
N 240 260 240 280 {lab=VREF}
N 240 120 260 120 {lab=VINP}
N 240 -140 240 -120 {lab=#net3}
N 240 -40 240 80 {lab=VINP}
N 530 100 550 100 {lab=VINP}
N 530 140 550 140 {lab=VINN}
N 590 150 590 180 {lab=GND}
N 590 60 590 80 {lab=VOUT}
N 590 80 590 90 {lab=VOUT}
C {devices/vsource.sym} 20 -170 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} 20 -240 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 20 -110 0 0 {name=l5 lab=GND}
C {devices/code_shown.sym} -540 -170 0 0 {name=spice only_toplevel=false value="
.control
tran 0.02m 2000m
plot v(vout)
.endc
"}
C {devices/vdd.sym} 590 60 0 0 {name=l3 lab=VOUT}
C {devices/res.sym} 380 -170 0 0 {name=R1
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 380 -70 0 0 {name=R2
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 380 190 0 0 {name=R3
value=47k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 400 120 0 1 {name=p1  lab=VINN}
C {devices/vsource.sym} 100 -170 0 0 {name=Vdd2 value="DC 2.5" savecurrent=false}
C {devices/vdd.sym} 100 -240 0 0 {name=l12 lab=VREF}
C {devices/gnd.sym} 100 -110 0 0 {name=l13 lab=GND}
C {devices/res.sym} 380 30 0 0 {name=R6
value=2.7k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 380 280 0 0 {name=l6 lab=VREF}
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
C {devices/vcvs.sym} 590 120 0 0 {name=E1 value=100k}
C {devices/lab_pin.sym} 530 100 0 0 {name=p3  lab=VINP}
C {devices/lab_pin.sym} 530 140 0 0 {name=p4  lab=VINN}
C {devices/gnd.sym} 590 180 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} 380 -240 0 0 {name=l8 lab=VOUT}
C {devices/diode.sym} 540 -170 0 0 {name=D3 model=D_1N4007 area=1}
C {devices/diode.sym} 500 -170 2 0 {name=D4 model=D_1N4007 area=1}
C {devices/code_shown.sym} -540 310 0 0 {name=model only_toplevel=false value="
.MODEL D_1N4007 D( IS=76.9p RS=42.0m BV=1.00k IBV=5.00u CJO=26.5p  M=0.333 N=1.45 TT=4.32u )
"}
