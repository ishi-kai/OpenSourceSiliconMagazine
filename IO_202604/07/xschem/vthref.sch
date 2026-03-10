v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 160 -380 160 -320 170 -340 150 -340 160 -320 {}
P 4 5 320 -380 320 -320 330 -340 310 -340 320 -320 {}
T {Iref1} 170 -370 0 0 0.25 0.25 {}
T {Iref2} 280 -370 0 0 0.25 0.25 {}
N 80 -520 360 -520 {lab=VDD}
N 360 -520 360 -460 {lab=VDD}
N 340 -460 360 -460 {lab=VDD}
N 340 -520 340 -490 {lab=VDD}
N 140 -520 140 -490 {lab=VDD}
N 120 -460 140 -460 {lab=VDD}
N 120 -520 120 -460 {lab=VDD}
N 180 -460 300 -460 {lab=vgp}
N 280 -460 280 -400 {lab=vgp}
N 140 -200 300 -200 {lab=#net1}
N 80 -20 360 -20 {lab=VSS}
N 360 -200 360 -20 {lab=VSS}
N 340 -200 360 -200 {lab=VSS}
N 340 -170 340 -110 {lab=vgn}
N 340 -50 340 -20 {lab=VSS}
N 140 -110 140 -20 {lab=VSS}
N 120 -140 140 -140 {lab=VSS}
N 120 -140 120 -20 {lab=VSS}
N 180 -140 340 -140 {lab=vgn}
N 500 -520 500 -460 {lab=VDD}
N 480 -460 500 -460 {lab=VDD}
N 480 -520 480 -490 {lab=VDD}
N 360 -520 500 -520 {lab=VDD}
N 340 -400 420 -400 {lab=vgp}
N 420 -460 420 -400 {lab=vgp}
N 420 -460 440 -460 {lab=vgp}
N 340 -430 340 -310 {lab=vgp}
N 280 -400 340 -400 {lab=vgp}
N 140 -430 140 -250 {lab=#net1}
N 340 -140 440 -140 {lab=vgn}
N 480 -110 480 -20 {lab=VSS}
N 360 -20 480 -20 {lab=VSS}
N 480 -140 500 -140 {lab=VSS}
N 500 -140 500 -20 {lab=VSS}
N 480 -20 500 -20 {lab=VSS}
N 480 -430 480 -400 {lab=IOUTP}
N 340 -310 340 -230 {lab=vgp}
N 140 -250 140 -170 {lab=#net1}
N 480 -200 480 -170 {lab=IOUTN}
C {devices/iopin.sym} 80 -520 0 1 {name=p1 lab=VDD}
C {RS.sym} 340 -110 0 0 {name=R1
w=4u
R=1
l=800u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 80 -20 0 1 {name=p2 lab=VSS}
C {devices/opin.sym} 480 -400 1 0 {name=p3 lab=IOUTP}
C {devices/opin.sym} 480 -200 3 0 {name=p6 lab=IOUTN}
C {MP.sym} 440 -460 0 0 {name=XMP3 model=PMOS w=20u l=8u m=26 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 440 -140 0 0 {name=XMN3 model=NMOS w=10u l=8u m=26 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/lab_wire.sym} 260 -460 0 0 {name=p4 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 240 -140 0 0 {name=p5 sig_type=std_logic lab=vgn}
C {MP.sym} 180 -460 0 1 {name=XMP1 model=PMOS w=20u l=8u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 180 -140 0 1 {name=XMN1 model=NMOS w=10u l=8u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 300 -460 0 0 {name=XMP2 model=PMOS w=20u l=8u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 300 -200 0 0 {name=XMN2 model=NMOS w=10u l=4u m=2 as=60e-12 ad=0 ps=52e-6 pd=0 nrd=0 nrs=0}
