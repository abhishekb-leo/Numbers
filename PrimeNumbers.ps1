[cmdletBinding()]
param(
[Parameter(Mandatory=$True,HelpMessage="Please enter the number upto which you want the list of prime numbers")]
[int]$number_from_user
)
clear
write-host "This program will list the Prime numbers from 1 to $number_from_user" -foregroundcolor yellow
write-host "Welcome to the world of Prime numbers" -foregroundcolor yellow
write-host "==============================================" -foregroundcolor yellow
#$number_from_user=read-host -Prompt "Please enter the whole number integer upto which you want a list of Prime numbers" -foregroundcolor green
if ($number_from_user -le 0){
 write-host "! Please enter a non-negative non-zero integer value.. !" -foregroundcolor magenta

    # Sound Alert error 3 times
    for($m=0;$m -lt 3;$m++){
        [console]::Beep(1500,800)
        write-host "@#$@#$@#$@#$@#$*&^*&^$#&#$*((*_(*()*()#$@%#@%#"
    }
write-host "`t`t!..UNDERSTOOD..!" -foregroundcolor magenta
}
else
{

    write-host "Calculating Prime numbers from 1..$number_from_user" -foregroundcolor yellow
    write-host "First prime numbers are 1,2"

# Use a nested for loop to check and print prime numbers
    for($i=2;$i -le $number_from_user;$i++){
        # Assuming curerent number inside outside for loop is prime assigning Prm flag with 1
        $Prm=1;  
        #Check if present number is prime
        for($j=2;$j -le ($i/2);$j++){
            if( ($i%$j) -eq 0 ){$Prm=0;break;}
    
        }
        
        if($Prm){write-host $i}
    }
    [console]::Beep(500,1000)
    write-host "----------END OF PROGRAM------------"
}

