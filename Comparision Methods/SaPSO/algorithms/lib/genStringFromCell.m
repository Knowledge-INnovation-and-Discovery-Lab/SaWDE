function aStr = genStringFromCell(c)
% ����:����cell�������ַ������ַ���
% �÷�: 
% a = {'a','b','c'};
% genStringFromCell(a)
% 
% ans =
% 
% a,b,c,

aStr = '';
len = length(c);
for i=1:len    
    aStr = strcat(aStr,c{i});
    aStr = strcat(aStr,', ');
end