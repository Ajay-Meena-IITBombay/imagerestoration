function img_dft = my_dft(img,dft_flag)
if dft_flag == 1;
    img2 = im2double(img);
    img = img2;
        [M,N]=size(img);   

        N1 = [1:N]
        M1 = [1:M]

        [v, y]=meshgrid(N1,N1);
        [x, u]=meshgrid(M1,M1);

        v_y = exp(-1i*(2*pi)*((v-1).*(y-1))/N)
        x_u = exp(-1i*(2*pi)*((x-1).*(u-1))/M)

        img_dft_y = img*v_y;
        img_dft = x_u*img_dft_y
else 
    img_dft = fft2(img);
end
end