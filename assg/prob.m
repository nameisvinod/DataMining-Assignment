function p = prob(M,a)
% Probability of a in vector M
if(size(M,2)<2)
	p=sum(M==a)/size(M,1);
else
	p=sum(sum(M'==a')==size(M,2))/size(M,1);
end