function [ y,u,v ] = readtxt_( fname, img_w, img_h, img_f)
% readtxt_ : 从text中读取yuv数据到matrix中
%   fname  : file name
%   img_w  : image width
%   img_h  : image height
%   img_f  : image format
%   type   : bit depth

% open input file
fileID = fopen(fname, 'r');

% create matrix
yuv420 = 0;
yuv422 = 1;
yuv444 = 2;

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

% read from text
y = fscanf(fileID, '%x\n', [img_w,    img_h]);
u = fscanf(fileID, '%x\n', [uv_width, uv_height]);
v = fscanf(fileID, '%x\n', [uv_width, uv_height]);

% reverse
y = uint16(y');
u = uint16(u');
v = uint16(v');

% close input file
fclose(fileID);

end

