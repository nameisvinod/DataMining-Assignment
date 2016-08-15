function candidateItemSet = eclat_mine(itemSet)
	candidateItemSet = struct("items",{},"tids",{})
	m = size(itemSet,2);
	k = 1;
	for i = 1:m
		for j=i+1:m
			candidateItemSet(k).items = union(itemSet(i).items, itemSet(j).items);
			candidateItemSet(k).tids = intersect(itemSet(i).tids, itemSet(j).tids);
			k = k+1;
		end;
	end;
end