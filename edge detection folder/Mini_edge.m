clc;
clear;
close all
prompt = 'What is the name of your MRI image? (Do not include the format)';
img = input(prompt,'s');
img=[img,'.jpg'];
I=imread(img);
L1=figure;
set(L1,'WindowStyle','docked')
imshow(I)
 I=rgb2gray(I);
 [~,thresh]=edge(I,'canny');
 fudge=0.35;
 Iedge=edge(I,'canny',thresh*fudge,8);
 L2=figure;
set(L2,'WindowStyle','docked')
 imshow(Iedge)
 
 se90 = strel('line',3,90);
se0 = strel('line',3,0);
 BWsdil = imdilate(Iedge,[se90 se0]);
 L3=figure;
set(L3,'WindowStyle','docked')
imshow(BWsdil)
disp('Please click on 8 points in Figure 3 to show the border of the brain')
[x,y] = ginput(8)
hold on
plot(x,y,x(1),y(1))
s=size(Iedge);
msk=poly2mask(x,y,s(1),s(2));

 BWdfill= imfill(BWsdil.*msk,'holes');
 L4=figure;
set(L4,'WindowStyle','docked')
imshow(BWdfill);
BWnobord = imclearborder(BWdfill,4);
 binaryImage = ~BWsdil;
binaryImage = imclearborder(binaryImage);
[~, numberOfClosedRegions] = bwlabel(binaryImage);
 numberOfClosedRegions-1

%  Info=bwconncomp(Iedge,8);
%  Info.NumObjects
