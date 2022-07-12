function[dy_central]=central_deriv_scheme(h,order)

k= -order : order ;

syms w 
g = w + k;

f = sym('f',[1,numel(k)]);


dy_central = sym(zeros(1,order));

for n=1:order
 for i=0:n


  if mod(n,2)==0 
    dy_central(n) = dy_central(n) +(1/h^n)*(-1)^i*nchoosek(n,i)*f(  g == w + (0.5*n - i) );

  else
    c = central_deriv_odd_coeff(n);

    dy_central(n) = dy_central(n) +(0.5/h^n)*(-1)^i*c(i+1,1)*f( g == w + (n - 2*i) );
  end
 end
end
end