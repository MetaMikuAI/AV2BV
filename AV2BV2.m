function [S]=AV2BV2(av0)
av2=dec2bin(av0)-'0';%ʮ����ת������
A='1010100100111011001100100100'-'0';
k=28-numel(av2);
if k>=0
    B=zeros(1,k);
    B=[B,av2];%��λ����
else%мվ��Ȼ�����ڵ�av��
    C=zeros(1,-k);
    A=[C,A];
    B=av2;%��λ����
end
long=max(28,numel(av2));
%K=num2str(xor(A,B));
N=blanks(long);
M=xor(A,B);
for k=1:long
    if M(k)==1
        N(k)='1';
    else
        N(k)='0';
    end
end
D=bin2dec(char(strrep(cellstr(N),' ','')))+100618342136696320;
T='ZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcFf';%�ַ���
y=zeros(1,10);
R=[11,10,3,8,4,6,2,9,5,7];%��Ӧ��λ
S='BV0000000000';
for n=0:9
    y(n+1)=mod(floor(D/58^n),58);
    if y(n+1)==0
        y(n+1)=y(n+1)+58;%Matlab����û0���ԼӸ�58
    end
    S(R(n+1)+1)=T(y(n+1));%ȡ�ַ�
end
disp('https://www.bilibili.com/video/');
disp(S);
%By lihuixiang0518@hotmail.com