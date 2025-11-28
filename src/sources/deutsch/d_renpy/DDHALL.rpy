init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dhall_logic import DhallLogic
    dhallLogic = DhallLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDHALL.DLG
# ###


# s0 # say822
label dhall_s0: # externs morte_s103
    nr 'Bevor Morte seine Tirade beenden kann, beginnt der Schreiber heftig zu husten. Kurz darauf läßt der Husten nach, und der Schreiber atmet wieder keuchend.{#dhall_s0_1}'

    jump morte_s104  # EXTERN


# s1 # say826
label dhall_s1: # externs morte_s104
    nr 'Bevor Morte seinen Satz beenden kann, blitzen die grauen Augen des Schreibers zu dir herüber. "Die Jahre lasten schwer auf mir, Rastloser." Er legt seinen Federkiel ab. "… doch an Taubheit leide ich noch nicht."{#dhall_s1_1}'

    menu:
        '"„Rastloser“? Kennst du mich?"{#dhall_s1_r827}':
            # a0 # r827
            $ dhallLogic.r827_action()
            jump dhall_s44


# s2 # say829
label dhall_s2: # from 21.0
    nr '"Kennst du die Frau nicht, deren Leiche unten in der Gedenkhalle bestattet ist? Ich dachte, du wärst früher mit ihr gereist…" Dhall scheint gleich wieder husten zu müssen, dann  holt er Luft. "Oder etwa nicht?"{#dhall_s2_1}'

    menu:
        '"Wo ist ihre Leiche?"{#dhall_s2_r5070}' if dhallLogic.r5070_condition():
            # a1 # r5070
            jump dhall_s42

        '"Ich weiß nichts über sie."{#dhall_s2_r5071}' if dhallLogic.r5071_condition():
            # a2 # r5071
            jump dhall_s43

        '"Sie behauptet, mich zu kennen, aber ich kann mich nicht an sie erinnern."{#dhall_s2_r5072}' if dhallLogic.r5072_condition():
            # a3 # r5072
            jump dhall_s28

        '"Du sagst, da wären noch andere. Wer ist denn noch hier?"{#dhall_s2_r5073}' if dhallLogic.r5073_condition():
            # a4 # r5073
            jump dhall_s12

        '"Du sagst, da wären noch andere. Wer ist denn noch hier?"{#dhall_s2_r5074}' if dhallLogic.r5074_condition():
            # a5 # r5074
            jump dhall_s12

        '"Könnte schon sein. Ich hätte da noch ein paar Fragen an dich…"{#dhall_s2_r6063}':
            # a6 # r6063
            jump dhall_s9

        '"Ich werde mal runter in die Gedenkhalle gehen und gucken, ob ich ihre Leiche finden kann."{#dhall_s2_r6064}' if dhallLogic.r6064_condition():
            # a7 # r6064
            jump dhall_s11

        '"Vielleicht nicht. Leb wohl."{#dhall_s2_r13288}' if dhallLogic.r13288_condition():
            # a8 # r13288
            jump dhall_s11


# s3 # say832
label dhall_s3: # from 9.0
    nr 'Dhall starrt dich an. "Bist du sicher?"{#dhall_s3_1}'

    menu:
        '"Ja. Wirklich eine gute Verkleidung."{#dhall_s3_r830}' if dhallLogic.r830_condition():
            # a9 # r830
            $ dhallLogic.r830_action()
            jump dhall_s4

        '"Ja. Wirklich eine gute Verkleidung."{#dhall_s3_r831}' if dhallLogic.r831_condition():
            # a10 # r831
            $ dhallLogic.r831_action()
            jump dhall_s4

        '"Nein, wenn ich mich recht besinne, hab„ ich“s mir vielleicht nur eingebildet. Hör mal, ich hätte da noch ein paar Fragen…"{#dhall_s3_r834}':
            # a11 # r834
            jump dhall_s9


# s4 # say833
label dhall_s4: # from 3.0 3.1
    nr '"Ich…" Dhall hat einen neuen Hustenanfall. Nach ein oder zwei Minuten hat er genügend Atem geschöpft, um zu sagen. "Ich… werde sofort die Wachen benachrichtigen."{#dhall_s4_1}'

    menu:
        '"Vielen Dank." Ich hätte noch ein paar Fragen…"{#dhall_s4_r836}':
            # a12 # r836
            jump dhall_s9

        '"Ausgezeichnet. Leb wohl."{#dhall_s4_r837}':
            # a13 # r837
            jump dhall_s11


# s5 # say838
label dhall_s5: # - # IF ~  Global("Dhall","GLOBAL",0)
    nr 'Dieser Schreiber sieht sehr alt aus… Seine Haut ist faltig und eine Spur gelb, wie altes Pergament. Dunkelgraue Augen liegen in einem eckigen Gesicht, und ein langer, weißer Bart fließt wie ein Wasserfall an seinen Roben hinunter. Sein Atem geht stoßweise und unregelmäßig, doch selbst sein gelegentliches Husten verlangsamt das Kratzen seines Federfüllers nicht.{#dhall_s5_1}'

    menu:
        '"Sei gegrüßt."{#dhall_s5_r839}' if dhallLogic.r839_condition():
            # a14 # r839
            jump morte_s102  # EXTERN

        '"Sei gegrüßt."{#dhall_s5_r835}' if dhallLogic.r835_condition():
            # a15 # r835
            jump dhall_s7

        '"Sei gegrüßt."{#dhall_s5_r5058}' if dhallLogic.r5058_condition():
            # a16 # r5058
            jump dhall_s6

        'Laß den alten Schreiber in Ruhe.{#dhall_s5_r5060}':
            # a17 # r5060
            jump dhall_dispose


# s6 # say841
label dhall_s6: # from 5.2
    nr 'Die grauen Augen funkeln, als er von seinem Buch aufblickt. "Ich ahnte schon, daß du für die Übergriffe in der Leichenhalle verantwortlich bist. So…" Er hüstelt und holt keuchend Luft. "So gelangst du bestimmt nicht ins nächste Leben."{#dhall_s6_1}'

    menu:
        '"Ich habe mich nur verteidigt. "Ich hätte da ein paar Fragen, bevor ich verschwinde…"{#dhall_s6_r842}' if dhallLogic.r842_condition():
            # a18 # r842
            jump dhall_s9

        '"Einen kleinen Tod mit euch Leichenanbetern zu teilen betrachte ich nicht gerade als Verbrechen, muß ich sagen. Ich hätte aber ein paar Fragen an dich…"{#dhall_s6_r843}' if dhallLogic.r843_condition():
            # a19 # r843
            $ dhallLogic.r843_action()
            jump dhall_s9

        '"Kennst du mich?"{#dhall_s6_r5062}' if dhallLogic.r5062_condition():
            # a20 # r5062
            jump dhall_s44

        '"Auf bald."{#dhall_s6_r5063}':
            # a21 # r5063
            jump dhall_dispose


# s7 # say844
label dhall_s7: # from 5.1
    nr 'Der Schreiber hört auf, in sein Buch hineinzukritzeln, dann schaut er auf. Seine Augen gleichen zwei Nägeln, die aus seinem Schädel ragen. "Du…" Er klingt müde, als hätte er dieselben Worte schon oft vorher gesagt. "Du bist also aus deinem Schlaf erwacht und zu deinem Traum zurückgekehrt." In seiner Stimme klingt jetzt etwas Respekt mit. "Freut mich, dich wieder zu sehen, Rastloser."{#dhall_s7_1}'

    menu:
        '"„Rastloser“? Kennst du mich?"{#dhall_s7_r845}':
            # a22 # r845
            jump dhall_s44


# s8 # say851
label dhall_s8: # from 22.0
    nr '"Versteh doch. Deine Existenz ist für sie reine Blasphemie. Viele unseres Bundes würden dich einäschern lassen… wenn sie von deinem Zustand wüßten."{#dhall_s8_1}'

    menu:
        '"Du bist ein Staubmensch. Aber du scheinst kein Interesse daran zu haben, mich zu töten. Warum nicht?"{#dhall_s8_r940}':
            # a23 # r940
            jump dhall_s23

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s8_r911}':
            # a24 # r911
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s8_r913}':
            # a25 # r913
            jump dhall_s9

        '"Mehr will ich gar nicht hören. Leb wohl, Dhall."{#dhall_s8_r6038}':
            # a26 # r6038
            jump dhall_s11


# s9 # say852
label dhall_s9: # from 2.5 3.2 4.0 6.0 6.1 8.2 10.5 12.1 13.0 14.4 15.2 16.3 17.3 18.2 19.2 20.2 21.1 22.2 23.2 24.1 25.2 26.2 27.0 28.1 29.2 30.0 31.1 32.6 33.3 34.2 35.2 36.2 37.1 38.2 39.0 40.0 41.3 42.4 43.3 45.0 47.4 48.2 49.2 51.2 52.2 53.1
    nr '"Gut. Was wolltest du wissen?"{#dhall_s9_1}'

    menu:
        '"Wußtest du schon, daß sich in den östlichen Kammern jemand als Zombie verkleidet hat?"{#dhall_s9_r854}' if dhallLogic.r854_condition():
            # a27 # r854
            jump dhall_s3

        '"Was ist das für ein Ort?"{#dhall_s9_r857}':
            # a28 # r857
            jump dhall_s10

        '"Wie bin ich hierhergekommen?"{#dhall_s9_r855}':
            # a29 # r855
            jump dhall_s15

        '"Kannst du mir erzählen, wie man hier rauskommt?"{#dhall_s9_r858}' if dhallLogic.r858_condition():
            # a30 # r858
            jump dhall_s13

        '"Weißt du, wer ich bin?"{#dhall_s9_r5069}':
            # a31 # r5069
            $ dhallLogic.j39460_s9_r5069_action()
            jump dhall_s21

        '"Was machst du da?"{#dhall_s9_r5748}':
            # a32 # r5748
            jump dhall_s25

        '"Du hörst dich krank an. Geht es dir nicht gut?"{#dhall_s9_r6065}':
            # a33 # r6065
            jump dhall_s26

        '"Nichts… Leb wohl, Dhall."{#dhall_s9_r41663}':
            # a34 # r41663
            jump dhall_s11


# s10 # say859
label dhall_s10: # from 9.1
    nr '"Du befindest dich in der Leichenhalle, Rastloser. Du bist… wiedergekommen…" Ein Hustenanfall hindert ihn am Weiterreden. Nach einer Weile beruhigt er sich und atmet wieder keuchend. "… hier wartet, wer den Schatten dieses Lebens bald verlassen wird."{#dhall_s10_1}'

    menu:
        '"Erzähl mir über die Leichenhalle."{#dhall_s10_r861}':
            # a35 # r861
            jump dhall_s32

        '"„Rastloser“?"{#dhall_s10_r860}':
            # a36 # r860
            jump dhall_s38

        '"Schatten dieses Lebens?"{#dhall_s10_r862}':
            # a37 # r862
            jump dhall_s33

        '"„Wiedergekommen“, sagst du…? War ich denn schon öfter hier?"{#dhall_s10_r863}':
            # a38 # r863
            jump dhall_s14

        '"Wie bin ich hierhergekommen?"{#dhall_s10_r864}':
            # a39 # r864
            jump dhall_s15

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s10_r865}':
            # a40 # r865
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s10_r866}':
            # a41 # r866
            jump dhall_s11


# s11 # say867
label dhall_s11: # from 2.6 2.7 4.1 8.3 9.7 10.6 12.2 14.5 15.3 16.4 19.3 20.3 21.2 22.3 23.3 24.2 25.3 26.3 27.1 28.2 29.4 30.1 31.3 32.7 33.4 34.3 35.3 36.3 37.2 38.3 41.4 42.5 43.4 47.5 48.3 49.3 51.3 52.3 53.2
    nr 'Als du dich umdrehst, um zu gehen, sagt Dhall: "Glaube mir, ich beneide dich nicht, Rastloser. So wiedergeboren zu werden wie du, wäre für mich ein unerträglicher Fluch. Aber du mußt dich damit abfinden. Irgendwann wird dich dein Pfad wieder hierher führen…" Dhall hustet; dabei rasselt es in seiner Brust. "Dies ist der Weg aller Dinge aus Fleisch und Blut."{#dhall_s11_1}'

    menu:
        '"Dann treffen wir uns vielleicht wieder, Dhall."{#dhall_s11_r41564}':
            # a42 # r41564
            jump dhall_dispose


# s12 # say868
label dhall_s12: # from 2.3 2.4 42.2 42.3 43.1 43.2
    nr '"Die gibt es zweifellos, doch kenne ich ihre Namen nicht, noch weiß ich, wo sie liegen. Ein solcher wie du hat einen Pfad verlassen, den viele gegangen sind, doch nur wenige überlebt haben." Dhall gestikuliert um dich herum. "Alle Toten kommen hierher. Einige müssen einst mit dir gereist sein."{#dhall_s12_1}'

    menu:
        '"Wo ist diese Frau, die du erwähntest"?{#dhall_s12_r870}' if dhallLogic.r870_condition():
            # a43 # r870
            jump dhall_s42

        '"Deine Erklärungen hören sich logisch an. Ich hätte aber noch ein paar Fragen…"{#dhall_s12_r871}':
            # a44 # r871
            jump dhall_s9

        '"Gut, dann werde ich nach ihnen suchen. Wer weiß, vielleicht rufen sie mein Erinnerungsvermögen wieder wach. Leb wohl."{#dhall_s12_r872}':
            # a45 # r872
            jump dhall_s11


# s13 # say875
label dhall_s13: # from 9.3
    nr '"Hmmm… Das Haupttor ist der offensichtlichste Ausgang, aber dort wird niemand außer Staubmenschen vorbeigelassen…" Dhall fällt in ein ruckartiges Husten und fährt dann fort. "…Einer der Führer am Haupttor hat einen Schlüssel dafür, aber da müßtest du schon sehr gute Überredungskünste anwenden, damit er es dir öffnet."{#dhall_s13_1}'

    menu:
        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s13_r876}':
            # a46 # r876
            jump dhall_s9

        '"Dann leb wohl, Dhall."{#dhall_s13_r877}':
            # a47 # r877
            jump dhall_dispose


# s14 # say878
label dhall_s14: # from 10.3
    nr '"Ja, *wieder*. Du bist bereits viele Male hierher gebracht worden, Rastloser. Ich hatte gehofft, diesmal könnte dein letztes Mal sein, wenn ich mir die Wunden so ansehe, die du erlitten hast." Er seufzt. "Wann gibst du endlich deine Leidenschaften auf und verläßt diesen Schatten eines Lebens?"{#dhall_s14_1}'

    menu:
        '"„Rastloser“?"{#dhall_s14_r880}':
            # a48 # r880
            jump dhall_s38

        '"Wunden?"{#dhall_s14_r881}':
            # a49 # r881
            jump dhall_s34

        '"Schatten des Lebens?"{#dhall_s14_r883}':
            # a50 # r883
            jump dhall_s33

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s14_r879}':
            # a51 # r879
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s14_r5751}':
            # a52 # r5751
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s14_r5752}':
            # a53 # r5752
            jump dhall_s11


# s15 # say885
label dhall_s15: # from 9.2 10.4 32.5
    nr 'Dhall schnaubt verächtlich, als würde er sich nur ungern erinnern. "Du wurdest auf deinem verrotteten Wagen in die Leichenhalle kutschiert, Rastloser. Angesichts der Anzahl an ergebenen Untertanen, die zusammen mit dir stinkend und eiternd auf dem Wagen lagen, hätte man dich glatt für einen blaublütigen Edelmann halten können."{#dhall_s15_1}'

    menu:
        '"Ich kam auf einem Karren hier an?"{#dhall_s15_r886}':
            # a54 # r886
            $ dhallLogic.j39463_s15_r886_action()
            jump dhall_s16

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s15_r887}':
            # a55 # r887
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s15_r888}':
            # a56 # r888
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s15_r889}':
            # a57 # r889
            jump dhall_s11


# s16 # say890
label dhall_s16: # from 15.0
    nr '"Ja… dein Knochengerüst steckte irgendwo mitten im Haufen und vermischte seine Sekrete mit dem restlichen Leichenberg." Dhall hustet wieder heftig los; nach ein paar Minuten kommt er wieder zu Atem. "Dein „Hofmarschall“ Pharod war wie immer sehr erfreut über die paar lausigen Kupferstücke, die er dafür bekam, daß er euch vor der Leichenhalle ablud."{#dhall_s16_1}'

    menu:
        '"Wer ist dieser Pharod?"{#dhall_s16_r891}' if dhallLogic.r891_condition():
            # a58 # r891
            jump dhall_s17

        '"Hört sich an, als ob du Pharod nicht leiden kannst."{#dhall_s16_r892}' if dhallLogic.r892_condition():
            # a59 # r892
            jump dhall_s35

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s16_r893}':
            # a60 # r893
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s16_r894}':
            # a61 # r894
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s16_r5753}':
            # a62 # r5753
            jump dhall_s11


# s17 # say895
label dhall_s17: # from 16.0
    nr '"Er ist ein… Totensammler." Dhall holt schwer Atem und fährt fort. "In unserer Stadt gibt es Leute, die die Körper all derer aufstöbern, die den Pfad des Wahren Todes beschritten haben, und sie dann zu uns bringen, um sie bestatten zu lassen."{#dhall_s17_1}'

    menu:
        '"Wo kann ich diesen „Pharod“ finden?"{#dhall_s17_r897}':
            # a63 # r897
            jump dhall_s18

        '"Hört sich an, als ob du Pharod nicht leiden kannst."{#dhall_s17_r898}' if dhallLogic.r898_condition():
            # a64 # r898
            jump dhall_s35

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s17_r899}':
            # a65 # r899
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s17_r5754}':
            # a66 # r5754
            jump dhall_s9

        '"Dann werde ich mich gleich mal nach diesem Pharod umsehen. Leb wohl, Dhall."{#dhall_s17_r6031}':
            # a67 # r6031
            jump dhall_s19


# s18 # say900
label dhall_s18: # from 17.0 29.1 31.0 35.1 36.1
    nr '"Wenn alles beim Alten bleibt, Rastloser, ist es sehr viel wahrscheinlicher, daß Pharod dich findet und wieder hierher bringt, als daß du die Schlammgrube findest, in der er sich gerade suhlt."{#dhall_s18_1}'

    menu:
        '"Trotzdem muß ich ihn finden."{#dhall_s18_r902}':
            # a68 # r902
            jump dhall_s19

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s18_r903}':
            # a69 # r903
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s18_r904}':
            # a70 # r904
            jump dhall_s9

        '"Ich werde das Gefühl nicht los, daß sich unsere Wege kreuzen werden. Leb wohl, Dhall."{#dhall_s18_r5755}':
            # a71 # r5755
            jump dhall_s19


# s19 # say901
label dhall_s19: # from 17.4 18.0 18.3 29.3 31.2
    nr 'Eine leise Warnung schleicht sich in Dhalls Tonfall. "Suche nicht nach Pharod, Rastloser. Ich bin sicher, daß sich der Kreis einfach wieder schließen wird, du nicht weiser sein wirst und Pharod darum letztendlich um ein paar Kupferstücke reicher. Nimm den Tod an, Rastloser. Setze den Kreis deiner Leiden nicht fort."{#dhall_s19_1}'

    menu:
        '"Ich *muß* ihn einfach finden. Weißt du, wo er ist?"{#dhall_s19_r906}':
            # a72 # r906
            $ dhallLogic.j39464_s19_r906_action()
            jump dhall_s20

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s19_r905}':
            # a73 # r905
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s19_r907}':
            # a74 # r907
            jump dhall_s9

        '"Ich kann nicht länger mit dir sprechen. Leb wohl, Dhall."{#dhall_s19_r5756}':
            # a75 # r5756
            jump dhall_s11


# s20 # say908
label dhall_s20: # from 19.0
    nr 'Dhall hält kurz inne. Dann spricht er, wenn auch scheinbar widerwillig. "Ich weiß ja nicht, unter welchem Rinnstein Pharod sich gerade versteckt, aber ich glaube, er könnte sich irgendwo jenseits der Tore zur Leichenhalle, im Stock, aufhalten. Vielleicht weiß ja dort jemand, wo er steckt."{#dhall_s20_1}'

    menu:
        '"Hört sich an, als ob du Pharod nicht leiden kannst."{#dhall_s20_r910}' if dhallLogic.r910_condition():
            # a76 # r910
            jump dhall_s35

        '"Kannst du mir noch mehr über die Leichenhalle erzählen?"{#dhall_s20_r909}':
            # a77 # r909
            jump dhall_s32

        '"Vielen Dank." Ich hätte noch ein paar Fragen…"{#dhall_s20_r5757}':
            # a78 # r5757
            jump dhall_s9

        '"Dann werde ich dorthin gehen und mich umhören. Leb wohl."{#dhall_s20_r6030}':
            # a79 # r6030
            jump dhall_s11


# s21 # say914
label dhall_s21: # from 9.4
    nr '"Ich weiß herzlich wenig von dir, Rastloser. Ich weiß ein wenig mehr von denen, die mit dir gereist sind und sich nun in unserer Obhut befinden." Dhall seufzt. "Ich bitte dich, nicht länger andere zu bitten, sich dir anzuschließen, Rastloser - wo du gehst, da geht das Leid. Trage deine Last allein."{#dhall_s21_1}'

    menu:
        '"Ich bin also mit anderen zusammen gereist? Und sie sind hier?"{#dhall_s21_r921}':
            # a80 # r921
            $ dhallLogic.j39461_s21_r921_action()
            jump dhall_s2

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s21_r922}':
            # a81 # r922
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s21_r923}':
            # a82 # r923
            jump dhall_s11


# s22 # say915
label dhall_s22: # from 47.0
    nr 'Dhall seufzt. "Man sagt, es gebe Seelen, die den Wahren Tod niemals erreichen können. Der Tod hat sie aufgegeben, und ihre Namen werden niemals in das Totenbuch eingetragen werden. Vom Tod wiederzuerwachen, wie du es getan hast… deutet darauf hin, daß du eine dieser Seelen bist. Deine Existenz ist in unserem Bund inakzeptabel."{#dhall_s22_1}'

    menu:
        '"„Inakzeptabel“? Das klingt nicht so, als ob ich einen besonders guten Stand hätte."{#dhall_s22_r917}':
            # a83 # r917
            jump dhall_s8

        '"Ich verstehe. Erzähl mir mehr über die Leichenhalle."{#dhall_s22_r918}':
            # a84 # r918
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s22_r919}':
            # a85 # r919
            jump dhall_s9

        '"Ich denke, ich habe jetzt genug gehört. Leb wohl, Dhall."{#dhall_s22_r920}':
            # a86 # r920
            jump dhall_s11


# s23 # say924
label dhall_s23: # from 8.0
    nr '"Weil es nicht richtig ist, dir unsere Überzeugungen aufzuzwingen. Du mußt diese Schattendasein aus freien Stücken aufgeben, nicht etwa, weil du gezwungen wirst." Dhall scheint augenblicklich loshusten zu müssen, doch er schafft es, sich zu beherrschen. "Solange ich meinen Posten behalte, werde ich dein Recht schützen, deine eigene Wahrheit zu suchen."{#dhall_s23_1}'

    menu:
        '"Was ist denn dein Posten?"{#dhall_s23_r927}':
            # a87 # r927
            jump dhall_s25

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s23_r928}':
            # a88 # r928
            jump dhall_s32

        '"Gut. Ich hätte noch ein paar andere Fragen…"{#dhall_s23_r925}':
            # a89 # r925
            jump dhall_s9

        '"Mehr will ich gar nicht hören. Leb wohl, Dhall."{#dhall_s23_r6039}':
            # a90 # r6039
            jump dhall_s11


# s24 # say929
label dhall_s24: # from 25.0
    nr '"Ich bin derjenige, der die Hüllen katalogisiert, die in unsere Hallen kommen, Rastloser." Dhall hat einen Hustenanfall, dann fängt er sich wieder. "Nur ich sehe die Gesichter derer, die auf unseren Totenbanken liegen. Das Dunkel deiner Existenz ist bei mir sicher aufgehoben."{#dhall_s24_1}'

    menu:
        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s24_r1305}':
            # a91 # r1305
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s24_r6041}':
            # a92 # r6041
            jump dhall_s9

        '"Es sieht so aus, als ob du was bei mir gut hättest. Leb wohl, Dhall."{#dhall_s24_r6042}':
            # a93 # r6042
            jump dhall_s11


# s25 # say930
label dhall_s25: # from 9.5 23.0
    nr '"Ich bin ein Schreiber, ein Katalogisierer aller Hüllen, die in die Leichenhalle kommen." Dhall hustet wieder und atmet dann tief ein. "Solange der Strom der Leichen durch die Leichenhalle fließt, werde ich auf meinem Posten bleiben."{#dhall_s25_1}'

    menu:
        '"Du sagst, daß ich hier schon öfter war. Wie kommt es dann aber, daß die Staubmenschen mich nicht wiedererkennen?"{#dhall_s25_r931}' if dhallLogic.r931_condition():
            # a94 # r931
            $ dhallLogic.j39462_s25_r931_action()
            jump dhall_s24

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s25_r932}':
            # a95 # r932
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s25_r933}':
            # a96 # r933
            jump dhall_s9

        '"Also gut. Leb wohl, Dhall."{#dhall_s25_r6040}':
            # a97 # r6040
            jump dhall_s11


# s26 # say934
label dhall_s26: # from 9.6
    nr '"Ich bin dem Wahren Tod jetzt nahe, Rastloser. Nicht mehr lange, und ich werde die Ewige Grenze überschreiten und den ersehnten Frieden finden. Ich bin dieser sterblichen Sphäre überdrüssig…" Dhall seufzt schwer. "Ich habe auf den Ebenen schon alles erlebt, was einer wie ich erleben kann."{#dhall_s26_1}'

    menu:
        '"„Ewige Grenze“?"{#dhall_s26_r935}':
            # a98 # r935
            jump dhall_s41

        '"Bist du da sicher? Vielleicht gibt es eine Möglichkeit, wie ich dir helfen kann."{#dhall_s26_r936}':
            # a99 # r936
            $ dhallLogic.r936_action()
            jump dhall_s27

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s26_r937}':
            # a100 # r937
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s26_r960}':
            # a101 # r960
            jump dhall_s11


# s27 # say938
label dhall_s27: # from 26.1
    nr '"Ich möchte nicht ewig oder noch einmal leben, Rastloser. Ich könnte es nicht ertragen."{#dhall_s27_1}'

    menu:
        '"Gut. Ich hätte noch ein paar andere Fragen…"{#dhall_s27_r1303}':
            # a102 # r1303
            jump dhall_s9

        '"Einverstanden. Leb wohl, Dhall."{#dhall_s27_r1304}':
            # a103 # r1304
            jump dhall_s11


# s28 # say939
label dhall_s28: # from 2.2 42.1
    nr '"Sie *sprach* mit dir?" Dhall beginnt zu flüstern. "Hast du *Fieber*, Rastloser? Sie hat den Wahren Tod erreicht und ist für dich unerreichbar."{#dhall_s28_1}'

    menu:
        '"Sie hat mit mir gesprochen, Dhall. Ihr Geist wohnt hier."{#dhall_s28_r981}':
            # a104 # r981
            jump dhall_s30

        '"Vielleicht hab„ ich mir“s auch nur eingebildet. Ich hätte aber noch ein paar Fragen…"{#dhall_s28_r982}':
            # a105 # r982
            jump dhall_s9

        '"Ich bin mir nicht sicher, daß sie den Wahren Tod erreicht hat. Leb wohl, Dhall."{#dhall_s28_r873}':
            # a106 # r873
            jump dhall_s11


# s29 # say941
label dhall_s29: # from 36.0
    nr 'Dhall überlegt kurz. "Kann gut sein. Vermißt du etwas… etwas Wertvolles?" Seine Stimme wird schwächer; er runzelt die Stirn. "Nicht, daß Pharod irgend etwas verschmähen würde, das nicht fest an dein Knochengerüst angewachsen ist, und manchmal reicht auch das nicht aus, um seine Raffgier zu bremsen."{#dhall_s29_1}'

    menu:
        '"Ich vermisse ein Journal."{#dhall_s29_r942}' if dhallLogic.r942_condition():
            # a107 # r942
            jump dhall_s31

        '"Hmmm. Weißt du, wo Pharod zu finden ist?"{#dhall_s29_r943}' if dhallLogic.r943_condition():
            # a108 # r943
            jump dhall_s18

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s29_r944}':
            # a109 # r944
            jump dhall_s9

        '"Vielleicht sollte ich doch mal mit Pharod reden. Leb wohl, Dhall."{#dhall_s29_r6026}' if dhallLogic.r6026_condition():
            # a110 # r6026
            jump dhall_s19

        '"Ich verstehe. Leb wohl, Dhall."{#dhall_s29_r874}' if dhallLogic.r874_condition():
            # a111 # r874
            jump dhall_s11


# s30 # say945
label dhall_s30: # from 28.0
    nr 'Dhall zeichnet mit einem Finger einen Halbkreis vor sich in die Luft. "Dies ist ein schlechtes Omen, Rastloser. Ich bete, daß du diese Unterhaltung geträumt hast… Und doch fürchte ich, daß das nicht der Fall ist."{#dhall_s30_1}'

    menu:
        '"Vielleicht hab„ ich mir“s auch nur eingebildet. Ich hätte aber noch ein paar Fragen."{#dhall_s30_r946}':
            # a112 # r946
            jump dhall_s9

        '"Vielleicht können wir darauf später zurückkommen. Leb wohl, Dhall."{#dhall_s30_r947}':
            # a113 # r947
            jump dhall_s11


# s31 # say850
label dhall_s31: # from 29.0
    nr '"Ein Journal? Wenn es irgendeinen Wert hatte, hat Pharod es wahrscheinlich ergattert."{#dhall_s31_1}'

    menu:
        '"Wo kann ich diesen Pharod finden?"{#dhall_s31_r948}' if dhallLogic.r948_condition():
            # a114 # r948
            jump dhall_s18

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s31_r949}':
            # a115 # r949
            jump dhall_s9

        '"Dann sollte ich ihn wohl aufsuchen. Leb wohl, Dhall."{#dhall_s31_r6027}' if dhallLogic.r6027_condition():
            # a116 # r6027
            jump dhall_s19

        '"Ich verstehe. Leb wohl, Dhall."{#dhall_s31_r6066}' if dhallLogic.r6066_condition():
            # a117 # r6066
            jump dhall_s11


# s32 # say950
label dhall_s32: # from 8.1 10.0 14.3 15.1 16.2 17.2 18.1 19.1 20.1 22.1 23.1 24.0 25.1 33.2 34.1 37.0 38.1 41.2 47.3 48.1 49.1 51.1 52.1 53.0
    nr '"Hierher werden die Toten gebracht, um beerdigt oder verbrannt zu werden. Es ist unsere Verantwortlichkeit als Staubmenschen, uns um die Toten zu kümmern, um die, die diesen Schatten von einem Leben hinter sich gelassen haben und nun den Pfad des Wahren Todes gehen." Dhalls Stimme senkt sich besorgt. "Deine Wunden müssen dich schwer mitgenommen haben, wenn du diesen Ort nicht wiedererkennst. Er ist ja beinahe ein Zuhause für dich."{#dhall_s32_1}'

    menu:
        '"Schatten des Lebens?"{#dhall_s32_r951}':
            # a118 # r951
            jump dhall_s33

        '"Wahrer Tod?"{#dhall_s32_r953}':
            # a119 # r953
            $ dhallLogic.r953_action()
            jump dhall_s48

        '"Staubmenschen?"{#dhall_s32_r954}':
            # a120 # r954
            jump dhall_s47

        '"Sigil?"{#dhall_s32_r955}':
            # a121 # r955
            jump dhall_s37

        '"Wunden?"{#dhall_s32_r956}':
            # a122 # r956
            jump dhall_s34

        '"Wie bin ich hierhergekommen?"{#dhall_s32_r846}':
            # a123 # r846
            jump dhall_s15

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s32_r5735}':
            # a124 # r5735
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s32_r6062}':
            # a125 # r6062
            jump dhall_s11


# s33 # say957
label dhall_s33: # from 10.2 14.2 32.0 41.0 47.2 49.0
    nr '"Ja, ein Schatten. Siehst du, Rastloser, dieses Leben… ist nicht echt. Dein Leben, mein Leben, das sind nur Schatten, ein Aufflackern dessen, was das Leben einmal war. Dieses „Leben“ ist der Ort, wo wir landen, *nachdem* wir gestorben sind. Und hier bleiben wir dann… in der Falle. In einem Käfig. So lange, bis wir den Wahren Tod erreichen können."{#dhall_s33_1}'

    menu:
        '"Wahrer Tod?"{#dhall_s33_r958}':
            # a126 # r958
            $ dhallLogic.r958_action()
            jump dhall_s48

        '"Was bringt dich zu dem Glauben, dieses Leben wäre nicht echt?"{#dhall_s33_r959}':
            # a127 # r959
            jump dhall_s50

        '"Erzähl mir noch etwas über die Leichenhalle."{#dhall_s33_r5736}':
            # a128 # r5736
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s33_r5737}':
            # a129 # r5737
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s33_r5738}':
            # a130 # r5738
            jump dhall_s11


# s34 # say961
label dhall_s34: # from 14.1 32.4
    nr '"Ja, die Wunden, die deinen Körper zieren… sie sehen aus, als hätten sie jeden anderen auf den Pfad des Wahren Todes befördert. Und doch scheinen viele bereits verheilt zu sein." Dhall muß kurz heftig husten, dann kann er weitersprechen. "Aber dies sind nur die oberflächlichen Wunden."{#dhall_s34_1}'

    menu:
        '"Nur oberflächliche Wunden? Wie meinst du das?"{#dhall_s34_r1301}':
            # a131 # r1301
            $ dhallLogic.j39470_s34_r1301_action()
            jump dhall_s53

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s34_r1302}':
            # a132 # r1302
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s34_r5746}':
            # a133 # r5746
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s34_r5747}':
            # a134 # r5747
            jump dhall_s11


# s35 # say962
label dhall_s35: # from 16.1 17.1 20.0
    nr '"Einige von ihnen achte ich, Rastloser." Dhall holt tief Atem. "Pharod nicht. Er trägt seinen schlechten Ruf wie ein Ehrenabzeichen zur Schau und geht allzu frei mit dem Hab und Gut der Toten um. Er ist ein Postenritter, der mit dem größten Ramsch noch Querhandel treibt."{#dhall_s35_1}'

    menu:
        '"„Postenritter“?"{#dhall_s35_r963}':
            # a135 # r963
            jump dhall_s36

        '"Weißt du, wo ich Pharod finden kann?"{#dhall_s35_r964}' if dhallLogic.r964_condition():
            # a136 # r964
            jump dhall_s18

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s35_r965}':
            # a137 # r965
            jump dhall_s9

        '"Ermutigend. Leb wohl, Dhall."{#dhall_s35_r6028}':
            # a138 # r6028
            jump dhall_s11


# s36 # say966
label dhall_s36: # from 35.0
    nr '"Ein Postenritter…" Dhall hustet. "… ein Dieb. Alle, die Pharod an unseren Mauern abliefert, kommen mit weniger Würde zu uns, als sie zu Lebzeiten besessen haben. Pharod streift ihnen alles von den Fingern, was er kriegen kann, bevor die Totenstarre einsetzt."{#dhall_s36_1}'

    menu:
        '"Hat dieser Pharod etwas von mir genommen?"{#dhall_s36_r967}':
            # a139 # r967
            jump dhall_s29

        '"Weißt du, wo ich Pharod finden kann?"{#dhall_s36_r968}' if dhallLogic.r968_condition():
            # a140 # r968
            jump dhall_s18

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s36_r969}':
            # a141 # r969
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s36_r6029}':
            # a142 # r6029
            jump dhall_s11


# s37 # say970
label dhall_s37: # from 32.3
    nr '"Sigil ist unsere schöne Stadt, Rastloser."{#dhall_s37_1}'

    menu:
        '"Erzähl mir noch etwas über die Leichenhalle."{#dhall_s37_r971}':
            # a143 # r971
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s37_r972}':
            # a144 # r972
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s37_r5758}':
            # a145 # r5758
            jump dhall_s11


# s38 # say973
label dhall_s38: # from 10.1 14.0
    nr '"Der Name „Rastloser“ ist so gut wie jeder andere…" Dhall atmet schwer. "Irgend etwas hält dich hier fest, nicht wahr? Etwas, das gelöst werden muß, eine Leidenschaft, die gestillt werden muß, bevor du den Wahren Tod erlangen kannst?"{#dhall_s38_1}'

    menu:
        '"Den Wahren Tod?"{#dhall_s38_r974}':
            # a146 # r974
            $ dhallLogic.r974_action()
            jump dhall_s48

        '"Erzähl mir noch etwas über die Leichenhalle."{#dhall_s38_r975}':
            # a147 # r975
            jump dhall_s32

        '"Ich hätte noch ein paar Fragen…"{#dhall_s38_r5749}':
            # a148 # r5749
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s38_r5750}':
            # a149 # r5750
            jump dhall_s11


# s39 # say884
label dhall_s39: # -
    nr '"Du wirst das tun, was du immer getan hast, Rastloser. Schnapp dir diesen geldgierigen alten Narren, Wurmhaar, und verlang zurück, was dir gehört. Dann kannst du dich wieder deinem sinnlosen Treiben widmen, dich an sinnlosen Aufgaben versuchen, sinnlose Gegenstände sammeln, nur um erneut geschlagen und zu uns zurückgebracht zu werden. Spar dir die Zeit und sprich jetzt mit mir, dann müssen wir dieselbe Unterhaltung nicht noch einmal führen, wenn deine Erinnerungen wieder weg sind."{#dhall_s39_1}'

    menu:
        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s39_r976}':
            # a150 # r976
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s39_r977}':
            # a151 # r977
            jump dhall_dispose


# s40 # say978
label dhall_s40: # - # IF ~  Global("Dhall","GLOBAL",1)
    nr 'Dhall blickt auf, als du näherkommst. "So. Du bist also zurückgekommen…" Dhall holt keuchend Luft, dann wird er von einem heftigen Hustenanfall geschüttelt. Nach einer Weile beruhigt er sich und atmet wieder schwer. "… ich grüße dich erneut, Rastloser."{#dhall_s40_1}'

    menu:
        '"Ich hätte da noch ein paar Fragen an dich, Dhall."{#dhall_s40_r979}':
            # a152 # r979
            jump dhall_s9

        '"Macht nichts. Leb wohl."{#dhall_s40_r980}':
            # a153 # r980
            jump dhall_dispose


# s41 # say983
label dhall_s41: # from 26.0 52.0
    nr '"Die Grenze zwischen dem Schatten dieses Lebens und dem Wahren Tod."{#dhall_s41_1}'

    menu:
        '"Schatten dieses Lebens?"{#dhall_s41_r984}':
            # a154 # r984
            jump dhall_s33

        '"Wahrer Tod?"{#dhall_s41_r985}':
            # a155 # r985
            $ dhallLogic.r985_action()
            jump dhall_s48

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s41_r5739}':
            # a156 # r5739
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s41_r5740}':
            # a157 # r5740
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s41_r5741}':
            # a158 # r5741
            jump dhall_s11


# s42 # say5075
label dhall_s42: # from 2.0 12.0 43.0
    nr '"Die nordwestliche Gedenkhalle im Stockwerk unter uns. Schau dir diese Totenbahren hier an… ihr Name müßte eigentlich auf einer der Gedenktafeln stehen. Vielleicht hilft das deinem Gedächtnis auf die Sprünge."{#dhall_s42_1}'

    menu:
        '"Ich weiß nicht. Ich kann mich nicht daran erinnern, jemals mit einer Frau gereist zu sein."{#dhall_s42_r5076}' if dhallLogic.r5076_condition():
            # a159 # r5076
            jump dhall_s43

        '"Nun, sie behauptet, mich zu kennen, aber ich kann mich nicht an sie erinnern."{#dhall_s42_r5077}' if dhallLogic.r5077_condition():
            # a160 # r5077
            jump dhall_s28

        '"Du sagst, da wären noch andere. Wer ist denn noch hier?"{#dhall_s42_r5078}' if dhallLogic.r5078_condition():
            # a161 # r5078
            jump dhall_s12

        '"Du sagst, da wären noch andere. Wer ist denn noch hier?"{#dhall_s42_r5079}' if dhallLogic.r5079_condition():
            # a162 # r5079
            jump dhall_s12

        '"Vielleicht gehe ich sie suchen. Ich hätte da noch ein paar andere Fragen an dich, bevor ich gehe…"{#dhall_s42_r6067}':
            # a163 # r6067
            jump dhall_s9

        '"Ich werde mal runter in die Gedenkhalle gehen und gucken, ob ich ihre Leiche finden kann."{#dhall_s42_r6068}':
            # a164 # r6068
            jump dhall_s11


# s43 # say5080
label dhall_s43: # from 2.1 42.0
    nr 'Dhall gibt dir darauf keine Antwort. Er starrt dich einfach stumm an.{#dhall_s43_1}'

    menu:
        '"Wo kann ich sie finden?"{#dhall_s43_r5081}' if dhallLogic.r5081_condition():
            # a165 # r5081
            jump dhall_s42

        '"Vorhin sagtest du, es wären hier noch andere bestattet, die mit mir gereist sind. Wo sind sie?"{#dhall_s43_r5082}' if dhallLogic.r5082_condition():
            # a166 # r5082
            jump dhall_s12

        '"Vorhin sagtest du, es wären hier noch andere bestattet, die mit mir gereist sind. Wo sind sie?"{#dhall_s43_r5083}' if dhallLogic.r5083_condition():
            # a167 # r5083
            jump dhall_s12

        '"Ich hätte noch ein paar Fragen an dich…"{#dhall_s43_r6069}':
            # a168 # r6069
            jump dhall_s9

        '"Dann leb wohl."{#dhall_s43_r6070}':
            # a169 # r6070
            jump dhall_s11


# s44 # say840
label dhall_s44: # from 1.0 6.2 7.0
    nr '"Dich kennen? Ich…" In der Stimme des Schreibers schwingt Bitterkeit mit. "Ich habe dich *nie* gekannt, Rastloser. Genauso wenig, wie du dich selbst." Er schweigt einen Moment. "Weil du es vergessen hast, nicht wahr?"{#dhall_s44_1}'

    menu:
        '"Wer *bist* du?"{#dhall_s44_r1327}':
            # a170 # r1327
            $ dhallLogic.r1327_action()
            jump dhall_s45


# s45 # say5728
label dhall_s45: # from 44.0
    nr '"Wie immer, die Frage. Und wie immer, die falsche Frage." Dhall beugt sich etwas nach vorn, aber diese Bewegung löst plötzlich einen Hustenanfall aus. "Ich…" Er schweigt einen Augenblick, bis er wieder zu Atem kommt. "Ich… bin Dhall."{#dhall_s45_1}'

    menu:
        '"Vielleicht kannst du mir ja ein paar Fragen beantworten, Dhall…"{#dhall_s45_r5731}':
            # a171 # r5731
            $ dhallLogic.j39459_s45_r5731_action()
            jump dhall_s9

        '"Für so was hab„ ich keine Zeit. Leb wohl."{#dhall_s45_r5732}':
            # a172 # r5732
            $ dhallLogic.j39459_s45_r5732_action()
            jump dhall_s46


# s46 # say5730
label dhall_s46: # from 45.1
    nr '"Also gut, Rastloser." Dhall nickt. "Aber ich fürchte, daß die Zeit in dieser Angelegenhit nicht dein Feind ist." Er nimmt seinen Federfüller wieder auf. "Wenn du noch etwas zu bereden hast, ich werde hier sein."{#dhall_s46_1}'

    menu:
        '"Ich komme vielleicht wieder. Lebe Wohl."{#dhall_s46_r40005}':
            # a173 # r40005
            jump dhall_dispose


# s47 # say847
label dhall_s47: # from 32.2
    nr '"Wir Staubmenschen sind ein Bund, eine Vereinigung jener von uns, die sich der Illusion dieses Lebens bewußt sind. Wir warten auf das kommende Leben und helfen anderen auf ihrer Reise."{#dhall_s47_1}'

    menu:
        '"Vielleicht kannst du mir erklären, warum die Staubmenschen mich tot wissen wollen."{#dhall_s47_r6032}' if dhallLogic.r6032_condition():
            # a174 # r6032
            jump dhall_s22

        '"Den Wahren Tod?"{#dhall_s47_r6033}':
            # a175 # r6033
            $ dhallLogic.r6033_action()
            jump dhall_s48

        '"Schatten, der dieses Leben ist?"{#dhall_s47_r6034}':
            # a176 # r6034
            jump dhall_s33

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s47_r6035}':
            # a177 # r6035
            jump dhall_s32

        '"Ich hätte noch ein paar Fragen an dich…"{#dhall_s47_r6036}':
            # a178 # r6036
            jump dhall_s9

        '"Dann leb wohl."{#dhall_s47_r6037}':
            # a179 # r6037
            jump dhall_s11


# s48 # say848
label dhall_s48: # from 32.1 33.0 38.0 41.1 47.1
    nr '"Der Wahre Tod ist die Nicht-Existenz. Ein Zustand ohne Vernunft, ohne Empfindung, ohne Leidenschaft." Dhall hustet und sagt schwer atmend. "Ein Zustand der Reinheit."{#dhall_s48_1}'

    menu:
        '"Hört sich an wie Vergessenheit. Warum sollte jemand so was wollen?"{#dhall_s48_r6043}':
            # a180 # r6043
            jump dhall_s49

        '"Oh. Kannst du mir noch mehr über die Leichenhalle erzählen?"{#dhall_s48_r6044}':
            # a181 # r6044
            jump dhall_s32

        '"Ich… verstehe. Ich hätte aber noch ein paar Fragen."{#dhall_s48_r6045}':
            # a182 # r6045
            jump dhall_s9

        '"Ich muß mich jetzt verabschieden. Leb wohl, Dhall."{#dhall_s48_r6046}':
            # a183 # r6046
            jump dhall_s11


# s49 # say849
label dhall_s49: # from 48.0
    nr '"Ist es schlimmer, als im Schatten dessen zu verweilen, was früher einmal Leben war? Ich glaube nicht."{#dhall_s49_1}'

    menu:
        '"Schatten des Lebens?"{#dhall_s49_r6047}':
            # a184 # r6047
            jump dhall_s33

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s49_r6048}':
            # a185 # r6048
            jump dhall_s32

        '"Ich… verstehe. Ich hätte aber noch ein paar Fragen."{#dhall_s49_r6049}':
            # a186 # r6049
            jump dhall_s9

        '"Ich muß mich jetzt verabschieden. Leb wohl, Dhall."{#dhall_s49_r6050}':
            # a187 # r6050
            jump dhall_s11


# s50 # say853
label dhall_s50: # from 33.1
    nr '"Was läßt dich denken, daß dieses Leben echt *ist*? Schau in dich hinein. Merkst du nicht, daß da etwas fehlt?" Dhall schüttelt seinen Kopf. "Dies ist ein Fegefeuer. Es gibt hier nichts als Leid. Elend. Folter. Das sind doch keine Elemente, die ein „Leben“ ausmachen. Das sind Teile des Käfigs, der uns in diesem Schatten gefangen hält."{#dhall_s50_1}'

    menu:
        '"Ich fürchte du bist ganz und gar dem Fatalismus verfallen. Diese Elemente sind Teil des Lebens, aber doch nicht alles."{#dhall_s50_r6051}':
            # a188 # r6051
            $ dhallLogic.r6051_action()
            jump dhall_s51

        '"Käfig? Was meinst du damit?"{#dhall_s50_r6052}':
            # a189 # r6052
            jump dhall_s51

        '"Genug von deiner Philosophiererei. Was hat dieses ganze Gerede damit zu tun, daß ich hier aufgewacht bin?"{#dhall_s50_r6053}':
            # a190 # r6053
            $ dhallLogic.r6053_action()
            jump dhall_s51


# s51 # say5733
label dhall_s51: # from 50.0 50.1 50.2
    nr 'Dhall schüttelt den Kopf. "Leidenschaften haben Gewicht. Sie verankern viele in diesem Schatten des Lebens. Solange man sich an Gefühle klammert, wird man immer wieder in dieses „Leben“ zurückgeboren, immer leidend, niemals die Reinheit des Wahren Todes kennend."{#dhall_s51_1}'

    menu:
        '"Ich… verstehe. Wie entkommt man denn dem Zyklus der Wiedergeburt und erreicht diesen… Wahren Tod?"{#dhall_s51_r6054}':
            # a191 # r6054
            jump dhall_s52

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s51_r6055}':
            # a192 # r6055
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s51_r6056}':
            # a193 # r6056
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s51_r6057}':
            # a194 # r6057
            jump dhall_s11


# s52 # say5734
label dhall_s52: # from 51.0
    nr '"Töte deine Leidenschaften. Befreie dich von dem Bedürfnis nach Empfindung. Wenn du wirklich gereinigt bist, dann endet der Kreis der Wiedergeburt und du findest Frieden. " Dhall seufzt… es klingt wie das Röcheln des Todes in seiner Kehle. "Jenseits unserer Hüllen, hinter der Ewigen Grenze, liegt der Frieden, den alle Seelen suchen."{#dhall_s52_1}'

    menu:
        '"„Ewige Grenze“?"{#dhall_s52_r6058}':
            # a195 # r6058
            jump dhall_s41

        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s52_r6059}':
            # a196 # r6059
            jump dhall_s32

        '"Ich hätte noch ein paar andere Fragen…"{#dhall_s52_r6060}':
            # a197 # r6060
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s52_r6061}':
            # a198 # r6061
            jump dhall_s11


# s53 # say5742
label dhall_s53: # from 34.0
    nr '"Ich spreche von den Verletzungen der Seele. Du hast vieles vergessen, nicht wahr? Vielleicht sind deine wirklichen Wunden viel tiefer als die Narben, die dein Äußeres zieren…" Dhall hustet erneut. "…aber das ist etwas, das nur du allein weißt."{#dhall_s53_1}'

    menu:
        '"Erzähl mir mehr über die Leichenhalle."{#dhall_s53_r5743}':
            # a199 # r5743
            jump dhall_s32

        '"Ich verstehe. Ich hätte noch ein paar andere Fragen…"{#dhall_s53_r5744}':
            # a200 # r5744
            jump dhall_s9

        '"Leb wohl, Dhall."{#dhall_s53_r5745}':
            # a201 # r5745
            jump dhall_s11
