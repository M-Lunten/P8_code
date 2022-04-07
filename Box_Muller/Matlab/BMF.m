function [outSin, outCos] = BMF(in)

input = in;
half2 = bitsliceget(input,12,12);
negative = bitsliceget(input,11,11);
fmWrapFloor = fimath('RoundingMethod', 'Floor', 'OverflowAction', 'Wrap');
inputA = fi(input,0,10,9,fmWrapFloor);
angles = [0:(pi/2)/1023:(pi/2)];
anglesF = fi(angles, 0, 10, 9);
sinAngles = sin(anglesF);

for i = 1:1024
    if inputA == anglesF(i)
        break
    end   
end
A = i;
B = 1024 - (i);
if (B==0)
    B=1
end

if (half2==0) && (negative==0)
    outputSin = sinAngles(A)
    outputCos = sinAngles(B)
end
if (half2==1) && (negative==0)
    outputSin = sinAngles(B)
    outputCos = -1 * sinAngles(A)
end
if (half2==0) && (negative==1)
    outputSin = -1 * sinAngles(A)
    outputCos = -1 * sinAngles(B)
end
if (half2==1) && (negative==1)
    outputSin = -1 * sinAngles(B)
    outputCos = sinAngles(A)
end
outSin = fi(outputSin,1,16,14)
outCos = fi(outputCos,1,16,14)

