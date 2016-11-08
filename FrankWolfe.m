function FrankWolfe()
LBD = 0;
xk = [4/2,4/2];

while(true)
 yk = fmincon(@linZ,[0 0],[],[],[1 1],4,[0 0],[],[],[],xk);
 pk = yk - xk;
 LBD = max(LBD,linZ(yk,xk));
 l = fminbnd(@forLinprog,0,1,[],xk,pk);
 if((Z(xk + l*pk) - LBD)/LBD < 10.^-3)
     break;
 else
     xk = xk + l*pk;
 end
end

disp(xk)
disp(Z(xk))

end