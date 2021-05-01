C = [1 2 3; 4 5 6; 7 8 9 ];
D = padarray(C,[2 2],0,'both');
[x,y] = size(C); 
cnt = 0;
for i = 1: x
    for j = 1: y
        cnt = cnt +1;
    end    
end