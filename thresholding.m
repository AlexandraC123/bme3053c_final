clc;clear;

x=input('filename: ','s');
I=imread(x);
[h,w,c]=size(I);
%read and store the image size in their respective variables
count=0;
imshow(I)
A=53475;
%area was calculated by using the function imshow and data tips from the figure options
%radius from the X and Y coordinates and use formula A=pi*r^2

for ii=1:1:h
    for jj=1:1:w
        %use for loop to check the color/RGB matrix value for each pixel
        red=I(ii,jj,1);
        green=I(ii,jj,2);
        blue=I(ii,jj,3);
        if (red>=164 && red<=246) && (blue>=164 && blue<=246) && (green>=164 && green<=246)
            %used data tips option to determine the RGB values of the brain tumor
            binary(ii,jj)=1;
            count=count+1;
            %count each pixel that falls in the RGB matrix range for the
            %brain tumor 
        end
    end
end
count=round(count/A);
%divide total number of pixels by the area to get the number of tumors
%present in the scan
fprintf('Number of tumors: %d',count);