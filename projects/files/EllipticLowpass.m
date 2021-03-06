function Hd = EllipticLowpass
%ELLIPTICLOWPASS Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.10 and DSP System Toolbox 9.12.
% Generated on: 08-Apr-2021 04:45:10

% Elliptic Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in kHz.
Fs = 100;  % Sampling Frequency

Fpass = 20;      % Passband Frequency
Fstop = 30;      % Stopband Frequency
Apass = 5;       % Passband Ripple (dB)
Astop = 50;      % Stopband Attenuation (dB)
match = 'both';  % Band to match exactly

% Construct an FDESIGN object and call its ELLIP method.
h  = fdesign.lowpass(Fpass, Fstop, Apass, Astop, Fs);
Hd = design(h, 'ellip', 'MatchExactly', match);

% [EOF]
