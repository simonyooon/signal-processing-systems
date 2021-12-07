function Hd = ChebychevIIHighpass
%CHEBYCHEVIIHIGHPASS Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.10 and DSP System Toolbox 9.12.
% Generated on: 08-Apr-2021 04:44:27

% Chebyshev Type II Highpass filter designed using FDESIGN.HIGHPASS.

% All frequency values are in kHz.
Fs = 100;  % Sampling Frequency

Fstop = 25;          % Stopband Frequency
Fpass = 45;          % Passband Frequency
Astop = 40;          % Stopband Attenuation (dB)
Apass = 2;           % Passband Ripple (dB)
match = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY2 method.
h  = fdesign.highpass(Fstop, Fpass, Astop, Apass, Fs);
Hd = design(h, 'cheby2', 'MatchExactly', match);

% [EOF]