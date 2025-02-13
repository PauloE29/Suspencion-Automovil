% Función que resuelve numericamente el sistema %
%[t,x] = ode45(@SuspencionA, [0 10], [0 0 0 0]); 
[t1, X1] = ode45(@(t, x) SuspencionA(t, x, 1), [0 10], [0 0 0 0]);
figure(1)
plot(t1,X1);

[t2, X2] = ode45(@(t, x) SuspencionA(t, x, 2), [0 10], [0 0 0 0]);

figure(2)
plot(t2,X2);