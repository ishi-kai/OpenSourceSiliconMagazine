v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -80 430 -80 {
lab=GND}
N 120 -220 120 -120 {
lab=GND}
N 120 -80 120 -60 {
lab=GND}
N 430 -200 430 -120 {
lab=GND}
N 430 -80 530 -80 {
lab=GND}
N 180 -170 180 -120 {
lab=GND}
N 180 -260 370 -260 {
lab=#net1}
N 180 -260 180 -230 {
lab=#net1}
N 430 -120 430 -80 {
lab=GND}
N 180 -120 180 -80 {
lab=GND}
N 120 -120 120 -80 {
lab=GND}
N 610 -260 730 -260 {lab=out}
N 640 -260 640 -200 {lab=out}
N 690 -260 690 -200 {lab=out}
N 530 -80 640 -80 {lab=GND}
N 640 -140 640 -80 {lab=GND}
N 640 -80 690 -80 {lab=GND}
N 690 -140 690 -80 {lab=GND}
N 430 -400 430 -350 {lab=#net2}
N 120 -400 430 -400 {lab=#net2}
N 120 -400 120 -280 {lab=#net2}
N 530 -200 530 -160 {lab=gate}
N 530 -100 530 -80 {lab=GND}
N 530 -180 540 -180 {lab=gate}
C {devices/vsource.sym} 120 -250 0 0 {name=Vdd value=5.0}
C {devices/gnd.sym} 120 -60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 730 -260 0 1 {name=p1 sig_type=std_logic lab=out}
C {devices/capa.sym} 690 -170 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/isource.sym} 180 -200 0 0 {name=I0 value=100e-6}
C {devices/res.sym} 640 -170 2 0 {name=R1
value=100Meg
footprint=1206
device=resistor
m=1}
C {vco.sym} 390 -260 0 0 {name=X1}
C {devices/code_shown.sym} -610 -420 0 0 {name=control only_toplevel=false value=".option savecurrent
.control
let ib=10e-6
let ib_step=10e-6
let ib_max=100e-6
let count=0
let count_length=((ib_max-ib)/ib_step)+1
echo count_length:$&count_length
let chart_y_freq = vector(count_length)
let chart_x_curr = vector(count_length)

while ib <= ib_max
 alter I0=ib
 tran 1n 2000n
 plot V(out),  V(gate)
 gnuplot gp V(out), V(gate) title 'bias $&ib' ylabel 'Voltage [V]' xlabel 'time [s]'
 meas tran tdiff TRIG v(out) VAL=2.5 RISE=1 TARG v(out) VAL=2.5 RISE=2
 let freq=1/tdiff
 echo ib: $&ib A, frequency: $&freq Hz
 let chart_y_freq[count]=freq
 let chart_x_curr[count]=ib
 let ib=ib+ib_step
 let count=count + 1
end
set nolegend
plot chart_y_freq vs chart_x_curr  pointplot ylabel 'Output Frequnecy [Hz]' xlabel 'Bias current [A]'
gnuplot gp chart_y_freq vs chart_x_curr pointplot ylabel 'Output Frequency [Hz]' xlabel 'Bias current [A]' title 'VCO output frequency'
.endc"}
C {devices/code.sym} -630 -580 0 0 {name=TR10_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".include $::LIB/../ip62_models"
spice_ignore=false}
C {devices/res.sym} 530 -130 2 0 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 540 -180 0 1 {name=p2 sig_type=std_logic lab=gate}
