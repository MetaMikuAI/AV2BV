function [S]=BV2AV(bv0)
if numel(bv0)==12
    bv0(:,[1,2])=[];    %ȥ'BV'
elseif numel(bv0)~=12 && numel(bv0)~=10        %��**Ϲ**��bv��
    disp('Error,check the BVnumber is similar to <BV1xx411c7mD> or <1xx411c7mD> and then retry me.');%��װû�﷨����
    disp('Please press the <Ctrl> and the <C> together.');  %������ʾ
    pause;  %�밴���������...
    BV2AV(bv0);%����
end
T='fZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcF'; %�ַ���
for n=1:10
    for m=0:57
        if bv0(n)==T(m+1)
            bv(n)=m;
            break;
        end
    end
end
R=[6,2,4,8,5,9,3,7,1,0];
A=bv.*58.^R;
B=sum(sym(A))-sym('100618342136696320');
C=dec2bin(double(B))-'0';
D='1010100100111011001100100100'-'0';
if numel(C)>28
    G=zeros(1,numel(C)-28);
    D=[G,D];
end
E=num2str(bin2dec(char(strrep(cellstr(num2str(xor(C,D))),' ',''))));    %�������
S=str2num(E);
S='av'; %�ӿ�ͷ
S=[S,E];
disp('https://www.bilibili.com/video/');
disp(S);    %���
% By lihuixiang0518@hotmail.com