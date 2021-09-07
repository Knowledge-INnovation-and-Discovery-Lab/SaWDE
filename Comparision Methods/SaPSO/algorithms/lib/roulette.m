function strategySeq = getStrategyOnAParticle(P,num)
% ����:���̶ķ�ʽѡ���������,numΪ��ɸ�Ӵ��� 
% �ο�: http://blog.163.com/coldstar@126/blog/static/2317011200681792853432/
% �޸�ʱ��: 2010-11-16 
% �Ķ�:
% (1)����ȷ��ѡ����
% -----------------------------------------------
% ʹ��ʾ��
% strategySeq = getStrategyOnAParticle([0.25,0.25,0.25,0.25],4*10)
% strategySeq =
%     2
% **********************************************************

% ����̫��
% m = length(P); % ��PΪ4ά����,������Ϊ1,m=4
% Select = zeros(1,num);
% for i=1:num
%     Select(i) = m;% ��ʼ��Ϊ���һ��
%     for j=1:m %:������ѡ��
%         if P(j)>rand()
%             Select(i)=j;
%             break;
%         end
%     end
% end
% ����̫��


m = length(P); % ��PΪ4ά����,������Ϊ1,m=4
Select = zeros(1,num); % Select = [0     0     0     0     0]
r = rand(1,num); % r = [0.6443    0.3786    0.8116    0.5328    0.5328]
for i=1:num
    sumP = 0;
    j = ceil(m*rand); %����1~m֮����������
    while sumP < r(i)
        sumP = sumP + P(mod(j-1,m)+1);
        j = j+1;
    end
    %Select(i) = mod(j-1,m)+1-1;
    Select(i) = mod(j-2,m)+1;
end

% ȷ������ѡ��
tempSelect = zeros(1,m);
for i=1:m
    tempSelect(i) = sum(Select==i);
end
[val,ind] = sort(tempSelect,'descend');
strategySeq = ind(1);