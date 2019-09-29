function K = make_K(Ke,ELEMENTS,DOF_TRIA3,DOF_NODE,cnnc,NODES)

K = zeros(DOF_NODE*NODES);
for e = 1:ELEMENTS
    Ke_ = Ke(:,:,e);
    for c=1:DOF_TRIA3
       for r=1:DOF_TRIA3
           er = floor((r+1)/DOF_NODE);
           nr = cnnc(1,er);
           mr = mod(r,DOF_NODE);
           rt = nr*DOF_NODE-mr;

           ec = floor((c+1)/DOF_NODE);
           nc = cnnc(1,ec);
           mc = mod(c,DOF_NODE);
           ct = nc*DOF_NODE-mc;           
           
           K(rt,ct) = Ke(r,c);
       end
    end
end

end