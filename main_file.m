%This program is the only one to excecute as it call functions from other
%files

clear all;

load("EMG_data.mat");  % Loading EMG file%
Fs=1000;              %Samplpling fq

%Extracting each row for values from data file
EMG_events=double(EMG_data(1,:));
EMG_biceps=double(EMG_data(2,:));
EMG_triceps=double(EMG_data(3,:));
EMG_time=(1:size(EMG_data,2))./Fs; 

% Pre-processing the biceps/triceps muscle
[biceps_filtered,biceps_rectified,biceps_enveloped] = preprocessing_data(EMG_biceps);

[triceps_filtered,triceps_rectified,triceps_enveloped] = preprocessing_data(EMG_triceps);

%loading the kinem_data.mat
load("kinem_data.mat");
%Extracting time points, events , x & y values and x&y result
kinem_time_point=double(kinem_data(1,:));
kinem_events=double(kinem_data(2,:));
x_value=double(kinem_data(3,:));
y_value=double(kinem_data(4,:));
x_result=double(kinem_data(5,:));
y_result=double(kinem_data(6,:));

% 4) Extracting different set for the given epoch intervals 
extracting_dataset(2,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_time,EMG_events,kinem_time_point,kinem_events);
extracting_dataset(5,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_time,EMG_events,kinem_time_point,kinem_events);
extracting_dataset(6,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_time,EMG_events,kinem_time_point,kinem_events);
extracting_dataset(7,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_time,EMG_events,kinem_time_point,kinem_events);
