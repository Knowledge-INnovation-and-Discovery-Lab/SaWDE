function appendToFile2(fileName,gbestMean,gbestStd,fitcountMean,fitcountStd)
% ����: ����ؽ����ӵ��ļ�fileName����

%����ƽ��ֵ
fid = fopen(fileName,'a+');
fprintf(fid,'%E\t%E\t%E\t%E\t\r\n',gbestMean,gbestStd,fitcountMean,fitcountStd);
fclose(fid);