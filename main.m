function main

global NODES;global ELEMENTS,global COMPONENTS;global NODES_TRIA3;
global DOF_NODE;global DOF_TOTAL;global DOF_TRIA3;global THICKNESS;
global YOUNG;global POISSON;global x; global y; global connectivity;

init_fem()

make_D()
make_B()
make_Ke()
make_K()
set_BC()
doSolve()
make_reaction()
make_strain_element()
make_stress_element()

end