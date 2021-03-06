function Hd = ChebychevIBandstop
%CHEBYSHEVIBANDSTOP Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.10 and DSP System Toolbox 9.12.
% Generated on: 08-Apr-2021 04:42:51

% Chebyshev Type I Bandstop filter designed using FDESIGN.BANDSTOP.

% All frequency values are in kHz.
Fs = 100;  % Sampling Frequency

Fpass1 = 5;           % First Passband Frequency
Fstop1 = 15;          % First Stopband Frequency
Fstop2 = 35;          % Second Stopband Frequency
Fpass2 = 40;          % Second Passband Frequency
Apass1 = 5;           % First Passband Ripple (dB)
Astop  = 50;          % Stopband Attenuation (dB)
Apass2 = 5;           % Second Passband Ripple (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandstop(Fpass1, Fstop1, Fstop2, Fpass2, Apass1, Astop, ...
                      Apass2, Fs);
Hd = design(h, 'cheby1', 'MatchExactly', match);

% [EOF]
