function appendToFile(fileName,curIter,fitcount,gbestVal)
% ����: ����ؽ����ӵ��ļ�fileName����

%����ƽ��ֵ
fid = fopen(fileName,'a+');
fprintf(fid,'%d\t%d\t%1.20E\t\r\n',curIter,fitcount,gbestVal);
fclose(fid);