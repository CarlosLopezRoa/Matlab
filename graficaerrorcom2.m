
%%
data(:,1)=data(:,1)+0.001570279+0.010929721;
epsx=50*10^-3*ones(length(data),1);
epsy=zeros(length(data),1);
for i=1:length(data)
    epsy(i)=0.03*data(i,2);
end
errorbar(data(:,1),data(:,2),epsx,epsy)
axis([0 0.0060 0 1])