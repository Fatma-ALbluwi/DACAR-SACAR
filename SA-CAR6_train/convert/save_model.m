%% save model / .mat
clc;
clear all;
close all;
model = {};

for k = 1 : 7
    strw = ['w',num2str(k-1),'.mat'];
    load(strw)
    model.weight{k} = array;
    strb = ['b',num2str(k-1),'.mat'];
    load(strb)
    model.bias{k} = array;
end
save SACAR_keras model;
