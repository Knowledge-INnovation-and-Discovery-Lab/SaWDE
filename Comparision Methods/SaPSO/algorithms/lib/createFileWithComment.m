function fid = createFileWithComment(fileName,comment)
% ����: ����ؽ����ӵ��ļ�fileName����

%����ƽ��ֵ
fid = fopen(fileName,'a+');
fprintf(fid,'%s',comment);
