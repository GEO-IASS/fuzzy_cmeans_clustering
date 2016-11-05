function [dataA,dataB,dataC,dataD,dataE] = loadTrainset;
% Load data
filename = 'Trainset.xls';
dataA = xlsread(filename,'B2:B6001');
dataB = xlsread(filename,'C2:C6001');
dataC = xlsread(filename,'D2:D6001');
dataD = xlsread(filename,'E2:E6001');
dataE = xlsread(filename,'F2:F6001');