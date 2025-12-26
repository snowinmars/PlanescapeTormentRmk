init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    's1221_s0{#s1221_s0}'
    # nr 'This animated skeleton smells horrible, as if it had been only freshly stripped and prepared. Its jaw and major joints are tightly bound with leather straps, and a rough smock has been thrown over it. The number "1221" has been chiseled into its forehead.{#s1221_s0_1}'

    menu:
        's1221_s0_r35307{#s1221_s0_r35307}' if s1221Logic.r35307_condition(): # '"Pardon me, have you seen any skeletons walking around here?"{#s1221_s0_r35307}'
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        's1221_s0_r35330{#s1221_s0_r35330}' if s1221Logic.r35330_condition(): # '"Pardon me, have you seen any skeletons walking around here?"{#s1221_s0_r35330}'
            # a1 # r35330
            jump s1221_s1

        's1221_s0_r35331{#s1221_s0_r35331}' if s1221Logic.r35331_condition(): # '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."{#s1221_s0_r35331}'
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        's1221_s0_r35332{#s1221_s0_r35332}' if s1221Logic.r35332_condition(): # '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."{#s1221_s0_r35332}'
            # a3 # r35332
            jump s1221_s1

        's1221_s0_r35333{#s1221_s0_r35333}' if s1221Logic.r35333_condition(): # 'Use your Stories-Bones-Tell power on the skeleton.{#s1221_s0_r35333}'
            # a4 # r35333
            jump s1221_s2

        's1221_s0_r35338{#s1221_s0_r35338}': # 'Examine the skeleton carefully.{#s1221_s0_r35338}'
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        's1221_s0_r35371{#s1221_s0_r35371}' if s1221Logic.r35371_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35371}'
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        's1221_s0_r35372{#s1221_s0_r35372}' if s1221Logic.r35372_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35372}'
            # a7 # r35372
            jump s1221_s4

        's1221_s0_r35373{#s1221_s0_r35373}' if s1221Logic.r35373_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35373}'
            # a8 # r35373
            jump s1221_s5

        's1221_s0_r35374{#s1221_s0_r35374}' if s1221Logic.r35374_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35374}'
            # a9 # r35374
            jump s1221_s6

        's1221_s0_r35375{#s1221_s0_r35375}' if s1221Logic.r35375_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35375}'
            # a10 # r35375
            jump s1221_s4

        's1221_s0_r35376{#s1221_s0_r35376}' if s1221Logic.r35376_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35376}'
            # a11 # r35376
            jump s1221_s5

        's1221_s0_r35377{#s1221_s0_r35377}' if s1221Logic.r35377_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s0_r35377}'
            # a12 # r35377
            jump s1221_s6

        's1221_s0_r35378{#s1221_s0_r35378}' if s1221Logic.r35378_condition(): # '"How about this skeleton, Morte? Will it do as a body?"{#s1221_s0_r35378}'
            # a13 # r35378
            jump morte_s372  # EXTERN

        's1221_s0_r35379{#s1221_s0_r35379}' if s1221Logic.r35379_condition(): # 'Leave the skeleton in peace.{#s1221_s0_r35379}'
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        's1221_s0_r35380{#s1221_s0_r35380}' if s1221Logic.r35380_condition(): # 'Leave the skeleton in peace.{#s1221_s0_r35380}'
            # a15 # r35380
            jump s1221_dispose

        's1221_s0_r35381{#s1221_s0_r35381}' if s1221Logic.r35381_condition(): # 'Leave the skeleton in peace.{#s1221_s0_r35381}'
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    's1221_s1{#s1221_s1}'
    # nr 'The skeleton makes no reply.{#s1221_s1_1}'

    menu:
        's1221_s1_r35309{#s1221_s1_r35309}' if s1221Logic.r35309_condition(): # '"Great talking to you, Bones. Stay healthy."{#s1221_s1_r35309}'
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        's1221_s1_r35328{#s1221_s1_r35328}' if s1221Logic.r35328_condition(): # '"Great talking to you, Bones. Stay healthy."{#s1221_s1_r35328}'
            # a18 # r35328
            jump s1221_dispose

        's1221_s1_r35329{#s1221_s1_r35329}' if s1221Logic.r35329_condition(): # '"Great talking to you, Bones. Stay healthy."{#s1221_s1_r35329}'
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    's1221_s2{#s1221_s2}'
    # nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.{#s1221_s2_1}'

    menu:
        's1221_s2_r35335{#s1221_s2_r35335}' if s1221Logic.r35335_condition(): # 'Leave the skeleton in peace.{#s1221_s2_r35335}'
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        's1221_s2_r35336{#s1221_s2_r35336}' if s1221Logic.r35336_condition(): # 'Leave the skeleton in peace.{#s1221_s2_r35336}'
            # a21 # r35336
            jump s1221_dispose

        's1221_s2_r35337{#s1221_s2_r35337}' if s1221Logic.r35337_condition(): # 'Leave the skeleton in peace.{#s1221_s2_r35337}'
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    's1221_s3{#s1221_s3}'
    # nr 'Someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. The straps are secured to metal bolts punched into the skeleton„s joints. This skeleton looks like it has seen a great deal of service: many of its bones are chipped and its numerous fractures are bound with sealant and foul-smelling glues.{#s1221_s3_1}'

    menu:
        's1221_s3_r35340{#s1221_s3_r35340}' if s1221Logic.r35340_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s3_r35340}'
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        's1221_s3_r35362{#s1221_s3_r35362}' if s1221Logic.r35362_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s3_r35362}'
            # a24 # r35362
            jump s1221_s4

        's1221_s3_r35363{#s1221_s3_r35363}' if s1221Logic.r35363_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s3_r35363}'
            # a25 # r35363
            jump s1221_s5

        's1221_s3_r35364{#s1221_s3_r35364}' if s1221Logic.r35364_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s1221_s3_r35364}'
            # a26 # r35364
            jump s1221_s6

        's1221_s3_r35365{#s1221_s3_r35365}' if s1221Logic.r35365_condition(): # '"Mind if I borrow some of those straps and bolts?"{#s1221_s3_r35365}'
            # a27 # r35365
            jump s1221_s4

        's1221_s3_r35366{#s1221_s3_r35366}' if s1221Logic.r35366_condition(): # '"Mind if I borrow some of those straps and bolts?"{#s1221_s3_r35366}'
            # a28 # r35366
            jump s1221_s5

        's1221_s3_r35367{#s1221_s3_r35367}' if s1221Logic.r35367_condition(): # '"Mind if I borrow some of those straps and bolts?"{#s1221_s3_r35367}'
            # a29 # r35367
            jump s1221_s6

        's1221_s3_r35368{#s1221_s3_r35368}' if s1221Logic.r35368_condition(): # 'Leave the skeleton in peace.{#s1221_s3_r35368}'
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        's1221_s3_r35369{#s1221_s3_r35369}' if s1221Logic.r35369_condition(): # 'Leave the skeleton in peace.{#s1221_s3_r35369}'
            # a31 # r35369
            jump s1221_dispose

        's1221_s3_r35370{#s1221_s3_r35370}' if s1221Logic.r35370_condition(): # 'Leave the skeleton in peace.{#s1221_s3_r35370}'
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    's1221_s4{#s1221_s4}'
    # nr 'You pull at the iron bolts, but you„re not strong enough to pull them out. They“ve been hammered in pretty tight.{#s1221_s4_1}'

    menu:
        's1221_s4_r35346{#s1221_s4_r35346}' if s1221Logic.r35346_condition(): # '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."{#s1221_s4_r35346}'
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        's1221_s4_r35347{#s1221_s4_r35347}' if s1221Logic.r35347_condition(): # '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."{#s1221_s4_r35347}'
            # a34 # r35347
            jump s1221_dispose

        's1221_s4_r35348{#s1221_s4_r35348}' if s1221Logic.r35348_condition(): # '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."{#s1221_s4_r35348}'
            # a35 # r35348
            jump s1221_dispose

        's1221_s4_r35349{#s1221_s4_r35349}' if s1221Logic.r35349_condition(): # 'Leave the skeleton in peace.{#s1221_s4_r35349}'
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        's1221_s4_r35350{#s1221_s4_r35350}' if s1221Logic.r35350_condition(): # 'Leave the skeleton in peace.{#s1221_s4_r35350}'
            # a37 # r35350
            jump s1221_dispose

        's1221_s4_r35351{#s1221_s4_r35351}' if s1221Logic.r35351_condition(): # 'Leave the skeleton in peace.{#s1221_s4_r35351}'
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    's1221_s5{#s1221_s5}'
    # nr 'You pull at the iron bolts with all your strength, and after a few moments of tugging, you rip the bolts from the joints. The skeleton collapses, some of its bones still twitching.{#s1221_s5_1}'

    menu:
        's1221_s5_r35354{#s1221_s5_r35354}': # '"Sorry about that, Bones…"{#s1221_s5_r35354}'
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    's1221_s6{#s1221_s6}'
    # nr 'Using your prybar, you rip the bolts from the skeleton„s joints. The skeleton collapses, some of its bones still twitching.{#s1221_s6_1}'

    menu:
        's1221_s6_r35357{#s1221_s6_r35357}': # '"Sorry about that, Bones…"{#s1221_s6_r35357}'
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    's1221_s7{#s1221_s7}'
    # nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.{#s1221_s7_1}'

    menu:
