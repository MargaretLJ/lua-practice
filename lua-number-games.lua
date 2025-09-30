

-- Number game
function number_game()
    local guess=0

    math.randomseed(os.time())

    local num=math.random(100)
    
    print("Let the game begin ^-^ \n")

    while true do
        io.write("Enter your guess :\n")
        local userinput=io.read("*n")
        guess=guess+1

        if userinput>num then
            print("Number too high, guess again :/")      
        elseif userinput<num then
            print("Number too low, guess again :/")       
        else
        return ("Yayy you guessed it in.. "..guess.."..tries")
            
        end

            
    end
end

--print(number_game())

--Rock paper Scissors

function rock_paper_scissors()
    math.randomseed(os.time())
    local player=0
    local map={}
    map[1]="Rock"
    map[2]="Paper"
    map[3]="Scissors"

    print("Rock Paper Scissors...\n")
    print("1 for Rock\n")
    print("2 for Paper\n")
    print("3 for Scissors\n")

    local computer=math.random(1,3)
    io.write("Enter your choice\n")
    player=io.read("*n")
    if computer==player then
        print("its a draw")
    elseif (player==1 and computer==2) or (player==2 and computer==3) or (player==3 and computer==1) then
        print("Computer wins!!")
    elseif (player==1 and computer==3) or (player==2 and computer==1) or (player==3 and computer==2) then
        print("Player wins!!")
    end

end

--print(rock_paper_scissors())

--Number 2 

function number_v2()

    print("Enter a number(1-100) you want the computer to guess\n")
    local num=io.read("*n")
    io.read("*l")
    
    
    local attempts=0
    local low=1
    local high=100

    while true do
        local guess=math.floor((low+high)/2)
        attempts=attempts+1
        print("Is your number..."..guess.."..?")
        print("'h' if its too high,'l' if its too low and 'c' if its correct")
        local res=io.read()
        
        
        if res=='c' then
            print("Yayy you guessed it in .."..attempts.." tries!!")
            return attempts
        elseif res=="l"then
            low=guess+1
            
        elseif res=="h" then
            high=guess-1

        else 
            print("Invalid input")
        end
    end
end

print(number_v2())




