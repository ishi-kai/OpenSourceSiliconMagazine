v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {pin20,40,60,80} 290 250 0 0 0.2 0.2 {}
T {pin62} 345 105 0 0 0.2 0.2 {}
T {pin63} 285 60 0 0 0.2 0.2 {}
T {pin64} 190 105 0 0 0.2 0.2 {}
T {pin65} 345 125 0 0 0.2 0.2 {}
T {pin67} 190 125 0 0 0.2 0.2 {}
T {pin66} 190 165 0 0 0.2 0.2 {}
T {pin68} 345 145 0 0 0.2 0.2 {}
T {Wien bridge oscillator} -380 -400 0 0 1 1 {}
T {opamp} 240 -40 0 0 0.5 0.5 {}
N 360 160 480 160 {lab=VOUT}
N 280 240 280 260 {lab=GND}
N 240 240 280 240 {lab=GND}
N 280 240 300 240 {lab=GND}
N 280 60 280 80 {lab=VDD}
N 240 80 280 80 {lab=VDD}
N 280 80 300 80 {lab=VDD}
N 340 160 360 160 {lab=VOUT}
N 220 20 220 120 {lab=#net1}
N 220 20 340 20 {lab=#net1}
N 340 140 380 140 {lab=#net1}
N 380 20 380 140 {lab=#net1}
N 340 20 380 20 {lab=#net1}
N 340 60 420 60 {lab=#net2}
N 340 60 340 120 {lab=#net2}
N 280 -160 280 -130 {lab=GND}
N 280 -260 280 -220 {lab=VDD}
N 0 -40 0 -20 {lab=#net3}
N 0 -140 0 -120 {lab=#net4}
N 0 -260 0 -240 {lab=VOUT}
N 0 80 0 140 {lab=VINN}
N 0 -240 0 -220 {lab=VOUT}
N 0 -160 0 -140 {lab=#net4}
N 0 200 0 260 {lab=VREF}
N 0 100 20 100 {lab=VINN}
N 0 40 0 80 {lab=VINN}
N 0 -60 0 -40 {lab=#net3}
N 0 -240 160 -240 {lab=VOUT}
N 160 -240 160 -220 {lab=VOUT}
N 120 -240 120 -220 {lab=VOUT}
N 160 -160 160 -140 {lab=#net4}
N 0 -140 160 -140 {lab=#net4}
N 120 -160 120 -140 {lab=#net4}
N -220 200 -220 240 {lab=VREF}
N -140 200 -140 240 {lab=VREF}
N -220 100 -220 140 {lab=VINP}
N -140 100 -140 140 {lab=VINP}
N -140 -260 -140 -220 {lab=VOUT}
N -140 -140 -140 -120 {lab=#net5}
N -140 80 -140 100 {lab=VINP}
N -220 100 -140 100 {lab=VINP}
N -140 60 -140 80 {lab=VINP}
N -220 240 -140 240 {lab=VREF}
N -140 240 -140 260 {lab=VREF}
N -140 100 -120 100 {lab=VINP}
N -140 -160 -140 -140 {lab=#net5}
N -140 -60 -140 60 {lab=VINP}
N 180 140 220 140 {lab=VINP}
N 180 180 220 180 {lab=VINN}
N 480 160 520 160 {lab=VOUT}
N 480 60 500 60 {lab=VOUT}
N 500 60 500 160 {lab=VOUT}
N 380 -260 380 -240 {lab=VDD}
N 380 -170 380 -140 {lab=VREF}
N 380 -80 380 -60 {lab=GND}
N 380 -180 380 -170 {lab=VREF}
N 380 -160 420 -160 {lab=VREF}
C {devices/code.sym} 510 380 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {ichiken/opamp_ichiken_v3.sym} 280 160 0 0 {name=x1}
C {devices/gnd.sym} 280 260 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 280 60 0 0 {name=l2 lab=VDD}
C {devices/capa.sym} 450 60 1 0 {name=C3
m=1
value=470p
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 280 -190 0 0 {name=Vdd1 value=5 savecurrent=false}
C {devices/vdd.sym} 280 -260 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 280 -130 0 0 {name=l6 lab=GND}
C {devices/code_shown.sym} -340 330 0 0 {name=spice1 only_toplevel=false value="
.control
tran 0.02m 2000m
plot v(vout)
meas tran tdiff TRIG v(vout) TD=1.5 VAL=2.5 RISE=1 TARG v(vout) TD=1.5 VAL=2.5 RISE=2
let freq=1/tdiff
echo "Frequency:" $&freq "Hz"
meas tran ypp PP v(vout) from=1.5 to=1.6
echo "Amplitude(p-p):" $&ypp "V"
gnuplot wien_bridge_ichiken vout
.endc
"}
C {devices/res.sym} 0 -190 0 0 {name=R9
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 0 -90 0 0 {name=R10
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 0 170 0 0 {name=R11
value=47k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 20 100 0 1 {name=p1  lab=VINN}
C {devices/res.sym} 0 10 0 0 {name=R12
value=2.7k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 0 260 0 0 {name=l9 lab=VREF}
C {devices/res.sym} -140 -190 0 0 {name=R13
value=100k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -140 -90 0 0 {name=C4
m=1
value=0.01u
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -140 170 0 0 {name=R14
value=100k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -220 170 0 0 {name=C5
m=1
value=0.01u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -120 100 0 1 {name=p3  lab=VINP}
C {devices/vdd.sym} -140 -260 0 0 {name=l11 lab=VOUT}
C {devices/gnd.sym} -140 260 0 0 {name=l15 lab=VREF}
C {devices/lab_pin.sym} 180 140 0 0 {name=p4  lab=VINP}
C {devices/lab_pin.sym} 180 180 0 0 {name=p5  lab=VINN}
C {devices/vdd.sym} 0 -260 0 0 {name=l17 lab=VOUT}
C {devices/diode.sym} 160 -190 0 0 {name=D3 model=D_1N4007 area=1}
C {devices/diode.sym} 120 -190 2 0 {name=D4 model=D_1N4007 area=1}
C {devices/code_shown.sym} -340 570 0 0 {name=model1 only_toplevel=false value="
.MODEL D_1N4007 D( IS=76.9p RS=42.0m BV=1.00k IBV=5.00u CJO=26.5p  M=0.333 N=1.45 TT=4.32u )
"}
C {devices/lab_pin.sym} 520 160 0 1 {name=p6  lab=VOUT}
C {devices/res.sym} 380 -210 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 380 -110 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 380 -60 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 420 -160 0 1 {name=p2  lab=VREF}
C {devices/vdd.sym} 380 -260 0 0 {name=l5 lab=VDD}
