function M = getMatrix()
% returns a matrix m, for the whole computation

	numberOfRows=ceil(unifrnd(5,10));
	numberOfColumns=ceil(unifrnd(3,5));
	M=[];
	for i=1:numberOfColumns
	rowCap=ceil(unifrnd(2,5));
	rowMax=ones(numberOfRows,1)*rowCap;
	rowmin=ones(numberOfRows,1);
	row=floor(unifrnd(rowmin,rowCap));
	M=[M row];
end

   % Contact GitHub API Training Shop Blog About 

