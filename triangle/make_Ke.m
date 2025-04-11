function Ke=make_Ke(B,D,ELEMENTS,DOF_TRIA3,THICKNESS,S)

Ke = zeros(DOF_TRIA3,DOF_TRIA3,ELEMENTS);

for e=1:ELEMENTS    
 Ke(:,:,e) = THICKNESS*S*B(:,:,e)'*D*B(:,:,e);
end

end