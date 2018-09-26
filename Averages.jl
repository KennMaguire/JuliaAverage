println("Test")

#=
Julia Program
Averages.jl
Kenneth Maguire
Program 1


=#

function aver(a)
    i = 1
    sum = 0
    average = 0
    println("the list is")
    while i <= length(a)
        println(a[i])
        sum += a[i]
        i += 1
    end
    println("The sum is: " * string(sum))
    average = (sum/length(a))
    println("The average is: " * string(average))
end


function askForInput(_inputInt)
    print("\n")
    _listLen = Int64[]
    i = 1
    println("Please enter " * string(_inputInt) * " integers")
    while  i <= _inputInt
        i += 1
        n = readline()      #read string value from term
        x = parse(Int, chomp(n)) #convert string to int
        push!(_listLen, x)       #append int to end of the array
    end
    println(listLen) 
    return _listLen
end







println("Please enter the number of integers you'd like to average")

inputStr = readline()
inputInt = parse(Int, chomp(inputStr))

print("\n")
listLen = askForInput(inputInt) # get input from user

aver(listLen)   # get average of values from user
