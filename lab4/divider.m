% restoring division 

function [qnt,rm] = divider(dvd,dvs)
   lendvd = length(dvd);
   lendvs = length(dvs);
   
   ac= zeros(1,lendvd);
   qn=0;
   asldvd = dvd;
   
   for i=1: lendvd
     [ac asldvd] = asl(ac,asldvd);
     temp = ac;
     ac = subtracter(ac,dvs);
     
     asldvd(end) = 1;
     qn= ac(1);
     
     if(qn)
      ac = temp;
      asldvd(end) = 0;
     endif
     disp([ac asldvd]);
    endfor
   
   qnt = asldvd;
   rm = ac;
   
   qn= qnt(1);
   if(qn)
    disp("neagtive");
    qnt = TwosComplement(qnt);
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



