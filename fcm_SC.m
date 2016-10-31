% File: fcm_SC.m
% Desc: Fuzzy C Means Clustering (Soft Computing Task 1 Extended)
% Date: 01 November 2016
% Author: Eliza Riviera Rachmawati Jasin - 1103130144

close all;
clear all;
clc;

% Load data train
[dataA,dataB,dataC,dataD,dataE] = loadTestset;
% [dataA,dataB,dataC,dataD,dataE] = loadTrainset;
M = [dataA,dataB,dataC,dataD,dataE];
% M = mean(A,2);

[centers,U] = fcm(M,2);

maxU = max(U);

index1 = find(U(1,:) == maxU);
index2 = find(U(2,:) == maxU);

hold on
plot(M(index1,1),M(index1,2),'ob')
plot(M(index2,1),M(index2,2),'or')
plot(centers(1,1),centers(1,2),'xb','MarkerSize',15,'LineWidth',3)
plot(centers(2,1),centers(2,2),'xr','MarkerSize',15,'LineWidth',3)
hold off