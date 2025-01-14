function [logF] = LogCtsF(t,F,dF,Cinv,dCinv)
%LogCtsF Provides a logarithm of function F that is continuous along the contour
%z=C(t), with t running from -infty to infty, on the assumption that F->1
%at -infty. Need C(-infty)=-infty -- essentially the same as a log defined
%as integrating along a contour from 1.

% log(F(C(t))=int_-infty^t (...) deta -- note gives function of contour
% parameter t. This only gives a solution for z on the contour. Provided t
% and z are sensibly related (eg Re(z)=Re(t)+const) then can easily relate
% the solutions.

f=@(eta) dF(Cinv(eta)).*dCinv(eta)./F(Cinv(eta));
logF=integral(f,-inf,t);

end
