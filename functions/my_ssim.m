function SSIM  = my_ssim(x,y)
x1=im2double(x);
y1=im2double(y);

[M N] = size(x1);
c1=(0.01)^2
c2=(0.03)^2

u_x = sum(x1(:))/(M*N);
u_y = sum(y1(:))/(M*N);

var_x = var(x1(:));
var_y = var(y1(:));

x1 = x1-u_x;
y1 = y1-u_y;

z = x1.*y1;
sigma_xy = sum(z(:))/(M*N);

SSIM = ((2*u_x*u_y + c1)*(2*sigma_xy + c2))/((u_x*u_x + u_y*u_y + c1)*(var_x + var_y +c2));

end