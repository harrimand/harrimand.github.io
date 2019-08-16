## pubTest  Document Formatting
#
## *One*
#
F = 2000;
T = 1 / F;
t = linspace(0, 2 * T, 144);
w = 2 * pi * F;
S = 5 * sin(w * t);
plot(t, S);
hold on;
line([0, 2 * T], [0, 0], 'color', 'r', 'linewidth', 2)
set(gca, 'Xtick', [0:T/4:2 * T], 'Ytick', [-6:1:6])
grid on;
## _Two_ *Inline Latex*
#
# $ Latex\hspace{3em}\frac{Divide_{By}}{Zero^{-1}}\surd{\mu\pi}\nonumber\\$
# Some shorter inline equation $\hspace{2em}e^{ix} = \cos x + i\sin x$
# $\\$
# Or more complicated formulas as displayed math:
# $ \hspace{2em}\\$
# $ e^x = \lim_{n\rightarrow\infty}\left(1+\dfrac{x}{n}\right)^{n}\nonumber$
#
d = 1:7
w = 0:7:28
cal = d + w'
#
## |Three| VLSM Table
#
mDb = base2dec(dec2bin(0:15),4);
mDb2 = 2 .* mDb;
VLSMgrid = mDb' + mDb2
##
## *Image Load 1*
im = imread('Delta_Wye.PNG');
imshow(im);
## Delta Wye
# $ R_6 = \frac{R_1 * R_5}{R_1 + R_2 + R_5}\nonumber$
# $ \hspace{2em}R_7 = \frac{R_2 * R_5}{R_1 + R_2 + R_5}\nonumber$
# $ \hspace{2em}R_{10} = \frac{R_1 * R_2}{R_1 + R_2 + R_5}\nonumber$
# $ \hspace{2em}\\$
# $ R_8 = R_3\hspace{2em}R_9 = R_4\hspace{2em}$
# $ R_{total} = R_{10} + \frac{1}{\frac{1}{R_6 + R_8} + \frac{1}{R_7 + R_9}}\nonumber$
#
R1 = 4; R2 = 2; R3 = 2; R4 = 1; R5 = 5;
R6 = R1 * R5 / (R1+R2+R5)
R7 = R2 * R5 / (R1+R2+R5)
R8 = R3
R9 = R4
R10 = R1 * R2 / (R1+R2+R5)
Rtotal = R10 + 1/(1/(R6 + R8) + 1/(R7 + R9))

## *Image Load 2*
im2 = imread('Delta_Wye_2.PNG');
imshow(im2);
## Delta Wye
# $ R_8 = \frac{R_3 * R_5}{R_3 + R_4 + R_5}\nonumber$
# $ \hspace{2em}R_9 = \frac{R_4 * R_5}{R_3 + R_4 + R_5}\nonumber$
# $ \hspace{2em}R_{10} = \frac{R_3 * R_4}{R_3 + R_4 + R_5}\nonumber$
# $ \hspace{2em}\\$
# $ R_6 = R_1\hspace{2em}R_7 = R_2\hspace{2em}$
# $ R_{total} = R_{10} + \frac{1}{\frac{1}{R_6 + R_8} + \frac{1}{R_7 + R_9}}\nonumber$
#
R1 = 4; R2 = 2; R3 = 2; R4 = 1; R5 = 5;
R6 = R1
R7 = R2
R8 = R3 * R5 / (R3+R4+R5)
R9 = R4 * R5 / (R3+R4+R5)
R10 = R3 * R4 / (R3+R4+R5)
Rtotal = R10 + 1/(1/(R6 + R8) + 1/(R7 + R9))
