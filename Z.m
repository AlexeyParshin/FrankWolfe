function result = Z(x)
N = 2;
a = [1,2];
c = [3,3];
result = 0;

for i = 1 : N
    f = @(u)(a(i) + (u/c(i)).^3);
    result = result + quad(f,0,x(i));
end

end