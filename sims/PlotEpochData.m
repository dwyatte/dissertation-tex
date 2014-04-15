clear all;
close all;

LOG_FILE = 'log/v1_v2_output_ti_paperclip_least_lrs8.trn_epc.dat';
EPOCH_MAX = 15;
Y_IDX_1 = 5; % cos_err
Y_IDX_2 = 2; % output_act_m
COLOR_1 = [.25 .25 .75];
COLOR_2 = [.25 .75 .25];
FONT_SIZE = 20;
LINE_WIDTH = 3;

data = importdata(LOG_FILE);
ydata1 = data.data(1:EPOCH_MAX,Y_IDX_1);
ydata2 = data.data(1:EPOCH_MAX,Y_IDX_2);

plot(1:EPOCH_MAX, ydata1, 'LineWidth', LINE_WIDTH, 'Color', COLOR_1);
hold on;
plot(1:EPOCH_MAX, ydata2, 'LineWidth', LINE_WIDTH, 'Color', COLOR_2);
set(gca, 'XLim', [0 EPOCH_MAX+1]);
set(gca, 'FontSize', FONT_SIZE);
xlabel('Training epoch');
ylabel('Normalized value');

legend({'cos \theta', 'Output rate'}, 'Location', 'NorthWest');
