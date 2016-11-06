% File: fcm_SC.m
% Desc: Fuzzy C Means Clustering (Soft Computing Task 1 Extended)
% Date: 01 November 2016

close all;
clear all;
clc;

% Load data train

[dataA,dataB,dataC,dataD,dataE] = loadTrainset;
M = [dataA,dataB,dataC,dataD,dataE];
opts = [2.9;10000;1e-6;1];
[centers,U] = fcm(M,2,opts);

maxU = max(U);

index1 = find(U(1,:) == maxU);
index2 = find(U(2,:) == maxU);
index3 = zeros(1,6000,'uint32');
for i = 1:6000
    if (U(2, i) > U(1, i)) 
        index3(i) = 1;
    end
end

[dataA,dataB,dataC,dataD,dataE,dataTarget] = loadTestset;
M = [dataA,dataB,dataC,dataD,dataE];
index4 = zeros(1,2000,'uint32');

for i = 1:2000
    x = distfcm(centers,M(i,:));
    if (x(2)>x(1)) index4(i) = 1;
    end
end

ansTrue = 0;
index4 = index4';
for i = 1:2000
    if (index4(i) == dataTarget(i)) 
        ansTrue = ansTrue + 1;
    end
end
accuracy = ansTrue/20