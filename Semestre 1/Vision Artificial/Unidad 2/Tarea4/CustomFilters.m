% This class contains a custom development of the folowing fitlers
% Median Filter, Mode Filter, Mean Filter, Min Filter, and Max Filter
classdef CustomFilters
    methods(Static)
        
        % Median Filter
        function median_filtered_image = medianFilter(img,k_size_x, k_size_y)
            % get the shape of image
            [img_height, img_width, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            w_size = k_size_x * k_size_y;
            arr = zeros(1,w_size);
            median_filtered_image = img;

            edge_x = floor(k_size_x/2) + 1;
            edge_y = floor(k_size_y/2) + 1;

            for x = edge_x : img_width - edge_x + 1
                for y = edge_y : img_height - edge_y + 1
                    cnt = 1;
                    for fx = 1 : k_size_x
                        for fy = 1 : k_size_y
                            arr(cnt) = img(y + fy - edge_y,x + fx - edge_x);
                            cnt = cnt + 1;
                        end
                        arr = sort(arr);
                        median_filtered_image(y,x) = arr(round(w_size/2));
                    end
                end
            end            
        end
        
        % Mode Filter
        function mode_filtered_img = modeFilter(img, k_size_x, k_size_y)
            % get the shape of image
            [img_height, img_width, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            w_size = k_size_x * k_size_y;
            arr = zeros(1,w_size);
            mode_filtered_img = img;

            edge_x = floor(k_size_x/2) + 1;
            edge_y = floor(k_size_y/2) + 1;
            for x = edge_x : img_width - edge_x + 1
                for y = edge_y : img_height - edge_y + 1
                    cnt = 1;
                    for fx = 1 : k_size_x
                        for fy = 1 : k_size_y
                            arr(cnt) = img(y + fy - edge_y,x + fx - edge_x);
                            cnt = cnt + 1;
                        end
                        mode_filtered_img(y,x) = mode(arr);
                    end
                end
            end
        end
        
        % Mean Filter
        function mean_filtered_img = meanFilter(img, k_size_x, k_size_y)
            % get the shape of image
            [img_height, img_width, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            w_size = k_size_x * k_size_y;
            arr = zeros(1,w_size);
            mean_filtered_img = img;

            edge_x = floor(k_size_x/2) + 1;
            edge_y = floor(k_size_y/2) + 1;
            for x = edge_x : img_width - edge_x + 1
                for y = edge_y : img_height - edge_y + 1
                    cnt = 1;
                    for fx = 1 : k_size_x
                        for fy = 1 : k_size_y
                            arr(cnt) = img(y + fy - edge_y,x + fx - edge_x);
                            cnt = cnt + 1;
                        end
                        mean_filtered_img(y,x) = mean(arr);
                    end
                end
            end
        end
        
        % Max Filter
        function max_filtered_img = maxFilter(img, k_size_x, k_size_y)
            % get the shape of image
            [img_height, img_width, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            w_size = k_size_x * k_size_y;
            arr = zeros(1,w_size);
            max_filtered_img = img;

            edge_x = floor(k_size_x/2) + 1;
            edge_y = floor(k_size_y/2) + 1;
            for x = edge_x : img_width - edge_x + 1
                for y = edge_y : img_height - edge_y + 1
                    cnt = 1;
                    for fx = 1 : k_size_x
                        for fy = 1 : k_size_y
                            arr(cnt) = img(y + fy - edge_y,x + fx - edge_x);
                            cnt = cnt + 1;
                        end
                        max_filtered_img(y,x) = max(arr);
                    end
                end
            end
        end
        
        % Min Filter
        function min_filtered_img = minFilter(img, k_size_x, k_size_y)
            % get the shape of image
            [img_height, img_width, channels] = size(img);
            % Check if user inputs color image
            if channels > 1
                img = rgb2gray(img);
                [y, x, channels] = size(img);
            end
            w_size = k_size_x * k_size_y;
            arr = zeros(1,w_size);
            min_filtered_img = img;

            edge_x = floor(k_size_x/2) + 1;
            edge_y = floor(k_size_y/2) + 1;
            for x = edge_x : img_width - edge_x + 1
                for y = edge_y : img_height - edge_y + 1
                    cnt = 1;
                    for fx = 1 : k_size_x
                        for fy = 1 : k_size_y
                            arr(cnt) = img(y + fy - edge_y,x + fx - edge_x);
                            cnt = cnt + 1;
                        end
                        min_filtered_img(y,x) = min(arr);
                    end
                end
            end
        end

    end
end