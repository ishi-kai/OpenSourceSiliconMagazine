v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 70 -60 70 -40 {lab=Rplus}
N 70 20 70 40 {lab=Rminus}
C {IP62LIB/RS.sym} 70 -40 0 0 {name=R0
w=4e-6
R=1
l=100e-6
model=F_RS
spiceprefix=X
tc1=0
tc2=0}
C {devices/iopin.sym} 70 -60 0 0 {name=p1 lab=Rplus}
C {devices/iopin.sym} 70 40 0 0 {name=p2 lab=Rminus}
