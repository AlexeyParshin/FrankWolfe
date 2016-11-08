function res = linZ(x,xk)
res = Z(xk) + gradZ(xk)*(x - xk)';
end