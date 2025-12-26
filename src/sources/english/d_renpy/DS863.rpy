init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s863_logic import S863Logic
    s863Logic = S863Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS863.DLG
# ###


# s0 # say35537
label s863_s0: # from 10.0 # IF ~  !HasItem("DRemind","S863")
    's863_s0{#s863_s0}'
    # nr 'This skeleton looks like it has seen a great deal of action, either because of combat or by falling down one too many staircases; both its arms and legs have been broken and rebuilt with the aid of leather straps and thin iron rods. The front of its skull bears the number "863"… but the back of the skull has caved in, forming an empty cavity.{#s863_s0_1}'

    menu:
        's863_s0_r35538{#s863_s0_r35538}' if s863Logic.r35538_condition(): # '"Sorry about taking that parchment, but I doubt you would have delivered it any time soon."{#s863_s0_r35538}'
            # a0 # r35538
            $ s863Logic.r35538_action()
            jump s863_s1

        's863_s0_r35561{#s863_s0_r35561}' if s863Logic.r35561_condition(): # '"Sorry about taking that parchment, but I doubt you would have delivered it any time soon."{#s863_s0_r35561}'
            # a1 # r35561
            jump s863_s1

        's863_s0_r35562{#s863_s0_r35562}' if s863Logic.r35562_condition(): # '"I have to ask: Are those broken bones from combat or from falling down?"{#s863_s0_r35562}'
            # a2 # r35562
            $ s863Logic.r35562_action()
            jump s863_s1

        's863_s0_r35563{#s863_s0_r35563}' if s863Logic.r35563_condition(): # '"I have to ask: Are those broken bones from combat or from falling down?"{#s863_s0_r35563}'
            # a3 # r35563
            jump s863_s1

        's863_s0_r35564{#s863_s0_r35564}' if s863Logic.r35564_condition(): # 'Use your Stories-Bones-Tell power on the skeleton.{#s863_s0_r35564}'
            # a4 # r35564
            jump s863_s2

        's863_s0_r35569{#s863_s0_r35569}': # 'Examine the skeleton carefully.{#s863_s0_r35569}'
            # a5 # r35569
            $ s863Logic.r35569_action()
            jump s863_s3

        's863_s0_r35602{#s863_s0_r35602}' if s863Logic.r35602_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35602}'
            # a6 # r35602
            $ s863Logic.r35602_action()
            jump morte_s400  # EXTERN

        's863_s0_r35603{#s863_s0_r35603}' if s863Logic.r35603_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35603}'
            # a7 # r35603
            jump s863_s4

        's863_s0_r35604{#s863_s0_r35604}' if s863Logic.r35604_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35604}'
            # a8 # r35604
            jump s863_s5

        's863_s0_r35605{#s863_s0_r35605}' if s863Logic.r35605_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35605}'
            # a9 # r35605
            jump s863_s6

        's863_s0_r35606{#s863_s0_r35606}' if s863Logic.r35606_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35606}'
            # a10 # r35606
            jump s863_s4

        's863_s0_r35607{#s863_s0_r35607}' if s863Logic.r35607_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35607}'
            # a11 # r35607
            jump s863_s5

        's863_s0_r35608{#s863_s0_r35608}' if s863Logic.r35608_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s0_r35608}'
            # a12 # r35608
            jump s863_s6

        's863_s0_r35609{#s863_s0_r35609}' if s863Logic.r35609_condition(): # '"How about this skeleton, Morte? Will it do as a body?"{#s863_s0_r35609}'
            # a13 # r35609
            jump morte_s396  # EXTERN

        's863_s0_r35610{#s863_s0_r35610}' if s863Logic.r35610_condition(): # 'Leave the skeleton in peace.{#s863_s0_r35610}'
            # a14 # r35610
            $ s863Logic.r35610_action()
            jump morte_s394  # EXTERN

        's863_s0_r35611{#s863_s0_r35611}' if s863Logic.r35611_condition(): # 'Leave the skeleton in peace.{#s863_s0_r35611}'
            # a15 # r35611
            jump s863_dispose

        's863_s0_r35612{#s863_s0_r35612}' if s863Logic.r35612_condition(): # 'Leave the skeleton in peace.{#s863_s0_r35612}'
            # a16 # r35612
            jump s863_dispose


# s1 # say35539
label s863_s1: # from 0.0 0.1 0.2 0.3
    's863_s1{#s863_s1}'
    # nr 'The skeleton makes no reply.{#s863_s1_1}'

    menu:
        's863_s1_r35540{#s863_s1_r35540}' if s863Logic.r35540_condition(): # '"Great talking to you, Bones. Stay healthy."{#s863_s1_r35540}'
            # a17 # r35540
            $ s863Logic.r35540_action()
            jump morte_s394  # EXTERN

        's863_s1_r35559{#s863_s1_r35559}' if s863Logic.r35559_condition(): # '"Great talking to you, Bones. Stay healthy."{#s863_s1_r35559}'
            # a18 # r35559
            jump s863_dispose

        's863_s1_r35560{#s863_s1_r35560}' if s863Logic.r35560_condition(): # '"Great talking to you, Bones. Stay healthy."{#s863_s1_r35560}'
            # a19 # r35560
            jump s863_dispose


# s2 # say35565
label s863_s2: # from 0.4
    's863_s2{#s863_s2}'
    # nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.{#s863_s2_1}'

    menu:
        's863_s2_r35566{#s863_s2_r35566}' if s863Logic.r35566_condition(): # 'Leave the skeleton in peace.{#s863_s2_r35566}'
            # a20 # r35566
            $ s863Logic.r35566_action()
            jump morte_s394  # EXTERN

        's863_s2_r35567{#s863_s2_r35567}' if s863Logic.r35567_condition(): # 'Leave the skeleton in peace.{#s863_s2_r35567}'
            # a21 # r35567
            jump s863_dispose

        's863_s2_r35568{#s863_s2_r35568}' if s863Logic.r35568_condition(): # 'Leave the skeleton in peace.{#s863_s2_r35568}'
            # a22 # r35568
            jump s863_dispose


# s3 # say35570
label s863_s3: # from 0.5
    's863_s3{#s863_s3}'
    # nr 'Someone has taken care to bind the bones of this skeleton with leather straps, woven around the body in such a pattern that they resemble muscles and tendons. The straps are secured to metal bolts punched into the skeleton„s joints. This skeleton looks like it has seen a great deal of service: many of its bones are chipped and its numerous fractures are bound with sealant and foul-smelling glues.{#s863_s3_1}'

    menu:
        's863_s3_r35571{#s863_s3_r35571}' if s863Logic.r35571_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s3_r35571}'
            # a23 # r35571
            $ s863Logic.r35571_action()
            jump morte_s400  # EXTERN

        's863_s3_r35593{#s863_s3_r35593}' if s863Logic.r35593_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s3_r35593}'
            # a24 # r35593
            jump s863_s4

        's863_s3_r35594{#s863_s3_r35594}' if s863Logic.r35594_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s3_r35594}'
            # a25 # r35594
            jump s863_s5

        's863_s3_r35595{#s863_s3_r35595}' if s863Logic.r35595_condition(): # 'Try and pry out the skeleton„s joint bolts.{#s863_s3_r35595}'
            # a26 # r35595
            jump s863_s6

        's863_s3_r35596{#s863_s3_r35596}' if s863Logic.r35596_condition(): # '"Mind if I borrow some of those straps and bolts?"{#s863_s3_r35596}'
            # a27 # r35596
            jump s863_s4

        's863_s3_r35597{#s863_s3_r35597}' if s863Logic.r35597_condition(): # '"Mind if I borrow some of those straps and bolts?"{#s863_s3_r35597}'
            # a28 # r35597
            jump s863_s5

        's863_s3_r35598{#s863_s3_r35598}' if s863Logic.r35598_condition(): # '"Mind if I borrow some of those straps and bolts?"{#s863_s3_r35598}'
            # a29 # r35598
            jump s863_s6

        's863_s3_r35599{#s863_s3_r35599}' if s863Logic.r35599_condition(): # 'Leave the skeleton in peace.{#s863_s3_r35599}'
            # a30 # r35599
            $ s863Logic.r35599_action()
            jump morte_s394  # EXTERN

        's863_s3_r35600{#s863_s3_r35600}' if s863Logic.r35600_condition(): # 'Leave the skeleton in peace.{#s863_s3_r35600}'
            # a31 # r35600
            jump s863_dispose

        's863_s3_r35601{#s863_s3_r35601}' if s863Logic.r35601_condition(): # 'Leave the skeleton in peace.{#s863_s3_r35601}'
            # a32 # r35601
            jump s863_dispose


# s4 # say35576
label s863_s4: # from 0.7 0.10 3.1 3.4
    's863_s4{#s863_s4}'
    # nr 'You pull at the iron bolts, but you„re not strong enough to pull them out. They“ve been hammered in pretty tight.{#s863_s4_1}'

    menu:
        's863_s4_r35577{#s863_s4_r35577}' if s863Logic.r35577_condition(): # '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."{#s863_s4_r35577}'
            # a33 # r35577
            $ s863Logic.r35577_action()
            jump morte_s394  # EXTERN

        's863_s4_r35578{#s863_s4_r35578}' if s863Logic.r35578_condition(): # '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."{#s863_s4_r35578}'
            # a34 # r35578
            jump s863_dispose

        's863_s4_r35579{#s863_s4_r35579}' if s863Logic.r35579_condition(): # '"Maybe if I had the right tool, I could get them out… hmmmm. I may be back, Bones."{#s863_s4_r35579}'
            # a35 # r35579
            jump s863_dispose

        's863_s4_r35580{#s863_s4_r35580}' if s863Logic.r35580_condition(): # 'Leave the skeleton in peace.{#s863_s4_r35580}'
            # a36 # r35580
            $ s863Logic.r35580_action()
            jump morte_s394  # EXTERN

        's863_s4_r35581{#s863_s4_r35581}' if s863Logic.r35581_condition(): # 'Leave the skeleton in peace.{#s863_s4_r35581}'
            # a37 # r35581
            jump s863_dispose

        's863_s4_r35582{#s863_s4_r35582}' if s863Logic.r35582_condition(): # 'Leave the skeleton in peace.{#s863_s4_r35582}'
            # a38 # r35582
            jump s863_dispose


# s5 # say35584
label s863_s5: # from 0.8 0.11 3.2 3.5
    's863_s5{#s863_s5}'
    # nr 'You pull at the iron bolts with all your strength, and after a few moments of tugging, you rip the bolts from the joints. The skeleton collapses, some of its bones still twitching.{#s863_s5_1}'

    menu:
        's863_s5_r35585{#s863_s5_r35585}': # '"Sorry about that, Bones…"{#s863_s5_r35585}'
            # a39 # r35585
            $ s863Logic.r35585_action()
            jump s863_dispose


# s6 # say35587
label s863_s6: # from 0.9 0.12 3.3 3.6
    's863_s6{#s863_s6}'
    # nr 'Using your prybar, you rip the bolts from the skeleton„s joints. The skeleton collapses, some of its bones still twitching.{#s863_s6_1}'

    menu:
        's863_s6_r35588{#s863_s6_r35588}': # '"Sorry about that, Bones…"{#s863_s6_r35588}'
            # a40 # r35588
            $ s863Logic.r35588_action()
            jump s863_dispose


# s7 # say35613
label s863_s7: # - # IF ~  False()
    's863_s7{#s863_s7}'
    # nr 'This skeleton makes no reply. It looks like it is too far gone to answer any of your questions.{#s863_s7_1}'

    menu:

# s8 # say64262
label s863_s8: # - # IF ~  HasItem("DRemind","S863")
    's863_s8{#s863_s8}'
    # nr 'This skeleton has either seen a great deal of combat or has fallen down one too many staircases; both its arms and legs have been broken and rebuilt with the aid of leather straps and thin iron rods. The front of its skull bears the number "863"… but the back of the skull has caved in, forming an empty cavity. You notice that someone has taken advantage of this and tucked a rolled up piece of parchment inside the skull.{#s863_s8_1}'

    menu:
        's863_s8_r64263{#s863_s8_r64263}': # 'Take the parchment out of the skeleton„s skull.{#s863_s8_r64263}'
            # a41 # r64263
            jump s863_s9

        's863_s8_r64264{#s863_s8_r64264}': # 'Leave the skeleton in peace.{#s863_s8_r64264}'
            # a42 # r64264
            jump s863_dispose


# s9 # say64265
label s863_s9: # from 8.0
    's863_s9{#s863_s9}'
    # nr 'You slip the parchment out of the worker„s skull - oddly enough, it looks as if the skull cavity is *intended* to store messages; a tiny string is attached to the parchment from a hook bolted inside the skull, as if to keep the parchment from accidentally falling out.{#s863_s9_1}'

    menu:
        's863_s9_r64266{#s863_s9_r64266}': # 'Unhook the string, take the parchment.{#s863_s9_r64266}'
            # a43 # r64266
            $ s863Logic.r64266_action()
            jump s863_s10


# s10 # say64267
label s863_s10: # from 9.0
    's863_s10{#s863_s10}'
    # nr 'You unhook the string and glance over the parchment - it looks like a reminder from one of the Mortuary custodians. Judging from the note, this skeleton seems to be a walking messenger of sorts. As you take a second glance at the skeleton, you realize it has stopped in front of the slab because it can„t figure out how to move past it.  ^NNOTE: <READSTUFF>^-{#s863_s10_1}'

    menu:
        's863_s10_r64268{#s863_s10_r64268}': # 'Examine the skeleton again.{#s863_s10_r64268}'
            # a44 # r64268
            jump s863_s0

        's863_s10_r64269{#s863_s10_r64269}': # 'Leave the skeleton in peace.{#s863_s10_r64269}'
            # a45 # r64269
            jump s863_dispose
