*** Settings ***
Library     BuiltIn
Library    Collections
Library    parity_keywords.py

*** Variables ***
@{LIST_SORTED}    1    2    3    4    5
@{LIST_UNSORTED}    5    3    2    4    1

*** Test Cases ***
Test List Is Sorted
    [Documentation]    Vérifie si les éléments de la liste sont triés du plus petit au plus grand.
    ${result}=    Is Sorted    ${LIST_SORTED}
    Should Be True    ${result}

Test List Is Not Sorted
    [Documentation]    Vérifie si les éléments de la liste ne sont pas triés du plus petit au plus grand.
    ${result}=    Is Sorted    ${LIST_UNSORTED}
    ${is_not_sorted}=    Set Variable    ${result} == False
    Should Be True    ${is_not_sorted}
