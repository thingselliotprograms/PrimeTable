def firstnprimes(n)
    #Validation
    #unlike in the real program, this will quit out upon bad arguments
    #so that the tests do not hang waiting for input
    if (!(n.is_a? Integer))||(n<1)
        return "Bad Argument Given"
        exit
=begin
        puts "Argument must be a positive integer."
        puts "Please enter a positive number or enter q to quit."
        arg = gets.chomp
        if arg == "q"
            exit
        else
            firstnprimes(arg.to_i)
        end
        exit
=end
    end
    primecount = 0
    primesarray = []
    i = 2  #start after 1, since we know that doesn't count
    while (primecount < n)&&(i < 10**9) do #stop if i gets too big
        isprime = 1 #assume i is prime unless we find a factor
        for f in 1..(i/2) do #no factors can be greater than half the number
            if (i%f==0)&&(f!=1) #factors that aren't 1
                isprime = 0
            end
        end
        # if true we didn't find any factors
        if isprime==1
            primecount+=1
            #puts primecount.to_s + ".      " + i.to_s
            primesarray.push(i)
        end
        i+=1
    end
    #$stdout.puts primesarray
    displayprimetable(primesarray)
end

def displayprimetable(pary)
    #display the top row
    puts
    print "     " #five spaces
    pary.each {|p| printf("%5d", p)}
    puts
    pary.each do |row|
        printf("%5d", row ) #displaying the numbers on the left of the row
        pary.each do |col|
            prod = row*col
            printf("%5d", prod) #spacing would need to be increased for bigger arguments, i.e. larger prime numbers
        end
        puts
    end
    return pary #used for testing the correct group of primes gathered
end


def testprimetable
    [2,3,5,7,11,13,17,19,23,29] == firstnprimes(10) ? (puts "First 10 primes test succeeded!") : (puts "First 10 primes test FAILED")
    [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71]  == firstnprimes(20) ? (puts "First 20 primes test succeeded!") : (puts "First 20 primes test FAILED")
    "Bad Argument Given" == firstnprimes(0) ? (puts "Argument of 0 quit successfully!") : (puts "Argument of 0 failed test") 
    "Bad Argument Given" == firstnprimes(-10) ? (puts "Argument of -10 quit successfully!") : (puts "Argument of -10 failed test")
    "Bad Argument Given" == firstnprimes("string") ? (puts "Argument of 'string' quit successfully!") : (puts "Argument of 'string' failed test")
    

end

testprimetable