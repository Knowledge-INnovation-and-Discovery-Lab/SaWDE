function configureFigure(hf,ha) 
% ����:������Ҫ������ͼ��������������,��ͼ���С,����,�ֺ�,��ɫ��

% set(hf,'Renderer','painters','PaperSize',[20.98 29.68],...
%     'InvertHardcopy','off',...
%     'Color',[1 1 1]);
% 
% set(ha,'Parent',hf,'YScale','log','YMinorTick','on','FontSize',9,...
%     'FontName','times');

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 3e+005]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 6e+010]);
% Uncomment the following line to preserve the Z-limits of the axes
% zlim(axes1,[-1 1]);
% box(ha,'on');
% hold(ha,'all');
% grid off;

% Create figure
% set(hf,'PaperSize',[20.98/2 29.68/2]);
% oldUnit = get(hf,'unit');
% set(hf,'unit','centimeters');
% pos = get(hf,'position');
% % ����Ҫ����ͨ���Ͱ����ĸ��һ����־Ϊ����ֽ��С���ң�ͨ��Ϊ
% % �������׿�����Ϊ��.�����׿���ͬ��־�������в�ͬ�������
% % �ڱ���ͼƬ��ʱ���Լ���Ҫ �жϸ�ͼƬ��׼��Ϊͨ�����ǰ�������
% % ����Ȼ���Ǵ󲿷�ͼƬ�ǰ�����ʵ������־��Ҳ����Ϊ����������
% % ���ͼƬ��С���ڿ���趨��ʱ������Ϊ7.5���ס��� ���㱣��ķ�
% % ����Խ�ߣ�ͼƬ��С�����Ը�С������ͼƬΪ�������ֱ���Ϊ600dpi
% % ����ô��ȾͿ�����Ϊ4���ס���ΪĳͼƬ�ֱ���Ϊ600dpi�������� 
% % �ĳߴ�ͿɷŴ���һ������ʹ��Ҳû�����⡣
% % �˴�����Ϊ��4cm,��3cm
% pos(3:4) = [4,3];
% set(hf,'position',pos);
% set(hf,'unit',oldUnit);

% ******************************************************************
% from http://www.ymlib.net/article/sort010/info-852.html
%��4���ǽ������С��Ϊ8���֣���Сͼ�������
figure_FontSize=8;
% set(get(ha,'XLabel'),'FontSize',figure_FontSize,'Vertical','top');
% set(get(ha,'YLabel'),'FontSize',figure_FontSize,'Vertical','middle');
set(findobj('FontSize',12),'FontSize',figure_FontSize);
%��������û�ͼ�Ĵ�С������Ҫ��word���ٵ�����С���Ҹ��Ĳ�����ͼ�Ĵ�С��7cm
% set(hf,'paperposition',get(hf,'position')*0.25);
% oldUnit = get(hf,'unit');
% set(hf,'unit','centimeters');
% pos = get(hf,'position');
% % ����Ҫ����ͨ���Ͱ����ĸ��һ����־Ϊ����ֽ��С���ң�ͨ��Ϊ
% % �������׿�����Ϊ��.�����׿���ͬ��־�������в�ͬ�������
% % �ڱ���ͼƬ��ʱ���Լ���Ҫ �жϸ�ͼƬ��׼��Ϊͨ�����ǰ�������
% % ����Ȼ���Ǵ󲿷�ͼƬ�ǰ�����ʵ������־��Ҳ����Ϊ����������
% % ���ͼƬ��С���ڿ���趨��ʱ������Ϊ7.5���ס��� ���㱣��ķ�
% % ����Խ�ߣ�ͼƬ��С�����Ը�С������ͼƬΪ�������ֱ���Ϊ600dpi
% % ����ô��ȾͿ�����Ϊ4���ס���ΪĳͼƬ�ֱ���Ϊ600dpi�������� 
% % �ĳߴ�ͿɷŴ���һ������ʹ��Ҳû�����⡣
% % �˴�����Ϊ��4cm,��3cm
% pos(3:4) = [7,5];
% set(hf,'position',pos);
% set(hf,'unit',oldUnit);
oldPos = get(hf,'Position');
oldPos(3:4) = [260,220];
set(hf,'Position',oldPos);
%���������xy����ͼƬ��ռ�ı�����������Ҫ�Լ�΢����
% set(ha,'Position',[.13 .17 .80 .74]);
%����ǽ��߿��Ϊ2
lw = 0.25;
set(findobj(get(ha,'Children'),'LineWidth',0.5),'LineWidth',lw);
%����ͼƬ���������ͺ��ֺŴ�С�ġ�
set(ha, 'Fontname', 'Times', 'Fontsize', figure_FontSize);
% ******************************************************************

