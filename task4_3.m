n=linspace(-1,1,10);
f=1./(25.*n.^2+5.*n+2);
f_t=f.';
A=Vandermonde(x);
c=A\f_t;
c_t=c.';
x1=linspace(-1,1,200);
y=polyval(c_t,n);
plot(n,y);
hold on;
plot(x1,fx);