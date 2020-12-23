filename = 'ui.wav'
Fs = 44100 ; 
nBits = 16 ; 
nChannels = 1 ; 
ID = -1; % default audio input device

 
recObj = audiorecorder(Fs);


disp('Start speaking.')
recordblocking(recObj,5);
disp('End of Recording.');

play(recObj);


doubleArray = getaudiodata(recObj);
plot(doubleArray);
title('Audio Signal (Double)');

audiowrite(filename, doubleArray, Fs);
