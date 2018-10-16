function img_inverse_dft = my_idft(img,dft_flag)
if dft_flag == 1
    img2 = im2double(img);
    img = img2;
    conjugate_img = conj(img)
    [M,N]=size(conjugate_img);   

        N1 = [1:N]
        M1 = [1:M]

        [y, v]=meshgrid(N1,N1);
        [u, x]=meshgrid(M1,M1);

        y_v = exp(-1i*(2*pi)*((y-1).*(v-1))/N)
        u_x = exp(-1i*(2*pi)*((u-1).*(x-1))/M)

        img_inverse_dft_y = conjugate_img*y_v;
        img_inverse_dft = u_x*img_inverse_dft_y

    img_inverse_dft = conj(img_inverse_dft)/(M*N)

else 
    img_inverse_dft = ifft2(img);
end
    
end

