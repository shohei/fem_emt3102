clear all; close all; clc;
[NODES,ELEMENTS,COMPONENTS,NODES_TRIA3,...
    DOF_NODE,DOF_TOTAL,DOF_TRIA3,THICKNESS,...
    YOUNG,POISSON,x,y,cnnc,SCALE] = init_fem();
D=make_D(COMPONENTS,YOUNG,POISSON);
[B,S] = make_B(ELEMENTS,COMPONENTS,DOF_TRIA3,cnnc,x,y);
Ke=make_Ke(B,D,ELEMENTS,DOF_TRIA3,THICKNESS,S);
K=make_K(Ke,ELEMENTS,DOF_TRIA3,DOF_NODE,cnnc,NODES);
[Kc,F,U,Um]=set_BC(DOF_TOTAL,K);
U2=Kc\F;
postprocess(x,y,U2,SCALE);
Fr=make_reaction(K,U2,DOF_TOTAL);
strain_element=make_strain_element(ELEMENTS,NODES_TRIA3,...
                                   DOF_TRIA3,COMPONENTS,B,cnnc,U2);
stress_element= make_stress_element(ELEMENTS,COMPONENTS,D,strain_element);
[u_theory,u_fem]=validate_result(YOUNG,THICKNESS,F,U2);
%%OUTPUT OF RESULTS%%%
fprintf('[Displacement (mm)]\n');
U2
fprintf('[Reaction force (N)]\n');
Fr
fprintf('[Strain for the elements]\n');
strain_element
fprintf('[Stress for the elements (MPa)]\n');
stress_element
fprintf('[Order estimation]\n');
fprintf('Theory: %.4fmm, FEM: %.4fmm\n',u_theory,u_fem);