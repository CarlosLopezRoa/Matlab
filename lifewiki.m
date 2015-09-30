len=50; GRID=int8(rand(len,len));
up=[2:len 1]; down=[len 1:len-1]; %the world is round
colormap(gray(2));
for i=1:100
    neighbours=GRID(up,:)+GRID(down,:)+GRID(:,up)+GRID(:,down)+...
        GRID(up,up)+GRID(up,down)+GRID(down,up)+GRID(down,down);
    GRID = neighbours==3 | GRID & neighbours==2;
    image(GRID*2); pause(0.02);
end