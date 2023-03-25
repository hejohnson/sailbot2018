omega = pi; % rad/s
rho = 1000; % kg/m^3
v = 0.5*omega; %m
Cd = 2; % flat plate, perpendicular
A = 0.371/2; % m^2

F_D = 1/2*rho*v^2*Cd*A


thick_disk = 0.012 %m
r_disk = 0.15; %m
vel_disk = omega*r_disk;
vol_resist = 4.066E-8; % ohm*m
AR = vol_resist/thick_disk;
A_coil = 0.1*0.1; % m^2

B = sqrt(F_D*AR/(vel_disk*A_coil))

coil_gap = 0.003;

NI = B*(coil_gap/(4*pi*10^-7));

I = 8;

N = NI/I