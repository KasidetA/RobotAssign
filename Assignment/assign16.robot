*** Keywords ***
Calculate Factorial
    [Arguments]    ${number}
    Run Keyword If    ${number} == 1    Return From Keyword    1
    ${previous}=    Calculate Factorial    ${number}-1
    ${result}=    Evaluate    int(${number}) * int(${previous})
    Return From Keyword    ${result}


*** Test Cases ***
Test Factorial Calculation
    ${result}    Calculate Factorial    5
    Log To Console    ${result}
