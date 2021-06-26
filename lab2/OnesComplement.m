
function [ones_complement] = OneComplement(num)
  ones_complement = zeros(1,length(num));
  for i = length(num):-1:1
    ones_complement(i) = NOT(num(i));
  endfor
endfunction

