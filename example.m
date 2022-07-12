clc
clear
close all

h = 0.1;
order = 3;

[dy_backward]=backward_deriv_scheme(h,order);
[dy_forward]=forward_deriv_scheme(h,order);
[dy_central]=central_deriv_scheme(h,order);