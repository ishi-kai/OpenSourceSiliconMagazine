v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Non-inverting amplifier} -560 -290 0 0 1 1 {}
T {pin20,40,60,80} 140 90 0 0 0.2 0.2 {}
T {pin62} 195 -55 0 0 0.2 0.2 {}
T {pin63} 135 -100 0 0 0.2 0.2 {}
T {pin64} 40 -55 0 0 0.2 0.2 {}
T {pin65} 195 -35 0 0 0.2 0.2 {}
T {pin67} 40 -35 0 0 0.2 0.2 {}
T {pin66} 40 5 0 0 0.2 0.2 {}
T {pin68} 195 -15 0 0 0.2 0.2 {}
N -400 -100 -400 -60 {lab=VDD}
N -400 0 -400 30 {lab=GND}
N 350 0 350 140 {lab=VOUT}
N -160 80 -160 100 {lab=GND}
N -160 -20 -160 20 {lab=VREF}
N -160 -100 -160 -80 {lab=VDD}
N -320 -100 -320 -60 {lab=VIN}
N -320 0 -320 30 {lab=GND}
N 260 0 380 0 {lab=VOUT}
N 130 80 130 100 {lab=GND}
N 90 80 130 80 {lab=GND}
N 130 80 150 80 {lab=GND}
N 130 -100 130 -80 {lab=VDD}
N 90 -80 130 -80 {lab=VDD}
N 130 -80 150 -80 {lab=VDD}
N 190 -100 270 -100 {lab=#net1}
N 190 -100 190 -40 {lab=#net1}
N 330 -100 350 -100 {lab=VOUT}
N 190 0 260 0 {lab=VOUT}
N 350 -100 350 0 {lab=VOUT}
N 190 -20 250 -20 {lab=#net2}
N 250 -160 250 -20 {lab=#net2}
N 70 -160 250 -160 {lab=#net2}
N 70 -160 70 -40 {lab=#net2}
N 10 -40 10 -20 {lab=VIN}
N 10 -20 70 -20 {lab=VIN}
N 40 20 40 140 {lab=#net3}
N 40 20 70 20 {lab=#net3}
N -100 -40 -100 0 {lab=VREF}
N -80 140 -40 140 {lab=VREF}
N -80 140 -80 160 {lab=VREF}
N -160 0 -100 0 {lab=VREF}
N 200 140 350 140 {lab=VOUT}
N 120 140 140 140 {lab=#net4}
N 20 140 60 140 {lab=#net3}
C {devices/code.sym} -630 110 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} -590 310 0 0 {name=spice only_toplevel=false value="
.option savecurrent
.control
save all
* Tran analysis
tran 0.001m 10m
plot VIN VOUT

meas tran in_pp PP v(VIN)
echo 'Amplitude vout:' $&in_pp 'V'
meas tran out_pp PP v(VOUT)
echo 'Amplitude vin:' $&out_pp 'V'
gnuplot tb_non-inverting-amp-ichiken VIN VOUT title 'Non inverting amp'
.endc
"}
C {devices/vsource.sym} -400 -30 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} -400 -100 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -400 30 0 0 {name=l5 lab=GND}
C {devices/res.sym} -10 140 1 0 {name=R3
value=47k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 170 140 1 0 {name=R6
value=47k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 380 0 2 0 {name=p2 sig_type=std_logic lab=VOUT}
C {devices/vdd.sym} -100 -40 0 0 {name=l8 lab=VREF}
C {devices/vdd.sym} -160 -100 0 0 {name=l10 lab=VDD}
C {devices/res.sym} -160 -50 2 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -160 50 2 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} -160 100 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -320 -30 0 0 {name=Vdd1 value="sin(2.5 0.5 1k 0 0 0)" savecurrent=false}
C {devices/vdd.sym} -320 -100 0 0 {name=l1 lab=VIN}
C {devices/gnd.sym} -320 30 0 0 {name=l2 lab=GND}
C {ichiken/opamp_ichiken_v3.sym} 130 0 0 0 {name=x1}
C {devices/gnd.sym} 130 100 0 0 {name=l6 lab=GND}
C {devices/vdd.sym} 130 -100 0 0 {name=l7 lab=VDD}
C {devices/capa.sym} 300 -100 1 0 {name=C3
m=1
value=470p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 10 -40 0 0 {name=l3 lab=VIN}
C {devices/gnd.sym} -80 160 0 0 {name=l9 lab=VREF}
C {devices/res.sym} 90 140 1 0 {name=R4
value=47k
footprint=1206
device=resistor
m=1}
