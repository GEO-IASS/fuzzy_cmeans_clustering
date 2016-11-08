% File: fcm_SC.m
% Desc: Fuzzy C Means Clustering (Soft Computing Task 1 Extended)
% Date: 01 November 2016

close all;
clear all;
clc;

% Load data train

[dataA,dataB,dataC,dataD,dataE] = loadTrainset;
M = [dataA,dataB,dataC,dataD,dataE];
% opts = [2.9;10000;1e-6;1];
[centers,U] = fcm(M,8);

maxU = max(U);

index1 = find(U(1,:) == maxU);
index2 = find(U(2,:) == maxU);
index3 = find(U(3,:) == maxU);
index4 = find(U(4,:) == maxU);
index5 = find(U(5,:) == maxU);
index6 = find(U(6,:) == maxU);
index7 = find(U(7,:) == maxU);
index8 = find(U(8,:) == maxU);
% index3 = zeros(1,6000,'uint32');
% for i = 1:6000
%     if (U(2, i) > U(1, i)) 
%         index3(i) = 1;
%     end
% end

hold on
plot(M(index1,1),M(index1,2),'ob')
plot(M(index2,1),M(index2,2),'or')
plot(M(index3,1),M(index3,2),'og')
plot(M(index4,1),M(index4,2),'oy')
plot(M(index5,1),M(index5,2),'om')
plot(M(index6,1),M(index6,2),'oc')
plot(M(index7,1),M(index7,2),'ok')
plot(M(index8,1),M(index8,2),'ow')
plot(centers(1,1),centers(1,2),'xb','MarkerSize',15,'LineWidth',3)
plot(centers(2,1),centers(2,2),'xr','MarkerSize',15,'LineWidth',3)
plot(centers(3,1),centers(3,2),'xg','MarkerSize',15,'LineWidth',3)
plot(centers(4,1),centers(4,2),'xy','MarkerSize',15,'LineWidth',3)
plot(centers(5,1),centers(5,2),'xm','MarkerSize',15,'LineWidth',3)
plot(centers(6,1),centers(6,2),'xc','MarkerSize',15,'LineWidth',3)
plot(centers(7,1),centers(7,2),'xk','MarkerSize',15,'LineWidth',3)
plot(centers(8,1),centers(8,2),'xw','MarkerSize',15,'LineWidth',3)
hold off

% [dataA,dataB,dataC,dataD,dataE,dataTarget] = loadTestset;
% M = [dataA,dataB,dataC,dataD,dataE];
% % index4 = zeros(1,2000,'uint32');
% 
% for i = 1:2000
%     x = distfcm(centers,M(i,:));
%     if (x(2)>x(1)) index4(i) = 1;
%     end
% end
% 
% ansTrue = 0;
% index4 = index4';
% for i = 1:2000
%     if (index4(i) == dataTarget(i)) 
%         ansTrue = ansTrue + 1;
%     end
% end
% accuracy = ansTrue/20