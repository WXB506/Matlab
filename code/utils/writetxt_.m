function [ flag ] = writetxt_( fname, y,u,v )
% writetxt_ : write yuv data to text file
%   fname   : file name
%   y,u,v   : matrix

% open file
fileID = fopen(fname, 'w');

% reverse
y1 = uint16(y');
u1 = uint16(u');
v1 = uint16(v');

% write
fprintf(fileID, '%x\n', y1);
fprintf(fileID, '%x\n', u1);
fprintf(fileID, '%x\n', v1);

% close
flag = 1;
fclose(fileID);

end

