interest=0
stop=false
while stop==false
	do
	interest=count/76800 --for each stack, earn 1 item each in-game day (20 minutes)
	count=count+interest
	if redstone.getInput(top) --can be set to whatever side your stop switch will be
		then
		stop=true
	end
	print(tostring(count))
	os.sleep(1)
end
