
function plotGiniIndex(n,c)
	prob = [];
	% number of samples
	%n = 1000;
	% number of classes
	%c = 256;
	giniIndex = zeros(c,2);
	for  i=1:c
		M = randi(i,n,1);
		counts = accumarray(M,1);
		p = counts/sum(counts);
	
		giniIndex(i,1) = 1/i;
	%	p = 1/i;
	%	giniIndex(i,2) = 1 - i*(p^2);
		giniIndex(i,2) = 1 - sum(p.^2);
	end;
	plot(giniIndex(:,1),"linewidth", 2,"Color", "b");
	grid on
	hold on
	plot(giniIndex(:,2),"linewidth", 2,"Color", "r");
	title('Gini Index');
	xlabel('Number of Classes');
	ylabel('Maximum Gini Index');
	legend ("Probability","Max Gini Index");
end;