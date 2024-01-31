function [NODES,ELEMENTS,COMPONENTS,NODES_TRIA3,...
    DOF_NODE,DOF_TOTAL,DOF_QUAD4,THICKNESS,YOUNG,POISSON,] = init_fem()
NODES=55;
ELEMENTS=40;
COMPONENTS=3;
NODES_TRIA3 = 3;
DOF_NODE=2;
DOF_TOTAL=DOF_NODE*NODES;
INTEGRAL_POINTS4=4;
NODES_QUAD4=4;
DOF_QUAD4 = DOF_NODE*NODES_QUAD4;
THICKNESS =  0.01;
YOUNG = 210000;
POISSON = 0.3;

ip_xi = zeros(INTEGRAL_POINTS4,1); % Integral coordinate xi
ip_et = zeros(INTEGRAL_POINTS4,1); % Integral coordinate eta
ip_wi = zeros(INTEGRAL_POINTS4,1); % Weight at integral point, xi direction 
ip_wj = zeros(INTEGRAL_POINTS4,1); % Weight at integral point, eta direction

ip_xi(1)=-1/sqrt(3); ip_et(1)=-1/sqrt(3);
ip_xi(2)= 1/sqrt(3); ip_et(2)=-1/sqrt(3);
ip_xi(3)=-1/sqrt(3); ip_et(3)= 1/sqrt(3);
ip_xi(4)= 1/sqrt(3); ip_et(4)= 1/sqrt(3);

ip_wi(1)=1; ip_wj(1)=1;
ip_wi(2)=1; ip_wj(2)=1;
ip_wi(3)=1; ip_wj(3)=1;
ip_wi(4)=1; ip_wj(4)=1;

D = zeros(COMPONENTS,COMPONENTS);
B = zeros(INTEGRAL_POINTS4,COMPONENTS,DOF_QUAD4,ELEMENTS,);
detJ = zeros(INTEGRAL_POINTS4,ELEMENTS);
Ke = zeros(DOF_QUAD4,DOF_QUAD4,ELEMENTS);
strain_ip = zeros(INTEGRAL_POINTS4,COMPONENTS,ELEMENTS);
stress_ip = zeros(INTEGRAL_POINTS4,COMPONENTS,ELEMENTS);

x = zeros(NODES,1);
y = zeros(NODES,1);
cnnc = zeros(ELEMENTS,NODES_QUAD4);
K = zeros(DOF_TOTAL,DOF_TOTAL);
U = zeros(DOF_TOTAL,1);
F = zeros(DOF_TOTAL,1);
Um = zeros(DOF_TOTAL,1);
Kc = zeros(DOF_TOTAL,DOF_TOTAL);
Fr = zeros(DOF_TOTAL);


end