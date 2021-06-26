
function [sum,carry] = fulladder(a,b,c)
  sum = XOR(XOR(a,b),c);
  carry = OR(AND(a,b),AND(XOR(a,b),c));
endfunction

