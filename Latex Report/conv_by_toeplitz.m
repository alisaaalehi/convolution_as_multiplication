% define the kernel and the input image
H = [1 2 3;
     4 5 6;
     7 8 9]
I = [1 2 3 4;
     5 6 7 8;
     9 10 11 12]

% do the two-dimensional convolution
O = conv2(I, H)


H = flip(H,1)
H = flip(H,2)

% padd zeroz to make the input image same size as output 
Hw = size(H,1)
Hh = size(H,2)
Iw = size(I,1)
Ih = size(I,2)
Ow = Hw + Iw -1
Oh = Hh + Ih -1


I = padarray(I, Ow-Iw, 'pre')
I = padarray(I, [0,Oh-Ih], 'pre')
%I = MyZeroPad (I, [Ow, Oh]);

function m = MyZeroPad(m, desiredSize)

m = m;
end