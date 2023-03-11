
fileID = fopen('testou.txt','r');

formatSpec = '%f';
raw_data = fscanf(fileID, formatSpec);
temp1 = num2str(raw_data, '%.0f');
temp2 = bin2dec(temp1);
fclose(fileID);
size(temp2)
x = 1:1:size(temp2);
max(temp2)
min(temp2)

figure(1)
plot(x,temp2) 
title('Out from Signal processing device')
ylim([-100 4500]);
yline([4096 0],'--',{'4096','0'})
yline(2047,'-.b','2047');
% 
% for i=1:1:size(temp2)
% if temp2(i)<(2^12/2)
% 
% temp2(i) =(2^12-temp2(i))
% 
% end;
% end;
% figure(2);
% plot(x,temp2)





