% Load the addition, substraction, division and multiplication tables\
A=load('Add.csv');
D=load('Div.csv');
M=load('Mult.csv');
S=load('Sub.csv');
% 1. For Color Images
% Load the image
img = imread('baboon.png');
% Show the image
imshow(img);
% We will first do a 3 out of 5 sharing
tic
B=Shamir_n_k_color(5,3,img,A,M);
toc
% Show Share 1
imshow(uint8(B(:,:,:,1)));
% Combine shares 1, 2 and 3
tic
R=Combine_S_n_k_color(B,3,[1,2,3],A,M,D,S);
toc
% Show the combined image
imshow(R);
% 2. Load The Grey-scale image 
%img=imread('lena.png');
% If the image is colored, it can be converted into a grey-scale one by the
% command
%img=rgb2gray(img); 
% Show the image
imshow(img);
% We will first do a 3 out of 5 sharing
tic
B=Shamir_n_k_color(5,3,img,A,M);
toc
% Show Share 1
imshow(uint8(B(:,:,1)));
% Combine shares 1, 2 and 3
tic
R=Combine_S_N_k(B,3,[1,2,3],A,M,D,S);
toc
% Show the combined image
imshow(R);