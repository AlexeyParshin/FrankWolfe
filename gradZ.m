function res = gradZ(xk)
N = 2;
delta = 10.^-3;
for i = 1:N
    dxk = xk;
    dxk(i) = xk(i) + delta;
    res(i) = (Z(dxk)- Z(xk))/delta;
end

end

