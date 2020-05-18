function [U V] = CreateFreqGrid(m,n)
  u =  0:m-1;
  a = (u > m/2);
  u(a) = u(a) - m;
  
  v = 0:n-1;
  v(v> n/2) = v(v>n/2) -n;
  [V U] = meshgrid(v,u);
  
end