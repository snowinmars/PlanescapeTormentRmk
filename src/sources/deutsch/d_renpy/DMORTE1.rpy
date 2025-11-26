init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte1_logic import Morte1Logic
    morte1Logic = Morte1Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE1.DLG
# ###


# s0 # say39792
label morte1_s0: # - # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    nr '"Hey, Meister. Bist du okay? Stellst du dich nur tot, um die Staubies in die Irre zu führen? Ich dachte wirklich, du seist ein Totenbüchler."~ [MRT001]'

    menu:
        '"W…? Wer bist du?"':
            # a0 # r39793
            $ morte1Logic.r39793_action()
            jump morte1_s1


# s1 # say39795
label morte1_s1: # from 0.0
    nr '"Äh… wer *ich* bin? Wie wär„s, wenn *du* anfängst? Wer bist du?"'

    menu:
        '"Ich… weiß nicht. Ich kann mich nicht erinnern."':
            # a1 # r39796
            jump morte1_s2

        '"Ich hab„ *dich* zuerst gefragt, Totenschädel."':
            # a2 # r39797
            jump morte1_s3


# s2 # say39798
label morte1_s2: # from 1.0 3.0 4.0
    nr '"Du kannst dich nicht an deinen *Namen* erinnern? Heh. Tja, das NÄCHSTE Mal, wenn du wieder hier absteigst, geh „n bißchen vorsichtiger mit dem Fusel um. Mein Name ist Morte. Ich bin hier auch gefangen."'

    menu:
        '"Gefangen?"':
            # a3 # r39799
            jump morte1_s5


# s3 # say39800
label morte1_s3: # from 1.1
    nr '"Ja, und ich hab„ dich als *Zweiter* gefragt. Wie heißt du?"'

    menu:
        '"Ich… weiß nicht. Ich kann mich nicht erinnern."':
            # a4 # r39801
            jump morte1_s2

        '"Du zuerst, Schädel. Ich frage dich zum letzten Mal."':
            # a5 # r39802
            jump morte1_s4


# s4 # say39803
label morte1_s4: # from 3.1
    nr '"Tchhhh… du bist sturer als ein Esel. Also gut, dann spiele *ich* mal den Höflichen hier. Ich bin Morte. Wer bist du?"'

    menu:
        '"Ich… weiß nicht. Ich kann mich nicht erinnern."':
            # a6 # r39804
            jump morte1_s2


# s5 # say39805
label morte1_s5: # from 2.0
    nr '"Ja, da du dir noch nicht die Beine vertreten konntest, sage ich dir, was los ist: Ich hab„s schon an jeder Tür probiert. Dieser Raum ist fester verschlossen als ein Keuschheitsgürtel."'

    menu:
        '"Und… wo sind wir hier eingesperrt? Was ist das für ein Ort?"':
            # a7 # r39806
            jump morte1_s6


# s6 # say39807
label morte1_s6: # from 5.0
    nr '"Man nennt diesen Ort die „Leichenhalle“… Es ist ein großer schwarzer Bau mit dem architektonischen Charme einer schwangeren Spinne."'

    menu:
        '"Die Leichenhalle? Was… Bin ich tot?"':
            # a8 # r39808
            jump morte1_s7


# s7 # say39809
label morte1_s7: # from 6.0
    nr '"Soweit ich weiß nicht. Du hast aber ganz schön viele Narben, du… siehst aus, als ob dich irgendein Dussel mit einem Messer verziert hat. Ein Grund mehr, diesem Ort eins zu grinsen, bevor derjenige, der dich so zugerichtet hat, wiederkommt, um sein Kunstwerk zu vollenden."'

    menu:
        '"Narben? Wie schlimm sind die?"':
            # a9 # r39810
            jump morte1_s8


# s8 # say39811
label morte1_s8: # from 7.0
    nr '"Tja… Die Schnitzereien auf deiner Brust sind nicht ALLZU schlimm… aber die auf deinem Rücken…" Morte hält inne. "Sag mal, sieht ja so aus, als ob du ne ganze Tätowierungsgalerie auf deinem Rücken hättst, Meister. Da steht was geschrieben…"'

    menu:
        '"Tätowierungen auf meinem Rücken? Was ist denn da zu lesen?"':
            # a10 # r39812
            jump morte1_s9


# s9 # say39813
label morte1_s9: # from 8.0
    nr '"Heh! Sieht so aus, als ob du mit Anleitung geliefert worden bist…" Morte räuspert sich. "Laß mal sehen… Das fängt an mit…  „Ich weiß, daß du dich so fühlst, als hättest du “n paar Eimer Styx-Wasser getrunken, aber du mußt dich KONZENTRIEREN. In deinem Besitz sollte sich ein JOURNAL befinden, das ein wenig Licht in das Dunkel dieser Angelegenheit bringen kann. PHAROD sollte dir den restlichen Plausch liefern können, wenn er nicht bereits im Totenbuch steht.„'

    menu:
        '"Pharod…? Steht da noch irgend etwas?"':
            # a11 # r39814
            jump morte1_s10


# s10 # say39815
label morte1_s10: # from 9.0
    nr '"Ja, da ist noch„n bißchen mehr…" Morte hält inne. "Laß mal sehen… Das geht so weiter…"  “Verliere das Journal nicht, sonst sind wir schon wieder den Styx hoch. Und was auch immer du tust, erzähle NIEMANDEM, WER du bist oder WAS mit dir geschieht, denn sonst wirst du auf eine schnelle Pilgerfahrt zum Krematorium geschickt. Tu, was ich dir sage: LIES das Journal, und dann FINDE Pharod.„'

    menu:
        '"Kein Wunder, daß mein Rücken wehtut. Da ist ja „n ganzer Roman draufgeschrieben. Und was dieses Journal betrifft, das ich bei mir haben sollte… War da eins bei mir, als ich hier gelegen habe?"':
            # a12 # r39816
            jump morte1_s11


# s11 # say39817
label morte1_s11: # from 10.0
    nr '"Nein… Du hattest nichts mehr außer deiner Haut, als du hier angekommen bist. Außerdem sieht„s so aus, als ob du schon genug von einem Journal auf deinen Körper geschrieben bekommen hast."'

    menu:
        '"Was ist mit Pharod? Kennst du ihn?"':
            # a13 # r39818
            jump morte1_s12


# s12 # say39819
label morte1_s12: # from 11.0
    nr '"Niemand, den ich kenne. Aber andererseits kenne ich auch nicht allzu viele Leute. Trotzdem, IRGENDEIN Dussel muß ja wissen, wo man Pharod finden kann… äh, wenn wir erstmal hier rauskommen, meine ich."'

    menu:
        '"Wie *kommen* wir denn hier raus?"':
            # a14 # r39820
            jump morte1_s13


# s13 # say39821
label morte1_s13: # from 12.0
    nr '"Tja, alle Türen sind verriegelt. Wir brauchen also den Schlüssel. Die Chancen stehen nicht schlecht, daß eine dieser wandelnden Leichen in diesem Raum ihn hat."'

    menu:
        '"Wandelnde Leichen?"':
            # a15 # r39822
            jump morte1_s14


# s14 # say39823
label morte1_s14: # from 13.0
    nr '"Ja, die Leichenhallenwärter setzen die toten Körper als billige Arbeitskräfte ein. Die Leichen sind stumm wie Steine, aber völlig harmlos, und würden einen erst angreifen, wenn man ihnen zuerst auf die Pelle rückt."'

    menu:
        '"Gibt„s keinen anderen Weg? Ich will sie nicht für einen Schlüssel umbringen."':
            # a16 # r39824
            $ morte1Logic.r39824_action()
            jump morte1_s15

        '"Ich soll also eine dieser Leichen überwältigen und nach dem Schlüssel durchsuchen?"':
            # a17 # r39825
            jump morte1_s16


# s15 # say39826
label morte1_s15: # from 14.0
    nr '"Was? Du glaubst, das verletzt ihre Gefühle? Sie sind TOT. Aber von der positiven Seite gesehen: Wenn du sie umbringst, haben sie wenigstens ein Weilchen Ruhe, bevor ihre Wärter sie wieder zum Arbeiten aufpäppeln."'

    menu:
        '"Nun, also gut… Ich mache eine von ihnen platt und hol„ den Schlüssel."':
            # a18 # r39827
            jump morte1_s16


# s16 # say39828
label morte1_s16: # from 14.1 15.0
    nr '"Nun, bevor du das tust, solltest du dich zuerst bewaffnen. Ich glaube, auf einem der Regale hier befindet sich ein Skalpell."  ^NHINWEIS: Suche die Regale in dem Raum nach Waffen ab, mit denen du die Zombies angreifen kannst. <SEARCH_WEAPON>^-'

    menu:
        '"In Ordnung. Ich suche danach."':
            # a19 # r39829
            jump morte1_s17


# s17 # say39830
label morte1_s17: # from 16.0
    nr '"Eine letzte Sache: Diese Leichen sind langsam wie Schnecken, aber von einem von ihnen geschlagen zu werden fühlt sich an, wie von einem Rammbock geküsst zu werden. Wenn sie beginnen, Oberhand über dich zu gewinnen, solltest du daran denken, dass du RENNEN kannst, sie aber nicht. Nutze diesen, um Abstand zu halten, wenn du dich erholen musst."  ^NHINWEIS: <RUNAWAY> Falls Gefahr besteht, dass du stirbst, solltest du rennen, um Abstand zu den Zombies zu halten, während du dich erholst.^-'

    menu:
        '"In Ordnung. Danke für den Tip."':
            # a20 # r39831
            $ morte1Logic.r39831_action()
            jump morte1_dispose


# s18 # say39832
label morte1_s18: # - # IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Auf einem der Regale hier sollte sich ein Skalpell befinden. An deiner Stelle würde ich es finden, bevor du dich mit einem der Leichen hier beschäftigst."  ^NHINWEIS: Suche die Regale in dem Raum nach Waffen ab, mit denen du die Zombies angreifen kannst. <SEARCH_WEAPON>^-'

    menu:
        '"OK… Ich suche weiter."':
            # a21 # r39833
            jump morte1_dispose


# s19 # say39834
label morte1_s19: # - # IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Prima, du hast das Skalpell gefunden! Und jetzt schnapp„ dir diese Leichen… und keine Bange, ich bleibe im Hintergrund und gebe dir taktische Ratschläge."'

    menu:
        '"Vielleicht könntest du mir *helfen,* Morte."':
            # a22 # r39835
            jump morte1_s20

        '"In Ordnung."':
            # a23 # r39836
            jump morte1_s23


# s20 # say39837
label morte1_s20: # from 19.0
    nr '"Ich WERDE dir helfen. Guten Rat bekommt man nicht leicht."'

    menu:
        '"Ich meinte beim Angriff auf die *Leiche* helfen."':
            # a24 # r39838
            jump morte1_s21

        '"Also gut."':
            # a25 # r39839
            jump morte1_s23


# s21 # say39840
label morte1_s21: # from 20.0
    nr '"Ich? Ich bin ein Romantiker und kein Soldat. Ich würde dir nur im Weg stehen."'

    menu:
        '"Wenn ich die Leiche angreife, stehst du mir besser bei, oder du bist der Nächste, in den ich dieses Skalpell stoße."':
            # a26 # r39841
            jump morte1_s22

        '"Also gut."':
            # a27 # r39842
            jump morte1_s23


# s22 # say39843
label morte1_s22: # from 21.0
    nr '"Äh… na gut. Ich helfe dir."  ^NHINWEIS: Wenn Morte dir beim Kämpfen helfen soll, müßt ihr beide angewählt sein, wenn du die Leiche angreifst. Morte greift dann mit an.^-'

    menu:
        '"Ich bin froh, daß wir uns verstehen."':
            # a28 # r39844
            jump morte1_s23


# s23 # say39845
label morte1_s23: # from 19.1 20.1 21.1 22.0
    nr '"Zeit also, diesen Leichen einen zweiten Tod zu bescheren…"  ^NHINWEIS: <ATTACKNOTE>^-'

    menu:
        '"Gehen wir."':
            # a29 # r39846
            jump morte1_dispose


# s24 # say39847
label morte1_s24: # - # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    nr '"Alles klar, du hast dich offenbar um die richtige Leiche gekümmert. Jetzt musst du den Schlüssel finden. Er sollte ihn an seinem Körper haben. Wenn wir ihn haben, kommen wir hier raus."  ^NHINWEIS: <DEADPILE>^-'

    menu:
        '"In Ordnung."':
            # a30 # r39848
            jump morte1_dispose


# s25 # say39849
label morte1_s25: # - # IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("KeyPr")
    nr '"Prima, das ist der Schlüssel. Er muß in eine der Türen im Raum passen."'

    menu:
        '"Ich probier dann mal sämtliche Türen."':
            # a31 # r39850
            jump morte1_dispose


# s26 # say39851
label morte1_s26: # - # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    nr '"Ich wußte doch, daß du zurückkommst, Meister! Hast wohl endlich eingesehen, daß du mich brauchst, was?"~ [MRT516]'

    menu:
        '"Ja… Gehen wir."':
            # a32 # r39852
            $ morte1Logic.r39852_action()
            jump morte1_dispose

        '"Nein, Morte, im Moment brauche ich dich nicht."':
            # a33 # r39853
            jump morte1_s27


# s27 # say39854
label morte1_s27: # from 26.1
    nr '"Hmmm. Na, ich werde hier nicht ewig warten. Also werde ich dir noch eine LETZTE Chance geben. Bist du sicher, daß du meine weisen Ratschläge und meinen scharfen Verstand nicht brauchst?"'

    menu:
        '"Morte, du hast WEDER das eine noch das andere."':
            # a34 # r39855
            jump morte1_s28

        '"Na gut, ich hab„s mir anders überlegt. Komm, laß uns gehen."':
            # a35 # r39856
            $ morte1Logic.r39856_action()
            jump morte1_dispose

        '"Ja, Morte, im Moment brauche ich weder das eine noch das andere. Aber vielleicht später."':
            # a36 # r39857
            jump morte1_s28


# s28 # say39858
label morte1_s28: # from 27.0 27.2
    nr '"Willst du mich beleidigen, Meister? Habe ich was Falsches gesagt? Liegt es daran, daß ich keine Arme habe? Nun sag„s mir schon!"'

    menu:
        '"Na gut, ich hab„s mir anders überlegt. Komm, laß uns gehen."':
            # a37 # r39859
            $ morte1Logic.r39859_action()
            jump morte1_dispose

        '"Das hat überhaupt nichts damit zu tun. Ich brauche dich nur einfach im Moment nicht. Leb wohl, Morte."':
            # a38 # r39860
            jump morte1_s29


# s29 # say39861
label morte1_s29: # from 28.1
    nr '"Also, ich werde hier nicht EWIG warten. Solltest du dir„s doch noch anders überlegen, dann mußt du dich beeilen."'

    menu:
        '"Okay. Leb wohl, Morte."':
            # a39 # r39862
            jump morte1_dispose


# s30 # say39863
label morte1_s30: # - # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    nr '"Was nagt an dir, Meister?"~ [MRT515]'

    menu:
        '"Nichts, Morte. Ich wollte nur mal gucken, ob du noch da bist."':
            # a40 # r39864
            jump morte1_dispose


# s31 # say42298
label morte1_s31: # externs zm825_s3 zm825_s0 zm569_s3 zm569_s0
    nr '"He, Meister… Die hören dich nicht. Sie sind tot."'

    menu:
        '"Aber du bist auch tot. Und du sprichst mit mir."':
            # a41 # r42299
            jump morte1_s32


# s32 # say42300
label morte1_s32: # from 31.0
    nr '"Ja, aber *ich bin* anders. Mir konnte der Tod meine Lebenslust nicht rauben. Diese Leichen hier…" Morte rollt mit den Augen. "Die hatten wahrscheinlich nicht mal besonders viel Persönlichkeit."'

    menu:
        '"A-ha."':
            # a42 # r42301
            jump morte1_s33


# s33 # say42302
label morte1_s33: # from 32.0
    nr '"Sieh mal, Meister… Wenn ich mir ansehen muß, wie du mit diesen Leichen redest, steigert das nicht gerade meine Moral. Überlassen wir den Leichen-Plausch den Übergeschnappten, ja?"'

    menu:
        '"Also gut. Gehen wir."':
            # a43 # r42303
            jump morte1_dispose


# s34 # say42306
label morte1_s34: # externs zm782_s0
    nr '"Schau mal: Der hier scheint der Glückliche zu sein… Er hat den Schlüssel in der Hand."'

    jump zm782_s2  # EXTERN
