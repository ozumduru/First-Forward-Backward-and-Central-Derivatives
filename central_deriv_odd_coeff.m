function[c]=central_deriv_odd_coeff(n)
 A = zeros(n+1);
    b = zeros(n+1,1);
    
    b(n+1,1) = factorial(n);
    if n == 1
    k = -n:n;
    k = setdiff(k,0);
    else
      k = -fix(n/2)-1:fix(n/2)+1;
    k = setdiff(k,0);
    end

    for j=1:n+1

    A(j,:) = k.^(j-1);

    end

    c = 2*A^(-1)*b;
end