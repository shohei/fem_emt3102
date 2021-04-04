function postprocess(x,y,U2)

plot(x,y,'bo');hold on;
plot(x,y,'b-');
xlim([-0.5,2.5]);ylim([-0.5,1.5]);

n=length(U2);
ux=[];uy=[];
for idx=1:n/2
    ux=[ux U2(2*idx-1)];
    uy=[uy U2(2*idx)];
end

plot(x+ux*50,y+uy*50,'ro');
plot(x+ux*50,y+uy*50,'r-');
title('FEM simulation of 2D problem (displacement is displayed x10)');

end