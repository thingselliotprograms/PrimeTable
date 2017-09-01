# PrimeTable
Prime Mult Table for Unite Us exercise

This Ruby project displays a multiplication table for the number of prime numbers desired. There are two files, primetable.rb and testprimetable.rb.

primetable.rb will simply run the program for the first 10 prime numbers. To do this enter 'ruby primetable.rb' at the terminal or command prompt. Output should look like this:

![Prime Table](https://github.com/thingselliotprograms/PrimeTable/blob/master/2017_09_01_15_55_08_Command_Prompt.png)

testprimetable.rb will run the tests for the program. The program is slightly modified in this version so that user input is not requested if a bad argument is given, instead exiting immediately with an error code "Bad Argument Given" to show that those cases are handled properly.

The program is not hard-coded to run for the first 10 primes, as the tests show. Performance-wise, on a modern computer the program runs fairly quickly up until a couple thousand primes. At that point computing time increases greatly. It is difficult to display the table in the terminal for more than a couple dozen primes, however, so scaling would require some type of spreadsheet application to be usable.
