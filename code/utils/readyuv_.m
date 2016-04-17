function [ y,u,v ] = readyuv_( fname,img_w,img_h,img_f,type )

%readyuv_ 从二进制文件中读取yuv数据
%   fname : file name
%   img_w : image width
%   img_h : image height
%   img_f : image format
%   type  : data bit depth

% enum format
yuv420 = 0;
yuv422 = 1;
yuv444 = 2;

% open file
fileID = fopen(fname, 'r');

% create matrix
switch img_f
    case yuv420
        uv_width  = img_w/2;
        uv_height = img_h/2;
    case yuv422
        uv_width  = img_w/2;
        uv_height = img_h;
    case yuv444
        uv_width  = img_w;
        uv_height = img_h;
    otherwise
        uv_width  = img_w;
        uv_height = img_h;
end

% read from file
y = fread(fileID, [img_w,    img_h],     type);
u = fread(fileID, [uv_width, uv_height], type);
v = fread(fileID, [uv_width, uv_height], type);

% 
y = y';
u = u';
v = v';

% return
fclose(fileID);

end

