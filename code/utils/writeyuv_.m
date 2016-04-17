function [ flag ] = writeyuv_( fname, y, u, v, type )
%writeyuv_ 将yuv写入文件
%   fname ; file name
%   y : y data
%   u : u data
%   v : v data
%   type : bit depth

% open file
fileID = fopen(fname, 'w');

% reverse
y1 = y';
u1 = u';
v1 = v';

% write
fwrite(fileID, y1, type);
fwrite(fileID, u1, type);
fwrite(fileID, v1, type);

% return
fclose(fileID);
flag = 1;

end

