function  pikselAzalt()
I=imread('lenna256.jpg');
A=rgb2gray(I);
    function img= Piksel(pix,image)
        img=image;
        counterX=1;
        counterY=1;
        [x y]=size(image);
        for i=1: x
            for j=1:y  
                 if(j>2&& mod(j,pix+1)==0)
                    counterY=j;
                end
                img(i,j)=image(counterX,counterY);
               
            end
            counterY=1;
            if(i>2 && mod(i,pix+1)==0)
                counterX=i;
            end
        end
    end

Px256=A;
Px128=Piksel(2,A);
Px64=Piksel(4,A);
Px32=Piksel(8,A);
Px16=Piksel(16,A);
Px8=Piksel(32,A);
figure
subplot(2,3,1),imshow(Px256),title('256px');
subplot(2,3,2),imshow(Px128),title('128px');
subplot(2,3,3),imshow(Px64),title('64px');
subplot(2,3,4),imshow(Px32),title('32px');
subplot(2,3,5),imshow(Px16),title('16px');
subplot(2,3,6),imshow(Px8),title('8px');


end