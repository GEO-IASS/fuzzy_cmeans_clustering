function [dataA,dataB,dataC,dataD,dataE,dataTarget] = loadTestset;
% Load data
filename = 'Testset.xls';
dataA = xlsread(filename,'B2:B2001');
dataB = xlsread(filename,'C2:C2001');
dataC = xlsread(filename,'D2:D2001');
dataD = xlsread(filename,'E2:E2001');
dataE = xlsread(filename,'F2:F2001');
dataTarget = xlsread(filename,'G2:G2001');