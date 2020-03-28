*** Settings ***
Documentation   main file
Resource  ../Resources/Get_Selection.robot
Resource  ../Resources/Video_Dictionary.robot
Library  Dialogs
Library  SeleniumLibrary
Library  ../CustomLib/YouTubeLinksProcessor.py

*** Test Cases ***
Get Data From User
    [Documentation]  Get Data From User
    [Tags]  Validation
    ${age_returned}  Get_Selection.Check User Age

    ${categ_returned}  Run Keyword If  '${age_returned}' == '0 year - 2 year'  Get_Selection.Check Chield Categ
    ${categ_returned}  Run Keyword If  '${age_returned}' == '2 year - 5 year'  Get_Selection.Check Chield Categ
    ${mood_returned}  Run Keyword If  '${age_returned}' == '10 year - 15 year'  Get_Selection.Check User Mood


    @{age_range_and_mood}   Set Variable   ${age_returned}   ${mood_returned}



    ${Returned_Dict}  Video_Dictionary.Get Video Links    @{age_range_and_mood}

    Create Webdriver    Chrome    executable_path=C:/Paid_Project/ytapi/bin/chromedriver.exe
#    Open Browser  about:blank  gc
#    Wait Until Keyword Succeeds  10s
    Maximize Browser Window
    FOR  ${values}  IN  @{Returned_Dict.values()}
        Go To  ${values}
        ${video_time}  YouTubeLinksProcessor.get key  ${Returned_Dict}  ${values}
        Log to Console  ${video_time}
        Sleep  ${video_time}
        Execute Manual Step  Shoul I continue to play video !!!
    END

