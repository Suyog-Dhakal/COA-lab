
function [twos_complement] = TwosComplement(num)
  twos_complement = num;
  len = length(num);
  
  while(len>1 && num(len)==0)
    --len;
   endwhile
   
   if(len!=1)
    twos_complement(1:len-1) = OnesComplement(num(1:len-1));
   endif
endfunction

%1 2 3 4 5 6   length
%1 0 0 1 0 0   number
%0 1 1 1 0 0   2's complement of above number

