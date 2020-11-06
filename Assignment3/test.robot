*** Settings ***
Library    myFib.py

*** Test cases ***
Print Fibonacci from Index
    Print the #23 Fibonacci number.
    
*** Keywords ***
Print the #${n} Fibonacci number.
    ${output}=    Get Fibonacci Number    ${n}
    Log to console    ${output}