clc; % Clear display
VDD = 1.2; % V
SR = 10E+6; % V/sec
fu = 5E6; % Hz
Cload = 25E-12; % F
Vthp = -0.25710; % V
Vthn = 0.35542; % V
kp = 6.4448E-5; % A/V^2
kn = 9.9336E-5; % A/V^2
L = 150; % nm
maxVin=0.8; % V
minVin=0.5; % V

id5=SR*Cload; % A
printf("id5 = %e A\n",id5)

S3 = id5/(kp*(VDD - maxVin + Vthn - abs(Vthp))^2);
gmn=2*pi*fu*Cload;
S1=gmn^2/(kn*id5);
vds5sat=minVin-sqrt(id5/(kn*S1))-Vthn;
S5=2*id5/(kn*vds5sat^2);

printf("S1 = %e\t W1 = %e nm\n", S1, S1*L);
printf("S2 = %e\t W2 = %e nm\n", S1, S1*L);
printf("S3 = %e\t W3 = %e nm\n", S3, S3*L);
printf("S4 = %e\t W4 = %e nm\n", S3, S3*L);
printf("S5 = %e\t W5 = %e nm\n", S5, S5*L);
