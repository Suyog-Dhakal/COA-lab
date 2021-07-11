
%booth algorithm 
 function [product] = multiplier(mpc,mpl)
   
   lenmpl = length(mpl);
   lenmpc = length(mpc);
   
   ac = zeros(1,lenmpc);
   q0 = 0;
   asrmpc = mpc;
   
   for i = lenmpl:-1:1
     temp = zeros(1,lenmpl);
     
     if(asrmpc(lenmpc)==0 && q0==1)
      temp= mpl;
      ac = adder(ac,temp);
      [ac asrmpc q0] = asr(ac,asrmpc);
      disp([ac asrmpc q0]);
      
     elseif(asrmpc(lenmpc)==1 && q0==0)
      temp = TwosComplement(mpl);
      ac = adder(ac,temp);
      [ac asrmpc q0] = asr(ac,asrmpc);
      disp([ac asrmpc q0]);
     else
        [ac asrmpc q0] = asr(ac,asrmpc);
        disp([ac asrmpc q0]);
     endif
   endfor
   
   product = [ac asrmpc];
   qn = product(1);
   if(qn)
    
    product = TwosComplement(product);
   endif
   disp("product: "),disp(product);
   
 endfunction
 
 function [asrac asrtemp q0] = asr(ac, temp)
   len = length(ac);
   [sh q0] = shiftright([ac temp]);
   asrac = sh(1:len);
   asrtemp = sh(len+1 : end);
 endfunction
 
 function [asrnum q0] = shiftright(num)
   qn=num(1);
   q0=num(end);
   var = num(1:end-1);
   asrnum = [qn var];
 endfunction
 
 
