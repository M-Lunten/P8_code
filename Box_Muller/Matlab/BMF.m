function [outSin, outCos] = BMF(in,m,n,sinAng)

input = in;
half2 = m;
negative = n;

sinAngles = sinAng;

A = input;
B = 1024 - (A);
if (B==0)
    B=1;
end

if (half2==0) && (negative==0)
    outputSin = sinAngles(A);
    outputCos = sinAngles(B);
end
if (half2==1) && (negative==0)
    outputSin = sinAngles(B);
    outputCos = -1 * sinAngles(A);
end
if (half2==0) && (negative==1)
    outputSin = -1 * sinAngles(A);
    outputCos = -1 * sinAngles(B);
end
if (half2==1) && (negative==1)
    outputSin = -1 * sinAngles(B);
    outputCos = sinAngles(A);
end
outSin = fi(outputSin,1,16,15);
outCos = fi(outputCos,1,16,15);

