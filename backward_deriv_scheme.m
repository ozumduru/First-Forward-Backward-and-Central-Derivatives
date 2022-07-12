function[dy_backward]=backward_deriv_scheme(h,order)


k= -order : order ;

syms w 
g = w + k;

f = sym('f',[1,numel(k)]);

dy_backward = sym(zeros(1,order));

for n=1:order
for i=0:n

dy_backward(n)= dy_backward(n) +(1/h^n)*(-1)^i*nchoosek(n,i)*f( g == w - i);


end
end
end