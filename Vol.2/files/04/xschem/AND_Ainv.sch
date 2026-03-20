v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -40 140 -40 {lab=#net1}
N 50 0 50 20 {lab=VSS}
N 190 40 190 60 {lab=VSS}
N 270 -20 290 -20 {lab=Y}
N -20 -40 0 -40 {lab=A}
N 50 -100 50 -80 {lab=VDD}
N 190 -100 190 -80 {lab=VDD}
N 120 -0 140 -0 {lab=xxx}
N 50 -100 190 -100 {lab=VDD}
N 50 20 50 50 {lab=VSS}
N 50 50 50 60 {lab=VSS}
N 50 60 190 60 {lab=VSS}
C {IP62_5_stdcell/AND2_X1.sym} 160 -20 0 0 {name=x64}
C {IP62_5_stdcell/INV_X1.sym} 20 -40 0 0 {name=x65}
C {devices/iopin.sym} 190 -100 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 190 60 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 290 -20 0 0 {name=p3 lab=Y}
C {devices/ipin.sym} -20 -40 0 0 {name=p4 lab=A}
C {devices/ipin.sym} 120 0 0 0 {name=p5 lab=B}
