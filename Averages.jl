println("Test")

#=
Julia Program
Averages.jl
Kenneth Maguire
Program 1


=#


x = 0;

while x != 100
    println(x)
    n = readline()
    global x = parse(Int, chomp(n))
end
