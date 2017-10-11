clc;
clear all;
close all;

inImg = imread('girl.bmp');
figure;imshow(inImg);title('Secret Image');

[G1, G2, G3, G13, G23, G12] = MakeShare(inImg);

cheatImg = imread('girlcheat.bmp');
[FG,cheatedimg] = Cheat(G1, G2, G3, cheatImg);
figure;imshow(cheatedimg);title('cheatedimg');
imwrite(cheatedimg,'cheatedimg.bmp');

imwrite(FG,'FG.bmp');
imwrite(G1,'G1.bmp');
imwrite(G2,'G2.bmp');
imwrite(G3,'G3.bmp');