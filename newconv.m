function [ y , y_n ] = newconv( x , x_n , h , h_n )
%NEWCONV Summary of this function goes here
%   Detailed explanation goes here
y = conv(x,h);
delta_x_n = mydelta(x_n).*1; 
%Due to logical out of the mydelta function element type needs to be changed to number

delta_h_n = mydelta(h_n).*1;
%Due to logical out of the mydelta function element type needs to be changed to number

y_n = conv(delta_x_n, delta_h_n);
lxn = find(delta_x_n == 1);
lhn = find(delta_h_n == 1);
lz = lxn + lhn - 1;


start_index = -1 * (lz) + 1;
%start_index = (find(y_n==1) - length(y_n)) -1
stop_index = start_index + (length(y_n) -1);
y_n = start_index:1:stop_index;
end

