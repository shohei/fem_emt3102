function postprocess(x,y,U2,SCALE)

plot(x/1000,y/1000,'bo');hold on;
plot(x/1000,y/1000,'b-');
xlim([-0.5,2.5]);ylim([-0.5,1.5]);

n=length(U2);
ux=[];uy=[];
for idx=1:n/2
    ux=[ux U2(2*idx-1)];
    uy=[uy U2(2*idx)];
end

plot(x/1000+ux/1000*SCALE,y/1000+uy/1000*SCALE,'ro');
plot(x/1000+ux/1000*SCALE,y/1000+uy/1000*SCALE,'r-');
xlabel('length[m]');
ylabel('length[m]');
title(sprintf('FEM simulation for 2D problem (x%d scale)',SCALE/1000));

end