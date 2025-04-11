function [Kc,F,U,Um] =set_BC(DOF_TOTAL,K)

U = zeros(DOF_TOTAL,1);
F = zeros(DOF_TOTAL,1);
Um = zeros(DOF_TOTAL,1);

U(1) = 0;U(2) = 0;U(3) = 0;U(4) = 0;U(5) = 0;U(6) = 0;
U(7) = 0;U(8) = 0;U(9) = 0;U(10) = 0;U(11) = 0;U(12) = 0;

Fmax = -100;%N
F(1) = 0;F(2) = 0;F(3) = 0;F(4) = 0;F(5) = 0;F(6) = 0;
F(7) = 0;F(8) = Fmax;F(9) = 0;F(10) = 0;F(11) = 0;F(12) = 0;

Um(1) = true;Um(2) = true;Um(3) = false;Um(4) = false;Um(5) = false;Um(6) = false;
Um(7) = false;Um(8) = false;Um(9) = false;Um(10) = false;Um(11) = true;Um(12) = false;

%Kc = zeros(size(K));
Kc = K;

for r=1:DOF_TOTAL
 if Um(r) == true
     for rr=1:DOF_TOTAL
         if rr ~= r
             F(rr) = F(rr) - Kc(rr,r) * U(r);
         end
     end
     
     for rr=1:DOF_TOTAL
         Kc(rr,r) = 0;
     end

     for cc=1:DOF_TOTAL
         Kc(r,cc) = 0;
     end

     Kc(r,r) = 1;
     F(r) = U(r);
 end
end


end