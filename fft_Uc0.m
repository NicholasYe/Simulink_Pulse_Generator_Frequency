%% start
clc, clear all, close all

%% input data
input_S = load('fft.mat');
input_BP = struct2cell(input_S);
input_mat = cell2mat(input_BP); 
input_mat2 = input_mat';
