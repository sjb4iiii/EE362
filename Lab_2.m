%%2. Convolution:
%b
x = [4, 2,-3,-4,3];
x_n = [ -2, -1, 0, 1, 2 ];
h = [1,3,2,4];
h_n = [-2, -1, 0, 1];

[y,y_n] = newconv(x, x_n, h, h_n)
% figure
% stem(y_n,y)
% xlabel('index')
% ylabel('Amplitude')
% title('Convolution Function Test')

%c
n = -5:5;
h = myunitstep(n) - myunitstep(n-2);
x1 = mydelta(n) -mydelta(n-2);
x2 = mydelta(-n+4) - 3*mydelta(n-4);

[y1 , y1_n] = newconv(h, n, (x1+x2) , n);

[y2, y2_n] = newconv(h,n,x1,n);
[y3,y3_n] = newconv(h,n,x2,n);
y4 = y2+y3; % is y4 and y1 the same
y5 = (y4==y1) % All 1's so they are the same.

