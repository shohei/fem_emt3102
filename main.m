function main

[NODES,ELEMENTS,COMPONENTS,NODES_TRIA3,...
    DOF_NODE,DOF_TOTAL,DOF_TRIA3,THICKNESS,...
    YOUNG,POISSON,x,y,cnnc] = init_fem();
D = make_D(COMPONENTS,YOUNG,POISSON);
B = make_B(ELEMENTS,cnnc,x,y);
B
make_Ke()
make_K()
set_BC()
doSolve()
make_reaction()
make_strain_element()
make_stress_element()

end