v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 440 -380 440 -320 450 -340 430 -340 440 -320 {}
P 4 5 600 -380 600 -320 610 -340 590 -340 600 -320 {}
T {Iref1} 450 -370 0 0 0.25 0.25 {}
T {Iref2} 560 -370 0 0 0.25 0.25 {}
N 80 -520 640 -520 {lab=VDD}
N 640 -520 640 -460 {lab=VDD}
N 620 -460 640 -460 {lab=VDD}
N 620 -520 620 -490 {lab=VDD}
N 420 -520 420 -490 {lab=VDD}
N 400 -460 420 -460 {lab=VDD}
N 400 -520 400 -460 {lab=VDD}
N 460 -460 580 -460 {lab=vgp}
N 560 -460 560 -400 {lab=vgp}
N 420 -200 580 -200 {lab=#net1}
N 80 -20 640 -20 {lab=VSS}
N 640 -200 640 -20 {lab=VSS}
N 620 -200 640 -200 {lab=VSS}
N 620 -170 620 -110 {lab=vgn}
N 620 -50 620 -20 {lab=VSS}
N 420 -110 420 -20 {lab=VSS}
N 400 -140 420 -140 {lab=VSS}
N 400 -140 400 -20 {lab=VSS}
N 460 -140 620 -140 {lab=vgn}
N 780 -520 780 -460 {lab=VDD}
N 760 -460 780 -460 {lab=VDD}
N 760 -520 760 -490 {lab=VDD}
N 640 -520 780 -520 {lab=VDD}
N 620 -400 700 -400 {lab=vgp}
N 700 -460 700 -400 {lab=vgp}
N 700 -460 720 -460 {lab=vgp}
N 620 -430 620 -310 {lab=vgp}
N 560 -400 620 -400 {lab=vgp}
N 420 -430 420 -250 {lab=#net1}
N 620 -140 720 -140 {lab=vgn}
N 760 -110 760 -20 {lab=VSS}
N 640 -20 760 -20 {lab=VSS}
N 760 -140 780 -140 {lab=VSS}
N 780 -140 780 -20 {lab=VSS}
N 760 -20 780 -20 {lab=VSS}
N 760 -430 760 -400 {lab=IOUTP}
N 620 -310 620 -230 {lab=vgp}
N 420 -250 420 -170 {lab=#net1}
N 760 -200 760 -170 {lab=IOUTN}
N 340 -210 340 -200 {lab=#net1}
N 340 -200 420 -200 {lab=#net1}
N 340 -520 340 -270 {lab=VDD}
N 240 -460 260 -460 {lab=VDD}
N 260 -520 260 -460 {lab=VDD}
N 240 -520 240 -490 {lab=VDD}
N 240 -140 260 -140 {lab=VSS}
N 260 -140 260 -20 {lab=VSS}
N 240 -110 240 -20 {lab=VSS}
N 180 -140 200 -140 {lab=#net2}
N 180 -200 180 -140 {lab=#net2}
N 180 -200 240 -200 {lab=#net2}
N 160 -460 200 -460 {lab=VSS}
N 240 -430 240 -370 {lab=#net3}
N 240 -340 260 -340 {lab=VDD}
N 260 -460 260 -340 {lab=VDD}
N 240 -310 240 -170 {lab=#net2}
N 160 -340 200 -340 {lab=VSS}
N 340 -240 400 -240 {lab=VSS}
N 400 -240 400 -140 {lab=VSS}
N 240 -240 300 -240 {lab=#net2}
N 160 -460 160 -280 {lab=VSS}
N 160 -280 160 -20 {lab=VSS}
C {MP.sym} 460 -460 0 1 {name=XMP1 model=PMOS w=20u l=8u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 460 -140 0 1 {name=XMN1 model=NMOS w=10u l=8u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 580 -460 0 0 {name=XMP2 model=PMOS w=20u l=8u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 580 -200 0 0 {name=XMN2 model=NMOS w=10u l=4u m=2 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/iopin.sym} 80 -520 0 1 {name=p1 lab=VDD}
C {RS.sym} 620 -110 0 0 {name=R1
w=4u
R=1
l=800u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 80 -20 0 1 {name=p2 lab=VSS}
C {devices/opin.sym} 760 -400 1 0 {name=p3 lab=IOUTP}
C {devices/opin.sym} 760 -200 3 0 {name=p6 lab=IOUTN}
C {MP.sym} 720 -460 0 0 {name=XMP3 model=PMOS w=20u l=8u m=26 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 720 -140 0 0 {name=XMN3 model=NMOS w=10u l=8u m=26 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/lab_wire.sym} 540 -460 0 0 {name=p4 sig_type=std_logic lab=vgp}
C {devices/lab_wire.sym} 520 -140 0 0 {name=p5 sig_type=std_logic lab=vgn}
C {MN.sym} 300 -240 0 0 {name=XMN4 model=NMOS w=10u l=10u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 200 -460 0 0 {name=XMP4 model=PMOS w=10u l=4u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 200 -140 0 0 {name=XMN5 model=NMOS w=10u l=8u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 200 -340 0 0 {name=XMP5 model=PMOS w=10u l=4u m=1 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
