test_case1 = f'''
IF ~~ THEN BEGIN 19 // from: 1.3
SAY #3472 /* ~Женщина не отвечает.~ */
IF ~~ THEN JOURNAL #38205 /* ~Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много... что может означать, что нечисти здесь тоже не меньше.~ */ EXTERN ~DMORTE~ 56
END
'''
test_tree1 = {
    'state_id': 19,
    'paths': [{
        'from_state_id': 1,
        'response_index': 3
    }],
    'say_id': 3472,
    'state_body': 'Женщина не отвечает.',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 56,
            'other_npc': 'morte'
        }
    }]
}

test_case2 = f'''
IF ~~ THEN BEGIN 20 // from: 5.2 5.4
SAY #3485 /* ~Она отворачивается... непохоже, чтобы она тебя услышала. ~ */
IF ~~ THEN EXTERN ~DMORTE~ 57
END
'''
test_tree2 = {
    'state_id': 20,
    'paths': [{
        'from_state_id': 5,
        'response_index': 2
    }, {
        'from_state_id': 5,
        'response_index': 4
    }],
    'say_id': 3485,
    'state_body': 'Она отворачивается... непохоже, чтобы она тебя услышала.',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 57,
            'other_npc': 'morte'
        }
    }]
}

test_case3 = f'''
IF ~~ THEN BEGIN 22 // from: 15.2 25.1 27.1
SAY #3493 /* ~Заметив тебя, она поворачивается, а затем хмурится. «Тупые зомфи». Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. «Ты готов. Все зашито. Пшел-пшел-пшел». ~ */
IF ~  Global("Embalm_Key_Quest","GLOBAL",1) HasItem("KeyEm","EiVene") ~ THEN REPLY #3501 /* ~«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»~ */ DO ~AddexperienceParty(250) SetGlobal("Embalm_Key_Quest","GLOBAL",2) GiveItem("KeyEm",Protagonist) ~ GOTO 18
IF ~  Global("Embalm_Key_Quest","GLOBAL",1) !HasItem("KeyEm","EiVene") ~ THEN REPLY #3502 /* ~«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»~ */ GOTO 24
IF ~~ THEN REPLY #4358 /* ~Уйти.~ */ EXIT
END
'''
test_tree3 = {
    'state_id':  22,
    'paths': [{
        'from_state_id': 15,
        'response_index': 2
    }, {
        'from_state_id': 25,
        'response_index': 1
    }, {
        'from_state_id': 27,
        'response_index': 1
    }],
    'say_id': 3493,
    'state_body': 'Заметив тебя, она поворачивается, а затем хмурится. «Тупые зомфи». Она нетерпеливо щелкает когтистыми пальцами, а затем делает движение рукой, как будто что-то зашивает. «Ты готов. Все зашито. Пшел-пшел-пшел».',
    'free':  None,
    'answers': [{
        'condition': 'Global("Embalm_Key_Quest","GLOBAL",1) HasItem("KeyEm","EiVene")',
        'action': 'AddexperienceParty(250) SetGlobal("Embalm_Key_Quest","GLOBAL",2) GiveItem("KeyEm",Protagonist)',
        'answer_id': 3501,
        'answer_body': '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 18
        }
    }, {
        'condition': 'Global("Embalm_Key_Quest","GLOBAL",1) !HasItem("KeyEm","EiVene")',
        'action': None,
        'answer_id': 3502,
        'answer_body': '«Минуточку». Жестом ты показываешь, как открываешь что-то ключом. «Мне нужен ключ от бальзамационной. У тебя он есть?»',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 24
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 4358,
        'answer_body': 'Уйти.',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}

test_case4 = f'''
IF ~~ THEN BEGIN 16 // from: 15.0
SAY #3464 /* ~Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...~ */
IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ GOTO 26
END
'''
test_tree4 = {
    'state_id': 16,
    'paths': [{
        'from_state_id': 15,
        'response_index': 0
    }],
    'say_id': 3464,
    'state_body': 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...',
    'free': 'FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3)',
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 26
        }
    }]
}

test_case5 = f'''
IF ~~ THEN BEGIN 178 // from:
SAY #15348 /* ~«Что? Шеф, я всего лишь мимир! Я не умею 'драться на дуэли'!»~ */
IF ~~ THEN DO ~SetGlobal("Know_Mimir","GLOBAL",1) ~ EXTERN ~DADYZOEL~ 35
END
'''
test_tree5 = {
    'state_id': 178,
    'paths': [],
    'say_id': 15348,
    'state_body': '«Что? Шеф, я всего лишь мимир! Я не умею \'драться на дуэли\'!»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': 'SetGlobal("Know_Mimir","GLOBAL",1)',
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 35,
            'other_npc': 'adyzoel'
        }
    }],
}

test_case6 = f'''
IF ~~ THEN BEGIN 16 // from: 15.0
SAY #3464 /* ~Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...~ */
IF ~~ THEN DO ~FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3) ~ EXTERN ~DMORTE~ 57
END
'''
test_tree6 = {
    'state_id': 16,
    'paths': [{
        'from_state_id': 15,
        'response_index': 0
    }],
    'say_id': 3464,
    'state_body': 'Наблюдая за движением рук Эи-Вейн, ты чувствуешь покалывание в голове. Внезапно у тебя в глазах все начинает размываться и плыть...',
    'free': None,
    'answers': [{
        'condition': None,
        'action': 'FadeToColor([20.0],0) Wait(3) FadeFromColor([20.0],0) Wait(3)',
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 57,
            'other_npc': 'morte'
        }
    }]
}

test_case7 = f'''
IF ~  Global("Appearance","GLOBAL",1)
~ THEN BEGIN 0 // from:
SAY #300 /* ~Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.~ */
IF ~~ THEN REPLY #302 /* ~«Приветствую».~ */ GOTO 1
IF ~~ THEN REPLY #303 /* ~«Кто ты?»~ */ GOTO 1
IF ~~ THEN REPLY #304 /* ~«Что это за место?»~ */ GOTO 1
IF ~~ THEN REPLY #305 /* ~«У меня есть пара вопросов...» ~ */ EXTERN ~DMORTE~ 59
IF ~~ THEN REPLY #306 /* ~Оставить его в покое.~ */ EXIT
END
'''
test_tree7 = {
    'state_id': 0,
    'paths': [],
    'say_id': 300,
    'state_body': 'Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.',
    'free': 'IF ~  Global("Appearance","GLOBAL",1)',
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': 302,
        'answer_body': '«Приветствую».',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 303,
        'answer_body': '«Кто ты?»',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 304,
        'answer_body': '«Что это за место?»',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 305,
        'answer_body': '«У меня есть пара вопросов...»',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 59,
            'other_npc': 'morte'
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 306,
        'answer_body': 'Оставить его в покое.',
        'is_synthetic': False,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}

test_case8 = f'''
IF ~~ THEN BEGIN 138 // from: 137.0
SAY #11947 /* ~Морт глядит на твою ладонь. «Ух-х-х». Кажется, его покоробило. «Вот уж мелкие уродцы, а?»~ */
IF ~~ THEN EXIT
END
'''
test_tree8 = {
    'state_id': 138,
    'paths': [{
        'from_state_id': 137,
        'response_index': 0
    }],
    'say_id': 11947,
    'state_body': 'Морт глядит на твою ладонь. «Ух-х-х». Кажется, его покоробило. «Вот уж мелкие уродцы, а?»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}

test_case9 = f'''
IF ~~ THEN BEGIN 179 // from:
SAY #15349 /* ~«Это, э... что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».~ */
IF ~  GlobalLT("Morte_Mimir","GLOBAL",2) ~ THEN DO ~IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0) ~ EXTERN ~DADYZOEL~ 36
IF ~  GlobalGT("Morte_Mimir","GLOBAL",1) ~ THEN REPLY #65537 /* ~«Но ты ведь НЕ мимир, Морт...»~ */ EXTERN ~DADYZOEL~ 36
END
'''
test_tree9 = {
    'state_id': 179,
    'paths': [],
    'say_id': 15349,
    'state_body': '«Это, э... что-то вроде говорящей энциклопедии. Мне не нравится об этом говорить. Мне типа неловко, правда».',
    'free': None,
    'answers': [{
        'condition': 'GlobalLT("Morte_Mimir","GLOBAL",2)',
        'action': 'IncrementGlobalOnceEx("GLOBALMorte_Mimir","GLOBALMorte_Mimir",0)',
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 36,
            'other_npc': 'adyzoel'
        }
    }, {
        'condition': 'GlobalGT("Morte_Mimir","GLOBAL",1)',
        'action': None,
        'answer_id': 65537,
        'answer_body': '«Но ты ведь НЕ мимир, Морт...»',
        'is_synthetic': False,
        'target_state': {
            'id': 36,
            'other_npc': 'adyzoel'
        }
    }]
}

test_case10 = f'''
IF ~~ THEN BEGIN 206 // from: 204.0
  SAY #19704 /* ~«Это не то же самое, шеф...»~ */
  IF ~~ THEN GOTO 205
END
'''
test_tree10 = {
    'state_id': 206,
    'paths': [{
        'from_state_id': 204,
        'response_index': 0
    }],
    'say_id': 19704,
    'state_body': '«Это не то же самое, шеф...»',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {'id': 205}
    }]
}

test_case11 = f'''
IF ~~ THEN BEGIN 518 // from: 515.0 517.0
SAY #53668 /* ~Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. «Те воспоминания, они... слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны...»~ */
IF ~  NearbyDialog("DDakkon") ~ THEN EXTERN ~DDAKKON~ 183
IF ~  !NearbyDialog("DDakkon") ~ THEN REPLY #54105 /* ~«Продолжай...»~ */ GOTO 520
END
'''
test_tree11 = {
    'state_id': 518,
    'paths': [{
        'from_state_id': 515,
        'response_index': 0
    }, {
        'from_state_id': 517,
        'response_index': 0
    }],
    'say_id': 53668,
    'state_body': 'Морт смотрит тебе под ноги — он еще никогда не выглядел таким жалким. «Те воспоминания, они... слушай, шеф, я даже не помню, *каково* это — быть человеком. Я не помню свою жизнь до Колонны...»',
    'free': None,
    'answers': [{
        'condition': 'NearbyDialog("DDakkon")',
        'action': None,
        'answer_id': None,
        'answer_body': None,
        'is_synthetic': True,
        'journal_id': 0,
        'journal_body': None,
        'target_state': {
            'id': 183,
            'other_npc': 'dakkon'
        }
    }, {
        'condition': '!NearbyDialog("DDakkon")',
        'action': None,
        'answer_id': 54105,
        'answer_body': '«Продолжай...»',
        'is_synthetic': False,
        'target_state': {
            'id': 520
        }
    }]
}


test_case12 = f'''
IF ~~ THEN BEGIN 0 // from:
SAY #986 /* ~«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».~ */
IF ~~ THEN REPLY #987 /* ~«Кто ты?»~ */ GOTO 1
IF ~~ THEN REPLY #989 /* ~Не обращать внимания на говорящий череп и изучить комнату.~ */ EXIT
IF ~~ THEN REPLY #988 /* ~Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.~ */ EXIT
IF ~~ THEN REPLY #17833 /* ~«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».~ */ DO ~GiveItem("KeyPR",Protagonist) SetGlobal("Morte","GLOBAL",1) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE) ~ EXIT
END
'''
test_tree12 = {
    'state_id': 0,
    'paths': [],
    'say_id': 986,
    'state_body': '«Эй, шеф. Ты в порядке? Изображаешь из себя труп или пытаешься обмануть трухлявых? Я уж думал, что ты дал дуба».',
    'free': None,
    'answers': [{
        'condition': None,
        'action': None,
        'answer_id': 987,
        'answer_body': '«Кто ты?»',
        'is_synthetic': False,
        'target_state': {
            'id': 1
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 989,
        'answer_body': 'Не обращать внимания на говорящий череп и изучить комнату.',
        'is_synthetic': False,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'condition': None,
        'action': None,
        'answer_id': 988,
        'answer_body': 'Вдохнуть поглубже, встряхнуть головой и не обращать внимания на говорящий с тобой череп.',
        'is_synthetic': False,
        'target_state': {
            'id': 'EXIT'
        }
    }, {
        'condition': None,
        'action': 'GiveItem("KeyPR",Protagonist) SetGlobal("Morte","GLOBAL",1) SetGlobal("Scars","GLOBAL",1) ChangeAIScript("pcmorte",DEFAULT) JoinPartyEx(TRUE)',
        'answer_id': 17833,
        'answer_body': '«Морт, я уверен, что у тебя найдется еще тысяча умных мыслей, но мне нужно, чтобы ты заткнулся, закончил свои дела и присоединился ко мне НЕМЕДЛЕННО».',
        'is_synthetic': False,
        'target_state': {
            'id': 'EXIT'
        }
    }]
}
