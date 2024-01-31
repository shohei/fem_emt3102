function D=make_D(COMPONENTS,YOUNG,POISSON)

 D = zeros(COMPONENTS,COMPONENTS);
 coef = YOUNG/(1-2*POISSON)/(1+POISSON);
 D(1,1) = coef*(1-POISSON);
 D(1,2) = coef*POISSON;
 D(1,3) = 0;
 D(2,1) = coef*POISSON;
 D(2,2) = coef*(1-POISSON);
 D(2,3) = 0;
 D(3,1) = 0;
 D(3,2) = 0;
 D(3,3) = coef*(1-2*POISSON)/2;
end