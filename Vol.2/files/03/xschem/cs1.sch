v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 180 -230 180 -170 170 -190 190 -190 180 -170 {}
T {Iref} 190 -220 0 0 0.4 0.4 {}
N 160 -250 160 -110 {lab=#net1}
N 160 -50 160 -20 {lab=VSS}
N 80 -20 160 -20 {lab=VSS}
N 140 -80 160 -80 {lab=VSS}
N 140 -80 140 -20 {lab=VSS}
N 200 -80 320 -80 {lab=#net1}
N 160 -20 380 -20 {lab=VSS}
N 380 -80 380 -20 {lab=VSS}
N 360 -80 380 -80 {lab=VSS}
N 360 -50 360 -20 {lab=VSS}
N 220 -140 220 -80 {lab=#net1}
N 160 -140 220 -140 {lab=#net1}
N 360 -160 360 -110 {lab=IOUT}
N 160 -340 160 -310 {lab=VDD}
N 80 -340 160 -340 {lab=VDD}
C {MN.sym} 200 -80 0 1 {name=XM1 model=NMOS w=6u l=4u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {RS.sym} 160 -310 0 0 {name=R1
w=4u
R=1
l=110u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {MN.sym} 320 -80 0 0 {name=XM2 model=NMOS w=6u l=4u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/iopin.sym} 80 -340 0 1 {name=p1 lab=VDD}
C {devices/iopin.sym} 80 -20 0 1 {name=p2 lab=VSS}
C {devices/opin.sym} 360 -160 3 0 {name=p3 lab=IOUT}
