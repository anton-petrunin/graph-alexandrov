input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[oneside]{book}
\usepackage{../quad}
\begin{document}
etex

filenametemplate "%j-%1c.eps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";

beginfig(5) 
save u;
u:=.5cm;

z.o=origin;
z.a=(1,0)*u;
z.b=z.a rotated 72;
z.c=z.a rotated 72 rotated 72;
z.d=z.a rotated 72 rotated 72 rotated 72;
z.e=z.a rotated 72 rotated 72 rotated 72 rotated 72;

draw z.o--2*z.a;
draw z.o--z.b;
draw z.o--z.c;
draw z.o--z.d;
draw z.o--z.e;

dOt z.o,z.a,2*z.a,z.b,z.c,z.d,z.e;

endfig;

beginfig(10) 
save u;
u:=1cm;

z.a1=origin;
z.a2=(2/sqrt(3),0)*u;
z.a3=z.a2 rotated 60;
z.a4=(z.a1+z.a2+z.a3)/3;

z.shift=(2,0)*u;

z.b1=z.a1+z.shift;
z.b2=z.b1+(1,0)*u;
z.b4=z.b1+(0,1)*u;
z.b3=z.b2+z.b4-z.b1;

draw z.a1--z.a4;
draw z.a2--z.a4;
draw z.a3--z.a4;

draw z.b1--z.b2--z.b3--z.b4--cycle;

dOt z.a1,z.a2,z.a3,z.a4,z.b1,z.b2,z.b3,z.b4;

label.ulft (btex $T_3$ etex,  z.a4);
label (btex $C_4$ etex,  .5[z.b1,z.b3]);

endfig;

beginfig(15)
save u,p;
u:=.5cm;
path p[];

z11=(1,-.5)*u;
z12=(1,.5)*u;
z21=(2,-.5)*u;
z22=(2,.5)*u;
z3=(3,0)*u;
z4=(4,0)*u;
z5=(5,0)*u;
z61=(6,-.5)*u;
z62=(6,.5)*u;
z7=(7,0)*u;
z71=(7,-.5)*u;
z72=(7,.5)*u;
z41=(4,-.5)*u;
z42=(4,.5)*u;
z51=(5,-.5)*u;
z52=(5,.5)*u;

draw z11--z12--z21--z22--z11--z21--z3--z4--z5--z61--z62--z7--z61;
draw z12--z22--z3;
draw z5--z62;

z.shift1=(8,0)*u;

draw (z11--z12--z21--z22--z11--z21--z3--z41--z42--z51--z52--z42--z3) shifted z.shift1;
draw (z12--z22--z3) shifted z.shift1;
draw (z51--z41--z52) shifted z.shift1;

z.shift2=(14,0)*u;

z111=(1,-.5)*u;
z112=(1,.5)*u;
z121=(2,-.5)*u;
z122=(2,.5)*u;
z130=(3,0)*u;

draw (z111--z121--z130--z122--z112--z111--z122--z121--z112) shifted z.shift2;

z211=(1,-.5)*u;
z212=(1,.5)*u;
z220=(2,0)*u;
z231=(3,-.5)*u;
z232=(3,0)*u;
z233=(3,.5)*u;

z.shift3=(19,0)*u;

draw (z211--z212--z220--cycle)  shifted z.shift3;
draw (z220--z231--z233--z220--z232)  shifted z.shift3;
draw (z231{1,0}..{-1,0}z233)  shifted z.shift3;

dOt z11,z12,z21,z22,z11,z21,z3,z4,z5,z61,z62,z7,
z11+z.shift1,z12+z.shift1,z21+z.shift1,z22+z.shift1,z11+z.shift1,z21+z.shift1,z3+z.shift1,z41+z.shift1,z42+z.shift1,z51+z.shift1,z52+z.shift1,
z11+z.shift2,z12+z.shift2,z21+z.shift2,z22+z.shift2,z11+z.shift2,z21+z.shift2,z3+z.shift2,
z211+z.shift3,
z212+z.shift3,
z220+z.shift3,
z231+z.shift3,
z232+z.shift3,
z233+z.shift3;

label.bot (btex $(4,2,2,2,3)$ etex,  z4 +(0,-.5)*u+(0,-5));
label.bot (btex $(4,2,0,2,4)$ etex,  z3 +z.shift1+(0,-.5)*u+(0,-5));
label.bot (btex $(4,2,0,0,0)$ etex,  z21 +z.shift2+(0,-5));
label.bot (btex $(2,2,0,3,3)$ etex,  z220 +z.shift3+(0,-.5)*u+(0,-5));
endfig;

beginfig(20)
save u,p;
u:=.5cm;
path p[];

z11=(1,-.5)*u;
z12=(1,0)*u;
z13=(1,.5)*u;

z21=(2,0)*u;

z31=(3,-.5)*u;
z32=(3,.5)*u;

z41=(4,0)*u;

z51=(5,-.5)*u;
z52=(5,.5)*u;

z61=(6,-.5)*u;
z62=(6,.5)*u;

z71=(7,0)*u;

z81=(8,0)*u;

z91=(9,0)*u;

z101=(10,-.5)*u;
z102=(10,.5)*u;

draw z11--z13;
draw z11{-1,0}..{1,0}z13;

draw z11--z21;
draw z12--z21;
draw z13--z21;

draw z31--z21;
draw z32--z21;

draw z31--z32;

draw z31--z41;
draw z32--z41;

draw z51--z41;
draw z52--z41;

draw z51--z52;

draw z51--z61;
draw z52--z61;
draw z51--z62;
draw z52--z62;

draw z61--z62;

draw z71--z61;
draw z71--z62;

draw z71--z81;

draw z91--z81;

draw z91--z101;
draw z91--z102;

draw z101--z102;

dOt z11,
z12,
z13,
z21,
z31,
z32,
z41,
z51,
z52,
z61,
z62,
z71,
z81,
z91,
z101,
z102;


label.bot (btex $(3,1,2,1,2,2,1,1,1,2)$ etex,  z61+(0,-3)+(-.5,0)*u);
endfig;

beginfig(25) 
save u;
u:=.5cm;

z.u=(0,0)*u;
z.v=(3,0)*u;
z.w=z.v rotated 60;

z.uv=(1.3,-.7)*u;
z.vw=(3,1.2)*u;

z.wwu=(.2,2)*u;
z.wuu=(1.3,.7)*u;


z.shift = (9,0)*u;

draw z.u--z.uv--z.v--z.vw--z.w--z.wwu--z.wuu--cycle;

draw (z.w--z.wwu--z.wuu--z.uv--z.u) shifted z.shift;
draw (z.wuu--z.vw--z.v) shifted z.shift;
draw (z.wwu--z.vw) shifted z.shift;

dOt z.u,z.v,z.w,z.uv,z.vw,z.wwu,z.wuu;
dOt z.u+z.shift,z.v+z.shift,z.w+z.shift,z.uv+z.shift,z.vw+z.shift,z.wwu+z.shift,z.wuu+z.shift;

label.llft (btex $u$ etex,  z.u);
label.lrt (btex $v$ etex,  z.v);
label.top (btex $w$ etex,  z.w);
label.llft (btex $u$ etex,  z.u+z.shift);
label.lrt (btex $v$ etex,  z.v+z.shift);
label.top (btex $w$ etex,  z.w+z.shift);
label.top (btex $o$ etex,  z.wuu+z.shift+(1,0));
endfig;

beginfig(26) 
save u;
u:=.5cm;

z0=origin;
z1=(1,0)*u;
z2=z1 rotated 60;
z3=z1 rotated 120;
z4=z1 rotated 180;

z.shift=(0,-2.5)*u;
z5=z1 rotated 90;

draw z2--z0--z4--z3--z2--z1--z0--z3;

rimmark(z2--z3);

draw (z1--z0--z4) shifted z.shift;
draw (z0--z5) shifted z.shift;

dOt z0,z1,z2,z3,z4,z0+z.shift,z1+z.shift,z5+z.shift,z4+z.shift;

label (btex $\downarrow$ etex,  0.5[z0,z5+z.shift]);

endfig;

beginfig(27) 
save u;
u:=.5cm;

z0=origin;
z1=(1,0)*u;
z2=z1 rotated 60;
z3=z1 rotated 120;
z4=z1 rotated 180;

draw z2--z0--z4--z3--z2--z1--z0--z3;

dOt z0,z1,z2,z3,z4;

label.bot (btex $v$ etex,  z0);
label.lft (btex $p$ etex,  z4);
label.ulft (btex $u$ etex,  z3);
label.urt (btex $w$ etex,  z2);
label.rt (btex $q$ etex,  z1);

endfig;

beginfig(28) 
save u;
u:=.5cm;

z0=origin;
z1=(1,0)*u;
z2=z1 rotated 60;
z3=z1 rotated 120;
z4=z1 rotated 180;

draw z2--z0--z4--z3--z2--z1--z0--z3;


dOt z0,z1,z2,z3,z4;

label.bot (btex $m$ etex,  z0);
label.lft (btex $p$ etex,  z4);
label.ulft (btex $v$ etex,  z3);
label.urt (btex $q$ etex,  z2);
label.rt (btex $w$ etex,  z1);

endfig;

beginfig(29) 
save u;
u:=.5cm;

z2=origin;
z1=(0,1)*u rotated 30;
z0=z1 rotated 60;
z3=z1 rotated -60;
z4=z1 rotated -120;
z5=z3+z4;

draw z1--z0--z2--z1--z3--z2--z4--z3--z5--z4;


dOt z0,z1,z2,z3,z4,z5;

label.llft (btex $p$ etex,  z0);
label.ulft (btex $u$ etex,  z1);
label.top (btex $u'$ etex,  z3);
label.bot (btex $v'$ etex,  z2);
label.lrt (btex $v$ etex,  z4);
label.urt (btex $q$ etex,  z5);

endfig;

beginfig(30) 
save u;
u:=.5cm;

z.a31=(0,-.5)*u;
z.a32=(0,.5)*u;
z.a2=(-1,0)*u;
z.a1=(-2,0)*u;
z.a4=(1,0)*u;
z.a5=(2,0)*u;

draw z.a1--z.a2--z.a31--z.a4--z.a5;
draw z.a2--z.a32--z.a4;
draw z.a31--z.a32;
rimmark(z.a2--z.a31);

z.bb=(6.5,0)*u;

z.b1=(-1.5,0)*u+z.bb;
z.b21=(-.5,-.5)*u+z.bb;
z.b22=(-.5,.5)*u+z.bb;
z.b31=(.5,-.5)*u+z.bb;
z.b32=(.5,.5)*u+z.bb;
z.b4=(1.5,0)*u+z.bb;

draw z.b1--z.b21--z.b31--z.b4--z.b32--z.b22--cycle;
draw z.b21--z.b22--z.b31--z.b32--cycle;
rimmark(z.b22--z.b32);

z.cc=z.bb+ (6.5,0)*u;

z.c11=(-1,-.5)*u+z.cc;
z.c12=(-1,.5)*u+z.cc;
z.c21=(0,-.5)*u+z.cc;
z.c22=(0,.5)*u+z.cc;
z.c31=(1,-.5)*u+z.cc;
z.c32=(1,.5)*u+z.cc;

draw z.c11--z.c22--z.c31--z.c32--z.c21--z.c12;
draw z.c31--z.c21--z.c11--z.c12--z.c22--z.c32;
draw z.c21--z.c22;
rimmark(z.c12--z.c22);

z.shift=(0,-3)*u;

z.aa1=(-1.5,0)*u+z.shift;
z.aa2=(-.5,0)*u+z.shift;
z.aa3=(0,1)*u+z.shift;
z.aa4=(.5,0)*u+z.shift;
z.aa5=(1.5,0)*u+z.shift;

draw z.aa1--z.aa2--z.aa3--z.aa4--z.aa5;
draw z.aa2--z.aa4;
rimmark(z.aa2--z.aa4);

z.bb1=(-1.5,0)*u+z.shift+z.bb;
z.bb2=(-.5,0)*u+z.shift+z.bb;
z.bb3=(0,1)*u+z.shift+z.bb;
z.bb4=(.5,0)*u+z.shift+z.bb;
z.bb5=(1.5,0)*u+z.shift+z.bb;

draw z.bb1--z.bb2--z.bb3--z.bb4--z.bb5;
draw z.bb2--z.bb4;
rimmark(z.bb2--z.bb4);

z.sshift=z.shift+(0,.5)*u;

z.cc11=z.c11+z.sshift;
z.cc21=z.c21+z.sshift;
z.cc22=z.c22+z.sshift;
z.cc31=z.c31+z.sshift;
z.cc32=z.c32+z.sshift;

draw z.cc11--z.cc22--z.cc32;
draw z.cc31--z.cc32;
draw z.cc31--z.cc21--z.cc11--z.cc22;
draw z.cc22--z.cc21--z.cc32;
rimmark(z.cc22--z.cc32);

draw (z.cc11--z.cc21--z.cc31) shifted z.sshift;
draw (z.cc21--z.cc22) shifted z.sshift;

draw (z.cc11--z.cc21--z.cc31) shifted (z.sshift-z.cc);
draw (z.cc21--z.cc22) shifted (z.sshift-z.cc);

draw (z.cc11--z.cc21--z.cc31) shifted (z.sshift-z.cc+z.bb);
draw (z.cc21--z.cc22) shifted (z.sshift-z.cc+z.bb);

label.top (btex \textit{(a)} etex,  z.a32+(0,5));
label.top (btex \textit{(b)} etex,  .5[z.b22,z.b32]+(0,5));
label.top (btex \textit{(c)} etex,  z.c22+(0,5));
label (btex $\downarrow$ etex,  z.a31+(0,-.75*u));
label (btex $\downarrow$ etex,  .5[z.b21,z.b31]+(0,-.75*u));
label (btex $\downarrow$ etex,  z.c21+(0,-.75*u));
label (btex $\downarrow$ etex,  z.a31+(0,-.75*u)+z.sshift);
label (btex $\downarrow$ etex,  .5[z.b21,z.b31]+(0,-.75*u)+z.sshift);
label (btex $\downarrow$ etex,  z.c21+(0,-.75*u)+z.sshift);

dOt z.a31,
z.a32,
z.a2,
z.a1,
z.a4,
z.a5,
z.b1,
z.b21,
z.b22,
z.b31,
z.b32,
z.b4,
z.c11,
z.c12,
z.c21,
z.c22,
z.c31,
z.c32,
z.aa1,
z.aa2,
z.aa3,
z.aa4,
z.aa5,
z.bb1,
z.bb2,
z.bb3,
z.bb4,
z.bb5,
z.cc11,
z.cc21,
z.cc22,
z.cc31,
z.cc32,
z.cc11+z.sshift,
z.cc21+z.sshift,
z.cc21+z.sshift,
z.cc22+z.sshift,
z.cc31+z.sshift,
z.cc11+z.sshift-z.cc+z.bb,
z.cc21+z.sshift-z.cc+z.bb,
z.cc21+z.sshift-z.cc+z.bb,
z.cc22+z.sshift-z.cc+z.bb,
z.cc31+z.sshift-z.cc+z.bb,
z.cc11+z.sshift-z.cc,
z.cc21+z.sshift-z.cc,
z.cc21+z.sshift-z.cc,
z.cc22+z.sshift-z.cc,
z.cc31+z.sshift-z.cc
;

endfig;

beginfig(31) 
save u;
u:=.5cm;

z.a31=(0,-.5)*u;
z.a32=(0,.5)*u;
z.a2=(-1,0)*u;
z.a1=(-2,0)*u;
z.a4=(1,0)*u;
z.a5=(2,0)*u;

draw z.a1--z.a2--z.a31--z.a4--z.a5;
draw z.a2--z.a32--z.a4;
draw z.a31--z.a32;
rimmark(z.a2--z.a31);

z.bb=(6.5,0)*u;

z.b1=(-1.5,0)*u+z.bb;
z.b21=(-.5,-.5)*u+z.bb;
z.b22=(-.5,.5)*u+z.bb;
z.b31=(.5,-.5)*u+z.bb;
z.b32=(.5,.5)*u+z.bb;
z.b4=(1.5,0)*u+z.bb;

draw z.b1--z.b21--z.b31--z.b4--z.b32--z.b22--cycle;
draw z.b21--z.b22--z.b31--z.b32--cycle;
rimmark(z.b22--z.b32);

z.cc=z.bb+ (6.5,0)*u;

z.c11=(-1,-.5)*u+z.cc;
z.c12=(-1,.5)*u+z.cc;
z.c21=(0,-.5)*u+z.cc;
z.c22=(0,.5)*u+z.cc;
z.c31=(1,-.5)*u+z.cc;
z.c32=(1,.5)*u+z.cc;

draw z.c11--z.c22--z.c31--z.c32--z.c21--z.c12;
draw z.c31--z.c21--z.c11--z.c12--z.c22--z.c32;
draw z.c21--z.c22;
rimmark(z.c12--z.c22);

z.shift=(0,-3)*u;

z.aa1=(-1.5,0)*u+z.shift;
z.aa2=(-.5,0)*u+z.shift;
z.aa3=(0,1)*u+z.shift;
z.aa4=(.5,0)*u+z.shift;
z.aa5=(1.5,0)*u+z.shift;

draw z.aa1--z.aa2--z.aa3--z.aa4--z.aa5;
draw z.aa2--z.aa4;
rimmark(z.aa2--z.aa4);

z.bb1=(-1.5,0)*u+z.shift+z.bb;
z.bb2=(-.5,0)*u+z.shift+z.bb;
z.bb3=(0,1)*u+z.shift+z.bb;
z.bb4=(.5,0)*u+z.shift+z.bb;
z.bb5=(1.5,0)*u+z.shift+z.bb;

draw z.bb1--z.bb2--z.bb3--z.bb4--z.bb5;
draw z.bb2--z.bb4;
rimmark(z.bb2--z.bb4);

z.sshift=z.shift+(0,.5)*u;

z.cc11=z.c11+z.sshift;
z.cc21=z.c21+z.sshift;
z.cc22=z.c22+z.sshift;
z.cc31=z.c31+z.sshift;
z.cc32=z.c32+z.sshift;

draw z.cc11--z.cc22--z.cc32;
draw z.cc31--z.cc32;
draw z.cc31--z.cc21--z.cc11--z.cc22;
draw z.cc22--z.cc21--z.cc32;
rimmark(z.cc22--z.cc32);

draw (z.cc11--z.cc21--z.cc31) shifted z.sshift;
draw (z.cc21--z.cc22) shifted z.sshift;

draw (z.cc11--z.cc21--z.cc31) shifted (z.sshift-z.cc);
draw (z.cc21--z.cc22) shifted (z.sshift-z.cc);

draw (z.cc11--z.cc21--z.cc31) shifted (z.sshift-z.cc+z.bb);
draw (z.cc21--z.cc22) shifted (z.sshift-z.cc+z.bb);


label (btex $\downarrow$ etex,  z.a31+(0,-.75*u));
label (btex $\downarrow$ etex,  .5[z.b21,z.b31]+(0,-.75*u));
label (btex $\downarrow$ etex,  z.c21+(0,-.75*u));
label (btex $\downarrow$ etex,  z.a31+(0,-.75*u)+z.sshift);
label (btex $\downarrow$ etex,  .5[z.b21,z.b31]+(0,-.75*u)+z.sshift);
label (btex $\downarrow$ etex,  z.c21+(0,-.75*u)+z.sshift);

dOt z.a31,
z.a32,
z.a2,
z.a1,
z.a4,
z.a5,
z.b1,
z.b21,
z.b22,
z.b31,
z.b32,
z.b4,
z.c11,
z.c12,
z.c21,
z.c22,
z.c31,
z.c32,
z.aa1,
z.aa2,
z.aa3,
z.aa4,
z.aa5,
z.bb1,
z.bb2,
z.bb3,
z.bb4,
z.bb5,
z.cc11,
z.cc21,
z.cc22,
z.cc31,
z.cc32,
z.cc11+z.sshift,
z.cc21+z.sshift,
z.cc21+z.sshift,
z.cc22+z.sshift,
z.cc31+z.sshift,
z.cc11+z.sshift-z.cc+z.bb,
z.cc21+z.sshift-z.cc+z.bb,
z.cc21+z.sshift-z.cc+z.bb,
z.cc22+z.sshift-z.cc+z.bb,
z.cc31+z.sshift-z.cc+z.bb,
z.cc11+z.sshift-z.cc,
z.cc21+z.sshift-z.cc,
z.cc21+z.sshift-z.cc,
z.cc22+z.sshift-z.cc,
z.cc31+z.sshift-z.cc
;

endfig;

beginfig(40) 
save u;
u:=.5cm;

z1=(0,0)*u;
z2=(1,0)*u;
z5=z2 rotated -90;
z3=z5 rotated -60;
z4=z2+z5 rotated 60;
z6=z2+z5;
z7=z5+.7*z5 rotated -20;
z8=z5+.7*z5 rotated 20;
z9=z7+z2;
z10=z8+z2;

draw z3--z1--z2--z4--z6--z2;
draw z1--z5--z6;
draw z7--z5--z8;
draw z9--z6--z10;

dOt z1,z2,z3,z4,z5,z6,z7,z8,z9,z10;
endfig;

beginfig(45) 
save u;
u:=.5cm;

z2=origin;
z3=(1,0)*u;
z1=.8*z3 rotated 60;
z6=z3 rotated -90;
z7=z6+z3;
z4=z6 rotated -45;
z5=z3+z6 rotated 75;
z8=z6+z6 rotated -20;
z9=z7+z6 rotated 10;

draw z4--z2--z3--z5;
draw z8--z6--z2--z1--z3--z7--z9;
draw z6--z7;

dOt z1,z2,z3,z4,z5,z6,z7,z8,z9;
endfig;

end
