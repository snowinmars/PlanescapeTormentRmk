init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s748_logic import S748Logic
    s748Logic = S748Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS748.DLG
# ###


# s0 # say35383
label s748_s0: # - # IF ~  True()
    nr 'This skeleton - number "748," according to the number chiseled above its brow - is odd only in that some of its teeth appear to be false ones made of reddish-brown stone. They„re clearly not valuable, however, as its caretakers would have otherwise removed them.'

    menu:
        '"Pardon me, have you seen any skeletons walking around here?"' if s748Logic.r35384_condition():
            # a0 # r35384
            $ s748Logic.r35384_action()
            jump s748_s1

        '"Pardon me, have you seen any skeletons walking around here?"' if s748Logic.r35407_condition():
            # a1 # r35407
            jump s748_s1

        '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."' if s748Logic.r35408_condition():
            # a2 # r35408
            $ s748Logic.r35408_action()
            jump s748_s1

        '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."' if s748Logic.r35409_condition():
            # a3 # r35409
            jump s748_s1

        'Use your Stories-Bones-Tell power on the skeleton.' if s748Logic.r35410_condition():
            # a4 # r35410
            jump s748_s2

        'Examine the skeleton carefully.':
            # a5 # r35415
            $ s748Logic.r35415_action()
            jump s748_s3

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35448_condition():
            # a6 # r35448
            $ s748Logic.r35448_action()
            jump morte_s384  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35449_condition():
            # a7 # r35449
            jump s748_s4

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35450_condition():
            # a8 # r35450
            jump s748_s5

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35451_condition():
            # a9 # r35451
            jump s748_s6

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35452_condition():
            # a10 # r35452
            jump s748_s4

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35453_condition():
            # a11 # r35453
            jump s748_s5

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35454_condition():
            # a12 # r35454
            jump s748_s6

        '"How about this skeleton, Morte? Will it do as a body?"' if s748Logic.r35455_condition():
            # a13 # r35455
            jump morte_s380  # EXTERN

        'Leave the skeleton in peace.' if s748Logic.r35456_condition():
            # a14 # r35456
            $ s748Logic.r35456_action()
            jump morte_s378  # EXTERN

        'Leave the skeleton in peace.' if s748Logic.r35457_condition():
            # a15 # r35457
            jump s748_dispose

        'Leave the skeleton in peace.' if s748Logic.r35458_condition():
            # a16 # r35458
            jump s748_dispose


# s1 # say35385
label s748_s1: # from 0.0 0.1 0.2 0.3
    nr 'The skeleton makes no reply.'

    menu:
        '"Great talking to you, Bones. Stay healthy."' if s748Logic.r35386_condition():
            # a17 # r35386
            $ s748Logic.r35386_action()
            jump morte_s378  # EXTERN

        '"Great talking to you, Bones. Stay healthy."' if s748Logic.r35405_condition():
            # a18 # r35405
            jump s748_dispose

        '"Great talking to you, Bones. Stay healthy."' if s748Logic.r35406_condition():
            # a19 # r35406
            jump s748_dispose


# s2 # say35411
label s748_s2: # from 0.4
    nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the skeleton in peace.' if s748Logic.r35412_condition():
            # a20 # r35412
            $ s748Logic.r35412_action()
            jump morte_s378  # EXTERN

        'Leave the skeleton in peace.' if s748Logic.r35413_condition():
            # a21 # r35413
            jump s748_dispose

        'Leave the skeleton in peace.' if s748Logic.r35414_condition():
            # a22 # r35414
            jump s748_dispose


# s3 # say35416
label s748_s3: # from 0.5
    nr 'Someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. The straps are secured to metal bolts punched into the skeleton„s joints. This skeleton looks like it has seen a great deal of service: many of its bones are chipped and its numerous fractures are bound with sealant and foul-smelling glues.'

    menu:
        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35417_condition():
            # a23 # r35417
            $ s748Logic.r35417_action()
            jump morte_s384  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35439_condition():
            # a24 # r35439
            jump s748_s4

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35440_condition():
            # a25 # r35440
            jump s748_s5

        'Try and pry out the skeleton„s joint bolts.' if s748Logic.r35441_condition():
            # a26 # r35441
            jump s748_s6

        '"Mind if I borrow some of those straps and bolts?"' if s748Logic.r35442_condition():
            # a27 # r35442
            jump s748_s4

        '"Mind if I borrow some of those straps and bolts?"' if s748Logic.r35443_condition():
            # a28 # r35443
            jump s748_s5

        '"Mind if I borrow some of those straps and bolts?"' if s748Logic.r35444_condition():
            # a29 # r35444
            jump s748_s6

        'Leave the skeleton in peace.' if s748Logic.r35445_condition():
            # a30 # r35445
            $ s748Logic.r35445_action()
            jump morte_s378  # EXTERN

        'Leave the skeleton in peace.' if s748Logic.r35446_condition():
            # a31 # r35446
            jump s748_dispose

        'Leave the skeleton in peace.' if s748Logic.r35447_condition():
            # a32 # r35447
            jump s748_dispose


# s4 # say35422
label s748_s4: # from 0.7 0.10 3.1 3.4
    nr 'You pull at the iron bolts, but you„re not strong enough to pull them out. They“ve been hammered in pretty tight.'

    menu:
        '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."' if s748Logic.r35423_condition():
            # a33 # r35423
            $ s748Logic.r35423_action()
            jump morte_s378  # EXTERN

        '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."' if s748Logic.r35424_condition():
            # a34 # r35424
            jump s748_dispose

        '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."' if s748Logic.r35425_condition():
            # a35 # r35425
            jump s748_dispose

        'Leave the skeleton in peace.' if s748Logic.r35426_condition():
            # a36 # r35426
            $ s748Logic.r35426_action()
            jump morte_s378  # EXTERN

        'Leave the skeleton in peace.' if s748Logic.r35427_condition():
            # a37 # r35427
            jump s748_dispose

        'Leave the skeleton in peace.' if s748Logic.r35428_condition():
            # a38 # r35428
            jump s748_dispose


# s5 # say35430
label s748_s5: # from 0.8 0.11 3.2 3.5
    nr 'You pull at the iron bolts with all your strength, and after a few moments of tugging, you rip the bolts from the joints. The skeleton collapses, some of its bones still twitching.'

    menu:
        '"Sorry about that, Bones…"':
            # a39 # r35431
            $ s748Logic.r35431_action()
            jump s748_dispose


# s6 # say35433
label s748_s6: # from 0.9 0.12 3.3 3.6
    nr 'Using your prybar, you rip the bolts from the skeleton„s joints. The skeleton collapses, some of its bones still twitching.'

    menu:
        '"Sorry about that, Bones…"':
            # a40 # r35434
            $ s748Logic.r35434_action()
            jump s748_dispose


# s7 # say35459
label s748_s7: # - # IF ~  False()
    nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
