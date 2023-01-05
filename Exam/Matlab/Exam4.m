close all;
x = linspace(0,20,64);
% функция круга cj cvtotybtv  (x-x0)^2 + (y-y0)^2 = r^2 ->
% y=sqrt(r^2-x^2+2x*x0-x0^2) + k
r=20;
x0 = r;
y0 = 0;

fpr=real(sqrt(r.^2-x.^2+(2*x*x0-x0^2))+y0)




figure(1);

f_norm = normalize(fpr,'range');% приведени значений амплитуды от 0 до 1
plot(x,f_norm); grid;


Bitout = 12; % Планируемый выход регистра с генератора 
f_int = f_norm*2^12/2; % умножение до близкому к целочисленному значению
f_int = floor(f_int); % округление до целого 
figure(2);
plot(t, f_int); grid;

figure(3);
f_uint = f_int + 2^12/2 -1; % смещение сигнала на 2^12/2
max(f_uint)
min(f_uint)
plot(t, f_uint); grid;

f_hex = dec2hex(f_uint');
writematrix(f_uint',"Circle_dec.txt");
writematrix(f_hex,"Circle_hex.txt");


fsig = [f_int, flip(f_int),-f_int,-flip(f_int)] ; % склеивание из 1/4 периода , в полноценный периол одного сигнала;
fsig = fsig + 2^12/2;
plot(linspace(0,80,256), fsig); grid;