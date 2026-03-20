v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 5 280 -120 280 -60 290 -80 270 -80 280 -60 {}
P 4 5 460 -120 460 -60 470 -80 450 -80 460 -60 {}
P 4 5 640 -220 640 -160 650 -180 630 -180 640 -160 {}
P 4 5 120 -220 120 -160 130 -180 110 -180 120 -160 {}
T {Iptat1} 290 -110 0 0 0.25 0.25 {}
T {Iptat2} 420 -110 0 0 0.25 0.25 {}
T {x8} 550 -100 0 0 0.25 0.25 {}
T {Ictat2} 650 -210 0 0 0.25 0.25 {}
T {Ictat1} 80 -210 0 0 0.25 0.25 {}
N 520 -880 520 -850 {lab=VDD}
N 240 -880 240 -850 {lab=VDD}
N 520 -820 540 -820 {lab=VDD}
N 540 -880 540 -820 {lab=VDD}
N 520 -880 540 -880 {lab=VDD}
N 220 -820 240 -820 {lab=VDD}
N 220 -880 220 -820 {lab=VDD}
N 280 -820 400 -820 {lab=#net1}
N 240 -310 240 -260 {lab=V1}
N 520 -310 520 -260 {lab=V2}
N 520 -340 540 -340 {lab=VSS}
N 540 -340 540 -300 {lab=VSS}
N 220 -340 240 -340 {lab=VSS}
N 220 -340 220 -300 {lab=VSS}
N 280 -340 400 -340 {lab=#net2}
N 300 -520 300 -340 {lab=#net2}
N 240 -520 300 -520 {lab=#net2}
N 460 -820 460 -780 {lab=#net1}
N 460 -780 460 -760 {lab=#net1}
N 460 -640 520 -640 {lab=#net1}
N 520 -260 520 -210 {lab=V2}
N 520 -150 520 -110 {lab=#net3}
N 240 -260 240 -110 {lab=V1}
N 520 -50 520 -20 {lab=VSS}
N 240 -50 240 -20 {lab=VSS}
N 520 -640 600 -640 {lab=#net1}
N 600 -820 600 -640 {lab=#net1}
N 600 -820 640 -820 {lab=#net1}
N 540 -880 700 -880 {lab=VDD}
N 700 -880 700 -820 {lab=VDD}
N 680 -820 700 -820 {lab=VDD}
N 680 -880 680 -850 {lab=VDD}
N 680 -670 680 -600 {lab=IOUT}
N 240 -790 240 -730 {lab=#net4}
N 520 -790 520 -730 {lab=#net5}
N 280 -700 400 -700 {lab=#net6}
N 240 -430 240 -370 {lab=#net7}
N 520 -430 520 -370 {lab=#net8}
N 520 -460 540 -460 {lab=VSS}
N 280 -460 400 -460 {lab=#net9}
N 220 -460 240 -460 {lab=VSS}
N 520 -670 520 -610 {lab=#net1}
N 520 -700 540 -700 {lab=VDD}
N 220 -700 240 -700 {lab=VDD}
N 440 -700 440 -520 {lab=#net6}
N 440 -520 520 -520 {lab=#net6}
N 320 -620 320 -460 {lab=#net9}
N 240 -620 320 -620 {lab=#net9}
N 540 -740 540 -700 {lab=VDD}
N 220 -740 220 -700 {lab=VDD}
N 220 -460 220 -420 {lab=VSS}
N 540 -460 540 -420 {lab=VSS}
N 220 -820 220 -740 {lab=VDD}
N 540 -820 540 -740 {lab=VDD}
N 220 -420 220 -340 {lab=VSS}
N 540 -420 540 -340 {lab=VSS}
N 220 -300 220 -20 {lab=VSS}
N 540 -300 540 -20 {lab=VSS}
N 520 -20 540 -20 {lab=VSS}
N 240 -670 240 -610 {lab=#net9}
N 240 -550 240 -490 {lab=#net2}
N 520 -550 520 -490 {lab=#net6}
N 460 -760 460 -640 {lab=#net1}
N 240 -20 520 -20 {lab=VSS}
N 240 -880 520 -880 {lab=VDD}
N 140 -240 240 -240 {lab=V1}
N 140 -240 140 -110 {lab=V1}
N 140 -50 140 -20 {lab=VSS}
N 520 -240 620 -240 {lab=V2}
N 620 -240 620 -110 {lab=V2}
N 620 -50 620 -20 {lab=VSS}
N 540 -20 620 -20 {lab=VSS}
N 60 -880 240 -880 {lab=VDD}
N 60 -20 240 -20 {lab=VSS}
N 400 -820 480 -820 {lab=#net1}
N 400 -700 480 -700 {lab=#net6}
N 400 -460 480 -460 {lab=#net9}
N 400 -340 480 -340 {lab=#net2}
N 320 -560 350 -560 {lab=#net9}
N 380 -600 440 -600 {lab=#net6}
N 410 -560 440 -560 {lab=#net6}
N 380 -560 380 -20 {lab=VSS}
N 620 -700 640 -700 {lab=#net6}
N 620 -700 620 -520 {lab=#net6}
N 520 -520 620 -520 {lab=#net6}
N 680 -790 680 -730 {lab=#net10}
N 680 -700 700 -700 {lab=VDD}
N 700 -820 700 -700 {lab=VDD}
C {MP.sym} 280 -820 0 1 {name=XMP1 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 280 -340 0 1 {name=XMN1 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 480 -820 0 0 {name=XMP2 model=PMOS w=20u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 480 -340 0 0 {name=XMN2 model=NMOS w=10u l=4u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {devices/iopin.sym} 60 -880 0 1 {name=p1 lab=VDD}
C {DP.sym} 240 -50 2 0 {name=D1 model=DP m=1}
C {DP.sym} 520 -50 2 0 {name=D2 model=DP m=8}
C {RS.sym} 520 -210 0 0 {name=R1
w=4u
R=1
l=175u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 60 -20 0 1 {name=p2 lab=VSS}
C {MP.sym} 640 -820 0 0 {name=XMP3 model=PMOS w=20u l=4u m=42 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0r}
C {devices/opin.sym} 680 -600 1 0 {name=p3 lab=IOUT}
C {devices/lab_wire.sym} 240 -260 0 0 {name=p4 sig_type=std_logic lab=V1}
C {devices/lab_wire.sym} 520 -260 0 1 {name=p5 sig_type=std_logic lab=V2}
C {MP.sym} 280 -700 0 1 {name=XMP4 model=PMOS w=20u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 480 -700 0 0 {name=XMP5 model=PMOS w=20u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 280 -460 0 1 {name=XMN3 model=NMOS w=10u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MN.sym} 480 -460 0 0 {name=XMN4 model=NMOS w=10u l=1u m=4 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {RS.sym} 240 -610 0 0 {name=R2
w=4u
R=1
l=800u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 520 -610 0 0 {name=R3
w=4u
R=1
l=800u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 140 -110 0 0 {name=R4
w=4u
R=1
l=950u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {RS.sym} 620 -110 0 0 {name=R5
w=4u
R=1
l=950u
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {MN.sym} 380 -600 1 0 {name=XMN5 model=NMOS w=10u l=1u m=10 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0}
C {MP.sym} 640 -700 0 0 {name=XMP6 model=PMOS w=20u l=1u m=42 as=0 ad=0 ps=0 pd=0 nrd=0 nrs=0r}
