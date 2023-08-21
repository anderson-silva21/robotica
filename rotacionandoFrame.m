clear all
close all

TO=trvec2tform([0 0])
plottform2d(TO, frame="O", color="k")

TX=trvec2tform([2 3])
plottform2d(TX, frame="X", color="r")

axis([-5 7 -1 5])
grid

TR=tformr2d(2)
plottform2d(TR, frame="R", color="b")

plottform2d(TX*TR, frame="XR", color="g")
plottform2d(TR*TX, frame="RX", color="y")

viscircles([0 0], sqrt(13))
C = [3 2]
plotpoint(C, "ko", label="C")

%TC = trvec2tform(C)*TR
%plottform2d(TC, frame="TC", color="m")
TC = trvec2tform(C)*TR*trvec2tform(-C)*TX
plottform2d(TC, frame="TC", color="m")
viscircles(C, sqrt(2))
