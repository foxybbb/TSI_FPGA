
close all;
clear all;

t = linspace(0,20,64);
D = 5; % дисперсия
A = 1 ./ (D*sqrt(2*pi)); % амплитуда
mx = 20; % мат. ожидание
p = A * exp(-((t-mx).^2)/(2*D.^2));

p_max = max(p);
p_norm = normalize(p,'range');% приведени значений амплитуды от 0 до 1
figure(1);
plot(t, p_norm); 
grid; % вывод нормализованой функции
title('1/2 part of gausian curve')

Bitout = 12; % Планируемый выход регистра с генератора 
p_int = p_norm*2^12/2; % умножение до близкому к целочисленному значению
p_int = floor(p_int); % округление до целого 
figure(2);
plot(t, p_int); grid;


p_uint = p_int + 2^12/2-1 ; % смещение сигнала на 2^12/2
t = linspace(0,20,64);
D = 5; % дисперсия
A = 1 ./ (D*sqrt(2*pi)); % амплитуда
mx = 20; % мат. ожидание
p = A * exp(-((t-mx).^2)/(2*D.^2));

% сохранение точек в текст
plot(t, p_uint); grid;
p_hex = dec2hex(p_uint);
% str = strcat(' X"',num2str(p_hex),'",')
% 
% writematrix(p_uint',"Gaus_curve_dec.txt");
% writematrix(str,"Gaus_curve_strhex.txt");
 
psig = [p_int, flip(p_int),-p_int,-flip(p_int)] ; % склеивание из 1/4 периода , в полноценный периол одного сигнала;
psig=psig + 2047;
figure(3);
plot(linspace(0,80,256), psig); grid;
title('Merge parts to signal period')
ylim([-100 4500]);
yline([4096 0],'--',{'4096','0'})
yline(2047,'-.b','2047');
