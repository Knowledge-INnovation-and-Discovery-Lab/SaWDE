function plotTrace(fh,xlsFileName) 
% ����:������ͼ,����Ϊxls�ļ�,��������֯��ʽΪ:��һ��ΪFEs,�ڶ���Ϊ��Ӧ��erro value��������ֵ,��һ�ڶ���Ϊ��Ӧ�㷨1,�Դ�����

x = xlsread(xlsFileName);

[r,l] = size(x);
totalAlgorithm = l/2;

ph = {};

styleLine = {'-','--',':','-.'};
styleMaker = {'.','o','*','d','+','x','none','p','s','<','>'}; % ��ѡ�ĵ����ʽ
styleColor = 'k'; % balck:k {'k','r','g'} ������ɫ
% algorithm = {'CLONALG','opt-IA','BCSA','CLPSO','saDE','CMA-ES','GL-25','SALIA'};  % �㷨����,�����Ӧ��ÿ�����ߵ�legend˵��
algorithm = {'CLONALG','BCSA','MBCSA'};


oldYmin = [];
oldYmax = [];
for i=1:totalAlgorithm
    xx=x(:,(i-1)*2+1)/(10.^5);
    ph{i} = plot(xx,x(:,i*2));hold on; 
    set(ph{i},'Color',styleColor,...
        'Marker',styleMaker{i},...
        'DisplayName',algorithm{i});
    v = axis;
    oldYmin = [oldYmin v(3)];
    oldYmax = [oldYmax v(4)];
end

% �趨X��,Y��ı���
ylabel('log(\it{error})');
xlabel('Funtion Evaluations /10^5');
% �趨X��,Y��Ŀ̶ȷ�Χ

axis([0,3,min(oldYmin),max(oldYmax)]);
set(gca,'YScale','log');
%set(gca,'Xtick',[0:50000:300000]);

% ��ʾ��ͼ�ߵ�legend
legend('show','Location','SouthWest')
legend('boxoff')

fileName = strcat('a_pic',xlsFileName(1:end-4));
% saveas(gcf,fileName,'eps')
% saveas(gcf,fileName,'tif')
saveas(gcf,fileName,'fig')
