point=[100*sqrt(3) 100;75*sqrt(3) 125;75*sqrt(3) 75;50*sqrt(3) 150;50*sqrt(3) 100;50*sqrt(3) 50;
    25*sqrt(3) 175;25*sqrt(3) 125;25*sqrt(3) 75;25*sqrt(3) 25;0 200;0 150;0 100;0 50];
xk=point(:,1);%xk��ʾ���Ƿ����źŵĹ۲����ƫ�ĺ�����
yk=point(:,2);%yk��ʾ���Ƿ����źŵĹ۲����ƫ��������
a1star=-500;
a2star=-500;
%�����ڳ�Ϊ100*sqrt(3)��Ϊ200�ĳ����ε���
    for i=1:14 %ѡȡM��
        for j=1:14 %ѡȡN��
            if i~=j
                for x=0:0.1:174
                    for y=0:0.05:100
                        mom=acos((xk(i)*yk(j)+xk(j)*yk(i))/(sqrt(xk(i)^2+yk(i)^2)*sqrt(xk(j)^2+yk(j)^2)));
                        a1=acos(((xk(i)-x)*(-x)+(yk(i)-y)*(-y))/(sqrt((xk(i)-x)^2+(yk(i)-y)^2)+(x^2+y^2)));
                        a2=acos(((xk(j)-x)*(-x)+(yk(j)-y)*(-y))/(sqrt((xk(j)-x)^2+(yk(j)-y)^2)+(x^2+y^2)));
                        if sqrt(xk(j)^2+yk(j)^2)*sin(a1)+sqrt(xk(i)^2+yk(i)^2)*sin(a2)*cos(a1+a2+mom)==0
                            a1star=180*a1/pi;
                            a2star=180*a2/pi;
                        end
                    end
                end    
            end
        end
    end