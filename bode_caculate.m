%% start
clc, clear all, close all

%% input data
input_S = load('input.mat');
input_BP = struct2cell(input_S);
input_mat = cell2mat(input_BP); 
input_mat2 = input_mat';

output_S = load('output.mat');
output_BP = struct2cell(output_S);
output_mat = cell2mat(output_BP); 
output_mat2 = output_mat';

%% calculate transfer func and plot bode
tfdata = iddata(input_mat2(:,2), output_mat2(:,2), 0.000001);
N = 5;
sys = tfest(tfdata, N)
bodeplot(sys);
