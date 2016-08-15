function prunedItemSet = prune(itemSet, minSupp)

	prunedItemSet = struct("items",{},"tids",{})
	m = size(itemSet,2);
	k = 1;
	for i = 1:m
		supp = size(itemSet(i).tids,1);
		if(supp >= minSupp)
			prunedItemSet(k) = itemSet(i);
			k = k+1;
		end;
	end;

end