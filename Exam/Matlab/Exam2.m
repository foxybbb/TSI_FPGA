close all;
x = linspace(0,pi/2,64);
f1 = sin(x);
f2 = 0.5*sin(3*x);
fsin = f1 + f2;
figure(1);

f_norm = normalize(fsin,'range');% приведени значений амплитуды от 0 до 1
plot(x,f_norm); grid;


Bitout = 12; % Планируемый выход регистра с генератора 
f_int = f_norm*2^12/2; % умножение до близкому к целочисленному значению
f_int = floor(f_int); % округление до целого 
figure(2);
plot(t, f_int); grid;

figure(3);
f_uint = f_int + 2^12/2 -1; % смещение сигнала на 2^12/2

plot(t, f_uint); grid;

f_hex = dec2hex(f_uint');

writematrix(f_uint',"SinSum_dec.txt");
writematrix(f_hex,"SinSum_hex.txt");
