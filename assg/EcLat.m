function EcLat(A,minSupp)
	[noOfTranscations,noOfItems] = size(A);
	
	itemSet = struct("items",{},"tids",{});
	
	for i=1:noOfItems
		itemSet(i).items = i;
		itemSet(i).tids = find(A(:,i));
	end;
	
	prunedItemSet = prune(itemSet, minSupp);
	
	for k=1:5
		candidateItemSet = eclat_mine(prunedItemSet);
	
		prunedItemSet = prune(candidateItemSet, minSupp);
	
	
		for i=1:size(prunedItemSet,2)
			FrequentitemSet = prunedItemSet(i).items
			tids = prunedItemSet(i).tids
		end;
	end;
end;