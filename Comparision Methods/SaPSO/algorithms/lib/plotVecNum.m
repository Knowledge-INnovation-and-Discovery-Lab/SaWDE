function plotVecNum(fh,xlsFileName) 
% ����:������ͼ,����Ϊxls�ļ�,��������֯��ʽΪ:��һ��ΪvecNum,�ڶ���Ϊ��Ӧ��erro value

x = xlsread(xlsFileName);

[r,l] = size(x)
totalAlgorithm = l/2


ph = {};

styleLine = {'-','--',':','-.'};
styleMaker = {'x','o','*','d','+','.','none','p','s','<','>'}; % ��ѡ�ĵ����ʽ
styleColor = 'k'; % balck:k {'k','r','g'} ������ɫ
algorithm = {'CLONALG','opt-IA','BCSA','CLPSO','saDE','CMA-ES','GL-25','SALIA'};  % �㷨����,�����Ӧ��ÿ�����ߵ�legend˵��
strategy = {'Mr1','Mcr1','ISR','Mr2'}


oldYmin = [];
oldYmax = [];
for i=1:totalAlgorithm
    ph{i} = plot(x(:,1),x(:,i+1));hold on; 
    set(ph{i},'LineStyle', '-','Color',styleColor,'Marker',styleMaker{i});
    v = axis;
    oldYmin = [oldYmin v(3)];
    oldYmax = [oldYmax v(4)];
end

% �趨X��,Y��ı���
ylabel('\it{error}');
xlabel('Number of difference vectors');
% �趨X��,Y��Ŀ̶ȷ�Χ

axis([1,6,min(oldYmin),max(oldYmax)]);
% set(gca,'YScale','log');
%set(gca,'Xtick',[0:50000:300000]);

% ��ʾ��ͼ�ߵ�legend
legend('off')

fileName = strcat('a_pic',xlsFileName(1:end-4));
% saveas(gcf,fileName,'eps')
% saveas(gcf,fileName,'tif')
saveas(gcf,fileName,'fig')
