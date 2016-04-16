% return 1x1 vector
X = zeros();

% return nxn matrix
X = zeros(3);

% return 2row x 3col x 4planar
X = zeros(2,3,4);


% return int8 vector
X = zeros('int8');

% return nxn int8 vector
X = zeros(3,'int8');

% return 2row x 3col x 4planar, int8
X = zeros(2,3,4,'int8');


% return complex
p = [1+2i 3i];
X = zeros('like',p);
X = zeros(2,3,'like',p);