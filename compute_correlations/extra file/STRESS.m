function [pf,fcv] = STRESS(de,dv,f)

% function [pf,fcv] = STRESS(de,dv,f)
% computes performance factor between two datasets: de and dv
% de and dv are the data vectors tested, for example,
% computed colour difference and visual difference
% f is a flag,  f = 1, fcv=1; 
%               f != 1, fcv is computed from de,dv
% The stress is a statistical value
% fcv is the scaling factors 
% see also none

dim1 = size(de);
dim2 = size(dv);
if (dim1(1) ~= dim2(1)) | (dim1(2) ~= dim2(2))
   disp('the two vectors are not in same size');
   return;
end
if(f==1)
	fcv=1;
else
    fcv=sum(de.*dv)/sum(de.*de);
end
    
pf = sqrt(sum((fcv*de-dv).^2)/sum(dv.*dv))*100;
end
