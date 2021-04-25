classdef BorderDetector
    methods(Static)
        
        function gradient = morph_gradient(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            [x,y]=size(img); 
            d1 = zeros(x,y);
            d2 = zeros(x,y);
            d3 = zeros(x,y);
            d4 = zeros(x,y);
            gradient = zeros(x,y);
            img = padarray(img,[1 1],0,'both');
            for i=2:x-1
                for j=2:y-1
                    d1(i,j)=sqrt(power(img(i,j)-img(i,j-1),2)+power(img(i,j)-img(i,j+1),2));
                    d2(i,j)=sqrt(power(img(i,j)-img(i-1,j),2)+power(img(i,j)-img(i+1,j),2));
                    d3(i,j)=sqrt(power(img(i,j)-img(i-1,j-1),2)+power(img(i,j)-img(i+1,j+1),2));
                    d4(i,j)=sqrt(power(img(i,j)-img(i-1,j+1),2)+power(img(i,j)-img(i+1,j-1),2));
                    gradient(i,j) = d1(i,j)+d2(i,j)+d2(i,j)+d4(i,j);
                end
            end
            gradient = (abs(gradient))./max(max(gradient));
        end
        
        function [sobel_x,sobel_y,sobel] = sobel(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            kernel_y=[-1 0 1;-2 0 2;-1 0 1];
            kernel_x=[-1 -2 -1; 0 0 0;1 2 1];
            [x,y]=size(img);  
            sobel_x = zeros(x,y);
            sobel_y = zeros(x,y);
            sobel=zeros(x,y);
            img = padarray(img,[1 1],0,'both'); 
            for i=2:x-1
                for j=2:y-1
                    sobel_x(i,j)=sum(sum(kernel_x.*img(i-1:i+1,j-1:j+1)));
                    sobel_y(i,j)=sum(sum(kernel_y.*img(i-1:i+1,j-1:j+1)));
                    sobel(i,j)=sqrt(power(sobel_x(i,j),2)+power(sobel_y(i,j),2));
                end
            end
            sobel_x=sobel_x(2:x-1,2:y-1);
            sobel_y=sobel_y(2:x-1,2:y-1);
            sobel=sobel(2:x-1,2:y-1);
            sobel_x=(abs(sobel_x))./max(max(sobel_x));
            sobel_y=(abs(sobel_y))./max(max(sobel_y));
            sobel=(abs(sobel))./max(max(sobel));
        end
        
        function [prewitt_x,prewitt_y,prewitt] = prewitt(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            kernel_y=[-1 0 1;-1 0 1;-1 0 1];
            kernel_x=[-1 -1 -1; 0 0 0;1 1 1];
            [x,y]=size(img);  
            prewitt_x = zeros(x,y);
            prewitt_y = zeros(x,y);
            prewitt=zeros(x,y);
            img = padarray(img,[1 1],0,'both'); 
            for i=2:x-1
                for j=2:y-1
                    prewitt_x(i,j)=sum(sum(kernel_x.*img(i-1:i+1,j-1:j+1)));
                    prewitt_y(i,j)=sum(sum(kernel_y.*img(i-1:i+1,j-1:j+1)));
                    prewitt(i,j)=sqrt(power(prewitt_x(i,j),2)+power(prewitt_y(i,j),2));
                end
            end
            prewitt_x=prewitt_x(2:x-1,2:y-1);
            prewitt_y=prewitt_y(2:x-1,2:y-1);
            prewitt=prewitt(2:x-1,2:y-1);
            prewitt_x=(abs(prewitt_x))./max(max(prewitt_x));
            prewitt_y=(abs(prewitt_y))./max(max(prewitt_y));
            prewitt=(abs(prewitt))./max(max(prewitt));
        end
        
        function [roberts_x,roberts_y,roberts] = roberts(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            kernel_x=[0 1;-1 0];
            kernel_y=[-1 0;0  1];
            [x,y]=size(img);  
            roberts_x = zeros(x,y);
            roberts_y = zeros(x,y);
            roberts=zeros(x,y);
            img = padarray(img,[1 1],0,'both'); 
            for i=1:x-1
                for j=1:y-1
                    roberts_x(i,j)=sum(sum(kernel_x.*img(i:i+1, j:j+1)));
                    roberts_y(i,j)=sum(sum(kernel_y.*img(i:i+1, j:j+1)));
                    roberts(i,j)=sqrt(power(roberts_x(i,j),2)+power(roberts_y(i,j),2));
                end
            end
            roberts_x=roberts_x(1:x-1,1:y-1);
            roberts_y=roberts_y(1:x-1,1:y-1);
            roberts=roberts(1:x-1,1:y-1);
            roberts_x=(abs(roberts_x))./max(max(roberts_x));
            roberts_y=(abs(roberts_y))./max(max(roberts_y));
            roberts=(abs(roberts))./max(max(roberts));
        end
       
        function laplace = laplace4(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            tmp = img;
            [x,y]=size(img);
            laplace = zeros(x,y);
            img = padarray(img,[1 1],0,'both'); 
            for i=2:x-1
                for j=2:y-1
                    laplace(i,j)=img(i,j-1)+img(i-1,j)+img(i+1,j)+ img(i,j+1)-4*img(i,j);
                end
            end
            laplace = tmp-laplace;
            laplace=(abs(laplace))./max(max(laplace));
        end
           
        function laplace = laplace8(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            tmp = img;
            [x,y]=size(img);
            laplace = zeros(x,y);
            img = padarray(img,[1 1],0,'both'); 
            for i=2:x-1
                for j=2:y-1
                    laplace(i,j)= img(i-1,j-1) + img(i,j-1) + img(i+1,j-1)+ img(i-1,j) - 8*(img(i,j)) + img(i+1,j)+ img(i-1,j+1) + img(i,j+1) + img(i+1,j+1);
                end
            end
            laplace = tmp-laplace;
            laplace=(abs(laplace))./max(max(laplace));
        end
        
        function canny = canny (img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            canny = edge(img,'Canny');
        end
        
        function lap_of_gauss = laplacian_of_gaussian(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            log_filter = fspecial('log',[3,3], 0.5);
            lap_of_gauss = imfilter(img, log_filter,'symmetric','conv');
        end
        
        function zero_crossed = zero_crossing(img)
            try
                img =rgb2gray(img);
            end
            img = double(img);
            zero_crossed = edge(img,'zerocross');
        end
        
    end
end