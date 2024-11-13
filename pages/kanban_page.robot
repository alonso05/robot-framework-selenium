*** Settings ***
Library       SeleniumLibrary
Library    ../.venv/lib/python3.12/site-packages/robot/libraries/Collections.py

*** Keywords ***
Navigate to Kanban Application
    Open Browser    https://kanban-566d8.firebaseapp.com    chrome
    Maximize Browser Window

Print all column titles
    ${columnsCount}    Get Element Count    css=section > div > h2
    Log    Found ${columnsCount} columns

    ${columnsElements}    Get WebElements    css=section > div > h2
    Log    Columns Elements: ${columnsElements}
    
    ${columnNames}    Create List
    FOR    ${counter}    IN RANGE    0    ${columnsCount}
        ${columnName}    Get Text   ${columnsElements}[${counter}]
        Log    Column Name: ${columnName}
        Append To List    ${columnNames}    ${columnName}
    END
    

