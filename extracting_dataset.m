

%this function connects extracting data set to main file
function [] = extracting_dataset(num,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_time_points,EMG_events,kinem_time_points,kinem_events)


% Total epoch timeline we have given 
timeline_start = 1:96:961;
timeline_end = 96:96:1056;
%  timeline interval based on numbers given as timeline
epoch_start = timeline_start(num);
epoch_end = timeline_end(num);

% cue and go to anyalize the data set given
EMG_extract_event = EMG_time_points(EMG_events > 0);
kinem_extract_event=diff((kinem_events  == 2 | kinem_events ==3));
kinem_extract_start = kinem_time_points((kinem_extract_event )< 0);
kinem_extract_end = kinem_time_points((kinem_extract_event) > 0);

if (isempty(EMG_extract_event)==0 && isempty(kinem_extract_start)==0 && isempty(kinem_extract_end)==0)
    % Checking and filling the interval for the given span
    EMG_set = EMG_time_points> EMG_extract_event(epoch_start) & EMG_time_points< EMG_extract_event(epoch_end);
    kinem_set = kinem_time_points > kinem_extract_start(epoch_start) &kinem_time_points < kinem_extract_end(epoch_end);               
    EMG_interval = EMG_time_points(EMG_set) - EMG_extract_event(epoch_start);
    kinem_interval = kinem_time_points(kinem_set) - kinem_extract_start(epoch_start);
    
    plotting_function(num,EMG_biceps,EMG_triceps,x_value,y_value,x_result,y_result,EMG_interval,EMG_set,kinem_interval,kinem_set)

    

end
end

