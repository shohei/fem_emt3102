% work in progress!

function strain_element=make_strain_element(ELEMENTS,NODES_TRIA3,...
                                            DOF_TRIA3,COMPONENTS,B,cnnc,U)
 Ue = zeros(DOF_TRIA3,1);
 strain_element= zeros(ELEMENTS,COMPONENTS);

for e=1:ELEMENTS
    for n=1:NODES_TRIA3
        Ue(n*2-1) = U(cnnc(e,n)*2-1);
        Ue(n*2) = U(cnnc(e,n)*2);        
    end

    for r=1:COMPONENTS
        strain_element(e,r) = 0;
        for c=1:DOF_TRIA3
           strain_element(e,r) = strain_element(e,r) + B(r,c,e)*Ue(c); 
        end
    end
end

end

