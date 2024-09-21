% Función ODE45 que resuelve numéricamente
[t,x]=ode45(@rlc,[0 0.001],[0 0]);

% Gráfica del sistema:
figure(1)
plot(t,x(:,1), "k-");

function dx= rlc(t, x)

% Parámetros:
R = 100;% Impedancia
L = 4*(10^-3);% Inductancia
C = 0.1*(10^-6);% Capacitancia
V = 9;

% Vectores:
dx = zeros(2,1);

% Dinámica del sistema:
dx(1) = x(2);
dx(2) = (1/L)*(V - R*x(2) - x(1)/C);
end