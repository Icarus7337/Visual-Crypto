function [G1, G2, G3, G13, G23, G12] = MakeShare(inImg)

fund1 = ~[0 1 1];
fund2 = ~[1 0 1];
fund3 = ~[1 1 0];

sz = size(inImg);

G1 = zeros(sz(1),sz(2));
G2 = zeros(sz(1),sz(2));
Gmat = zeros(sz(1),sz(2));
G3 = zeros(sz(1),sz(2));
G13 = zeros(sz(1),sz(2));
G23 = zeros(sz(1),sz(2));
G12 = zeros(sz(1),sz(2));

for i=1:sz(1)
    for j=1:sz(2)
        num = mod(randi(10^7),2);
        G1(i,j) = num;
    end
end

for i=1:sz(1)
    for j=1:sz(2)
        if (inImg(i,j)==1)
            G2(i,j) = G1(i,j);
            
        else
            num = mod(randi(10^7),2);
            G2(i,j) = num;
        
        end    
    end
end

for i=1:sz(1)
    for j=1:sz(2)
        if (inImg(i,j)==1)
            G3(i,j) = G2(i,j);
            
        else
            num = mod(randi(10^7),2);
            G3(i,j) = num;
        
        end    
    end
end

G13 = ~bitxor(G1,G3);
G23 = ~bitxor(G2,G3);
G12 = ~bitxor(G1,G2);