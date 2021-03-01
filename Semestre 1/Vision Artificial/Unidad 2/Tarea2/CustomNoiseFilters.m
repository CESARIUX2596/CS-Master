% Create fucntion to add salt and peper noise to image

classdef CustomNoiseFilters
    methods(Static)
        function noisyImg = SaltAndPepper(img, percentage)
            % get the shape of image
            [y, x, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            noisyImg = img;
            total_affected_pixels = round(((x*y)*(percentage/100))/2);

            for i = 1:total_affected_pixels
                % calculate random x
                noisyImg(randi(y),randi(x)) = 0;
                noisyImg(randi(y),randi(x)) = 255;
            end
        end
    end
end



