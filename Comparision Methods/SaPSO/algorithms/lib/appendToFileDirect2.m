function appendToFileDirect2(fileName,gbestMean,gbestStd,fitcountMean,fitcountStd)
% ����: ����ؽ����ӵ��ļ�fileName����

%����ƽ��ֵ
fid = fopen(fileName,'a+');
fprintf(fid,'%1.2E\t%1.2E\t%1.2E\t%1.2E\t\r\n',gbestMean,gbestStd,fitcountMean,fitcountStd);
fclose(fid);