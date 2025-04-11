function postprocess(x,y,U2,SCALE)

plot(x,y,'bo');hold on;
plot(x,y,'b-');
% xlim([-0.5,2.5]);ylim([-0.5,1.5]);
xlim([-500,2500]);ylim([-500,1500]);

n=length(U2);
ux=[];uy=[];
for idx=1:n/2
    ux=[ux U2(2*idx-1)];
    uy=[uy U2(2*idx)];
end

plot(x+ux*SCALE,y+uy*SCALE,'ro');
plot(x+ux*SCALE,y+uy*SCALE,'r-');
title(sprintf('FEM simulation for 2D problem (x%d scale)',SCALE));

end