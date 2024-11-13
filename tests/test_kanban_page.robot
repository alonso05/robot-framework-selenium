*** Settings ***
Resource    ../pages/kanban_page.robot

*** Test Cases ***
Test Suite Kanbanboard
   Navigate to Kanban Application
   Print all column titles

    