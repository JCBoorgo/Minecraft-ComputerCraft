--starts with chest at front, redstone lever at right and first tree at back
spacing=4 --number of blocks to move between trees
trees=4 --number of trees in the line (counting the one it starts in front of)
turtle.select(1) --takes the first stack of a chest as the log to be broken
turtle.suck()
turtle.select(2) --takes the second stack of the chest as the saplings that has to be planted
turtle.suck()
while cutting==true do
	turtle.turnRight()
	turtle.turnRight() --does a 180° to face the tree
	spaced=0
	treed=1 --since it starts by cutting down one
	turtle.select(1)
	if turtle.compare() then --sees if the block corresponds to the log (sees if the tree has grown)
		turtle.dig() --starts in front of a tree
		turtle.select(2)
		turtle.place() --plants a sapling
		turtle.select(1)
	end
	while treed<trees do --while its line isn't finished
		turtle.turnRight() --to move towards the next tree
		while spaced<spacing do --while it's still not in front of a tree
			turtle.forward()
			spaced=spaced+1
		end
		spaced=0
		turtle.turnLeft() --to face the tree
		if turtle.compare() then --sees if the block corresponds to the log (sees if the tree has grown)
			turtle.dig()
			turtle.select(2)
			turtle.place() --plants a sapling
			turtle.select(1)
		end
		treed=treed+1
	end
	--need to add a way to return to "base" and drop the stuff it collected in the chest (minus a log)
end