function [gini, giniAtt, gainAtt] = getGini(M)

numberOfRows=size(M,1);
numberOfColumns=size(M,2);

% Gini of result
result = M'(numberOfColumns,:)';
uniqueResults=unique(result);
p=[];
	for i=1:size(uniqueResults,1)
	p=[p; prob(result,uniqueResults(i))];
	end
	gini=prod(p);
	% gini of each attribute
	giniAtt=zeros(numberOfColumns-1,1);
	for i=1:numberOfColumns-1
		column=M(:,i);
		uniqueCol = unique(column);
		colWithResult=[column M(:,numberOfColumns)];
		for j = 1:size(uniqueCol,1)
			p=prob(column,uniqueCol(j));
			sump=1;
			for k=1:size(uniqueResults)
				sump*=prob(colWithResult,[uniqueCol(j) uniqueResults(k)]);
			end
			giniAtt(i)+=p*sump;
		end
	end

gainAtt = gini .- giniAtt;