% Create fucntion to add salt and peper noise to image

classdef CustomNoiseFilters
    methods(Static)
        function noisyImgSaltPepper = SaltAndPepper(img, percentage)
            % get the shape of image
            [y, x, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            noisyImgSaltPepper = img;
            total_affected_pixels = round(((x*y)*(percentage/100))/2);

            for i = 1:total_affected_pixels
                % calculate random x
                noisyImgSaltPepper(randi(y),randi(x)) = 0;
                noisyImgSaltPepper(randi(y),randi(x)) = 255;
            end
        end
        % Gaussian noise
        function noisyImgGaussian = gaussFilter(img)
            noisyImgGaussian = imnoise(img,'gaussian');
        end
    end
end



