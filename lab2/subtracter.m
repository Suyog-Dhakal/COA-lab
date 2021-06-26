
function [difference,carry,isNegative] = subtracter(minuend, subtrahend)
  isNegative = 0;
  [difference,carry] = adder(minuend,subtrahend,1);
  
  #if there is no carry then the result is negative and the answer is negative of 2's complement of the result
  
  if(!carry)
      isNegative = 1;
      difference = TwosComplement(difference);
      display("The result is negative");
   endif
endfunction
