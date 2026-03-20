v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Wien bridge AGC} -500 -340 0 0 1 1 {}
N -260 -20 -260 10 {lab=GND}
N -260 -120 -260 -80 {lab=VDD}
N -180 -120 -180 -80 {lab=VOUT}
N -180 -20 -180 10 {lab=GND}
N 20 -20 20 0 {lab=#net1}
N 20 -120 20 -100 {lab=#net2}
N 20 -240 20 -220 {lab=VOUT}
N 20 100 20 160 {lab=VINN}
N 20 -220 20 -200 {lab=VOUT}
N 20 -140 20 -120 {lab=#net2}
N 20 220 20 280 {lab=VREF}
N 20 120 40 120 {lab=VINN}
N -80 -120 -80 -80 {lab=VREF}
N -80 -20 -80 10 {lab=GND}
N 20 60 20 100 {lab=VINN}
N 20 -40 20 -20 {lab=#net1}
N 20 -220 180 -220 {lab=VOUT}
N 180 -220 180 -200 {lab=VOUT}
N 140 -220 140 -200 {lab=VOUT}
N 180 -140 180 -120 {lab=#net2}
N 20 -120 180 -120 {lab=#net2}
N 140 -140 140 -120 {lab=#net2}
C {devices/vsource.sym} -260 -50 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} -260 -120 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -260 10 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} -180 -50 0 0 {name=Vdd1 value="DC 2.5" savecurrent=false}
C {devices/vdd.sym} -180 -120 0 0 {name=l1 lab=VOUT}
C {devices/gnd.sym} -180 10 0 0 {name=l2 lab=GND}
C {devices/code_shown.sym} -500 340 0 0 {name=spice only_toplevel=false value="
.control
dc Vdd1 0 5 0.01
plot 1/deriv(VINN)
gnuplot wien_bridge_agc 1/deriv(VINN) xlabel 'Input voltage [V]' title 'AGC Gain characteristics'
.endc
"}
C {devices/vdd.sym} 20 -240 0 0 {name=l3 lab=VOUT}
C {devices/res.sym} 20 -170 0 0 {name=R1
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 20 -70 0 0 {name=R2
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 20 190 0 0 {name=R3
value=47k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 40 120 0 1 {name=p1  lab=VINN}
C {devices/vsource.sym} -80 -50 0 0 {name=Vdd2 value="DC 2.5" savecurrent=false}
C {devices/vdd.sym} -80 -120 0 0 {name=l12 lab=VREF}
C {devices/gnd.sym} -80 10 0 0 {name=l13 lab=GND}
C {devices/res.sym} 20 30 0 0 {name=R6
value=2.7k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 20 280 0 0 {name=l6 lab=VREF}
C {devices/diode.sym} 180 -170 0 0 {name=D3 model=D_1N4007 area=1}
C {devices/diode.sym} 140 -170 2 0 {name=D4 model=D_1N4007 area=1}
C {devices/code_shown.sym} -500 520 0 0 {name=model2 only_toplevel=false value="
.MODEL D_1N4007 D( IS=76.9p RS=42.0m BV=1.00k IBV=5.00u CJO=26.5p  M=0.333 N=1.45 TT=4.32u )
"}
