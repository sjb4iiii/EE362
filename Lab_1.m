%% Excercise 2.2
% a)
figure
subplot(1,3,1)
n = -5:5;
y_1 = mydelta(n, -2);
y_2 = mydelta(n, 0);
y_3 = mydelta(n, 2);
subplot(1,3,1)
stem(n,y_1);
xlabel('index')
ylabel('Amplitude')
title('n0=-2')
grid on;
subplot(1,3,2);
stem(n,y_2);
xlabel('index')
ylabel('Amplitude')
title('n0=0')
grid on;
subplot(1,3,3);
stem(n,y_3);
xlabel('index')
ylabel('Amplitude')
title('n0=2')
grid on

%b)
figure
d_1 = mydelta(n, 0);
d_2 = mydelta(n, 3);
y_1 = d_1 - d_2;
subplot(1,2,1);
stem(n,y_1)
xlabel('index')
ylabel('Amplitude')
title('del[n] - del[n-3]')
d_1 = mydelta(n, 2);
d_2 = mydelta(n, 2);
y_2 = d_1 - (2 * d_2);
grid on;
subplot(1,2,2);
stem(n,y_2)
grid on;
xlabel('index')
ylabel('Amplitude')
title('del[-n+2] - 2*del[n-2]')

% c) n0 = -2, 0, 2
figure
u_1 = myunitstep(n,-2);
subplot(1,3,1);
stem(n,u_1)
xlabel('index')
ylabel('Amplitude')
title('n0=-2')
grid on
u_2 = myunitstep(n,0);
subplot(1,3,2);
stem(n,u_2)
xlabel('index')
ylabel('Amplitude')
title('n0=0')
grid on
u_3 = myunitstep(n,2);
subplot(1,3,3);
stem(n,u_3)
xlabel('index')
ylabel('Amplitude')
title('n0=2')
grid on

%d)
figure
u_1 = myunitstep(n, 0);
u_2 = myunitstep(n, 3);
y_1 = u_1 - u_2;
subplot(1,2,1);
stem(n,y_1)
xlabel('index')
ylabel('Amplitude')
title('unit[n] - unit[n-3]')
grid on
u_1 = myunitstep(n, -2);
u_2 = myunitstep(n, 2);
y_2 = u_1 - (2 * u_2);
subplot(1,2,2);
stem(n,y_2)
grid on;
xlabel('index')
ylabel('Amplitude')
title('unit[-n+2] - 2*unit[n-2]')
grid on

%e)
figure
A= 2;
alpha = 0.5;
%no= -2,0,2
subplot(1,3,1);
y_1 = A * (alpha).^(n+2);
y_2 = A * (alpha).^(n);
y_3 = A * (alpha).^(n-2);
stem(n,y_1);
xlabel('index')
ylabel('Amplitude')
title('A(alpha)^(n+2)')
grid on;
subplot(1,3,2);
stem(n,y_2)
grid on;
xlabel('index')
ylabel('Amplitude')
title('A(alpha)^(n)')
grid on;
subplot(1,3,3);
stem(n,y_3)
grid on;
xlabel('index')
ylabel('Amplitude')
title('A(alpha)^(n-2)')

%f)
figure
subplot(1,2,1);
y_1 = 2*(0.5).^(n) - 2*(0.5).^(n-4);
stem(n,y_1)
grid on
xlabel('index')
ylabel('Amplitude')
title('2*(0.5)^(n) - 2*(0.5)^(n-4)')
subplot(1,2,2);
y_2 = 2*(-0.5).^(n-4) .* (myunitstep(n, 2));
stem(n,y_2)
grid on
xlabel('index')
ylabel('Amplitude')
title('2*(-0.5).^(n-4) * u(n - 2)')

%g)
figure
n_2 = -10:10;
subplot(2,1,1);
y_1 = 2*(((sqrt(2)/2) + 1i*((sqrt(2)/2))).^n_2);
stem(n_2,y_1)
grid on
xlabel('index')
ylabel('Amplitude')
title('Real')
hold on
plot(n_2,y_1)

subplot(2,1,2);
y_1 = 2*(((sqrt(2)/2) + 1i*((sqrt(2)/2))).^n_2);
stem(n_2,imag(y_1))
grid on
xlabel('index')
ylabel('Amplitude')
title('Imaginary')
hold on
plot(n_2,imag(y_1))


% subplot(1,2,2);
% y_2 = 2*(-0.5).^(n-4) .* (myunitstep(n, 2));
% stem(n,y_2)
% grid on
% xlabel('index')
% ylabel('Amplitude')
% title('2*(-0.5).^(n-4) * u(n - 2)')

%% Convolution:
%3.3
n = -2:2;
n_2 = -2:1;
x_n = [4,2,-3,-4,3];
h_n = [1, 3, 2, 4];
n_3 = -4:3;
y_conv = conv(x_n, h_n);
figure
stem(n_3, y_conv)

%3.4
%a)
n = -10:10;
x_n = mydelta(n,0) - mydelta(n,4);
h_n = myunitstep(n,0) - myunitstep(n,4);
y_n = conv(x_n, h_n,'same');
figure
stem(n,y_n)
grid on
xlabel('index')
ylabel('Amplitude')
title('Convolution of del(n) - del(n-4) with u(n) - u(n-4)')

%b)
figure
x_n = myunitstep(n, -2) - 3.*myunitstep(n,2);
h_n = x_n;
y_n = conv(x_n, h_n,'same');
stem(n,y_n)
grid on
xlabel('index')
ylabel('Amplitude')
title('Convolution of u(-n+2)-3u(n-2) with u(-n+2)-3u(n-2)')



