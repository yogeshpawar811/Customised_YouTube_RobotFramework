*** Settings ***
Library  ../CustomLib/YouTubeLinksProcessor.py

*** Keywords ***

Get Video Links
    [Arguments]  @{age_range_and_mood}
    ${Returned_Dict}    YouTubeLinksProcessor.get youtube links for perticular person  age_range=@{age_range_and_mood}[0]  mood=@{age_range_and_mood}[1]
    [Return]   ${Returned_Dict}

