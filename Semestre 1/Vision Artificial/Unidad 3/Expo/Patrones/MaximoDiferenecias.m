Im = rgb2gray(imread('././imgs/color/Cthulhu1.png'));
T = rgb2gray(imread('././imgs/color/Ctlu.png'));

[m, n] = size(Im);
Imd=double(Im);
Td = double(T);
Itemp=zeros(size(T));
% dm = zeros(m-mt,n-nt);
for re=1:m-mt
    for co=1:n-nt
        indice = 0;
        for rel=0:mt-1
            for col=0:nt-1
                Itemp(rel+1,col+1)=abs(Imd(re+rel,co+col)-Td(rel+1,col+1));
            end
        end
        dm(re,co)=max(max(Itemp));
    end
end
imshow(dm);