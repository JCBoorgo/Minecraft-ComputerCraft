--BLACKJACK
--vars
decks=6
playerTotal=0
dealerTotal=0
playerTurn=false
dealerTurn=false
playerBust=false
dealerBust=false
bet=0
playerDraws=""
dealerDraws=""
playerSoft=false
dealerSoft=false
--To put the number of cards at the correct value----
function shuffle()
	aces=decks*4
	twos=decks*4
	threes=decks*4
	fours=decks*4
	fives=decks*4
	sixes=decks*4
	sevens=decks*4
	eights=decks*4
	nines=decks*4
	tens=decks*4
	jacks=decks*4
	queens=decks*4
	kings=decks*4
end
--To draw a card-------------------------------------
function draw(turn)
	total=aces+twos+threes+fours+fives+sixes+sevens+eights+nines+tens+jacks+queens+kings
	if total==0 then
		shuffle()
		total=decks*52
	end
	cardNumber=math.random(1,total)
	currNumber=aces
	if currNumber>=cardNumber&&drawing==true then
		drawn="A"
		drawing=false
	end
	currNumber=currNumber+twos
	if currNumber>=cardNumber and drawing==true then
		drawn="2"
		drawing=false
	end
	currNumber=currNumber+threes
	if currNumber>=cardNumber and drawing==true then
		drawn="3"
		drawing=false
	end
	currNumber=currNumber+fours
	if currNumber>=cardNumber and drawing==true then
		drawn="4"
		drawing=false
	end
	currNumber=currNumber+fives
	if currNumber>=cardNumber and drawing==true then
		drawn="5"
		drawing=false
	end
	currNumber=currNumber+sixes
	if currNumber>=cardNumber and drawing==true then
		drawn="6"
		drawing=false
	end
	currNumber=currNumber+sevens
	if currNumber>=cardNumber and drawing==true then
		drawn="7"
		drawing=false
	end
	currNumber=currNumber+eights
	if currNumber>=cardNumber and drawing==true then
		drawn="8"
		drawing=false
	end
	currNumber=currNumber+nines
	if currNumber>=cardNumber and drawing==true then
		drawn="9"
		drawing=false
	end
	currNumber=currNumber+tens
	if currNumber>=cardNumber and drawing==true then
		drawn="T"
		drawing=false
	end
	currNumber=currNumber+jacks
	if currNumber>=cardNumber and drawing==true then
		drawn="J"
		drawing=false
	end
	currNumber=currNumber+queens
	if currNumber>=cardNumber and drawing==true then
		drawn="Q"
		drawing=false
	end
	currNumber=currNumber+kings
	if currNumber>=cardNumber and drawing==true then
		drawn="K"
		drawing=false
	end
	if turn=="D" then
		dealerDraws=dealerDraws..drawn
		if drawn=="A" then
			dealerTotal=dealerTotal+11
			dealerSoft=true
		end
		if drawn=="2" then
			dealerTotal=dealerTotal+2
		end
		if drawn=="3" then
			dealerTotal=dealerTotal+3
		end
		if drawn=="4" then
			dealerTotal=dealerTotal+4
		end
		if drawn=="5" then
			dealerTotal=dealerTotal+5
		end
		if drawn=="6" then
			dealerTotal=dealerTotal+6
		end
		if drawn=="7" then
			dealerTotal=dealerTotal+7
		end
		if drawn=="8" then
			dealerTotal=dealerTotal+8
		end
		if drawn=="9" then
			dealerTotal=dealerTotal+9
		end
		if drawn=="T" or drawn=="J" or drawn=="Q" or drawn=="K" then
			dealerTotal=dealerTotal+10
		end
		if dealerTotal>21 and dealerSoft==true then
			dealerTotal=dealerTotal-10
			dealerSoft=false
		end
		if dealerTotal>21 then
			dealerBust=true
		end
	end
	if turn=="P" then
		playerDraws=playerDraws..drawn
		if drawn=="A" then
			playerTotal=playerTotal+11
			playerSoft=true
		end
		if drawn=="2" then
			playerTotal=playerTotal+2
		end
		if drawn=="3" then
			playerTotal=playerTotal+3
		end
		if drawn=="4" then
			playerTotal=playerTotal+4
		end
		if drawn=="5" then
			playerTotal=playerTotal+5
		end
		if drawn=="6" then
			playerTotal=playerTotal+6
		end
		if drawn=="7" then
			playerTotal=playerTotal+7
		end
		if drawn=="8" then
			playerTotal=playerTotal+8
		end
		if drawn=="9" then
			playerTotal=playerTotal+9
		end
		if drawn=="T" or drawn=="J" or drawn=="Q" or drawn=="K" then
			playerTotal=playerTotal+10
		end
		if playerTotal>21 and playerSoft==true then
			playerTotal=playerTotal-10
			playerSoft=false
		end
		if playerTotal>21 then
			playerBust=true
		end
	end
end
--GAMEPLAY-------------------------------------------
print("Bet?")
bet=tonumber(read())
print("Bet "..bet..".")
