
def get_youtube_links_for_perticular_person(**kwargs):

    age0to2={'10s':'https://www.youtube.com/watch?v=vkRDOcma9Qk',
             '20s':'https://www.youtube.com/watch?v=UtxaRodBVf8',
             '30s':'https://www.youtube.com/watch?v=umwNQRBjKLE',
             '40s':'https://www.youtube.com/watch?v=wPcrhBAxvFI',
             '50s':'https://www.youtube.com/watch?v=44FPl5mpEa0'}

    age2to5={'10s':'https://www.youtube.com/watch?v=pIZJU3PeBUY',
             '20s':'https://www.youtube.com/watch?v=Ood3teygwh8',
             '30s':'https://www.youtube.com/watch?v=9T3YSXQWZ0g',
             '40s':'https://www.youtube.com/watch?v=UtxaRodBVf8',
             '50s':'https://www.youtube.com/watch?v=BpUekVaTJGs'}

    age5to10 = {'10s': 'https://www.youtube.com/watch?v=OTuph9pJWU4',
               '20s': 'https://www.youtube.com/watch?v=OTuph9pJWU4',
               '30s': 'https://www.youtube.com/watch?v=GswI5TjS8PU',
               '40s': 'https://www.youtube.com/watch?v=Fkd9TWUtFm0',
               '50s': 'https://www.youtube.com/watch?v=wZq2tyLNPRU'}

    age10to15_Happy =  {'10s': 'https://www.youtube.com/watch?v=D5csHEQRTEI&list=RDD5csHEQRTEI&start_radio=1&t=11',
                        '20s': 'https://www.youtube.com/watch?v=hMy5za-m5Ew&list=RDQMyAJlmwrvMZA&start_radio=1'}

    age10to15_Sad = {'10s': 'https://www.youtube.com/watch?v=z-diRlyLGzo&list=PL9khxBZiiQwoKEqdTrb4ip-S_Tov6FkBQ',
                       '20s': 'https://www.youtube.com/watch?v=J9sOeanbdUE'}

    age10to15_Party  = {'10s': 'https://www.youtube.com/watch?v=xvYBg6MWPbM&list=PL9bw4S5ePsEG1Ovrxj9o2RLx43ALFoFyU',
                       '20s': 'https://www.youtube.com/watch?v=Ci0WbaUH3no&list=PLHuHXHyLu7BE69NY6Nael_4LXT9cPcXae'}

    age10to15_Birthday = {'10s': 'https://www.youtube.com/watch?v=vlS7oilbya0&list=PLoiZYGG9C65A1637dFytr1PEmMjtuwNkC',
                       '20s': 'https://www.youtube.com/watch?v=sjYnntXmSkI'}

    if kwargs.get('age_range') == '0 year - 2 year':
        return age0to2

    if kwargs.get('age_range') == '2 year - 5 year':
        return age2to5

    if kwargs.get('age_range') == '5 year - 10 year':
        return age5to10

    if kwargs.get('age_range') == '10 year - 15 year' and kwargs.get('mood')=='Happy':
        return age10to15_Happy

    if kwargs.get('age_range') == '10 year - 15 year' and kwargs.get('mood')=='Sad':
        return age10to15_Sad

    if kwargs.get('age_range') == '10 year - 15 year' and kwargs.get('mood')=='Party':
        return age10to15_Party

    if kwargs.get('age_range') == '10 year - 15 year' and kwargs.get('mood')=='Birthday':
        return age10to15_Birthday


def get_key(my_dict,val):
    for key, value in my_dict.items():
        if val == value:
            return key
    return "key doesn't exist"


value=get_youtube_links_for_perticular_person(age_range='0 year - 2 year',mood='Happy')
#
print(value)

print(get_key(value,'https://www.youtube.com/watch?v=umwNQRBjKLE'))