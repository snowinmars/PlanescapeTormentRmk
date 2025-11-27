init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    nr 'Le mort-vivant couvert de cicatrices va et vient entre deux tables. Le numéro „506“ a été cousu sur son front, sur le côté de son cou et en bien d„autres endroits encore. Tant de lambeaux de chair lui ont été rajoutés de part et d“autre qu„on dirait une carte de la ville en trois dimensions.{#zm506_s0_}'

    menu:
        'Examine les points de suture.{#zm506_s0_r45420}' if zm506Logic.r45420_condition():
            # a0 # r45420
            jump zm506_s3

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm506_s0_r45421}' if zm506Logic.r45421_condition():
            # a1 # r45421
            jump zm506_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm506_s0_r45422}' if zm506Logic.r45422_condition():
            # a2 # r45422
            jump zm506_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm506_s0_r45423}':
            # a3 # r45423
            jump zm506_dispose

        'Laisse le cadavre tranquille.{#zm506_s0_r45424}':
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    nr 'Le cadavre regarde droit devant, sans se rendre compte de rien.{#zm506_s1_}'

    menu:
        'Laisse le cadavre tranquille.{#zm506_s1_r45478}':
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    nr 'Le cadavre ne bouge pas. Il a l„air trop absent pour répondre à tes questions.{#zm506_s2_}'

    menu:
        'Laisse le cadavre tranquille.{#zm506_s2_r45479}':
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    nr 'Les coutures font tout le tour du cadavre, depuis ses bras jusqu„à sa poitrine, en passant par son cou et ses cheveux blancs et humides. En suivant les nombreux tracés dessinés par les points, tu t“aperçois que quelqu„un a planté une aiguille dans son front. Le fil qui a servi à recoudre la tempe y est encore attaché. Tu pourrais sans doute l“ôter si tu avais de quoi couper le fil.{#zm506_s3_}'

    menu:
        'Coupe les points de suture à l„aide du scalpel, puis ôte le fil et l“aiguille.{#zm506_s3_r45480}' if zm506Logic.r45480_condition():
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        '"Hmmm. Je pourrais peut-être trouver de quoi couper le fil, par ici. Je reviens de suite."{#zm506_s3_r45481}' if zm506Logic.r45481_condition():
            # a8 # r45481
            jump zm506_dispose

        'Réexamine le cadavre.{#zm506_s3_r45482}':
            # a9 # r45482
            jump zm506_s0

        'Laisse le cadavre tranquille.{#zm506_s3_r45483}':
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    nr 'Tu coupes le fil à l„aide du scalpel, puis tu ôtes l“aiguille et tu défais les points. Ce faisant, tu remarques que le lambeau de chair qui recouvrait le front s„écarte de lui-même pour révéler la boîte crânienne du cadavre. À ta grande surprise, le numéro “78„ a été gravé au burin dans la partie frontale du crâne.{#zm506_s4_}'

    menu:
        '"On dirait que tu as deux numéros différents, cadavre."{#zm506_s4_r45484}' if zm506Logic.r45484_condition():
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        '"On dirait que tu as deux numéros différents, cadavre."{#zm506_s4_r45496}' if zm506Logic.r45496_condition():
            # a12 # r45496
            jump zm506_s1

        'Examine de nouveau le cadavre.{#zm506_s4_r50097}':
            # a13 # r50097
            jump zm506_s5

        'Laisse le cadavre tranquille.{#zm506_s4_r66889}':
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    nr 'Ce cadavre recousu de toute part va incessamment d„une table à l“autre. Le numéro „506“ a été cousu un peu partout sur son corps, mais le lambeau de chair qui recouvrait son front pend et révèle que le numéro „78“ a été gravé au burin sur la partie frontale de sa boîte crânienne.{#zm506_s5_}'

    menu:
        '"On dirait que tu as deux numéros différents, cadavre."{#zm506_s5_r45502}' if zm506Logic.r45502_condition():
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        '"On dirait que tu as deux numéros différents, cadavre."{#zm506_s5_r45508}' if zm506Logic.r45508_condition():
            # a16 # r45508
            jump zm506_s1

        '"Je sais que tu n„es pas un zombi, tu sais. Personne n“est dupe."{#zm506_s5_r45510}' if zm506Logic.r45510_condition():
            # a17 # r45510
            jump zm506_s1

        'Utilise Histoires-Os-Conter sur le cadavre.{#zm506_s5_r45512}' if zm506Logic.r45512_condition():
            # a18 # r45512
            jump zm506_s2

        '"Ça m„a fait plaisir de parler avec toi. Au revoir."{#zm506_s5_r45513}':
            # a19 # r45513
            jump zm506_dispose

        'Laisse le cadavre tranquille.{#zm506_s5_r45514}':
            # a20 # r45514
            jump zm506_dispose
