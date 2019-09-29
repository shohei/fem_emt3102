function B=make_B(ELEMENTS,cnnc,x,y)

for e=1:ELEMENTS
 x1 = x(cnnc(e,1)); y1 = y(cnnc(e,1));
 x2 = x(cnnc(e,2)); y2 = y(cnnc(e,2));
 x3 = x(cnnc(e,3)); y3 = y(cnnc(e,3));
 S = (x1*y2-x1*y3+x2*y3-x2*y1+x3*y1-x3*y2)/2;
 coef = 1/S/2;
 
 B(e,1,1) = coef*(y2-y3);
 B(e,1,2) = 0;
 B(e,1,3) = coef*(y3-y1);
 B(e,1,4) = 0;
 B(e,1,5) = coef*(y1-y2);
 B(e,1,6) = 0;
 B(e,2,1) = 0;
 B(e,2,2) = coef*(x3-x2);
 B(e,2,3) = 0;
 B(e,2,4) = coef*(x1-x3);
 B(e,2,5) = 0;
 B(e,2,6) = coef*(x2-x1);
 B(e,3,1) = B(e,2,2);
 B(e,3,2) = B(e,1,1);
 B(e,3,3) = B(e,2,4);
 B(e,3,4) = B(e,1,3);
 B(e,3,5) = B(e,2,6);
 B(e,3,6) = B(e,1,5);

end


end