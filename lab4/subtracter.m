
function [difference,carry,isNegative] = subtracter(minuend, subtrahend)
  
  [difference,carry] = adder(minuend,subtrahend,1);
  
endfunction
