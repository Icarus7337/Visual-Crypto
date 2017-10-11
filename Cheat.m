function [FG,cheatedimg] = MakeShare(G1, G2, G3, cheatImg)

len = size(G1);
FG = zeros(len(1),len(2));
cheatedimg = zeros(len(1),len(2));

reImg = ~bitxor(G1,G2);
imwrite(reImg ,'reImg.bmp');

for i=1:len(1)
    for j=1:len(2)
        if (reImg(i,j)==cheatImg(i,j))
            FG(i,j)=G1(i,j);
            
        else
            num = mod(randi(10^7),2);
            FG(i,j) = num;
        end
    end
end

cheatedimg = ~bitxor(FG,G3);