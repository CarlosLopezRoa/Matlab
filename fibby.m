A=input('');
C=zeros(1,A);
C(2)=1;
    for a=3:A
        C(a)=(C(a-1)+C(a-2))
    end