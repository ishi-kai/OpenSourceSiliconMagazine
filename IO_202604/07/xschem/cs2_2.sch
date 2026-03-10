v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 180 -290 180 -230 190 -250 170 -250 180 -230 {}
P 4 5 340 -290 340 -230 350 -250 330 -250 340 -230 {}
T {Iref1} 190 -280 0 0 0.25 0.25 {}
T {Iref2} 300 -280 0 0 0.25 0.25 {}
T {x8} 390 -90 0 0 0.25 0.25 {}
N 360 -880 360 -850 {lab=VDD}
N 80 -880 360 -880 {lab=VDD}
N 160 -880 160 -850 {lab=VDD}
N 360 -820 380 -820 {lab=VDD}
N 380 -880 380 -820 {lab=VDD}
N 360 -880 380 -880 {lab=VDD}
N 140 -820 160 -820 {lab=VDD}
N 140 -880 140 -820 {lab=VDD}
N 200 -820 320 -820 {lab=#net1}
N 160 -310 160 -260 {lab=V1}
N 360 -310 360 -260 {lab=V2}
N 360 -340 380 -340 {lab=VSS}
N 380 -340 380 -300 {lab=VSS}
N 140 -340 160 -340 {lab=VSS}
N 140 -340 140 -300 {lab=VSS}
N 200 -340 320 -340 {lab=#net2}
N 220 -520 220 -340 {lab=#net2}
N 160 -520 220 -520 {lab=#net2}
N 300 -820 300 -780 {lab=#net1}
N 300 -780 300 -760 {lab=#net1}
N 300 -640 360 -640 {lab=#net1}
N 360 -260 360 -210 {lab=V2}
N 360 -150 360 -110 {lab=#net3}
N 160 -260 160 -110 {lab=V1}
N 360 -50 360 -20 {lab=VSS}
N 80 -20 360 -20 {lab=VSS}
N 160 -50 160 -20 {lab=VSS}
N 360 -640 440 -640 {lab=#net1}
N 440 -820 440 -640 {lab=#net1}
N 440 -820 480 -820 {lab=#net1}
N 380 -880 540 -880 {lab=VDD}
N 540 -880 540 -820 {lab=VDD}
N 520 -820 540 -820 {lab=VDD}
N 520 -880 520 -850 {lab=VDD}
N 520 -670 520 -600 {lab=IOUT}
N 160 -790 160 -730 {lab=#net4}
N 360 -790 360 -730 {lab=#net5}
N 200 -700 320 -700 {lab=#net6}
N 160 -430 160 -370 {lab=#net7}
N 360 -430 360 -370 {lab=#net8}
N 360 -460 380 -460 {lab=VSS}
N 200 -460 320 -460 {lab=#net9}
N 140 -460 160 -460 {lab=VSS}
N 360 -670 360 -610 {lab=#net1}
N 360 -700 380 -700 {lab=VDD}
N 140 -700 160 -700 {lab=VDD}
N 280 -700 280 -520 {lab=#net6}
N 280 -520 360 -520 {lab=#net6}
N 240 -640 240 -460 {lab=#net9}
N 160 -640 240 -640 {lab=#net9}
N 380 -740 380 -700 {lab=VDD}
N 140 -740 140 -700 {lab=VDD}
N 140 -460 140 -420 {lab=VSS}
N 380 -460 380 -420 {lab=VSS}
N 140 -820 140 -740 {lab=VDD}
N 380 -820 380 -740 {lab=VDD}
N 140 -420 140 -340 {lab=VSS}
N 380 -420 380 -340 {lab=VSS}
N 140 -300 140 -20 {lab=VSS}
N 380 -300 380 -20 {lab=VSS}
N 360 -20 380 -20 {lab=VSS}
N 160 -670 160 -610 {lab=#net9}
N 160 -550 160 -490 {lab=#net2}
N 360 -550 360 -490 {lab=#net6}
N 300 -760 300 -640 {lab=#net1}
N 520 -790 520 -730 {lab=#net10}
N 360 -520 460 -520 {lab=#net6}
N 520 -700 540 -700 {lab=VDD}
N 540 -820 540 -700 {lab=VDD}
N 460 -700 480 -700 {lab=#net6}
N 460 -700 460 -520 {lab=#net6}
C {MP.sym} 200 -820 0 1 {name=XMP1 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 200 -340 0 1 {name=XMN1 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 320 -820 0 0 {name=XMP2 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 320 -340 0 0 {name=XMN2 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/iopin.sym} 80 -880 0 1 {name=p1 lab=VDD}
C {DP.sym} 160 -50 2 0 {name=D1 model=DP m=1}
C {DP.sym} 360 -50 2 0 {name=D2 model=DP m=8}
C {RS.sym} 360 -210 0 0 {name=R1
w=4u
R=1
l=100u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 80 -20 0 1 {name=p2 lab=VSS}
C {MP.sym} 480 -820 0 0 {name=XMP3 model=PMOS w=20u l=4u m=78 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/opin.sym} 520 -600 1 0 {name=p3 lab=IOUT}
C {devices/lab_wire.sym} 160 -260 0 0 {name=p4 sig_type=std_logic lab=V1}
C {devices/lab_wire.sym} 360 -260 0 1 {name=p5 sig_type=std_logic lab=V2}
C {MP.sym} 200 -700 0 1 {name=XMP4 model=PMOS w=20u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 320 -700 0 0 {name=XMP5 model=PMOS w=20u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 200 -460 0 1 {name=XMN3 model=NMOS w=10u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 320 -460 0 0 {name=XMN4 model=NMOS w=10u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {RS.sym} 160 -610 0 0 {name=R2
w=4u
R=1
l=800u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 360 -610 0 0 {name=R3
w=4u
R=1
l=800u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {MP.sym} 480 -700 0 0 {name=XMP6 model=PMOS w=20u l=1u m=78 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
