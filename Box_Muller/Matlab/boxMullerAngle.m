function [decOutSin,decOutCos] = boxMullerAngle(ang)

input = ang;
negative = 0;
half2 = 0;


if (input>180)&&(input<=270)
    negative = 1;
    inputA = input-180;
    
elseif (input>270)&&(input<=360)
    negative = 1;
    half2 = 1;
    inputA = abs(360-input);
    
elseif (input > 90)&&(input <=180)
    half2 = 1;
    inputA = 180-input;
    
else
    inputA = input;
end

inputA = inputA*(pi/180);
inputB = inputA * (1023/(pi/2));
inputB = round(inputB);
inputBi = dec2bin(inputB,10);


key = [0:1:1023];
key = dec2bin(key, 10);
angles = [0:(pi/2)/1023:(pi/2)];
sinAngles = sin(angles);

sinAngles = sinAngles * 10000;
sinAnglesBi = dec2bin(sinAngles,15);

[~, B] = ismember(inputBi,key,'rows');
C = 1026 - B;
if (C == 0)
    C = 1;
end

if (C==1025)
    C = 1024;
end

outputSin = sinAnglesBi(B,:);
outputCos = sinAnglesBi(C,:);
if (negative ==1)
    decOutSin = -1 * bin2dec(outputSin)/10000;
    
else
    decOutSin = bin2dec(outputSin)/10000;
    
end

if (half2 == 1) && (negative == 0)
    decOutCos = -1 * bin2dec(outputCos)/10000;
elseif (half2 == 0) && (negative == 1)
    decOutCos = -1 * bin2dec(outputCos)/10000;
elseif (half2 == 1) && (negative == 1)
    decOutCos = bin2dec(outputCos)/10000;
else 
    decOutCos = bin2dec(outputCos)/10000;
end

end
