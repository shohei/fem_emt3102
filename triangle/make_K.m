function K = make_K(Ke,ELEMENTS,DOF_TRIA3,DOF_NODE,cnnc,NODES)

K = zeros(DOF_NODE*NODES);
for e = 1:ELEMENTS
    Ke_ = Ke(:,:,e);
    for c=1:DOF_TRIA3
       for r=1:DOF_TRIA3
            er = floor((r+1)/DOF_NODE);
            nr = cnnc(e,er);
            mr = mod(r,DOF_NODE);
            rt = nr*DOF_NODE-mr;
%%% one liner
%           rt = cnnc(e,floor((r+1)/DOF_NODE))*DOF_NODE-mod(r,DOF_NODE); 


            ec = floor((c+1)/DOF_NODE);
            nc = cnnc(e,ec);
            mc = mod(c,DOF_NODE);
            ct = nc*DOF_NODE-mc;           
%%% one liner
%           ct = cnnc(e,floor((c+1)/DOF_NODE))*DOF_NODE-mod(c,DOF_NODE); 
          
           K(rt,ct) = K(rt,ct)+Ke_(r,c);
       end
    end
end

end