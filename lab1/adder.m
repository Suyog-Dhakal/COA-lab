
function [sum,carry] = adder(num1,num2)
  carry = 0;
  sum = zeros(1,length(num1));
  
  for i = length(num1):-1:1
    [sum(i),carry] = fulladder(num1(i),num2(i),carry);
  endfor
  
endfunction
