v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -360 150 -360 {
lab=VDD}
N 150 -400 150 -360 {
lab=VDD}
N 120 -400 150 -400 {
lab=VDD}
N 340 -360 370 -360 {
lab=VDD}
N 120 -170 120 -50 {
lab=GND}
N 120 -200 150 -200 {
lab=GND}
N 150 -200 150 -140 {
lab=GND}
N 120 -140 150 -140 {
lab=GND}
N 70 -360 80 -360 {
lab=S}
N 70 -360 70 -200 {
lab=S}
N 70 -200 80 -200 {
lab=S}
N 120 -330 120 -230 {
lab=#net1}
N 290 -260 300 -260 {
lab=S}
N 290 -260 290 -160 {
lab=S}
N 290 -160 300 -160 {
lab=S}
N 340 -200 340 -190 {
lab=A}
N 340 -30 340 -20 {
lab=A}
N 360 -200 360 -20 {
lab=A}
N 340 -130 340 -90 {
lab=Y}
N 340 -230 340 -220 {
lab=B}
N 340 -330 340 -290 {
lab=Y}
N 340 -60 350 -60 {
lab=GND}
N 340 -400 340 -390 {
lab=B}
N 340 -320 380 -320 {
lab=Y}
N 400 -400 400 -220 {
lab=B}
N 340 -260 370 -260 {
lab=GND}
N 380 -310 380 -110 {
lab=Y}
N 340 -110 380 -110 {
lab=Y}
N 70 -240 290 -240 {
lab=S}
N 120 -260 170 -260 {
lab=#net1}
N 170 -260 170 -60 {
lab=#net1}
N 170 -60 300 -60 {
lab=#net1}
N 390 -260 420 -260 {
lab=Y}
N 40 -260 70 -260 {
lab=S}
N 370 -440 370 -360 {
lab=VDD}
N 120 -50 120 0 {
lab=GND}
N 350 -60 350 0 {
lab=GND}
N 370 -260 370 0 {
lab=GND}
N 340 -20 360 -20 {
lab=A}
N 340 -200 360 -200 {
lab=A}
N 340 -220 400 -220 {
lab=B}
N 340 -400 400 -400 {
lab=B}
N 290 -360 300 -360 {
lab=#net1}
N 290 -360 290 -310 {
lab=#net1}
N 120 -310 290 -310 {
lab=#net1}
N 120 -460 120 -390 {
lab=VDD}
N 370 -460 370 -440 {
lab=VDD}
N 380 -320 380 -310 {
lab=Y}
N 380 -260 390 -260 {
lab=Y}
N 340 -160 410 -160 {
lab=VDD}
N 410 -460 410 -160 {
lab=VDD}
N 330 -200 340 -200 {lab=A}
N 120 -460 410 -460 {lab=VDD}
N 410 -460 420 -460 {lab=VDD}
N 320 -400 340 -400 {lab=B}
N 120 0 390 -0 {lab=GND}
C {devices/ipin.sym} 320 -400 0 0 {name=p1 lab=B}
C {devices/ipin.sym} 40 -260 0 0 {name=p2 lab=S}
C {devices/opin.sym} 420 -260 0 0 {name=p3 lab=Y}
C {devices/iopin.sym} 420 -460 0 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 390 0 0 0 {name=p5 lab=GND}
C {devices/ipin.sym} 330 -200 0 0 {name=p6 lab=A}
C {IP62LIB/MP.sym} 80 -360 0 0 {name=XM13 model=PMOS w=6.8u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MP.sym} 300 -360 0 0 {name=XM8 model=PMOS w=WP l=1u m=WPM as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MP.sym} 300 -160 0 0 {name=XM2 model=PMOS w=WP l=1u m=WPM as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 80 -200 0 0 {name=XM12 model=NMOS w=3.4u l=1u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 300 -260 0 0 {name=XM6 model=NMOS w=WN l=1u m=WNM as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {IP62LIB/MN.sym} 300 -60 0 0 {name=XM4 model=NMOS w=WN l=1u m=WNM as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
