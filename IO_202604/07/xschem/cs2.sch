v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 180 -290 180 -230 190 -250 170 -250 180 -230 {}
P 4 5 300 -290 300 -230 310 -250 290 -250 300 -230 {}
T {Iref1} 190 -280 0 0 0.25 0.25 {}
T {Iref2} 260 -280 0 0 0.25 0.25 {}
T {x8} 350 -90 0 0 0.25 0.25 {}
N 320 -540 320 -510 {lab=VDD}
N 80 -540 320 -540 {lab=VDD}
N 160 -540 160 -510 {lab=VDD}
N 320 -480 340 -480 {lab=VDD}
N 340 -540 340 -480 {lab=VDD}
N 320 -540 340 -540 {lab=VDD}
N 140 -480 160 -480 {lab=VDD}
N 140 -540 140 -480 {lab=VDD}
N 200 -480 280 -480 {lab=#net1}
N 160 -450 160 -370 {lab=#net2}
N 320 -450 320 -370 {lab=#net1}
N 160 -310 160 -260 {lab=V1}
N 320 -310 320 -260 {lab=V2}
N 320 -340 340 -340 {lab=VSS}
N 340 -340 340 -20 {lab=VSS}
N 320 -20 340 -20 {lab=VSS}
N 140 -340 160 -340 {lab=VSS}
N 140 -340 140 -20 {lab=VSS}
N 140 -20 160 -20 {lab=VSS}
N 200 -340 280 -340 {lab=#net2}
N 220 -400 220 -340 {lab=#net2}
N 160 -400 220 -400 {lab=#net2}
N 260 -480 260 -440 {lab=#net1}
N 260 -440 260 -420 {lab=#net1}
N 260 -420 320 -420 {lab=#net1}
N 320 -260 320 -210 {lab=V2}
N 320 -150 320 -110 {lab=#net3}
N 160 -260 160 -110 {lab=V1}
N 320 -50 320 -20 {lab=VSS}
N 80 -20 320 -20 {lab=VSS}
N 160 -50 160 -20 {lab=VSS}
N 320 -420 420 -420 {lab=#net1}
N 420 -480 420 -420 {lab=#net1}
N 420 -480 440 -480 {lab=#net1}
N 340 -540 500 -540 {lab=VDD}
N 500 -540 500 -480 {lab=VDD}
N 480 -480 500 -480 {lab=VDD}
N 480 -540 480 -510 {lab=VDD}
N 480 -450 480 -380 {lab=IOUT}
C {MP.sym} 200 -480 0 1 {name=XMP1 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 200 -340 0 1 {name=XMN1 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 280 -480 0 0 {name=XMP2 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 280 -340 0 0 {name=XMN2 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/iopin.sym} 80 -540 0 1 {name=p1 lab=VDD}
C {DP.sym} 160 -50 2 0 {name=D1 model=DP m=1}
C {DP.sym} 320 -50 2 0 {name=D2 model=DP m=8}
C {RS.sym} 320 -210 0 0 {name=R1
w=4u
R=1
l=100u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 80 -20 0 1 {name=p2 lab=VSS}
C {MP.sym} 440 -480 0 0 {name=XMP3 model=PMOS w=20u l=4u m=70 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/opin.sym} 480 -380 1 0 {name=p3 lab=IOUT}
C {devices/lab_wire.sym} 160 -260 0 0 {name=p4 sig_type=std_logic lab=V1}
C {devices/lab_wire.sym} 320 -260 0 1 {name=p5 sig_type=std_logic lab=V2}
