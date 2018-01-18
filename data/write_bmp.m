clc
clear all
im = imread('2.bmp');
img = rgb2gray(im);
imwrite(img,'2_1.bmp');