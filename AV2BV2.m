function [S]=AV2BV2(av0)
av2=dec2bin(av0)-'0';%十进制转二进制
A='1010100100111011001100100100'-'0';
k=28-numel(av2);
if k>=0
    B=zeros(1,k);
    B=[B,av2];%补位对齐
else%屑站竟然有上亿的av号
    C=zeros(1,-k);
    A=[C,A];
    B=av2;%补位对齐
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
T='ZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcFf';%字符表
y=zeros(1,10);
R=[11,10,3,8,4,6,2,9,5,7];%对应换位
S='BV0000000000';
for n=0:9
    y(n+1)=mod(floor(D/58^n),58);
    if y(n+1)==0
        y(n+1)=y(n+1)+58;%Matlab矩阵没0所以加个58
    end
    S(R(n+1)+1)=T(y(n+1));%取字符
end
disp('https://www.bilibili.com/video/');
disp(S);
%By lihuixiang0518@hotmail.com