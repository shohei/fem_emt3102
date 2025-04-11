function [NODES,ELEMENTS,COMPONENTS,NODES_TRIA3,...
    DOF_NODE,DOF_TOTAL,DOF_TRIA3,THICKNESS,YOUNG,POISSON,x,y,cnnc,SCALE] = init_fem()
NODES=6;
ELEMENTS=4;
COMPONENTS=3;
NODES_TRIA3 = 3;
DOF_NODE=2;
DOF_TOTAL=DOF_NODE*NODES;
DOF_TRIA3 = DOF_NODE*NODES_TRIA3;
THICKNESS =  1;
YOUNG = 200000;%MPa
POISSON = 0.3;
SCALE=50000;

x = [];%node x coordinate
y = [];%node y coordinate
cnnc = zeros(ELEMENTS,NODES_TRIA3); %connectivity

cnnc(1,1)=1;cnnc(1,2)=2;cnnc(1,3)=5;
cnnc(2,1)=2;cnnc(2,2)=3;cnnc(2,3)=4;
cnnc(3,1)=2;cnnc(3,2)=4;cnnc(3,3)=5;
cnnc(4,1)=1;cnnc(4,2)=5;cnnc(4,3)=6;

k=1000;

x(1)=0;y(1)=0;
x(2)=1*k;y(2)=0;
x(3)=2*k;y(3)=0;
x(4)=2*k;y(4)=1*k;
x(5)=1*k;y(5)=1*k;
x(6)=0;y(6)=1*k;

end