clear all;
close all;

f = input('What file do you want to apply median filter\n');
a = imread(f);
a = double(a);

[m,n] = size(a);

msk = input("Type the size of the normal average mask filter\n");

mm = (msk-1)/2;

b = zeros(m+2*mm, n+2*mm);

for i = 1+mm:m+mm
    for j = 1+mm:n+mm
        b(i,j)=a(i-mm,j-mm);
    end
end
%imshow(b,[])
for i = 1+mm:m+mm
    for j = 1+mm:n+mm
        c=b(i-mm:i+mm,j-mm:j+mm);
        b(i,j) = mean(mean(c));
    end
end
subplot(1,2,1);imshow(a,[]);
subplot(1,2,2);imshow(b,[]);