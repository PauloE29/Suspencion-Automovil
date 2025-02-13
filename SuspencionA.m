% PAULO SERGIO ESPARZA PONCE   220434023   INRO   %

function dx=SuspencionA(t,x,z_type)

%-------------------------Definicion de los parametros----------------%

m1 = 290;     % kg
m2 = 59;      % kg
b1 = 1000;    % Ns/m
k1 = 16182;   % N/m
k2 = 19000;   % N/m
f = 0;        % N

%z1 = 0.05*sin(0.5*pi*t);
%z2 = 0.05*sin(20*pi*t);

 if z_type == 1
        z = 0.05 * sin(0.5 * pi * t);  % z1(t)
    else
        z = 0.05 * sin(20 * pi * t);   % z2(t)
  end
%-------------------------------------------------------------------------%

%-----------Definicion de las derivadas  y dinamica del sistema-----------%



x1 = x(1);  % Desplazamiento de la carrocería
x2 = x(2);  % Desplazamiento de la rueda
x3 = x(3);  % Velocidad de la carrocería
x4 = x(4);  % Velocidad de la rueda

dx = zeros(4,1);

dx(1) = x3;  
dx(2) = x4;  
dx(3) = (1/m1) * (f + b1 * (x4 - x3) - k1 * x1 + k1 * x2);
dx(4) = (1/m2) * (-f - b1 * (x4 - x3) + k1 * x1 - (k1 + k2) * x2 + k2 * z);

%-------------------------------------------------------------------------%