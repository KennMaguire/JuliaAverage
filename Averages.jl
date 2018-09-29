

#=
Julia Program
Averages.jl
Kenneth Maguire
Program 1

This program ask the user for a number of integers, they'd like to average, asks for
the numbers they'd like to average, finds the average, and outputs the following

i)   The list
ii)  The values contained in the list
iii) The sum of the integers
iv)  The average
v)   The number of values greater than the average

=#

#Returns array named _listlen
function askForInput(_inputInt::Integer)
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
    print("The list is: ")
    println(_listLen)
    return _listLen
end

function aver(a)
    i = 1
    sum = 0
    average = 0
    print("The list contains: ")
    while i <= length(a)
        print(a[i])
        sum += a[i]
        i += 1
        if i <= length(a)
            print(", ")
        end
    end
    print("\n")
    println("The sum is: " * string(sum))
    average = trunc(Int,(sum/length(a)))            #get integer value for average
    println("The average is: " * string(average))
    greaterThanAverage(a, average)
end

function greaterThanAverage(a, ave::Integer)
    i = 1
    counter = 0 #counter for number of values greater than average
    while i <= length(a)
        if ave < a[i]
            counter += 1
        end
        i += 1
    end
    println("The number of values greater than the average is: " * string(counter))




end



#Ask for, and read input in from the user

println("Please enter the number of integers you'd like to average (between 0-100)")
inputStr = readline()
inputInt = parse(Int, chomp(inputStr)) #will always be an int


if inputInt > 99 || inputInt < 1
    printstyled(".\n.\n.\n.\n.\n.\n.\n.\n.\n.\n.\n", bold=true, color=:light_red)          #print a bunch of dots and call again
    printstyled(uppercase("That is not a value between 0-100"), bold=true, color=:light_red)
    printstyled(".\n.\n.\n.\n", bold=true, color=:light_red)
    include("Averages.jl")
else
    #Call the askForInput function to get input from the user
    print("\n")
    listLen = askForInput(inputInt) # get input from user
    #Call the aver function with your newly filled array
    #The aver function will also call the greaterThanAverage function
    aver(listLen)   # get average of values from user



end
