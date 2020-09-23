clear all;
close all;

f = input('What file do you want to apply median filter\n');
a = imread(f);
[m,n] = size(a);

msk = input("What is the size of the mask\n");

b=a;

mm = (msk-1)/2;

for i = 1+mm:m-mm
    for j = 1+mm:n-mm
        c = b(i-mm:i+mm,j-mm:j+mm);
        b(i,j) = median(c(:));
    end
end

subplot(1,2,1);imshow(a,[]);
subplot(1,2,2);imshow(b,[]);