v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {pin8} -360 10 0 0 0.2 0.2 {}
T {pin8} -360 10 0 0 0.2 0.2 {}
T {pin9} -270 10 0 0 0.2 0.2 {}
T {pin20,40,60,80} -290 40 0 0 0.2 0.2 {}
T {pin7} -290 -40 0 0 0.2 0.2 {}
T {pin20,40,60,80} 150 40 0 0 0.2 0.2 {}
T {pin11} 80 10 0 0 0.2 0.2 {}
T {pin12} 170 10 0 0 0.2 0.2 {}
T {pin10} 150 -40 0 0 0.2 0.2 {}
T {pin20,40,60,80} -470 40 0 0 0.2 0.2 {}
T {pin14} -540 10 0 0 0.2 0.2 {}
T {pin15} -450 10 0 0 0.2 0.2 {}
T {pin13} -470 -40 0 0 0.2 0.2 {}
T {RC Oscillator} -560 -290 0 0 1 1 {}
N -620 -80 -620 -40 {lab=VDD}
N -620 20 -620 50 {lab=GND}
N -300 30 -300 50 {lab=GND}
N -300 -50 -300 -30 {lab=VDD}
N 140 30 140 50 {lab=GND}
N 140 -50 140 -30 {lab=VDD}
N -480 30 -480 50 {lab=GND}
N -480 -50 -480 -30 {lab=VDD}
N -260 0 -200 0 {lab=#net1}
N -200 -120 -200 0 {lab=#net1}
N -200 -120 -100 -120 {lab=#net1}
N -100 -120 -100 -80 {lab=#net1}
N -100 -20 -100 20 {lab=#net2}
N -100 80 -100 120 {lab=#net3}
N -100 0 -60 0 {lab=#net2}
N -160 0 -100 0 {lab=#net2}
N -160 0 -160 20 {lab=#net2}
N -160 80 -160 100 {lab=GND}
N 20 -120 40 -120 {lab=gate}
N 20 -120 20 0 {lab=gate}
N -440 0 -340 0 {lab=#net3}
N -380 0 -380 190 {lab=#net3}
N -380 190 -100 190 {lab=#net3}
N -100 120 -100 190 {lab=#net3}
N 220 -180 220 0 {lab=clk_out}
N -560 -180 160 -180 {lab=clk_out}
N -560 -180 -560 0 {lab=clk_out}
N -560 0 -520 0 {lab=clk_out}
N 0 -0 100 -0 {lab=gate}
N 160 -180 220 -180 {lab=clk_out}
N 180 -0 260 -0 {lab=clk_out}
C {devices/code.sym} -880 -170 0 0 {name=PTC06_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/mos.lib
.include $::LIB/passive.lib
.include $::LIB/diode.lib"
spice_ignore=false}
C {devices/code_shown.sym} -870 100 0 0 {name=spice only_toplevel=false value="
.option savecurrent
.control
save all

* Tran analysis
tran 1u 100u
plot clk_out gate
gnuplot tb_rc_osc clk_out gate title 'RC Oscillator Output'
.endc
"}
C {devices/vsource.sym} -620 -10 0 0 {name=Vdd value=5 savecurrent=false}
C {devices/vdd.sym} -620 -80 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} -620 50 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 260 0 2 0 {name=p9 sig_type=std_logic lab=clk_out}
C {devices/res.sym} -30 0 1 0 {name=R4
value=100
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -100 50 2 0 {name=C2
m=1
value=47p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} -100 -50 2 0 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
C {liuyi/invertar_0614.sym} -300 0 0 0 {name=x1}
C {devices/vdd.sym} -300 -50 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} -300 50 0 0 {name=l2 lab=GND}
C {yasuike/inverter/inverter.sym} 140 0 0 0 {name=x2}
C {devices/gnd.sym} 140 50 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 140 -50 0 0 {name=l6 lab=VDD}
C {yukiyama/inverter1.sym} -480 0 0 0 {name=x3}
C {devices/gnd.sym} -480 50 0 0 {name=l7 lab=GND}
C {devices/vdd.sym} -480 -50 0 0 {name=l8 lab=VDD}
C {devices/res.sym} -160 50 2 0 {name=R1
value=1Meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 40 -120 2 0 {name=p1 sig_type=std_logic lab=gate}
C {devices/gnd.sym} -160 100 0 0 {name=l10 lab=GND}
