function [data_filtered,data_rectified,data_enveloped] = preprocessing_data(data)
%this func helps us to preprocess signal
%bandpass FIR filter


bpFilt =designfilt('bandpassfir', 'StopbandFrequency1', 25, 'PassbandFrequency1', 30, 'PassbandFrequency2', 450, 'StopbandFrequency2', 455, 'StopbandAttenuation1', 10, 'PassbandRipple', 1, 'StopbandAttenuation2', 10, 'SampleRate', 1000);
data_filtered = filtfilt(bpFilt,data);


% Full wave Rectification of the filtered signal
data_rectified = abs(data_filtered);

% Envelop computation which performed using a low pass FIR filter

lpfilt = designfilt('lowpassfir', 'PassbandFrequency', 6, 'StopbandFrequency', 9, 'PassbandRipple', 2, 'StopbandAttenuation', 20, 'SampleRate', 1000);
data_enveloped = filtfilt(lpfilt,data_rectified);

% Downsampling 
data_downsample = downsample(data_enveloped,100);

end

