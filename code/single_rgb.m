img = imread('imgs\image_01.jpg');
%imshow(img);

img_r = img(:,:,1);
img_g = img(:,:,2);
img_b = img(:,:,3);
%imshow(img_r);
%imshow(img_g);
%imshow(img_b);

rst = img;
%imshow(rst);

[row,col,chanel] = size(rst);
for i = 1:row
    for j = 1:col
        if mod(i,2)
            if mod(j,2)
                rst(i,j,2) = 0;
                rst(i,j,3) = 0;
            else
                rst(i,j,1) = 0;
                rst(i,j,3) = 0;
            end
        else
            if mod(j,2)
                rst(i,j,1) = 0;
                rst(i,j,3) = 0;
            else
                rst(i,j,1) = 0;
                rst(i,j,2) = 0;
            end
        end
    end
end
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(rst);