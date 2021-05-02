T = rgb2gray(imread('././imgs/color/Cthulhu1.png'));
im = rgb2gray(imread('././imgs/color/Ctlu.png'));

[m, n] = size(im);
imd = double (im);
Td = double(T);

[mt, nt] = size(T);
suma = 0;

for re=1:m-mt
    for co=1:n-nt
        indice = 0;
        for rel=0:mt-1
            for col=0:nt-1
            suma=abs(imd(re+rel,co+col)-Td(rel+1,col+1))+suma;
            end
        end
        da(re,co)=suma;
        suma =0;
    end
end
imshow(da)