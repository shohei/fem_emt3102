function main

[NODES,ELEMENTS,COMPONENTS,NODES_TRIA3,...
    DOF_NODE,DOF_TOTAL,DOF_TRIA3,THICKNESS,...
    YOUNG,POISSON,x,y,cnnc] = init_fem();
D = make_D(COMPONENTS,YOUNG,POISSON);
[B,S] = make_B(ELEMENTS,cnnc,x,y);
Ke=make_Ke(B,D,ELEMENTS,DOF_TRIA3,THICKNESS,S);
K=make_K(Ke,ELEMENTS,DOF_TRIA3,DOF_NODE,cnnc,NODES);
[Kc,F,U,Um]=set_BC(DOF_TOTAL,K);
U=Kc\F;
U
%doSolve();A
%make_reaction();
%make_strain_element();
%make_stress_element();

end