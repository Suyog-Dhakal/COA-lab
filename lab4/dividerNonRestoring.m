% non restoring division 

function [qnt,rm] = divider(dvd,dvs)
   lendvd = length(dvd);
   lendvs = length(dvs);
   
   ac= zeros(1,lendvd);
   qn=0;
   asldvd = dvd;
   
   if(dvs == zeros(1,lendvs))
    return;
   endif
   
   
   for i=1: lendvd
     [ac asldvd] = asl(ac,asldvd);
     
     if(qn)
      ac = adder(ac,dvs);
     else
      ac = subtracter(ac,dvs);
     endif
     
     qn= ac(1);
     
     if(qn)
      qn=1;
      asldvd(end) = 0;
     endif
     
     disp([ac asldvd]);
    endfor
   
   qnt = asldvd;
   rm = ac;
   
   if(qn)
    ac = adder(ac,dvs);
   endif
   
   disp("quotient: "),disp(qnt); 
   disp("remiander: "),disp(rm);
   
endfunction


function [aslac asltemp qn] = asl(ac,temp)
  len=length(ac);
  [sh qn] = shiftleft([ac temp]);
  aslac = sh(1: len);
  asltemp = sh(len+1 : end);
endfunction

function [aslnum qn] = shiftleft(num)
  qn=num(1);
  q0=num(end);
  var = num(2:end);
  aslnum = [var q0];
endfunction
