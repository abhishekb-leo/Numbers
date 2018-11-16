[cmdletBinding()]
param(
	[Parameter(Mandatory=$True,HelpMessage="Please enter a non-negative integer number upto which you want to find fibonacci series")]
	[int]$number_from_user
)

clear
write-host "A series of numbers in which each number (Fibonacci number) is the sum of the two preceding numbers. `nThe simplest is the series 1, 1, 2, 3, 5, 8, etc`n"

write-host "This program will list the Fibonacci series numbers from 1 to $number_from_user" -foregroundcolor yellow
write-host "==============================================================" -foregroundcolor yellow
$current=0
$previous=1

	while($current -lt $number_from_user){
		$current; 
		$current,$previous = ($current+$previous),$current
	}