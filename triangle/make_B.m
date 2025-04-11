function [B,S] = make_B(ELEMENTS,COMPONENTS,DOF_TRIA3,cnnc,x,y)

B = zeros(COMPONENTS,DOF_TRIA3,ELEMENTS);

for e=1:ELEMENTS
 x1 = x(cnnc(e,1)); y1 = y(cnnc(e,1));
 x2 = x(cnnc(e,2)); y2 = y(cnnc(e,2));
 x3 = x(cnnc(e,3)); y3 = y(cnnc(e,3));
 S = (x1*y2-x1*y3+x2*y3-x2*y1+x3*y1-x3*y2)/2;
 coef = 1/S/2;
  
 B(1,1,e) = coef*(y2-y3);
 B(1,2,e) = 0;
 B(1,3,e) = coef*(y3-y1);
 B(1,4,e) = 0;
 B(1,5,e) = coef*(y1-y2);
 B(1,6,e) = 0;
 B(2,1,e) = 0;
 B(2,2,e) = coef*(x3-x2);
 B(2,3,e) = 0;
 B(2,4,e) = coef*(x1-x3);
 B(2,5,e) = 0;
 B(2,6,e) = coef*(x2-x1);
 B(3,1,e) = B(2,2,e);
 B(3,2,e) = B(1,1,e);
 B(3,3,e) = B(2,4,e);
 B(3,4,e) = B(1,3,e);
 B(3,5,e) = B(2,6,e);
 B(3,6,e) = B(1,5,e);

end


end