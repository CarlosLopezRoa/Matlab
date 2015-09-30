clear all
close all
tic
con=0;
for k_d=0.1:0.1:0.9
    for re=10:5:10000
        x=nrcolebrook(re,k_d);
        lambda=1/x^2;
        con=con+1;
        xi(con)=lambda;
    end
    plot([10:5:10000],xi)
    hold on
    drawnow
    con=0;
    xi=[];
end
toc
