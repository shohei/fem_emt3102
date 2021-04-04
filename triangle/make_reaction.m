function Fr=make_reaction(K,U,DOF_TOTAL)

for r=1:DOF_TOTAL
    Fr(r)=0;
    for c=1:DOF_TOTAL
        Fr(r) = Fr(r) + K(r,c) + U(c);
    end    
end

end