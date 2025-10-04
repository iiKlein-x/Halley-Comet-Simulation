function [Y,t,maxr,minr,maxv,minv]=MaxMin(FV,Y0,a,b,N)
h=(b-a)/N;
Y = zeros(N,6);
Y(1,:)=Y0;t(1)=a;
maxr=-inf;maxv=-inf;
minr=inf;minv=inf;
for i=1:N
    t(i+1)=a+i*h;
    K1=feval(FV,t(i),Y(i,:));
    K2=feval(FV,t(i)+h/2,Y(i,:)+(h/2).*K1');
    K3=feval(FV,t(i)+h/2,Y(i,:)+(h/2).*K2');
    K4=feval(FV,t(i)+h,Y(i,:)+h.*K3');
    Y(i+1,:)=Y(i,:)+(h/6)*(K1+2*K2+2*K3+K4)';
    r=sqrt(Y(i,1).*Y(i,1)+Y(i,3).*Y(i,3)+Y(i,5).*Y(i,5));
    v=sqrt(Y(i,2).*Y(i,2)+Y(i,4).*Y(i,4)+Y(i,6).*Y(i,6));
    if(r<minr) 
        minr=r;
    end
    if(r>maxr) 
        maxr=r;
    end
    if(v<minv) 
        minv=v;
    end
    if(v>maxv) 
        maxv=v;
    end
 end