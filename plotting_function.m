function [] = plotting_function(num,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_interval,EMG_set,kinem_interval,kinem_set)
% this function allows us to plot the final data

% Pre-processing the signals

[biceps_filtered,biceps_rectified,biceps_enveloped] = preprocessing_data(EMG_biceps);
[triceps_filtered,triceps_rectified,triceps_enveloped] = preprocessing_data(EMG_triceps);

%  signalsto be plotted
figure;
subplot(3,2,1);
hold on
plot( EMG_interval,  EMG_biceps(EMG_set),'b')
plot( EMG_interval,  biceps_filtered(EMG_set),'g')
xlabel('T')
ylabel('Amp')
title('Raw/Filtered Biceps')
legend('Raw signal','Filtered signal')

subplot(3,2,2);
hold on
plot( EMG_interval,  EMG_triceps(EMG_set),'b')
plot( EMG_interval,  triceps_filtered(EMG_set),'g')
xlabel('T')
ylabel('Amp')
title(' Raw/Filtered Triceps')
legend('Raw signal','Filtered signal')

subplot(3,2,3);
hold on
plot( EMG_interval,  biceps_rectified(EMG_set),'b')
plot( EMG_interval,  biceps_enveloped(EMG_set),'g')
xlabel('T')
ylabel('Amp')
title('Rectified/Enveloped Biceps')
legend('rectified signal','enveloped signal')

subplot(3,2,4);
hold on
plot( EMG_interval,  triceps_rectified(EMG_set),'b')
plot( EMG_interval,  triceps_enveloped(EMG_set),'g')
xlabel('T')
ylabel('Amp')
title('Rectified/Enveloped Triceps')
legend('rectified signal','enveloped signal')

subplot(3,2,5);
hold on
plot( kinem_interval, x_value(kinem_set),'b')
plot( kinem_interval, y_value(kinem_set),'g')
xlabel('T')
ylabel('Position')
title('Movement signal X and Y in time')
legend('x cursor','y cursor')

subplot(3,2,6);
hold on
plot( x_value(kinem_set), y_value(kinem_set),'b') ;
plot( x_result(kinem_set), y_result(kinem_set),'.','MarkerSize',20,'MarkerFaceColor','Green','MarkerEdgeColor','g');
xlabel('x-pos')
ylabel('y-pos')
title('The XY movement signal together with target')
legend('xy movement','target')

if num ==2
    sgtitle('Set 2 - First set of no force')
elseif num ==5
    sgtitle('Set 5 - First sets of force field')
elseif num ==6
    sgtitle('Set 6 - Last sets of force field')
elseif num ==7
    sgtitle('Set 7- First set of washout')
end
end


