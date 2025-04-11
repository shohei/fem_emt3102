% analytical solution
function [u_theory,u_fem]=validate_result(YOUNG,THICKNESS,F,U2)
    h = 1;%height of beam
    L = 2;%length of beam
    I = 1/12*THICKNESS*h^3;%moment of inertia of area
    W = max(abs(F));%Load applied at the end
    E = YOUNG;%Young's modulus
    u_theory = W*L^3/(3*E*I);
    u_fem = max(abs(U2));
end
