
function [sum,carry] = adder(num1,num2,sub=0)
  if(nargin<2)
    error("few arguments");
  endif
  
  if(!isvector(num1) && !isvector(num2))
    error("Requires vector arguments");
  endif
  
  i=length(num1);
  j=length(num2);
  
  if(i>j)
    gt=i;
  else 
    gt=j;
  endif
  
  sum = zeros(1,gt);
  carry = sub;
  
  % 1 1 0 1 i
  %   0 1 0 j
  
  while(i>=1 && j>=1)
    [sum(gt), carry] = fulladder(num1(i--), XOR(num2(j--),sub),carry);
    --gt;
  endwhile
  
  while(i>=1)
    [sum(i),carry] = fulladder(num1(i--),XOR(0,sub),carry);
   endwhile
   
   while(j>=1)
    [sum(j), carry] = fulladder(0, XOR(num2(j--),sub),carry);
   endwhile
   
endfunction

