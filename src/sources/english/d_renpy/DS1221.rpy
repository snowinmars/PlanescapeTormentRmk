init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    nr 'This animated skeleton smells horrible, as if it had been only freshly stripped and prepared. Its jaw and major joints are tightly bound with leather straps, and a rough smock has been thrown over it. The number "1221" has been chiseled into its forehead.'

    menu:
        '"Pardon me, have you seen any skeletons walking around here?"' if s1221Logic.r35307_condition():
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        '"Pardon me, have you seen any skeletons walking around here?"' if s1221Logic.r35330_condition():
            # a1 # r35330
            jump s1221_s1

        '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."' if s1221Logic.r35331_condition():
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."' if s1221Logic.r35332_condition():
            # a3 # r35332
            jump s1221_s1

        'Use your Stories-Bones-Tell power on the skeleton.' if s1221Logic.r35333_condition():
            # a4 # r35333
            jump s1221_s2

        'Examine the skeleton carefully.':
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35371_condition():
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35372_condition():
            # a7 # r35372
            jump s1221_s4

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35373_condition():
            # a8 # r35373
            jump s1221_s5

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35374_condition():
            # a9 # r35374
            jump s1221_s6

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35375_condition():
            # a10 # r35375
            jump s1221_s4

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35376_condition():
            # a11 # r35376
            jump s1221_s5

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35377_condition():
            # a12 # r35377
            jump s1221_s6

        '"How about this skeleton, Morte? Will it do as a body?"' if s1221Logic.r35378_condition():
            # a13 # r35378
            jump morte_s372  # EXTERN

        'Leave the skeleton in peace.' if s1221Logic.r35379_condition():
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        'Leave the skeleton in peace.' if s1221Logic.r35380_condition():
            # a15 # r35380
            jump s1221_dispose

        'Leave the skeleton in peace.' if s1221Logic.r35381_condition():
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    nr 'The skeleton makes no reply.'

    menu:
        '"Great talking to you, Bones. Stay healthy."' if s1221Logic.r35309_condition():
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        '"Great talking to you, Bones. Stay healthy."' if s1221Logic.r35328_condition():
            # a18 # r35328
            jump s1221_dispose

        '"Great talking to you, Bones. Stay healthy."' if s1221Logic.r35329_condition():
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the skeleton in peace.' if s1221Logic.r35335_condition():
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        'Leave the skeleton in peace.' if s1221Logic.r35336_condition():
            # a21 # r35336
            jump s1221_dispose

        'Leave the skeleton in peace.' if s1221Logic.r35337_condition():
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    nr 'Someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. The straps are secured to metal bolts punched into the skeleton„s joints. This skeleton looks like it has seen a great deal of service: many of its bones are chipped and its numerous fractures are bound with sealant and foul-smelling glues.'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35340_condition():
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35362_condition():
            # a24 # r35362
            jump s1221_s4

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35363_condition():
            # a25 # r35363
            jump s1221_s5

        'Try and pry out the skeleton„s joint bolts.' if s1221Logic.r35364_condition():
            # a26 # r35364
            jump s1221_s6

        '"Mind if I borrow some of those straps and bolts?"' if s1221Logic.r35365_condition():
            # a27 # r35365
            jump s1221_s4

        '"Mind if I borrow some of those straps and bolts?"' if s1221Logic.r35366_condition():
            # a28 # r35366
            jump s1221_s5

        '"Mind if I borrow some of those straps and bolts?"' if s1221Logic.r35367_condition():
            # a29 # r35367
            jump s1221_s6

        'Leave the skeleton in peace.' if s1221Logic.r35368_condition():
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        'Leave the skeleton in peace.' if s1221Logic.r35369_condition():
            # a31 # r35369
            jump s1221_dispose

        'Leave the skeleton in peace.' if s1221Logic.r35370_condition():
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    nr 'You pull at the iron bolts, but you„re not strong enough to pull them out. They“ve been hammered in pretty tight.'

    menu:
        '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."' if s1221Logic.r35346_condition():
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."' if s1221Logic.r35347_condition():
            # a34 # r35347
            jump s1221_dispose

        '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."' if s1221Logic.r35348_condition():
            # a35 # r35348
            jump s1221_dispose

        'Leave the skeleton in peace.' if s1221Logic.r35349_condition():
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        'Leave the skeleton in peace.' if s1221Logic.r35350_condition():
            # a37 # r35350
            jump s1221_dispose

        'Leave the skeleton in peace.' if s1221Logic.r35351_condition():
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    nr 'You pull at the iron bolts with all your strength, and after a few moments of tugging, you rip the bolts from the joints. The skeleton collapses, some of its bones still twitching.'

    menu:
        '"Sorry about that, Bones…"':
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    nr 'Using your prybar, you rip the bolts from the skeleton„s joints. The skeleton collapses, some of its bones still twitching.'

    menu:
        '"Sorry about that, Bones…"':
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
