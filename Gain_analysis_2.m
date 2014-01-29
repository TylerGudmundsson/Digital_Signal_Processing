function LPF_RC_TransferFunction
R= 100000;
C= .000000010;
f=1:1000000;
Hjw= ((i*2*pi*f*R*C).^2+2*(i*2*pi*f*R*C))./4+(8*pi*2*f*R*C).^2;
Magdb=20*log10(abs(Hjw));
Phase=phase(Hjw);
figure(1)
semilogx(f,Magdb)
title('magnitude in log scale')
xlabel('freq in hz')
ylabel('v0/vi in dB')
figure(2)
semilogx(f,Phase)
title('phase in radians')
b=1;