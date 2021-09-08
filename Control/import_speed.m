% import_speed

input_file = 'speed_log.bin';

fid = fopen(input_file, 'r');
speed_rpm = fread(fid, inf, 'float');
fclose(fid);
  
n_samples = length(speed_rpm);

max_speed_rpm = max(speed_rpm);
min_speed_rpm = min(speed_rpm);
spam_speed_rpm = max_speed_rpm-min_speed_rpm;

norm_speed_rpm = speed_rpm/(spam_speed_rpm/2);

%  plot(norm_speed_rpm);
%  hold on;
%  plot(duty_cycle, 'r');
%  hold off;

subplot(2,1,1);
plot(duty_cycle);
title('PWM duty cycle for plant identification');
xlabel('t');
ylabel('dc [-1, 1]');

subplot(2,1,2);
plot(speed_rpm);
title('Motor speed for plant identification');
xlabel('t');
ylabel('speed [rpm]');
