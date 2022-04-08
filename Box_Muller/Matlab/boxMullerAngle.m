function [outputSin,outputCos] = boxMullerAngle(in,m,n)

input = in;
negative = n;
half2 = m;

angles = [0:(pi/2)/1023:(pi/2)];
sinAngles = sin(angles);

A = input;
B = 1025 - (A);

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





