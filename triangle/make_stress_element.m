function stress_element=make_stress_element(ELEMENTS, COMPONENTS, D, strain_element)

stress_element = zeros(ELEMENTS, COMPONENTS);
for e=1:ELEMENTS
    for r=1:COMPONENTS
        stress_element(e,r) = 0;
        for c=1:COMPONENTS
            stress_element(e,r) = stress_element(e,r) ...
                + D(r,c) * strain_element(e,c);
        end
    end
end

end