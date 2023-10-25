clc
clear all
close all
warning off

%% getting input 
%----------------------------------------------------------------------
R = input("Please enter number of rows: ");
C = input("Please enter number of columns: ");
matrix = input("Please enter matrix: ");

%% print output of sigmatrix
%----------------------------------------------------------------------
[out] = tanhmatrix(R, C, matrix);
fprintf('out: %d\n\n', out);

M = [1 0 sin(pi / 4); 0 1 sin(pi / 2); 1 0 1];
[out] = tanhmatrix(3, 3, M);
disp(M);
fprintf('out: %d\n', out);

%% tanh function
%----------------------------------------------------------------------
function [f_x] = tanh(x)
    f_x = (exp(x) - exp(-x)) / (exp(x) + exp(-x));
end

%% tanhmatrix function
%----------------------------------------------------------------------
function [out] = tanhmatrix(n, m, A)
    out = 0;
    for i = 1:1:n
        for j = 1:1:m
             out = out + tanh(A(i, j));
        end
    end
end




