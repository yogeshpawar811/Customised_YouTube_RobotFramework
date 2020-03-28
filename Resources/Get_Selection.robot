*** Variables ***
${AGE_POPUP_MSG}    What's your age?
${AGE_1ST_SELECTION}    0 year - 2 year
${AGE_2ND_SELECTION}    2 year - 5 year
${AGE_3RD_SELECTION}    5 year - 10 year
${AGE_4TH_SELECTION}    10 year - 15 year
${MOOD_POPUP_MSG}   What's your mood?
${MOOD_1ST_SELECTION}    Happy
${MOOD_2ND_SELECTION}    Sad
${MOOD_3RD_SELECTION}    Party
${MOOD_4TH_SELECTION}   Birthday

${CATEGE_1ST_SELECTION}  Learning Videos
${CATEGE_2ND_SELECTION}  Funny videos
${CATEGE_3RD_SELECTION}  Story Videos
${CATEGE_4TH_SELECTION}  ChhotaBheem videos
${CATEGE_5TH_SELECTION}  DoreMom Videos





*** Keywords ***
Check User Age
    ${AGE}  Get Selection From User    ${AGE_POPUP_MSG}   ${AGE_1ST_SELECTION}   ${AGE_2ND_SELECTION}  ${AGE_3RD_SELECTION}  ${AGE_4TH_SELECTION}
    [Return]  ${AGE}

Check User Mood
    ${MOOD}  Get Selection From User    ${MOOD_POPUP_MSG}   ${MOOD_1ST_SELECTION}  ${MOOD_2ND_SELECTION}  ${MOOD_3RD_SELECTION}  ${MOOD_4TH_SELECTION}
    [Return]  ${MOOD}

Check Chield Categ
    ${CATGE}  Get Selection From User  ${CATEGE_1ST_SELECTION}  ${CATEGE_2ND_SELECTION}  ${CATEGE_3RD_SELECTION}  ${CATEGE_4TH_SELECTION}  ${CATEGE_5TH_SELECTION}
    [Return]