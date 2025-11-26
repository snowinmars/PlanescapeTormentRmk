init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS42.DLG
# ###


# s0 # say6595
label s42_s0: # - # IF ~  True()
    nr 'The skeleton turns to face you. "42" has been chiseled into its forehead, and a number of its bones, mostly the jaws and the joints, have been bound with leather straps. A black smock is draped over its body.'

    menu:
        '"I *think* this is the corpse I had that memory about…"' if s42Logic.r6612_condition():
            # a0 # r6612
            jump s42_s1

        '"Pardon me, have you seen any skeletons walking around here?"':
            # a1 # r6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."' if s42Logic.r6614_condition():
            # a2 # r6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '"I have to ask: Why the smock? I mean, it„s not like you have anything to be modest about."' if s42Logic.r6615_condition():
            # a3 # r6615
            jump s42_s1

        'Use your Stories-Bones-Tell ability on the corpse.' if s42Logic.r6616_condition():
            # a4 # r6616
            jump s42_s2

        'Examine the skeleton carefully.':
            # a5 # r6617
            $ s42Logic.r6617_action()
            jump s42_s3

        'Try and pry out the skeleton„s joint bolts.' if s42Logic.r6618_condition():
            # a6 # r6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if s42Logic.r6619_condition():
            # a7 # r6619
            jump s42_s6

        'Try and pry out the skeleton„s joint bolts.' if s42Logic.r6620_condition():
            # a8 # r6620
            jump s42_s6

        '"How about this skeleton, Morte? Will it do as a body?"' if s42Logic.r6621_condition():
            # a9 # r6621
            jump s42_s1

        'Leave the skeleton in peace.' if s42Logic.r6622_condition():
            # a10 # r6622
            jump morte_s111  # EXTERN

        'Leave the skeleton in peace.' if s42Logic.r6623_condition():
            # a11 # r6623
            jump s42_dispose

        'Leave the skeleton in peace.' if s42Logic.r6624_condition():
            # a12 # r6624
            jump s42_dispose


# s1 # say6596
label s42_s1: # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    nr 'At the sound of your voice, the skeleton suddenly straightens up. It crosses its arms over its chest, and its fingers hook into its rib cage.'

    menu:
        'Cross your arms over your chest.' if s42Logic.r6625_condition():
            # a13 # r6625
            jump s42_s4

        'Mimic the gesture… see what happens.' if s42Logic.r6626_condition():
            # a14 # r6626
            jump s42_s9

        '"Uh…"':
            # a15 # r6627
            jump s42_s10

        'Leave the skeleton alone.':
            # a16 # r6628
            jump s42_dispose


# s2 # say6597
label s42_s2: # from 0.4
    nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.'

    menu:
        'Leave the skeleton in peace.' if s42Logic.r6629_condition():
            # a17 # r6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        'Leave the skeleton in peace.' if s42Logic.r6630_condition():
            # a18 # r6630
            jump s42_dispose

        'Leave the skeleton in peace.' if s42Logic.r6631_condition():
            # a19 # r6631
            jump s42_dispose


# s3 # say6598
label s42_s3: # from 0.5 10.2
    nr 'You„re amazed this rack of bones is still in one piece. Its yellowed bones are smeared with plaster and several layers of foul-smelling glues… what little you can see of the bones reveals hundreds of hairline fractures. Although someone has taken care to bind this skeleton with leather straps and bolt its joints together, the straps are frayed and the bolts look like they are about to fall out.'

    menu:
        '"I *think* this is the corpse I had that memory about…"' if s42Logic.r63495_condition():
            # a20 # r63495
            jump s42_s1

        'Try and pry out the skeleton„s joint bolts.' if s42Logic.r6632_condition():
            # a21 # r6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        'Try and pry out the skeleton„s joint bolts.' if s42Logic.r6633_condition():
            # a22 # r6633
            jump s42_s6

        '"Mind if I borrow some of those straps and bolts?"' if s42Logic.r6634_condition():
            # a23 # r6634
            jump s42_s1

        'Leave the skeleton in peace.' if s42Logic.r6635_condition():
            # a24 # r6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        'Leave the skeleton in peace.' if s42Logic.r6636_condition():
            # a25 # r6636
            jump s42_dispose

        'Leave the skeleton in peace.' if s42Logic.r6637_condition():
            # a26 # r6637
            jump s42_dispose


# s4 # say6599
label s42_s4: # from 1.0 12.0
    nr 'In response, the skeleton drops its arms to its sides. The leather cords securing the skeleton„s torso snap, and the rib cage folds outward like a pair of double doors.'

    menu:
        'Reach into the rib cage, feel around.':
            # a27 # r6638
            jump s42_s5

        'Leave the skeleton alone.':
            # a28 # r6639
            jump s42_dispose


# s5 # say6600
label s42_s5: # from 4.0 9.0
    nr 'To your surprise, your hand vanishes as you reach inside the rib cage… you have a strange feeling it„s somewhere *else.* As you reach inside the rib cage, your hand bumps against an invisible object. It“s about the size of a fist and seems to be attached to the skeleton„s spine.'

    menu:
        'Take the item out.':
            # a29 # r6640
            $ s42Logic.r6640_action()
            jump s42_s7

        'Leave the skeleton alone.':
            # a30 # r6641
            jump s42_dispose


# s6 # say6601
label s42_s6: # from 0.7 0.8 3.2
    nr 'The bolts slide easily out of the skeleton„s joints. The skeleton collapses, some of its bones still twitching.'

    menu:
        '"Sorry about that, Bones…"':
            # a31 # r6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7: # from 5.0
    nr 'As you pull the item out, the skeleton suddenly disintegrates, and the iron bolts securing its joints clatter to the floor. Whatever this item was, it seems to have been the only thing holding it together.'

    menu:
        'Examine the item.' if s42Logic.r6643_condition():
            # a32 # r6643
            jump s42_s8

        'Examine the item.' if s42Logic.r6644_condition():
            # a33 # r6644
            jump s42_s8


# s8 # say6603
label s42_s8: # from 7.0 7.1
    nr 'It looks like an unremarkable lump of iron. You can„t imagine why someone would hide it inside the rib cage of a skeleton.'

    menu:
        'Examine the piece of iron.':
            # a34 # r6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9: # from 1.1 12.1
    nr 'In response, the skeleton drops its arms to its sides. The leather cords securing the skeleton„s torso snap, and the rib cage folds outward like a pair of double doors. You can“t explain why, but you have a sudden urge to reach inside the rib cage.'

    menu:
        'Reach into the rib cage, feel around.':
            # a35 # r6646
            jump s42_s5

        'Leave the skeleton alone.':
            # a36 # r6647
            jump s42_dispose


# s10 # say6605
label s42_s10: # from 1.2 12.2
    nr 'The skeleton„s arms drop to its sides.'

    menu:
        '"Uh… hello?"' if s42Logic.r6648_condition():
            # a37 # r6648
            jump s42_s12

        '"Uh… hello?"' if s42Logic.r6649_condition():
            # a38 # r6649
            jump s42_s13

        'Examine the skeleton carefully.':
            # a39 # r6650
            $ s42Logic.r6650_action()
            jump s42_s3

        'Leave the skeleton alone.':
            # a40 # r6651
            jump s42_dispose


# s11 # say6606
label s42_s11: # -
    nr 'It looks like an unremarkable lump of iron. Your previous incarnation must have had a reason for hiding it here.'

    menu:
        'Examine the piece of iron carefully.':
            # a41 # r6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12: # from 10.0
    nr 'The skeleton crosses its arms across its chest again.'

    menu:
        'Cross your arms over your chest.' if s42Logic.r6653_condition():
            # a42 # r6653
            jump s42_s4

        'Mimic the gesture… see what happens.' if s42Logic.r6654_condition():
            # a43 # r6654
            jump s42_s9

        '"Uh…"':
            # a44 # r6655
            jump s42_s10

        'Leave the skeleton alone.':
            # a45 # r6656
            jump s42_dispose


# s13 # say6608
label s42_s13: # from 10.1
    nr 'The skeleton crosses its arms across its chest again.'

    jump morte_s112  # EXTERN


# s14 # say58983
label s42_s14: # from 8.0 11.0
    nr 'As you place both your hands on the lump of iron to examine it, there is a *hssssss,* and the metal evaporates, leaving behind a strange dagger, a handful of coins wrapped in a dirty cloth, and two bloody teardrops - these look like they were *inside* the lump of iron.'

    menu:
        'Take the items and leave.':
            # a46 # r58984
            $ s42Logic.r58984_action()
            jump s42_dispose
