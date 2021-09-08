% gen_duty_cycle


output_file = 'duty_cycle.bin';

T_obs = 25.0e-3;
n_steps = 4;
step_len = 100;

step = 1.0 / n_steps;


%v = ones(1, step_len);

seg_a = 0:step:1.0;
seg_b = 1.0-step:-step:-1;
seg_c = -1.0+step:+step:0;

segs = [seg_a seg_b seg_c];

duty_cycle = [];

for k = 1:length(segs)
  duty_cycle = [duty_cycle segs(k)*ones(1, step_len)];
end;


%duty_cycle = [duty_cycle duty_cycle];

n = length(duty_cycle);
fprintf('N samples = %d\n', n);

fid = fopen(output_file, 'w');
cnt = fwrite(fid, duty_cycle, 'float');
fclose(fid);

fprintf('cnt = %d\n', cnt);

t = T_obs*(0:n-1);
plot(t, duty_cycle);

title('PWM duty cycle for plant identification');
xlabel('t');
ylabel('dc [-1, 1]');
