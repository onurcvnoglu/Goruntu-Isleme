function griCozunurluk
%Gri Çözünürlük
img = im2double(imread('lenna256.jpg'));
img = img(:,:,1);

I = img;
I(img>3) = 8;
I(img<0.8) = 0.7;
A = img;
A(img>3) = 16;
A(img<0.8) = 0.6;
B = img;
B(img>3) = 32;
B(img<0.8) = 0.5;
C = img;
C(img>3) = 64;
C(img<0.8) = 0.4;
D = img;
D(img>3) = 128;
D(img<0.8) = 0.3;
E = img;
E(img>3) = 255;
E(img<0.8) = 0.2;

%subplot(2,3,1),imshow(img,[])
figure,imshow(img)
figure
subplot(2,3,1),imshow(I,[])
subplot(2,3,2),imshow(A,[])
subplot(2,3,3),imshow(B,[])
subplot(2,3,4),imshow(C,[])
subplot(2,3,5),imshow(D,[])
subplot(2,3,6),imshow(E,[])