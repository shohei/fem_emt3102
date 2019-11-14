function K = make_K(Ke,ELEMENTS,DOF_TRIA3,DOF_NODE,cnnc,NODES)

K = 
for e = 1:ELEMENTS
    Ke_ = 
    for c=1:DOF_TRIA3
       for r=1:DOF_TRIA3
            er = 
            nr = 
            mr = 
            rt = 

            ec = 
            nc = 
            mc = 
            ct = 
          
           K(rt,ct) = 
       end
    end
end

end