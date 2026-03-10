v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 280 -120 280 -60 290 -80 270 -80 280 -60 {}
P 4 5 380 -120 380 -60 390 -80 370 -80 380 -60 {}
P 4 5 560 -220 560 -160 570 -180 550 -180 560 -160 {}
P 4 5 120 -220 120 -160 130 -180 110 -180 120 -160 {}
P 4 5 280 -320 280 -260 290 -280 270 -280 280 -260 {}
P 4 5 380 -320 380 -260 390 -280 370 -280 380 -260 {}
T {Iptat1} 290 -110 0 0 0.25 0.25 {}
T {Iptat2} 340 -110 0 0 0.25 0.25 {}
T {x8} 470 -100 0 0 0.25 0.25 {}
T {Ictat2} 570 -210 0 0 0.25 0.25 {}
T {Ictat1} 80 -210 0 0 0.25 0.25 {}
T {Iref1} 290 -310 0 0 0.25 0.25 {}
T {Iref2} 340 -310 0 0 0.25 0.25 {}
N 440 -880 440 -850 {lab=VDD}
N 60 -880 240 -880 {lab=VDD}
N 240 -880 240 -850 {lab=VDD}
N 440 -820 460 -820 {lab=VDD}
N 460 -880 460 -820 {lab=VDD}
N 440 -880 460 -880 {lab=VDD}
N 220 -820 240 -820 {lab=VDD}
N 220 -880 220 -820 {lab=VDD}
N 280 -820 400 -820 {lab=#net1}
N 240 -310 240 -260 {lab=V1}
N 440 -310 440 -260 {lab=V2}
N 440 -340 460 -340 {lab=VSS}
N 460 -340 460 -300 {lab=VSS}
N 220 -340 240 -340 {lab=VSS}
N 220 -340 220 -300 {lab=VSS}
N 280 -340 400 -340 {lab=#net2}
N 300 -520 300 -340 {lab=#net2}
N 240 -520 300 -520 {lab=#net2}
N 380 -820 380 -780 {lab=#net1}
N 380 -780 380 -760 {lab=#net1}
N 380 -640 440 -640 {lab=#net1}
N 440 -260 440 -210 {lab=V2}
N 440 -150 440 -110 {lab=#net3}
N 240 -260 240 -110 {lab=V1}
N 440 -50 440 -20 {lab=VSS}
N 60 -20 240 -20 {lab=VSS}
N 240 -50 240 -20 {lab=VSS}
N 440 -640 520 -640 {lab=#net1}
N 520 -820 520 -640 {lab=#net1}
N 520 -820 640 -820 {lab=#net1}
N 460 -880 700 -880 {lab=VDD}
N 700 -880 700 -820 {lab=VDD}
N 680 -820 700 -820 {lab=VDD}
N 680 -880 680 -850 {lab=VDD}
N 680 -670 680 -600 {lab=IOUT}
N 240 -790 240 -730 {lab=#net4}
N 440 -790 440 -730 {lab=#net5}
N 280 -700 400 -700 {lab=#net6}
N 240 -430 240 -370 {lab=#net7}
N 440 -430 440 -370 {lab=#net8}
N 440 -460 460 -460 {lab=VSS}
N 280 -460 400 -460 {lab=#net9}
N 220 -460 240 -460 {lab=VSS}
N 440 -670 440 -610 {lab=#net1}
N 440 -700 460 -700 {lab=VDD}
N 220 -700 240 -700 {lab=VDD}
N 360 -700 360 -520 {lab=#net6}
N 360 -520 440 -520 {lab=#net6}
N 320 -640 320 -460 {lab=#net9}
N 240 -640 320 -640 {lab=#net9}
N 460 -740 460 -700 {lab=VDD}
N 220 -740 220 -700 {lab=VDD}
N 220 -460 220 -420 {lab=VSS}
N 460 -460 460 -420 {lab=VSS}
N 220 -820 220 -740 {lab=VDD}
N 460 -820 460 -740 {lab=VDD}
N 220 -420 220 -340 {lab=VSS}
N 460 -420 460 -340 {lab=VSS}
N 220 -300 220 -20 {lab=VSS}
N 460 -300 460 -20 {lab=VSS}
N 440 -20 460 -20 {lab=VSS}
N 240 -670 240 -610 {lab=#net9}
N 240 -550 240 -490 {lab=#net2}
N 440 -550 440 -490 {lab=#net6}
N 380 -760 380 -640 {lab=#net1}
N 240 -20 440 -20 {lab=VSS}
N 240 -880 440 -880 {lab=VDD}
N 140 -240 240 -240 {lab=V1}
N 140 -240 140 -110 {lab=V1}
N 140 -50 140 -20 {lab=VSS}
N 440 -240 540 -240 {lab=V2}
N 540 -240 540 -110 {lab=V2}
N 540 -50 540 -20 {lab=VSS}
N 460 -20 540 -20 {lab=VSS}
N 680 -790 680 -730 {lab=#net10}
N 680 -700 700 -700 {lab=VDD}
N 700 -820 700 -700 {lab=VDD}
N 540 -700 640 -700 {lab=#net6}
N 540 -700 540 -520 {lab=#net6}
N 440 -520 540 -520 {lab=#net6}
C {MP.sym} 280 -820 0 1 {name=XMP1 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 280 -340 0 1 {name=XMN1 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 400 -820 0 0 {name=XMP2 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 400 -340 0 0 {name=XMN2 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/iopin.sym} 60 -880 0 1 {name=p1 lab=VDD}
C {DP.sym} 240 -50 2 0 {name=D1 model=DP m=1}
C {DP.sym} 440 -50 2 0 {name=D2 model=DP m=8}
C {RS.sym} 440 -210 0 0 {name=R1
w=4u
R=1
l=175u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 60 -20 0 1 {name=p2 lab=VSS}
C {MP.sym} 640 -820 0 0 {name=XMP3 model=PMOS w=20u l=4u m=42 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/opin.sym} 680 -600 1 0 {name=p3 lab=IOUT}
C {devices/lab_wire.sym} 240 -260 0 0 {name=p4 sig_type=std_logic lab=V1}
C {devices/lab_wire.sym} 440 -260 0 1 {name=p5 sig_type=std_logic lab=V2}
C {MP.sym} 280 -700 0 1 {name=XMP4 model=PMOS w=20u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 400 -700 0 0 {name=XMP5 model=PMOS w=20u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 280 -460 0 1 {name=XMN3 model=NMOS w=10u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 400 -460 0 0 {name=XMN4 model=NMOS w=10u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {RS.sym} 240 -610 0 0 {name=R2
w=4u
R=1
l=800u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 440 -610 0 0 {name=R3
w=4u
R=1
l=800u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 140 -110 0 0 {name=R4
w=4u
R=1
l=950u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 540 -110 0 0 {name=R5
w=4u
R=1
l=950u*rr
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {MP.sym} 640 -700 0 0 {name=XMP6 model=PMOS w=20u l=1u m=42 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
