[NODES,ELEMENTS,COMPONENTS,NODES_TRIA3,...
    DOF_NODE,DOF_TOTAL,DOF_TRIA3,THICKNESS,...
    YOUNG,POISSON,x,y,cnnc] = init_fem();
D = make_D(COMPONENTS,YOUNG,POISSON);
[B,S] = make_B(ELEMENTS,cnnc,x,y);
Ke=make_Ke(B,D,ELEMENTS,DOF_TRIA3,THICKNESS,S);
K=make_K(Ke,ELEMENTS,DOF_TRIA3,DOF_NODE,cnnc,NODES);
[Kc,F,U,Um]=set_BC(DOF_TOTAL,K);
U2=Kc\F;
U2
%Fr=make_reaction(K,U,DOF_TOTAL)
%strain_element=make_strain_element(ELEMENTS,NODES_TRIA3,DOF_TRIA3,COMPONENTS,B,cnnc,U);
%make_stress_element();