function[dy_forward]=forward_deriv_scheme(h,order)


k= -order : order ;

syms w 
g = w + k;

f = sym('f',[1,numel(k)]);

dy_forward = sym(zeros(1,order));

for n=1:order
for i=0:n

dy_forward(n) = dy_forward(n) +(1/h^n)*(-1)^i*nchoosek(n,i)*f( g == w + i);

end
end
end