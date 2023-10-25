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
[out1, out2] = sigmatrix(R, C, matrix);
fprintf('out1: %d \nout2: %d\n\n', out1, out2);

M = [1 0 sin(pi / 4); 0 1 sin(pi / 2); 1 0 1];
[out1, out2] = sigmatrix(3, 3, M);
disp(M);
fprintf('out1: %d \nout2: %d\n', out1, out2);

%% sigmoid function
%----------------------------------------------------------------------
function [f_x] = sigmoid(x)
    f_x = 2 / (1 + exp(-x)) - 1;
end

%% Derivative of the Sigmoid function
%----------------------------------------------------------------------
function [df_x] = diffsigmoid(x)
    df_x = (2 * exp(-x)) / ((1 + exp(-x))^2);
end

%% Sigmatrix function
%----------------------------------------------------------------------
function [out1, out2] = sigmatrix(n, m, A)
    out1 = 0;
    out2 = 0;
    for i = 1:1:n
        for j = 1:1:m
             out1 = out1 + sigmoid(A(i, j));
             out2 = out2 + diffsigmoid(A(i, j));
        end
    end
end




