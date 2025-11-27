init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    nr '"Ich warte auf dich in den Gewölben des Todes, mein Liebster." Sie lächelt, aber ihr Gesicht zeigt Traurigkeit. Sie schließt ihre Augen und entschwindet mit einem ätherischen Säuseln.~ [DEN008B]{#deionarra_s0_}'

    menu:
        'Geh weg.{#deionarra_s0_r701}' if deionarraLogic.r701_condition():
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        'Verschwinde.{#deionarra_s0_r699}' if deionarraLogic.r699_condition():
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        'Verschwinde.{#deionarra_s0_r9616}' if deionarraLogic.r9616_condition():
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Du siehst eine umwerfend schöne, geisterhafte Gestalt vor dir. Sie hat ihre Arme verschränkt und die Augen geschlossen. Sie hat langes, fließendes Haar, und ein ätherischer Hauch weht durch ihr Kleid. Als du sie anschaust, bewegt sie sich leicht, und ihre Augenlider flattern.{#deionarra_s1_}'

    menu:
        '"Sei gegrüßt…?"{#deionarra_s1_r703}':
            # a3 # r703
            jump deionarra_s2

        'Warte.{#deionarra_s1_r704}':
            # a4 # r704
            jump deionarra_s2

        'Geh schnell, bevor der Geist gänzlich zu sich kommt.{#deionarra_s1_r705}':
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    nr 'Ihre Augen öffnen sich langsam, und einen Augenblick lang blinzelt sie verwirrt, als wüßte sich nicht genau, wo sie ist. Sie schaut langsam um sich, bis sie dich erblickt. Ihre bisher ruhige Miene wird wild. "Du! Was führt denn *dich* hierher?! Kommst du, um mit eigenen Augen zu sehen, welches Unheil du angerichtet hast? Soll ich vielleicht im Tode noch irgend etwas mit dir anzufangen wissen…?" Ihre Stimme wird zu leisen Zischen: "… „mein Liebster.“"~ [DEN001]{#deionarra_s2_}'

    menu:
        '"Wer bist du?"{#deionarra_s2_r707}':
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        '"„Mein Liebster“? Kenne ich dich?"{#deionarra_s2_r708}' if deionarraLogic.r708_condition():
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        '"„Mein Liebster“? Kenne ich dich?"{#deionarra_s2_r709}' if deionarraLogic.r709_condition():
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    nr 'Der Geist formt seine Hände zu einer flehenden Geste. "Wie kann es sein, daß die Gedächtnisdiebe immer noch meinen Namen aus deiner Erinnerung stehlen? *Kennst* du mich nicht mehr, mein Liebster?" Der Geist streckt seine Arme aus. "Denk doch nach…" Die Stimme klingt jetzt wieder verzweifelt "… der Name *Deionarra* muß dich doch an etwas erinnern."{#deionarra_s3_}'

    menu:
        '"Nein, tut mir leid. Ich habe meine Erinnerungen verloren."{#deionarra_s3_r711}':
            # a9 # r711
            jump deionarra_s6

        'Lüge: "Ja… ja, der Name kommt mir irgendwie bekannt vor."{#deionarra_s3_r712}':
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        '"Ich *glaube*, meine Erinnerung regt sich… erzähl weiter. Vielleicht können deine Worte die Schatten aus meinem Verstand vertreiben, Deionarra."{#deionarra_s3_r713}' if deionarraLogic.r713_condition():
            # a11 # r713
            jump deionarra_s9

        '"Ich *glaube*, meine Erinnerung regt sich… erzähl weiter. Vielleicht können deine Worte die Schatten aus meinem Verstand vertreiben, Deionarra."{#deionarra_s3_r714}' if deionarraLogic.r714_condition():
            # a12 # r714
            jump deionarra_s9

        '"Tut es nicht. Leb wohl… Deionarra."{#deionarra_s3_r1308}' if deionarraLogic.r1308_condition():
            # a13 # r1308
            jump deionarra_s15

        '"Tut es nicht. Leb wohl… Deionarra."{#deionarra_s3_r6080}' if deionarraLogic.r6080_condition():
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Deionarra materialisiert sich wieder… dieses Mal erscheint sie mit verzweifelter Miene. Ihre Arme sind ausgestreckt, als ob sie nach etwas greifen wollte. Dann wandelt sich ihr Ausdruck von Verzweiflung zu Wut. "Du schon wieder! Warum hörst du nicht auf, mich zu quälen?"~ [DEN002]{#deionarra_s4_}'

    menu:
        '"Es gibt viel, was ich wissen muß. Ich hätte da ein paar Fragen an dich…"{#deionarra_s4_r765}':
            # a15 # r765
            jump deionarra_s33

        '"Ich werde dich nicht länger quälen. Leb wohl."{#deionarra_s4_r1307}':
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr 'Deionarra materialisiert sich wieder… dieses Mal erscheint sie mit verzweifelter Miene. Ihre Arme sind ausgestreckt, als ob  sie nach etwas greifen wollte. Dann wandelt sich ihr Ausdruck von Verzweiflung zu Erleichterung. "Mein Liebster… du bist zu mir zurückgekehrt! Ist es möglich, daß deine Erinnerung zurückgekehrt ist?"~ [DEN003A]{#deionarra_s5_}'

    menu:
        '"Ich hätte da ein paar Fragen an dich…"{#deionarra_s5_r766}':
            # a17 # r766
            jump deionarra_s10

        '"Noch nicht. Leb wohl, Deionarra."{#deionarra_s5_r767}' if deionarraLogic.r767_condition():
            # a18 # r767
            jump deionarra_s15

        '"Noch nicht. Leb wohl, Deionarra."{#deionarra_s5_r1309}' if deionarraLogic.r1309_condition():
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    nr '"Dann hat sich meine Befürchtung bewahrheitet. Ich bin wirklich für dich verloren… Früher war ich für dich nur ein Klotz am Bein, und jetzt hast du endlich einen Vorwand, mich genauso wie deine Erinnerung wegzuwerfen!"{#deionarra_s6_}'

    menu:
        '"Klotz am Bein? Dich wegwerfen? Ich kenne dich nicht, Geist… meine Erinnerung ist nicht mehr. Sag du mir… wer bist du? Was weißt Du von mir?"{#deionarra_s6_r720}':
            # a20 # r720
            jump deionarra_s11

        '"Ich *glaube*, meine Erinnerung regt sich… erzähl weiter. Vielleicht können deine Worte die Schatten aus meinem Verstand vertreiben, Deionarra."{#deionarra_s6_r718}' if deionarraLogic.r718_condition():
            # a21 # r718
            jump deionarra_s9

        '"Ich *glaube*, meine Erinnerung regt sich… erzähl weiter. Vielleicht können deine Worte die Schatten aus meinem Verstand vertreiben, Deionarra."{#deionarra_s6_r719}' if deionarraLogic.r719_condition():
            # a22 # r719
            jump deionarra_s9

        '"Wenn ich dich wirklich weggeworfen haben sollte, dann sieht es so aus, als ob ich das jetzt nochmal tun müßte. Leb wohl, Geist."{#deionarra_s6_r721}' if deionarraLogic.r721_condition():
            # a23 # r721
            jump deionarra_s15

        '"Ich muß fort, Deionarra. Leb wohl."{#deionarra_s6_r1310}' if deionarraLogic.r1310_condition():
            # a24 # r1310
            jump deionarra_s15

        '"Wenn ich dich wirklich weggeworfen haben sollte, dann sieht es so aus, als ob ich das jetzt nochmal tun müßte. Leb wohl, Geist."{#deionarra_s6_r1311}' if deionarraLogic.r1311_condition():
            # a25 # r1311
            jump deionarra_s26

        '"Ich muß fort, Deionarra. Leb wohl."{#deionarra_s6_r764}' if deionarraLogic.r764_condition():
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    nr '"Ja…" Sie scheint Hoffnung zu schöpfen. "Welche Erinnerungen ruft mein Name wach?"{#deionarra_s7_}'

    menu:
        '"Keine. Ich hab„ gelogen."{#deionarra_s7_r700}':
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        'Lüge: "Dein Name erweckt in mir leidenschaftliche Gedanken wieder, ihr Inhalt bleibt jedoch verschwommen. Wenn du mir vielleicht auf die Sprünge helfen könntest…"{#deionarra_s7_r702}':
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        '"Ich bin nicht ganz sicher… aber ich fühle, wie meine Erinnerung anfängt, sich zu regen. Erzähl weiter. Vielleicht können deine Worte die Schatten aus meinem Verstand vertreiben, Deionarra."{#deionarra_s7_r723}' if deionarraLogic.r723_condition():
            # a29 # r723
            jump deionarra_s9

        '"Ich bin nicht ganz sicher… aber ich fühle, wie meine Erinnerung anfängt, sich zu regen. Erzähl weiter. Vielleicht können deine Worte die Schatten aus meinem Verstand vertreiben, Deionarra."{#deionarra_s7_r724}' if deionarraLogic.r724_condition():
            # a30 # r724
            jump deionarra_s9

        '"Ich muß fort, Deionarra. Leb wohl."{#deionarra_s7_r1312}' if deionarraLogic.r1312_condition():
            # a31 # r1312
            jump deionarra_s15

        '"Ich muß fort, Deionarra. Leb wohl."{#deionarra_s7_r6084}' if deionarraLogic.r6084_condition():
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    nr 'Deionarras Gesicht verzieht sich zu einer wütenden Fratze. "Du gemeiner Hund! Du hast mein Herz verraten! Alle Flüche dieser Welt würde ich dir an den Hals wünschen, wenn ich nicht wüßte, daß Qualen dich auch ohne sie in allen möglichen Formen heimsuchen! Hinfort!" Sie verschränkt ihre Arme und schließt die Augen.{#deionarra_s8_}'

    menu:
        '"Also gut…{#deionarra_s8_r747}' if deionarraLogic.r747_condition():
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        '"Also gut…"{#deionarra_s8_r1313}' if deionarraLogic.r1313_condition():
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        'Geh weg.{#deionarra_s8_r13255}' if deionarraLogic.r13255_condition():
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    nr '"Oh, endlich ist das Schicksal einmal gnädig! Selbst der Tod kann mich nicht aus deinem Gedächtnis verbannen, mein Liebster! Verstehst du nicht? Deine Erinnerungen werden zurückkehren! Sag mir, wie ich dir helfen kann: Ich werde alles tun!"{#deionarra_s9_}'

    menu:
        '"Weißt du, wer ich bin?"{#deionarra_s9_r729}':
            # a36 # r729
            jump deionarra_s11

        '"Kannst du mir sagen, wo ich hier bin?".{#deionarra_s9_r730}':
            # a37 # r730
            jump deionarra_s12

        '"Ich muß fort von diesem Ort. Kannst du mir dabei helfen?"{#deionarra_s9_r731}' if deionarraLogic.r731_condition():
            # a38 # r731
            jump deionarra_s43

        '"Ich muß fort von diesem Ort. Kannst du mir dabei helfen?"{#deionarra_s9_r732}' if deionarraLogic.r732_condition():
            # a39 # r732
            jump deionarra_s44

        '"Für den Moment nichts, Deionarra, aber ich werde wiederkommen. Leb wohl."{#deionarra_s9_r1314}' if deionarraLogic.r1314_condition():
            # a40 # r1314
            jump deionarra_s15

        '"Für den Moment nichts, Deionarra, aber ich werde wiederkommen. Leb wohl."{#deionarra_s9_r6127}' if deionarraLogic.r6127_condition():
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    nr '"Was willst du von mir wissen?"{#deionarra_s10_}'

    menu:
        '"Wer bist du?"{#deionarra_s10_r734}':
            # a42 # r734
            jump deionarra_s3

        '"Kannst du mir sagen, wer ich bin?".{#deionarra_s10_r735}':
            # a43 # r735
            jump deionarra_s11

        '"Kannst du mir sagen, wo ich hier bin?".{#deionarra_s10_r736}':
            # a44 # r736
            jump deionarra_s12

        '"Ich muß fort von diesem Ort. Kannst du mir dabei helfen?"{#deionarra_s10_r737}' if deionarraLogic.r737_condition():
            # a45 # r737
            jump deionarra_s43

        '"Ich muß fort von diesem Ort. Kannst du mir dabei helfen?"{#deionarra_s10_r738}' if deionarraLogic.r738_condition():
            # a46 # r738
            jump deionarra_s44

        '"Was war das für eine Vision, die du vorhin erwähnt hattest?"{#deionarra_s10_r768}' if deionarraLogic.r768_condition():
            # a47 # r768
            jump deionarra_s22

        '"Kannst du den Fluch von mir nehmen, mit dem du mich belegt hast?"{#deionarra_s10_r1315}' if deionarraLogic.r1315_condition():
            # a48 # r1315
            jump deionarra_s41

        '"Für den Moment nichts, Deionarra, aber ich werde wiederkommen. Leb wohl."{#deionarra_s10_r6107}' if deionarraLogic.r6107_condition():
            # a49 # r6107
            jump deionarra_s15

        '"Für den Moment nichts, Deionarra, aber ich werde wiederkommen. Leb wohl."{#deionarra_s10_r6128}' if deionarraLogic.r6128_condition():
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    nr '"Du bist zugleich gesegnet und verflucht, mein Liebster. Und du bist der, den ich nie ganz aus meinen Gedanken und aus meinem Herzen verbannen konnte."{#deionarra_s11_}'

    menu:
        '"Gesegnet und verflucht? Was soll das heißen?"{#deionarra_s11_r740}':
            # a51 # r740
            jump deionarra_s13

        '"Ich hätte noch ein paar Fragen an dich…"{#deionarra_s11_r741}':
            # a52 # r741
            jump deionarra_s10

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s11_r742}' if deionarraLogic.r742_condition():
            # a53 # r742
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s11_r1316}' if deionarraLogic.r1316_condition():
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    nr '"Wo du bist? Du bist hier bei mir, mein Liebster… wie damals, als das Leben uns beide noch hatte. Jetzt trennt uns die Ewige Grenze voneinander."{#deionarra_s12_}'

    menu:
        '"„Ewige Grenze“?"{#deionarra_s12_r744}':
            # a55 # r744
            jump deionarra_s14

        '"Ich hätte noch ein paar Fragen an dich…"{#deionarra_s12_r745}':
            # a56 # r745
            jump deionarra_s10

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s12_r746}' if deionarraLogic.r746_condition():
            # a57 # r746
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s12_r792}' if deionarraLogic.r792_condition():
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    nr '"Was dein Fluch bewirkt, ist doch offensichtlich, mein Liebster. Sieh dich nur an." Sie zeigt auf dich. "Der Tod verschmäht dich. Deine Erinnerung läßt dich im Stich. Fragst du dich denn gar nicht, warum?"{#deionarra_s13_}'

    menu:
        '"Ehrlich gesagt, bin ich immer noch dabei, mich zurechtzufinden. Was kannst du mir noch über meine eigene Person erzählen?"{#deionarra_s13_r749}':
            # a59 # r749
            jump deionarra_s27

        '"Ich hätte noch ein paar andere Fragen…"{#deionarra_s13_r750}':
            # a60 # r750
            jump deionarra_s10

        '"Mal abgesehen von den Erinnerungen… und angenommen, der Tod hätte mich zurückgewiesen… warum ist das ein Fluch?"{#deionarra_s13_r751}':
            # a61 # r751
            jump deionarra_s25

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s13_r790}' if deionarraLogic.r790_condition():
            # a62 # r790
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s13_r1318}' if deionarraLogic.r1318_condition():
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    nr 'Deionarra klingt traurig. "Es ist eine Grenze, die du wahrscheinlich nie überschreiten wirst, mein Liebster. Es ist die Grenze zwischen deinem Leben und dem kläglichen Rest meines eigenen Lebens…"{#deionarra_s14_}'

    menu:
        '"Ich… verstehe. Vielleicht könntest du mir noch ein paar andere Fragen beantworten…"{#deionarra_s14_r753}':
            # a64 # r753
            jump deionarra_s10

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s14_r755}' if deionarraLogic.r755_condition():
            # a65 # r755
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s14_r1319}' if deionarraLogic.r1319_condition():
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    nr '"Warte einen Augenblick… ich habe viel gelernt, als ich mit dir reiste, mein Liebster, und was du verloren hast, habe ich bewahrt. Ich habe nicht alles, was ich weiß, an dich weitergegeben. Ich sehe klar… während du im Dunkeln tappst und auf den Funken eines Gedanken wartest."{#deionarra_s15_}'

    menu:
        '"Was du auch wissen magst, es kann warten. Leb wohl."{#deionarra_s15_r757}':
            # a67 # r757
            jump deionarra_s26

        '"Was könntest du wohl sagen, das für mich von Interesse wäre?"{#deionarra_s15_r758}':
            # a68 # r758
            jump deionarra_s17

        '"Und was genau siehst du, was ich nicht sehen kann?"{#deionarra_s15_r759}':
            # a69 # r759
            jump deionarra_s17

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s15_r761}':
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    nr 'Deionarra wirkt betroffen; jetzt ändert sie ihren Ton und spricht mit fast flehender Stimme. "Ich… habe nicht vor, dir ein Versprechen abzuringen, mein Liebster. Aber ich habe so lange darauf gewartet, daß du zu mir kommst, jenseits d…"{#deionarra_s16_}'

    menu:
        '"Wenn du nicht vorhast, mir ein Gelübde abzuringen, Deionarra, dann tu„s auch nicht. Erzähl mir lieber von deiner Vision, und wir reden nicht mehr von Gelübden und Versprechen."{#deionarra_s16_r763}':
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    nr '"Auch die Zeit verliert an Bedeutung, wenn wir der Vergessenheit anheimfallen, mein Liebster. In meinen Visionen sehe ich schon, was sein wird. Ich sehe dich, mein Liebster, ich sehe dich so, wie du jetzt bist, und…" Deionarra verstummt.{#deionarra_s17_}'

    menu:
        '"Warum schweigst du plötzlich? Hat dich dein Lamentieren so ermüdet?"{#deionarra_s17_r770}':
            # a72 # r770
            jump deionarra_s18

        '"Was ist los? Was siehst du?"{#deionarra_s17_r771}':
            # a73 # r771
            jump deionarra_s18

        '"Ich interessiere mich nicht für Zukunftsvisionen. Leb wohl."{#deionarra_s17_r772}':
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    nr '"Ich sehe, was dir bevorsteht. Es zieht sich wie eine Welle durch die Ebenen und geht von diesem Punkt aus. Möchtest du wissen, was ich sehe?"{#deionarra_s18_}'

    menu:
        '"Erzähl."{#deionarra_s18_r774}':
            # a75 # r774
            jump deionarra_s20

        '"Ich möchte es nicht wissen. Die Zukunft wird sich später schon selbst enthüllen."{#deionarra_s18_r775}':
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    nr '"So bist du schon immer gewesen, mein Liebster. Schon weigerst du dich, dem Ruf des Todes zu folgen. Wirst du als nächstes die Zeit verschmähen?" Sie schließt ihre Augen und entschwindet mit einem ätherischen Säuseln.{#deionarra_s19_}'

    menu:
        'Verschwinde.{#deionarra_s19_r803}' if deionarraLogic.r803_condition():
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        'Verschwinde.{#deionarra_s19_r6085}' if deionarraLogic.r6085_condition():
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        'Geh weg.{#deionarra_s19_r13256}' if deionarraLogic.r13256_condition():
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    nr '"Zuerst mußt du mir etwas versprechen. Versprich, daß du zurückkehren wirst. Daß du eine Möglichkeit finden wirst, mich zu retten oder bei mir zu bleiben."{#deionarra_s20_}'

    menu:
        '"Mir fällt es schwer zu glauben, daß eine Frau, die ich einst liebte, versucht, mir Versprechen abzupressen und mir dafür Enthüllungen verspricht. Hast du deinen Glauben an mich verloren, Deionarra?"{#deionarra_s20_r778}' if deionarraLogic.r778_condition():
            # a80 # r778
            jump deionarra_s16

        '"Der Preis für ein solches Versprechen ist zu hoch."{#deionarra_s20_r779}':
            # a81 # r779
            jump deionarra_s21

        'Lüge: "Ich schwöre dir, irgendwie einen Weg zu finden, dich zu retten oder bei dir zu sein."{#deionarra_s20_r780}':
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        '"Solch ein Versprechen werde ich nicht geben, Gespenst! Zieh mich nicht mit der Zukunft auf… sag, was du zu sagen hast oder mach dich aus dem Staub!"{#deionarra_s20_r781}':
            # a83 # r781
            jump deionarra_s26

        '"Ich… werde alles daran setzen."{#deionarra_s20_r782}':
            # a84 # r782
            jump deionarra_s40

        'Leg dieses Gelübde ab: "Ich schwöre dir, irgendwie einen Weg zu finden, dich zu retten oder mich dir anzuschließen."{#deionarra_s20_r6093}':
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    nr 'Deionarra verschränkt ihre Arme. "Das ist er tatsächlich, mein Liebster. Der Preis für die Unsterblichkeit war aber offenbar nicht zu hoch. Ist Redlichkeit zuviel verlangt für einen wie dich?"{#deionarra_s21_}'

    menu:
        '"Mir fällt es schwer zu glauben, daß eine Frau, die ich einst liebte, versucht, mir Versprechen abzupressen und mir dafür Enthüllungen verspricht. Hast du deinen Glauben an mich verloren, Deionarra?"{#deionarra_s21_r804}':
            # a86 # r804
            jump deionarra_s16

        'Lüge: "Ich schwöre dir, irgendwie einen Weg zu finden, dich zu retten oder bei dir zu sein."{#deionarra_s21_r805}':
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        '"Solch ein Versprechen werde ich nicht geben, Gespenst! Zieh mich nicht mit der Zukunft auf… sag, was du zu sagen hast oder mach dich aus dem Staub!"{#deionarra_s21_r806}':
            # a88 # r806
            jump deionarra_s26

        '"Ich… werde alles daran setzen."{#deionarra_s21_r807}':
            # a89 # r807
            jump deionarra_s40

        'Leg dieses Gelübde ab: "Ich schwöre dir, irgendwie einen Weg zu finden, dich zu retten oder mich dir anzuschließen."{#deionarra_s21_r808}':
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        '"Vielleicht ist dem so. Leb wohl, Deionarra."{#deionarra_s21_r6094}':
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    nr '"Dies sehen meine Augen, mein Liebster, frei von den Ketten der Zeit…"~ [DEN020]{#deionarra_s22_}'

    menu:
        'Warte, bis sie fortfährt.{#deionarra_s22_r786}':
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    nr '"Du wirst auf drei Feinde treffen, doch keiner wird fürchterlicher sein als du selbst in deinem ganzen Glanz. Es sind die Schatten des Bösen, des Guten und der Neutralität, zum Leben erweckt und verzerrt durch die Gesetze der Ebenen."~ [DEN021]{#deionarra_s23_}'

    menu:
        'Warte, bis sie fortfährt.{#deionarra_s23_r787}':
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    nr '"Du wirst zu einen Kerker kommen, erbaut aus Reue und Kummer, wo die Schatten selbst dem Wahnsinn verfallen sind. Dort wird man von dir ein schreckliches Opfer verlangen, mein Liebster. Damit all dies Ruhe finden kann, mußt du das zerstören, was dich am Leben erhält, und deine Unsterblichkeit opfern."~ [DEN022]{#deionarra_s24_}'

    menu:
        '"„Zerstören, was mich am Leben erhält“?"{#deionarra_s24_r789}':
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    nr '"An deiner Fähigkeit, von den Toten aufzuerstehen, gibt es keinen Zweifel. Ich glaube, daß deine Gedanken und Erinnerungen mit jeder Inkarnation schwächer werden. Du behauptest, du hättest deine Erinnerung verloren. Vielleicht ist dies eine Begleiterscheinung deiner unzähligen Tode. Wenn ja, was wird dir bei den nächsten Toden noch alles abhanden kommen? Wenn du den Verstand verlierst, wirst du nicht einmal mehr wissen, daß du nicht sterben kannst. Dann bist du wahrlich verdammt."{#deionarra_s25_}'

    menu:
        '"„Unzählige Tode“? Wie lange geht das denn schon so?"{#deionarra_s25_r812}':
            # a95 # r812
            jump deionarra_s30

        '"Ich hätte noch ein paar andere Fragen…"{#deionarra_s25_r811}':
            # a96 # r811
            jump deionarra_s10

        '"Leb wohl, Deionarra."{#deionarra_s25_r813}' if deionarraLogic.r813_condition():
            # a97 # r813
            jump deionarra_s15

        '"Leb wohl, Deionarra."{#deionarra_s25_r1320}' if deionarraLogic.r1320_condition():
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    nr 'Deionarra wird wütend. "Dann geh doch, zum dreihundertsten Mal! Kommst du nur, um mich zu quälen?! Geh fort und laß dich hier nie wieder blicken!" Sie schließt ihre Augen und entschwindet mit einem ätherischen Säuseln.{#deionarra_s26_}'

    menu:
        'Verschwinde.{#deionarra_s26_r6081}' if deionarraLogic.r6081_condition():
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        'Verschwinde.{#deionarra_s26_r6082}' if deionarraLogic.r6082_condition():
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        'Geh weg.{#deionarra_s26_r13257}' if deionarraLogic.r13257_condition():
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    nr '"Ich weiß, daß du früher behauptet hast, mich zu lieben, und daß du mich lieben würdest, bis der Tod uns beide zu sich hole. Ich habe dir vertraut, denn ich wußte nicht, wer und was du wirklich warst."{#deionarra_s27_}'

    menu:
        '"Und was bin ich?"{#deionarra_s27_r797}' if deionarraLogic.r797_condition():
            # a102 # r797
            jump deionarra_s28

        '"Und was bin ich?"{#deionarra_s27_r66911}' if deionarraLogic.r66911_condition():
            # a103 # r66911
            jump deionarra_s72

        '"Ich hätte noch ein paar andere Fragen…"{#deionarra_s27_r796}':
            # a104 # r796
            jump deionarra_s10

        '"Leb wohl, Deionarra."{#deionarra_s27_r798}' if deionarraLogic.r798_condition():
            # a105 # r798
            jump deionarra_s15

        '"Leb wohl, Deionarra."{#deionarra_s27_r1321}' if deionarraLogic.r1321_condition():
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    nr '"Wir haben schon über dein Wesen gesprochen." Deionarras Gesicht nimmt einen abwesenden Ausdruck an. "Wir werden es nicht nochmals tun."{#deionarra_s28_}'

    menu:
        '"Von mir aus… Ich hätte noch ein paar Fragen…"{#deionarra_s28_r800}':
            # a107 # r800
            jump deionarra_s10

        '"Du behauptest mich zu kennen, und dennoch scheinst du nur wenig wirklich Bedeutsames über mich zu wissen. Leb wohl, Deionarra."{#deionarra_s28_r801}' if deionarraLogic.r801_condition():
            # a108 # r801
            jump deionarra_s15

        '"Du behauptest mich zu kennen, und dennoch scheinst du nur wenig wirklich Bedeutsames über mich zu wissen. Leb wohl, Deionarra."{#deionarra_s28_r802}' if deionarraLogic.r802_condition():
            # a109 # r802
            jump deionarra_s26

        '"Dann leb wohl, Deionarra."{#deionarra_s28_r1322}' if deionarraLogic.r1322_condition():
            # a110 # r1322
            jump deionarra_s15

        '"Dann leb wohl, Deionarra."{#deionarra_s28_r1323}' if deionarraLogic.r1323_condition():
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    nr '"Ich weiß, dass du sterben musst… solange du noch kannst. Der Kreis *muss* sich schließen, mein Liebster. Du bist nicht für dieses Leben bestimmt und der Zeitpunkt deines Todes wurde schon zu lange aufgeschoben. Du musst finden, was dir genommen wurde, und über die Grenzen dieses Lebens hinausziehen, in das Land der Toten."~ [DEN023]{#deionarra_s29_}'

    menu:
        '"„Sterben, so lange ich noch kann“?"{#deionarra_s29_r810}':
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    nr '"Genau weiß ich es nicht. Ich weiß nur, daß es schon lange genug dauert."{#deionarra_s30_}'

    menu:
        '"Ich hätte noch ein paar andere Fragen…"{#deionarra_s30_r815}':
            # a113 # r815
            jump deionarra_s10

        '"Leb wohl, Deionarra."{#deionarra_s30_r816}' if deionarraLogic.r816_condition():
            # a114 # r816
            jump deionarra_s15

        '"Leb wohl, Deionarra."{#deionarra_s30_r1324}' if deionarraLogic.r1324_condition():
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    nr '"Portale sind Löcher in der Existenz, durch die man Ziele auf den inneren und äußeren Ebenen erreichen kann… wenn du den passenden Schlüssel finden würdest, könntest du durch eines entkommen."{#deionarra_s31_}'

    menu:
        '"Schlüssel?"{#deionarra_s31_r819}':
            # a116 # r819
            jump deionarra_s32

        '"Ich hätte noch ein paar andere Fragen…"{#deionarra_s31_r818}':
            # a117 # r818
            jump deionarra_s10

        '"Leb wohl, Deionarra."{#deionarra_s31_r820}' if deionarraLogic.r820_condition():
            # a118 # r820
            jump deionarra_s15

        '"Leb wohl, Deionarra."{#deionarra_s31_r1325}' if deionarraLogic.r1325_condition():
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    nr 'Deionarra zögert kurz, als versuchte sie sich zu erinnern. "Ein Portal erkennst du erst, wenn du den richtigen „Schlüssel“ besitzt. Dieser Schlüssel kann leider alles mögliche sein… ein Gefühl, ein Stück Holz, ein Dolch aus versilbertem Glas, ein Stoffetzen, eine Melodie, die du vor dich hin summst… Ich fürchte, die Staubmenschen sind die einzigen, die dir sagen könnten, mit welchen Schlüsseln du ihre Hallen verlassen kannst, mein Liebster."{#deionarra_s32_}'

    menu:
        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#deionarra_s32_r824}':
            # a120 # r824
            jump deionarra_s10

        '"Dann werde ich einen von ihnen fragen. Leb wohl, Deionarra."{#deionarra_s32_r823}' if deionarraLogic.r823_condition():
            # a121 # r823
            jump deionarra_s15

        '"Dann werde ich einen von ihnen fragen. Leb wohl, Deionarra."{#deionarra_s32_r1326}' if deionarraLogic.r1326_condition():
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    nr '"Ich habe keine Antworten für dich! Dein treuloses Herz hat dich soweit geleitet, jetzt soll es dich auch bis ans Ende des Weges führen! Geh jetzt!"{#deionarra_s33_}'

    menu:
        'Lüge: "Dies ist nicht die Deionarra, an die ich mich erinnere. Die Deionarra, die ich liebte, war freundlich, sanft… und ließ nie eine bedürftige Seele im Stich. Bist du wirklich so tief gesunken?"{#deionarra_s33_r6129}' if deionarraLogic.r6129_condition():
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        '"Ich brauche deine Hilfe, Deionarra. Wirst du mich abweisen, wenn ich dich am meisten brauche?"{#deionarra_s33_r6130}':
            # a124 # r6130
            jump deionarra_s37

        'Täuschung: "Also schön. Ich werde deinem Wunsch nachkommen, Deionarra… Ich werde gehen und niemals zurückkommen."{#deionarra_s33_r6131}' if deionarraLogic.r6131_condition():
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        'Täuschung: "Also schön. Ich werde deinem Wunsch nachkommen, Deionarra… Ich werde gehen und niemals zurückkommen."{#deionarra_s33_r6132}' if deionarraLogic.r6132_condition():
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        '"Es tut mir leid, dich verletzt zu haben, Deionarra. Ich werde gehen und dich nicht länger quälen."{#deionarra_s33_r6133}':
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        'Geh ganz leise fort.{#deionarra_s33_r6134}':
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    nr 'Der zornige Ausdruck in Deionarras Gesicht schmilzt wie Eis… die Plötzlichkeit dieser Veränderung ist so angsteinflößend wie der Ausdruck der Verzweiflung, der sich jetzt auf ihrem Gesicht abzeichnet. "Nein! Warte, mein Liebster." Ihre Stimme fleht. "Bitte verzeih mir, ich bitte dich! Bitte geh nicht!"{#deionarra_s34_}'

    menu:
        '"Deionarra, meine Geduld für deine Ausbrüche ist langsam am Ende. Wenn du weiter mit mir reden willst, *mußt* du dich ein wenig zurückhalten, oder ich spreche nie wieder mit dir. Und du wirst ganz alleine sein. Habe ich mich klar genug ausgedrückt?"{#deionarra_s34_r6095}':
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        '"Ich vergebe dir. Und jetzt brauche ich deine Hilfe, Deionarra."{#deionarra_s34_r6096}':
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    nr 'Der zornige Ausdruck in Deionarras Gesicht schmilzt wie Eis… die Plötzlichkeit dieser Veränderung ist so angsteinflößend wie der Ausdruck der Verzweiflung, der sich jetzt auf ihrem Gesicht abzeichnet. "Nein… nein, nein… ich bin noch immer die Deionarra, an die du dich erinnerst, mein Liebster. Bitte verzeih mir, ich flehe dich an."{#deionarra_s35_}'

    menu:
        '"Deionarra, meine Geduld für deine Ausbrüche ist langsam am Ende. Wenn du weiter mit mir reden willst, *mußt* du dich ein wenig zurückhalten, oder ich spreche nie wieder mit dir. Und du wirst ganz alleine sein. Habe ich mich klar genug ausgedrückt?"{#deionarra_s35_r6097}':
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        '"Ich vergebe dir. Und jetzt brauche ich deine Hilfe, Deionarra."{#deionarra_s35_r6098}':
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    nr 'Ihre Stimme wird zu einem leisen Flüstern. "Ja… ja, bitte. Geh nicht." Ihr Flehen läßt dich erschauern… nicht vor Angst, sondern vor Freude. Du hast das Gefühl, daß du diese Frau nicht zum ersten Mal manipuliert hast.{#deionarra_s36_}'

    menu:
        '"Nun hör mal zu, Deionarra. Ich hätte da ein paar Fragen an dich…"{#deionarra_s36_r6099}':
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    nr '"Abweisen - *dich?!* Du WAGST es, mir vorzuwerfen, daß ich DICH abweise?!" Deionarra wirft ihre Arme nach außen, richtet sie nach vorn und zeigt dann mit beiden Zeigefingern auf dich. Es scheint, als ob sie einen Fluch aussprechen will. "Du WAGST ES…!"{#deionarra_s37_}'

    menu:
        '"Schweig! Hör mich an, Geist! Meine Geduld mit deinen Spielchen ist langsam am Ende…"{#deionarra_s37_r6100}':
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        'Bereite dich darauf vor, dich verteidigen zu müssen.{#deionarra_s37_r6101}':
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    nr '"Brenne! Du sollst brennen, als ob die leibhaftigen Feuer von Baator dich von innen verzehren! Brenne, und wisse, daß dies nur ein *Hauch* meines Hasses auf dich ist! Ich verfluche dich - Ich verfluche dich aus ganzem Herzen und ganzer Seele, auf daß du nie mehr von den Fesseln deines elenden Schattendaseins loskommen mögest. Mögest du verwelken und sterben, deine Seele in deinem verfaulenden Körper wie eine Wunde schwären!"{#deionarra_s38_}'

    menu:
        '"Halt„ deine Zunge im Zaum, Frau! Mein Geduldsfaden reißt…"{#deionarra_s38_r6102}':
            # a136 # r6102
            jump deionarra_s39

        '"Deionarra! Warte doch, ich will mich doch entschuldigen…"{#deionarra_s38_r6103}':
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    nr '"Einmal ausgesprochen, kann der Fluch nicht wieder zurückgenommen werden." Deionarras Stimme wird zu einem Fauchen. "Merke dir: Ich habe alle Ewigkeit, „mein Liebster.“ Ich warte auf dich vor dem Totenreich." Sie lächelt, aber in ihrem Gesicht ist keine Freude. "Wir *werden* wieder zusammen sein."{#deionarra_s39_}'

    menu:
        '"Einen Moment mal! Ich würde gern sprechen mit…"{#deionarra_s39_r6104}':
            # a138 # r6104
            jump deionarra_s48

        '"Nimm zurück, was du getan hast! Ich warne dich…"{#deionarra_s39_r6105}':
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    nr 'Deionarra erstarrt. Sie sieht aus, als wollte sie etwas sagen, seufzt aber nur resigniert. "Na gut, mein Liebster… so wie zuvor werde ich mein Vertrauen in dich legen müssen." Sie schließt ihre Augen.{#deionarra_s40_}'

    menu:
        'Warte…{#deionarra_s40_r6106}':
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    nr 'Deionarra schüttelt traurig den Kopf. "Einmal ausgesprochen, kann der Fluch nicht wieder zurückgenommen werden. Verzeih mir, mein Liebster."{#deionarra_s41_}'

    menu:
        '"Kann denn niemand ihn aufheben?"{#deionarra_s41_r6110}':
            # a141 # r6110
            jump deionarra_s42

        '"Ich… verstehe. Da war noch was, was ich dich fragen wollte…"{#deionarra_s41_r6111}':
            # a142 # r6111
            jump deionarra_s10

        '"Ich finde, es ist ein bißchen zu spät dafür, um Vergebung zu bitten. Leb wohl, Deionarra."{#deionarra_s41_r6112}' if deionarraLogic.r6112_condition():
            # a143 # r6112
            jump deionarra_s15

        '"Vielleicht kann mir jemand anders helfen. Leb wohl, Deionarra."{#deionarra_s41_r6113}' if deionarraLogic.r6113_condition():
            # a144 # r6113
            jump deionarra_s15

        '"Ich finde, es ist ein bißchen zu spät dafür, um Vergebung zu bitten. Leb wohl, Deionarra."{#deionarra_s41_r6114}' if deionarraLogic.r6114_condition():
            # a145 # r6114
            jump deionarra_s0

        '"Vielleicht kann mir jemand anders helfen. Leb wohl, Deionarra."{#deionarra_s41_r6115}' if deionarraLogic.r6115_condition():
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    nr '"Wenn es so jemanden gibt, dann kenne ich ihn nicht." Deionarra sieht zuversichtlich aus. "Aber es gibt andere, die noch mächtiger sind als ich und die ihn aufheben können. Ich bitte dich noch einmal um Vergebung, mein Liebster. Ich wußte nicht, was ich tue."{#deionarra_s42_}'

    menu:
        '"Da war noch was, was ich dich fragen wollte…"{#deionarra_s42_r6116}':
            # a147 # r6116
            jump deionarra_s10

        '"Ich finde, es ist ein bißchen zu spät dafür, um Vergebung zu bitten. Leb wohl, Deionarra."{#deionarra_s42_r6117}' if deionarraLogic.r6117_condition():
            # a148 # r6117
            jump deionarra_s15

        '"Vielleicht kann mir jemand anders helfen. Leb wohl, Deionarra."{#deionarra_s42_r6118}' if deionarraLogic.r6118_condition():
            # a149 # r6118
            jump deionarra_s15

        '"Ich finde, es ist ein bißchen zu spät dafür, um Vergebung zu bitten. Leb wohl, Deionarra."{#deionarra_s42_r6119}' if deionarraLogic.r6119_condition():
            # a150 # r6119
            jump deionarra_s0

        '"Vielleicht kann mir jemand anders helfen. Leb wohl, Deionarra."{#deionarra_s42_r6120}' if deionarraLogic.r6120_condition():
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    nr '"Wegkommen…?" Deionarras Stimme wird zu einem Fauchen und schwillt dann wieder an. "*Wegkommen?!* Du fragst mich, die ich wegen dir hier gefangen bin, wie man von hier *wegkommen* kann?!"{#deionarra_s43_}'

    menu:
        '"Ja, ich muß diesem Ort entfliehen. Weißt Du einen Weg hier raus?"{#deionarra_s43_r6137}':
            # a152 # r6137
            jump deionarra_s47

        '"Ich entschuldige mich für meine Frage. Ich wollte dich nicht verletzen. Bitte, ich hätte da noch ein paar Fragen…"{#deionarra_s43_r6138}':
            # a153 # r6138
            jump deionarra_s10

        '"Deionarra, ich bin in Gefahr. Weißt du einen sicheren Ort? Ich werde auch so bald als möglich zurückkommen, um mit dir zu sprechen."{#deionarra_s43_r6139}' if deionarraLogic.r6139_condition():
            # a154 # r6139
            jump deionarra_s46

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s43_r6140}' if deionarraLogic.r6140_condition():
            # a155 # r6140
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s43_r6141}' if deionarraLogic.r6141_condition():
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    nr 'Als du Deionarra die Frage stellen willst, schnürt es dir die Kehle zu. Du erkennst, daß, wenn du sie nach einem Fluchtweg fragst, in ihr das Gefühl geweckt werden könnte, daß du sie verlassen willst. Wenn du sie fragen willst, wie man hier wegkommt, mußt du es ganz vorsichtig anstellen.{#deionarra_s44_}'

    menu:
        '"Kannst du mir sagen, wie ich diesen Ort verlassen kann?"{#deionarra_s44_r6142}':
            # a157 # r6142
            jump deionarra_s43

        '"Deionarra, ich bin in Gefahr. Weißt du einen sicheren Ort? Ich werde auch so bald als möglich zurückkommen, um mit dir zu sprechen."{#deionarra_s44_r6143}':
            # a158 # r6143
            jump deionarra_s46

        '"Ich hätte noch ein paar Fragen an dich…"{#deionarra_s44_r6144}':
            # a159 # r6144
            jump deionarra_s10

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s44_r6145}' if deionarraLogic.r6145_condition():
            # a160 # r6145
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s44_r6146}' if deionarraLogic.r6146_condition():
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    nr '"Ich fühle, daß dieser Ort viele Türen hat, die vor den Augen Sterblicher verborgen sind. Vielleicht könntest du eines dieser Portale zur Flucht benutzen."{#deionarra_s45_}'

    menu:
        '"Portale?"{#deionarra_s45_r6124}':
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    nr '"In Gefahr?" Deionarra sieht besorgt aus. "Natürlich, mein Liebster. Ich werde dir mit allem, was in meiner Macht steht, helfen…" Sie schließt ihre Augen für einen Moment und du siehst, wie ein ätherischer Zephyr ihren Körper durchfährt und ihr Haar zerwühlt. Einen Augenblick später erstirbt der Zephyr und langsam öffnen sich ihre Augen. "Vielleicht gibt es eine Möglichkeit."{#deionarra_s46_}'

    menu:
        '"Ja?"{#deionarra_s46_r6147}' if deionarraLogic.r6147_condition():
            # a163 # r6147
            jump deionarra_s45

        '"Ja?"{#deionarra_s46_r6148}' if deionarraLogic.r6148_condition():
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    nr '"Du kommst zu mir im Tod und sagst mir, daß du meine Hilfe brauchst, um mich *wieder* verlassen zu können!?" Ihr Gesicht ist vor Zorn zu einer Maske erstarrt. "Ich bin für dich *gestorben*, mein Liebster. Sogar jetzt noch *leide* ich dafür!"{#deionarra_s47_}'

    menu:
        '"Deionarra, bitte… Ich brauche deine Hilfe. Wirst du mich in dieser Stunde abweisen, wo ich dich so sehr brauche?"{#deionarra_s47_r6149}':
            # a165 # r6149
            jump deionarra_s37

        '"Deionarra, ich frage nur, weil ich in Gefahr bin. Weißt du einen sicheren Ort? Ich werde auch so bald als möglich zurückkommen, um mit dir zu sprechen."{#deionarra_s47_r6150}' if deionarraLogic.r6150_condition():
            # a166 # r6150
            jump deionarra_s46

        '"Schon gut. Sieh mal, ich hätte da noch ein paar Fragen…"{#deionarra_s47_r6151}':
            # a167 # r6151
            jump deionarra_s8

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s47_r6152}' if deionarraLogic.r6152_condition():
            # a168 # r6152
            jump deionarra_s15

        '"Ich muß fort. Leb wohl, Deionarra."{#deionarra_s47_r6153}' if deionarraLogic.r6153_condition():
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    nr 'Deionarra schließt ihre Augen und entschwindet mit einem ätherischen Säuseln.{#deionarra_s48_}'

    menu:
        'Verschwinde.{#deionarra_s48_r6154}' if deionarraLogic.r6154_condition():
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        'Verschwinde.{#deionarra_s48_r6155}' if deionarraLogic.r6155_condition():
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        'Geh weg.{#deionarra_s48_r13258}' if deionarraLogic.r13258_condition():
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Du siehst eine bestechend schöne, geisterhafte Form vor dir. Sie hat langes, fließendes Haar, und ihr Gewand scheint von einer ätherischen Brise bewegt zu werden. Ihre Augen liegen auf deinen, und du verspürst ein seltsames, unzusammenhängendes Gefühl, als würdest du in mehrere Augenpaare gleichzeitig sehen.{#deionarra_s49_}'

    menu:
        '"Bist du Deionarra…?"{#deionarra_s49_r63357}':
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr 'Vor dir steht die geisterhafte Form Deionarras. Ihr gespenstisches Gewand scheint von einer ätherischen Brise bewegt zu werden. Ihre Augen heften sich auf deine, und du spürst ein seltsames, unzusammenhängendes Gefühl, als würdest du in mehrere Augenpaare auf einmal blicken.{#deionarra_s50_}'

    menu:
        '"Deionarra…?"{#deionarra_s50_r63359}':
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    nr '"Mein Liebster, endlich habe ich dich *gefunden.* Ich habe dich gesucht, nachdem ihr durch den Kristall getrennt wurdet - diese Festung erstreckt sich über Hunderte von Meilen, und ich fürchtete schon, du seist mir verloren." Ihre gespenstischen Augen betrachten dich, suchen deinen Körper nach frischen Wunden ab. "Geht es dir gut?"{#deionarra_s51_}'

    menu:
        '"Ich glaube ja - der Kristall hat mich geteilt, aber jetzt bin ich wieder eins. Aber jetzt sitze ich hier fest."{#deionarra_s51_r63362}':
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    nr '"Ich habe den Verdacht, daß es das wirkliche Ziel des Kristalls war, dich hier einzusperren. Aber für mich stellt das kein Hindernis dar." Sie schließt die Augen. "Meine Augen sehen vieles, und die Hallen der Festung sind mir wohlbekannt."{#deionarra_s52_}'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    nr '"Wenn du hier gefangen bist, Liebster, dann werde ich dafür sorgen, daß du befreit wirst. Wohin möchtest du gehen?"{#deionarra_s53_}'

    menu:
        '"Ich will meinen Widersacher finden und ihn besiegen."{#deionarra_s53_r63365}':
            # a176 # r63365
            jump deionarra_s54

        '"Ich will dorthin gehen, wo meine Sterblichkeit ist - und sie zurückholen."{#deionarra_s53_r63366}':
            # a177 # r63366
            jump deionarra_s54

        '"Ich will wieder mit meinen Freunden zusammengeführt werden."{#deionarra_s53_r63367}' if deionarraLogic.r63367_condition():
            # a178 # r63367
            jump deionarra_s54

        '"Ich will wieder mit meinen Kameraden zusammengeführt werden. Es gibt ein paar Dinge, die ich von ihnen brauche."{#deionarra_s53_r63368}' if deionarraLogic.r63368_condition():
            # a179 # r63368
            jump deionarra_s54

        '"Ich möchte kurz mit dir sprechen, und dir erzählen, wie du gestorben bist… und warum."{#deionarra_s53_r63369}' if deionarraLogic.r63369_condition():
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    nr '"Wie du wünschst, mein Liebster." Sie streckt ihre Hand aus. "Berühre meine Hand, und die Mauern der Festung werden keine Mauern mehr für dich sein."{#deionarra_s54_}'

    menu:
        'Berühre ihre Hand…{#deionarra_s54_r63371}' if deionarraLogic.r63371_condition():
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        'Berühre ihre Hand…{#deionarra_s54_r64594}' if deionarraLogic.r64594_condition():
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    nr '"Wovon sprichst du?"{#deionarra_s55_}'

    menu:
        'Wahrheit: "Als ich dich in die Festung brachte, da wollte ich, daß du hier stirbst. Ich brauchte jemanden, der zurückbleibt, damit er als Bindeglied zu diesem Ort fungieren würde. Ich wußte, daß du mich so liebtest, daß deine Liebe den Tod hinausschieben würde, und es dir erlauben würde, ein Geist zu werden. Und deshalb mußt du nun leiden."{#deionarra_s55_r63373}':
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        'Lüge: "Als du hier starbst, in der Festung, geschah dies wegen dem Gegner, der auf uns wartet. Er wollte, daß du stirbst, damit wir getrennt würden. Ich werde ihm bald gegenübertreten, und dann werde ich mich an ihm rächen."{#deionarra_s55_r63374}':
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    nr 'Deionarras Gesicht ist eine Maske, während du die Worte aussprichst.{#deionarra_s56_}'

    menu:
        'Lüge: "Es tut mir leid, Deionarra."{#deionarra_s56_r63376}':
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        'Wahrheit: "Es tut mir leid, Deionarra."{#deionarra_s56_r63377}':
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        'Wahrheit: "Es war notwendig, Deionarra - Es tut mir leid, daß du so gelitten hast."{#deionarra_s56_r63378}':
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    nr '"*Liebst* du mich? Wenn du ja sagst, dann bedeutet alles, was passiert ist, nichts."{#deionarra_s57_}'

    menu:
        'Lüge: "Natürlich liebe ich dich. Selbst der Tod kann das Band zwischen uns nicht zerschneiden."{#deionarra_s57_r63380}':
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        'Wahrheit: "Obwohl ich dich zuerst nicht kannte, habe ich mich in dich verliebt. Dein Leiden ist mein Leiden geworden, und ich werde alles tun, was in meiner Macht steht, um dir zu helfen."{#deionarra_s57_r63381}':
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        'Wahrheit: "Es tut mit leid, Deionarra. Das tue ich nicht. Ich habe dich nie gekannt. Vielleicht, wenn ich dich unter anderen Umständen getroffen hätte…"{#deionarra_s57_r63382}':
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    nr '"Dann werde ich dir helfen, Liebster. Sag mir, wie ich dir helfen kann, und ich werde es tun."{#deionarra_s58_}'

    menu:
        '"Ich bin hier gefangen. Kannst du mir helfen, hier rauszukommen?"{#deionarra_s58_r63384}':
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    nr '"Dann… ist das das Ende für uns, mein Liebster. Wegen dir bin ich hiergeblieben - aus keinem anderen Grund. Ich werde dir ein letztes Mal helfen, und dann werde ich über die Ewige Grenze reisen, wie es für mich bestimmt war."{#deionarra_s59_}'

    menu:
        '"Dann werde ich dich um diesen letzten Gefallen bitten und dich dann in Frieden lassen: Ich bin hier gefangen. Kannst du mir helfen?{#deionarra_s59_r63386}':
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Du erblickst eine umwerfend schöne Gestalt. Sie hat langes, fließendes Haar, und ihr Gewand scheint von einer ätherischen Brise bewegt zu werden. Sie steht am Rande des steinernen Wegs und starrt in die Leere der Ebene.{#deionarra_s60_}'

    menu:
        '"Wer bist du?"{#deionarra_s60_r63388}':
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        'Laß die gespenstische Gestalt in Ruhe.{#deionarra_s60_r63389}':
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr 'Vor dir steht de geisterhafte Gestalt Deionarras. Ihr gespenstisches Gewand scheint von einer ätherischen Brise bewegt zu werden. Sie steht am Rande des steinernen Weges und starrt in die Leere der Ebene.{#deionarra_s61_}'

    menu:
        '"Deionarra…?"{#deionarra_s61_r63391}':
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        'Laß Deionarra in Ruhe.{#deionarra_s61_r63392}':
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    nr '"Mein Liebster! Du solltest *nicht* hier sein.! Du mußt sofort gehen!"{#deionarra_s62_}'

    menu:
        '"Warum? Wer bist du, Geist… Was ist das für ein Ort?"{#deionarra_s62_r63394}' if deionarraLogic.r63394_condition():
            # a197 # r63394
            jump deionarra_s63

        '"Deionarra, was ist das für ein Ort? Ist das die Festung?"{#deionarra_s62_r63395}' if deionarraLogic.r63395_condition():
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    nr '"Das ist die Festung der Reue. Es ist der Ort, an dem der Moment meines Todes gefangengehalten wird, und ich darf mich nicht zu weit von seinen Hallen entfernen. Wenn du einen Weg zurück nach Sigil finden kannst, *mußt* du gehen. Wenn du hierbleibst, mein Liebster, wirst du sterben."{#deionarra_s63_}'

    menu:
        '"Ich bin unsterblich, Geist. Ich danke dir für deine Warnung, aber der Tod ist mein geringstes Problem."{#deionarra_s63_r63397}' if deionarraLogic.r63397_condition():
            # a199 # r63397
            jump deionarra_s64

        '"Ich bin unsterblich, Deionarra. Ich glaube nicht, daß ich mir große Sorgen machen muß, sogar hier nicht."{#deionarra_s63_r63398}' if deionarraLogic.r63398_condition():
            # a200 # r63398
            jump deionarra_s64

        '"Was ist mit meiner Unsterblichkeit? Bestimmt bin ich auch hier unsterblich…?"{#deionarra_s63_r63399}':
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    nr 'Sie schüttelt den Kopf. "Nein, mein Liebster. Es ist etwas an dieser Festung - die Hülle, die sie umgibt, trennt sie vom Rest der Ebenen. Es ist diese Hülle, die eine Schranke zu deiner Unsterblichkeit bildet."{#deionarra_s64_}'

    menu:
        '"Eine Hülle? Die Säule sagte mir, wenn ich sterbe, stirbt ein Anderer an meiner Stelle. Und wenn ich niemanden finde, der für mich stirbt, -"{#deionarra_s64_r63401}' if deionarraLogic.r63401_condition():
            # a202 # r63401
            jump deionarra_s66

        '"Wie konnte diese Hülle ein Hindernis sein? Das verstehe ich nicht."{#deionarra_s64_r63402}' if deionarraLogic.r63402_condition():
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    nr '"Da ich hier weiterhin Wache gehalten habe, habe ich das Wesen deiner Unsterblichkeit begriffen, mein Liebster. Es ist etwas, das nach dem Leben Anderer hungert. Im Moment deines Todes verlangt es ein anderes Leben an deiner Stelle, damit du leben kannst. Die Seele, die an deiner Stelle stirbt, wird hierher gebracht, in die Festung, als ein Schatten. Ich glaube, diese Hülle verhindert, daß deine Unsterblichkeit ein weiteres Opfer findet."{#deionarra_s65_}'

    menu:
        '"Also… wenn ich sterbe. stirbt ein Anderer an meiner Stelle. Und wenn ich kein lebendes Wesen finde. das für mich stirbt…"{#deionarra_s65_r63404}':
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    nr '"Wenn du an diesem Ort stirbst, dann ist es das Ende, denn hier gibt es nichts *Lebendes.* Du mußt also vorsichtig sein. Kehre nach Sigil zurück und verlasse diesen verfluchten Ort!"{#deionarra_s66_}'

    menu:
        '"Aber - meine Verbündeten sind hier. Und das heißt, sie befinden sich in dieser Hülle. Was passiert mit ihnen, wenn ich sterbe?"{#deionarra_s66_r63406}' if deionarraLogic.r63406_condition():
            # a205 # r63406
            jump deionarra_s67

        '"Aber - einer von meinen Verbündeten ist da drin. Das heißt, er befindet sich in dieser Hülle. Was passiert mit meinem Kameraden, wenn ich sterbe?"{#deionarra_s66_r63407}' if deionarraLogic.r63407_condition():
            # a206 # r63407
            jump deionarra_s67

        '"Deionarra, kannst du mir sonst noch etwas sagen, das nützlich sein könnte? Was erwartet mich da drin?"{#deionarra_s66_r63408}' if deionarraLogic.r63408_condition():
            # a207 # r63408
            jump deionarra_s68

        '"Geist, kannst du mir sonst noch etwas sagen, das nützlich sein könnte? Was erwartet mich da drin?"{#deionarra_s66_r63409}' if deionarraLogic.r63409_condition():
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    nr '"Mein Liebster, wenn du *irgend etwas* Lebendiges mit hierher gebracht hast, dann ist es in schrecklicher Gefahr. Sowohl die Schatten als auch du bedrohen es. Wenn du hier stirbst, dann wird deine Unsterblichkeit das nächste lebende Wesen in der Festung jagen, und *das* wird dann an deiner Stelle sterben!"{#deionarra_s67_}'

    menu:
        '"Ich kann nicht zurück gehen. Kannst du mir irgend etwas sagen, das nützlich sein könnte? Was erwartet mich in der Festung?"{#deionarra_s67_r63411}':
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    nr '"Es gibt keine natürliche Dunkelheit in der Festung, mein Liebster, nur die Schatten derer, die an deiner Stelle gestorben sind. Die Energien dieser Ebene ernähren sie, und ihr Haß auf dich ist grenzenlos. Sie werden dir nicht erlauben zu gehen." Sie wirft einen Blick auf die Mauern der Festung. "Geh *nicht* hinein, ich flehe dich an!"{#deionarra_s68_}'

    menu:
        '"Aber - meine Verbündeten sind da drin. Ich kann sie nicht im Stich lassen. Hast du eine Ahnung, wo sie sein könnten?"{#deionarra_s68_r63413}' if deionarraLogic.r63413_condition():
            # a210 # r63413
            jump deionarra_s69

        '"Aber - einer von meinen Verbündeten ist da drin. Ich kann nicht gehen. Hast du eine Ahnung, wo mein Freund sein könnte?"{#deionarra_s68_r63414}' if deionarraLogic.r63414_condition():
            # a211 # r63414
            jump deionarra_s69

        '"Ich muß in die Festung hinein. Ich kann nicht zurück."{#deionarra_s68_r63415}' if deionarraLogic.r63415_condition():
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    nr '"Wenn du jemanden mitgebracht hast, wurde er von dir getrennt, als du angekommen bist - an diesem Ort werden die Lebenden voneinander getrennt… und dann getötet." Sie sieht verwirrt aus. "Die Festung erstreckt sich über viele Meilen - deine Freunde hier zu finden, wird schwierig sein."{#deionarra_s69_}'

    menu:
        '"Ich muß sie finden. Ich habe keine Wahl."{#deionarra_s69_r63417}':
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    nr '"Dann werde ich über dich wachen, mein Liebster, und dir helfen, wenn ich kann."{#deionarra_s70_}'

    menu:
        '"Ich habe dir deinen Ring gebracht, Deionarra. Ich habe dein Erbe für mich gefunden."{#deionarra_s70_r63419}' if deionarraLogic.r63419_condition():
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        '"Ich bin dir dankbar, Geist. Jetzt muß ich aber gehen."{#deionarra_s70_r63420}' if deionarraLogic.r63420_condition():
            # a215 # r63420
            jump deionarra_dispose

        '"Ich bin dir dankbar, Deionarra. Jetzt muß ich aber gehen."{#deionarra_s70_r63421}' if deionarraLogic.r63421_condition():
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    nr '"Der Ring hat noch einen Teil von mir in sich, mein Liebster. Wenn du ihn trägst, hast du mein Herz bei dir." Sie schließt die Augen, und du spürst plötzlich eine Wärme durch dich fließen. Deionarra öffnet die Augen und lächelt. "Ich wußte, daß du zu mir zurückkehren würdest, während du ihn trägst. Trage ihn nun mit meinem Segen, und halte ihn eng an deinem Herzen. Durch ihn werde ich dich verteidigen."{#deionarra_s71_}'

    menu:
        '"Ich bin dir dankbar, Deionarra. Jetzt muß ich aber gehen."{#deionarra_s71_r63423}' if deionarraLogic.r63423_condition():
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    nr '"Du… Ich… kann nicht…" Ihr Gesicht erstarrt plötzlich, und sie spricht langsam und bedacht, als ob ihre Stimme ihr Angst einflößt. "Die Wahrheit ist die: Du bist jemand, der viele Tode stirbt. Diese Tode haben das Wissen von allen sterblichen Dingen vermittelt, und in deinen Händen liegt der Funke von Leben… und Tod. Diejenigen, die in deiner Nähe sterben, tragen eine Spur ihrer selbst in sich, die du hervorbringen kannst…"{#deionarra_s72_}'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    nr 'Als Deionarra diese Worte spricht, beschleicht dich ein komisches Gefühl… Plötzlich fühlst du dich genötigt, deine Hand anzusehen. Als du sie hochhebst und *betrachtest*, kannst du SEHEN, wie das Blut träge durch deinen Arm fließt, in deine Muskeln strömt und als Folge deinen Knochen Kraft verleiht…{#deionarra_s73_}'

    menu:
        '"W…"{#deionarra_s73_r66914}':
            # a218 # r66914
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    nr 'Und du weißt, daß Deionarra *recht* hat. Du erinnerst dich plötzlich daran, wie du auch den kleinsten Funken von Leben einem Körper entlocken und hervorbringen kannst… Dieser Gedanke erschreckt und fasziniert dich zugleich.  ^NHINWEIS: Du hast dich daran erinnert, wie du andere von den Toten erwecken kannst. Um auf diese Fähigkeit zuzugreifen, wählst du die Schaltfläche „Besondere Fähigkeiten“ im Kontextmenü. Du kannst dieses Attribut nur auf Gruppenmitglieder anwenden, die in deinem Beisein gestorben sind - Es funktioniert nicht bei denen, die nicht mit dir zusammen sind, und es funktioniert *nicht* bei Gruppenmitgliedern, die du aus der Gruppe ausschließt, wenn sie tot sind.^-{#deionarra_s74_}'

    menu:
        '"Ich,… ich… ich hätte da noch andere Fragen…"{#deionarra_s74_r66916}':
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    nr '"Also gut, mein Liebster… Wenn du weiterkommen willst, mußt du folgendes wissen: Hinter dem Eingang zur Festung ist eine große Vorkammer mit zahllosen Schatten. Du mußt dich schnell bewegen und darfst sie dich nicht umzingeln lassen, oder du wirst garantiert niedergemetzelt!"{#deionarra_s75_}'

    jump deionarra_s70
