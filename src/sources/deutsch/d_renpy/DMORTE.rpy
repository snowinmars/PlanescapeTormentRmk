init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"He, Meister. Du okay? Du spielen Leiche oder führen Staubmenschen in die Irre? Ich dachte wirklich, du seist ein Totenbüchler."'

    menu:
        '"Wer bist du?"':
            # a0 # r987
            jump morte_s1

        'Ignoriere den sprechenden Totenschädel und sieh dich im Raum um.':
            # a1 # r989
            jump morte_dispose

        'Hol tief Atem, schüttel den Kopf und ignoriere den Totenschädel, der zu dir spricht.':
            # a2 # r988
            jump morte_dispose

        '"Ich bin sicher, daß du tausend schlaue Sachen zu sagen hast, Morte, aber jetzt mußt du mal die Klappe halten, deine Flagge hissen und mir helfen, und zwar SOFORT."':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"Ich?" Der Totenschädel ist entrüstet. "Und *du*, Krätzegestalt? Wer bist du?"'

    menu:
        '"Ich… weiß es nicht."':
            # a4 # r992
            jump morte_s2

        '"Ich weiß es nicht… Ich kann mich einfach nicht erinnern."':
            # a5 # r995
            jump morte_s3

        '"Ich habe dich zuerst gefragt, Totenschädel."':
            # a6 # r993
            jump morte_s4

        'Ignoriere den Totenschädel, und sieh dich im Raum um.':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"Du weißt nicht, wer du bist, wie? *Hättest* doch einfach sagen können, „pack ein, Dussel“. Na, ist schon in Ordnung… tu ruhig so, als wüßtest du von nichts. Soll mich nicht weiter kratzen. Ich bin Morte. Sei gegrüßt, freut mich… und das ganze Gewäsch."'

    menu:
        '"Wo bin ich, Morte?"':
            # a8 # r998
            jump morte_s6

        '"Weißt du, wie ich hier rauskomme?"' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"Wie bin ich hierhergekommen?"':
            # a10 # r1080
            jump morte_s20

        'Ignoriere Morte und sieh dich im Raum um.':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"Du *erinnerst* dich nicht? Mußt ja ganz schön was durchgemacht haben letzte Nacht. Hoffentlich hast du niemandem wehgetan… ich bin Morte. Sei gegrüßt, freut mich, und das ganze Gewäsch." Er hält kurz inne. "Aber *sag*: bist du etwa einer dieser Sinnsaten mit diesem Selbstverstümmelungs-Tick oder woher hast du diese Narben?"'

    menu:
        '"Sinnsaten?"':
            # a12 # r1000
            jump morte_s12

        '"Narben?"':
            # a13 # r1001
            jump morte_s13

        'Ignoriere Morte und sieh dich im Raum um.':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"Ja, und ich hab„ dich als zweites gefragt. Wie heißt du?"'

    menu:
        '"Ich… weiß nicht."':
            # a15 # r1004
            jump morte_s2

        '"Ich weiß es nicht… Ich kann mich nicht erinnern."':
            # a16 # r1005
            jump morte_s3

        '"Du zuerst, Totenschädel."':
            # a17 # r1007
            jump morte_s5

        'Ignoriere den Totenschädel, und sieh dich im Raum um.':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"Mann, du bist ja stur wie ein Ochse. Na schön, na schön… Lassen wir den *netten* Typ raushängen… ich bin Morte. Morte Grinsbacke. Und du? Welcher Name hat das Pech, zu dir zu gehören?"'

    menu:
        '"Ich… weiß nicht."':
            # a19 # r1009
            jump morte_s2

        '"Ich weiß es nicht… Ich kann mich einfach an nichts erinnern."':
            # a20 # r1010
            jump morte_s3

        'Ignoriere Morte und sieh dich im Raum um.':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"Du bist in dieser Müllhalde namens Leichenhalle… diesem großen schwarzen Bau mit dem architektonischen Charme einer schwangeren Spinne."'

    menu:
        '"In der „Leichenhalle“? Bin ich tot?"':
            # a22 # r1013
            jump morte_s7

        '"Wie komme ich hier heraus?"' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        'Ignoriere Morte und sieh dich im Raum um.':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"Das kann ich dir nicht sagen… jedenfalls ist die Leichenhalle der Ort, an dem du die meisten Toten in dieser Gegend findest… Irgendwelche Dussel schleppen sie hier an und begraben oder verbrennen sie. Und wenn du *wirkliches* Glück hast, wirst du als Sklave wiederbelebt. Die Leichenhalle ist nicht gerade der lauschigste Ort auf den Ebenen. An deiner Stelle würde ich den nächsten Ausgang aufsuchen und diesem Ort eins grinsen."'

    menu:
        '"Wie bitte… die „Leichenhalle“? Was ist dies für ein Ort?"':
            # a25 # r1016
            jump morte_s10

        '"Als Sklave wiederbelebt?"':
            # a26 # r1017
            jump morte_s9

        '"So lange ich noch laufen kann?"':
            # a27 # r1018
            jump morte_s11

        '"Was du nicht sagst; Leute schleppen tote Körper hierher? Bin ich auch so hierhergekommen?"' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        'Ignoriere Morte und sieh dich im Raum um.':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr 'Zögernd. "Schon möglich. Irgendso ein Einödner hat dich wohl für einen Totenbüchler gehalten und dich hier abgeladen. Von deiner Leiche hab„ selbst *ich* mich täuschen lassen… aber schnapp dir doch einfach den Dussel, der dich hier angeschleppt hat, und frag ihn selber." Morte nickt. "Gar nicht so dumm für einen, der gerade noch tot war… schön, daß deine Rübe noch intakt ist."'

    menu:
        '"Warum sollte mich jemand hierhergebracht haben?"':
            # a30 # r1029
            jump morte_s14

        '"Ich hätte noch ein paar andere Fragen…"':
            # a31 # r1030
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"Ja, läßt sich schon aushalten hier… wenn sie dir nicht ständig Formaldehyd verpassen und deine abfallenden Glieder zusammenflicken würden, wär es das reinste Paradies."'

    menu:
        '"Ist das richtig, daß ich hier bin? Bin ich tot?"':
            # a33 # r1113
            jump morte_s7

        '"Wie seh ich denn aus? Hab„ ich viele Narben?"':
            # a34 # r1114
            jump morte_s13

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a35 # r1115
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"Sagte ich doch schon… die Leichenhalle. Alles klar, Meister? Hast schon besser ausgesehen."'

    menu:
        '"Ist das richtig, daß ich hier bin? Bin ich tot?"':
            # a37 # r1109
            jump morte_s16

        '"Wie seh ich denn aus? Wie viele Narben hab„ ich denn?"':
            # a38 # r1110
            jump morte_s13

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a39 # r1111
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"Meister, so wahr ich Morte heiße, daß du von dieser Totenbank gekrochen bist, war ein Wunder. Du siehst aus, als würdest du gleich deine Zeche bezahlen, wenn du verstehst, was ich meine."'

    menu:
        '"Sollte ich etwa tot sein? Bin ich deshalb hier?"':
            # a41 # r1133
            jump morte_s16

        '"Wie schlimm seh ich denn aus?"':
            # a42 # r1134
            jump morte_s13

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a43 # r1135
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"Was, du weißt nicht, wer die Sinnsaten sind? Dann hör mal gut zu! Das sind diese Knochenbrecher, die alles ausprobieren müssen, was die Ebenen zu bieten haben, sogar… ach, lassen wir das. Was ist mit diesen Narben?"'

    menu:
        '"Narben?"':
            # a45 # r1027
            jump morte_s13

        '"Schon gut. Ich hätte aber noch ein paar Fragen…"':
            # a46 # r1028
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"Als hätte irgendein Knochenbrecher beschlossen, dir ein Muster einzuritzen. Du bist ja voll davon… selbst auf dem Rücken, außer…" Er zögert. "He, du hast ja „ne ganze Galerie auf deinem Rücken eintätowiert, Dussel. Wenn das nichts zu bedeuten hat…"'

    menu:
        '"Was denn?"':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a49 # r1089
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"Es gibt Leute, die lesen die Totenbüchler von der Straße auf und verkaufen sie hier für etwas Klimper. Reich wird man davon nicht, aber wenn man im übelsten Loch der Ebenen lebt, kann man sich„s nicht immer aussuchen."'

    menu:
        '"Klimper? Was ist „Klimper“?"':
            # a51 # r1032
            jump morte_s15

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a52 # r1033
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"Geld. Klimper ist Geld. Gibt„s so was nicht, wo du herkommst?"'

    menu:
        '"Ich kann mich nicht erinnern, woher ich komme."':
            # a54 # r1035
            jump morte_s19

        '"Vergiß es einfach. Ich hätte aber noch ein paar Fragen…"':
            # a55 # r1036
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr 'Er zögert. "Keine Ahnung. Du *sprichst* mit mir… was man von den wandelnden Toten hier nicht unbedingt behaupten kann. Ich würde sagen, die Staubies haben sich ganz einfach geirrt, und du warst gar nicht tot. Erinnerst du dich, irgendeinen Vertrag unterschrieben zu haben? Ich meine, sie müssen normalerweise jede Menge Formulare ausfüllen, bevor sie einen aus dem Totenbuch holen können."'

    menu:
        '"Ähh… Vertrag? Nein, ich wüßte nicht, daß ich einen unterzeichnet hätte. Ich… erinnere mich überhaupt nicht an viel."':
            # a57 # r1038
            jump morte_s32

        '"Totenbuch?"':
            # a58 # r1039
            jump morte_s17

        '"Formulare?"':
            # a59 # r1040
            jump morte_s18

        '"Vergiß es. Ich hätte ein paar andere Fragen…"':
            # a60 # r1041
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"Ja, das „Totenbuch“. Weißt du? Na ja, vielleicht auch nicht. Vergiß das „Totenbuch.“ Du lebst ja, also steckst du nicht drin."'

    menu:
        '"Was war das doch gleich… was du über Formulare… und Verträge erzählt hast?"':
            # a62 # r1151
            jump morte_s18

        '"Ich hätte noch ein paar andere Fragen…"':
            # a63 # r1152
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"Ja, macht dich das nicht fuchsteufelswild? In Sigil dreht sich alles nur um Gesetze und Vorschriften, nicht mal auf den Pott kannst du gehen, ohne erst irgendeinen Vertrag zu unterschreiben."'

    menu:
        '"Was hast du noch über das „Totenbuch“ gesagt?"':
            # a65 # r1154
            jump morte_s17

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a66 # r1155
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"Bei allen Göttern und ihren Müttern, *du* weißt ja überhaupt nichts. Hast du irgendeine Ahnung, woher du kommst? Irgendwo vermißt ein Land der Planlosen seinen König. Hast du deinen Verstand an der Pforte abgegeben oder warst du schon immer so blöd?"'

    menu:
        '"Ich weiß es nicht… Ich kann mich an nichts erinnern."':
            # a68 # r1139
            jump morte_s32

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a69 # r1140
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"Meister, ich hab„ keinen blassen Schimmer. Aber du verstehst es, dich tot zu stellen. Als du dort lagst, habe ich kein einziges Mal gesehen, daß sich deine Brust bewegt hätte oder du geblinzelt hättest… nichts. Hast du getrunken? Ist es so passiert?"'

    menu:
        '"Ich weiß es nicht… Ich kann mich an nichts erinnern."':
            # a71 # r1097
            jump morte_s32

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a72 # r1098
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"Das *ist* wirklich eine gute Frage. Die Zeit rinnt dir durch die Finger, Meister. Wenn die Staubmenschen dich finden, werden sie versuchen, dein "Auferstehungsproblem" zu lösen, indem sie dich ins Krematorium werfen. Wenn du dich weiter tot stellst, wirst du ebenfalls eingeäschert. Eine Modronen-Entscheidung, was? Was nun?"'

    menu:
        '"Staubmenschen?"':
            # a74 # r1047
            jump morte_s30

        '"Ich… verschwinde."':
            # a75 # r1048
            jump morte_s22

        '"Ich werde die Situation diesen… Staubmenschen erklären."':
            # a76 # r1049
            jump morte_s25

        '"Was soll ich tun?"' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"Warum sagst du„s mir nicht? Sieht so aus, als ob du“s längst wüßtest."' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        'Ignoriere Morte und sieh dich im Raum um.':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"Oh, *gute* Idee, Meister! Warum bin *ich* da nicht selbst drauf gekommen? Wie du hier rauskommst? Ich geb dir „nen Tip: Es erfordert etwas Zusammenarbeit."'

    menu:
        '"Ich bin interessiert. Red„ weiter."':
            # a80 # r1053
            jump morte_s23

        '"Vergiß es. Ich hätte ein paar andere Fragen…"':
            # a81 # r1054
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"Wenn du mich fragst, bist du es, der hier raus muß. Ich selbst kann noch ein Weilchen warten. Die einzige Gefahr für mich ist, daß *ich* vor Langeweile sterbe. Wir könnten einander helfen."'

    menu:
        'Red„ weiter…"':
            # a83 # r1058
            jump morte_s24

        '"Du hast ja nicht mal Hände. Wie solltest DU wohl MIR helfen können?"':
            # a84 # r1059
            jump morte_s24

        '"Vergiß es. Ich hätte ein paar andere Fragen…"':
            # a85 # r1060
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"Auch wenn es nicht so aussieht, ich könnte dir hier raus helfen, und du könntest dasselbe für mich tun. Ich bin in einer etwas mißlichen Lage, weil ich keine Hände habe. Du hast wenig Grips im Schädel, während ich erfahren genug bin, um zu wissen, wie ich dich aus diesem Loch rausbringen kann. Wir helfen uns gegenseitig, und wir haben *beide* was davon. Abgemacht, Dussel?"'

    menu:
        '"Abgemacht."':
            # a87 # r1057
            jump morte_s28

        '"Abgemacht. Ich habe das dumpfe Gefühl, daß das Schicksal vorsieht, daß wir zusammen reisen, Morte."':
            # a88 # r1062
            jump morte_s27

        '"Vergiß es. Ich hätte ein paar andere Fragen…"':
            # a89 # r1063
            jump morte_s31

        '"Nein danke. Mit dir zu reden ist schon schmerzhaft genug. Da suche ich lieber alleine nach einem Ausgang."':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"Oh, *gute* Idee, Meister. Wieso bin *ich* da nicht selbst drauf gekommen?" Sein Ton wird spöttelnd. "Übrigens, Herr Staubmensch, ich bin gestorben und auf einer Totenbank in Eurer entzückenden Leichenhalle aufgewacht. Würdet Ihr mir vielleicht helfen?" Sie werden dir schon „helfen“: dich kurz anschauen, die Wachen rufen und dich in deinen ganz privaten Ofen stecken."'

    menu:
        '"Das hört sich aber etwas extrem an… warum sollten sie so was tun?"':
            # a91 # r1065
            jump morte_s26

        '"Na, ich hoffe, ihre Wächter sind ordentlich stark, damit sie mich festhalten können."':
            # a92 # r1066
            jump morte_s26

        '"Vergiß es. Ich hätte ein paar andere Fragen…"':
            # a93 # r1067
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"Vertrau mir einfach… es spielt keine Rolle, für wie stark du dich hältst, oder was du ihnen sagst. Sie kriegen dich. Du bist nicht stark genug, aus einem mit Mauern umgebenen Grab auszubrechen oder die Hitze der Feuerebene zu überstehen. Von den Toten aufzuwachen ist schlimm genug, was die Verwalter hier betrifft. Sei doch nicht blöd."'

    menu:
        '"Und dein Plan ist also…?"':
            # a95 # r1069
            jump morte_s23

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a96 # r1070
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"Ich pfeif auf das Schicksal. Paß auf, Meister. Achte mal drauf, wie oft „böse“ und „Schicksal“ im selben Satz vorkommen, vielleicht hilft dir das, eines der kleinen Geheimnisse des Lebens zu lüften. Das Schicksal kann sich von mir aus in Klingenranken einhüllen; es gibt *immer* eine Möglichkeit, die das Schicksal nicht vorsieht."'

    menu:
        '"Ich werd„s mir merken."':
            # a98 # r1073
            jump morte_s28

        '"Genug geredet. Was ist also dein großer Plan?"':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"Nun denn… komm schon. Grinsen wir diesem Ort eins. Die Türen nach draußen sind verschlossen; wir brauchen also den Schlüssel. Kann sein, daß eine der wandelnden Leichen in diesem Raum ihn hat."'

    menu:
        '"Wandelnde Leichen?"':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"Ach, *jetzt* möchtest du also wieder mit Morte sprechen?"'

    menu:
        '"Wer bist du?"':
            # a101 # r1075
            jump morte_s1

        '"Wo bin ich?"':
            # a102 # r1076
            jump morte_s6

        '"Weißt du, wie ich hier rauskomme?"' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"Wie bin ich hierhergekommen?"':
            # a104 # r1078
            jump morte_s14

        'Ignoriere Morte und sieh dich im Raum um.':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"Die Staubies? Sie passen hier auf. Du kannst sie gar nicht verfehlen… sie sind verrückt nach schwarz und haben totenstarre Gesichter. Sie nennen sich „die Staubmenschen“ und tun so, als wären sie ein Bund. In Wirklichkeit sind sie nichts als ein übler Haufen makabrer Todesanbeter. Geh ihnen aus dem Weg."'

    menu:
        '"Und wie komme ich hier raus?"' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a107 # r1084
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"So? *Was* sind das denn für Fragen?"'

    menu:
        '"Wer bist du?"':
            # a109 # r1092
            jump morte_s1

        '"Wo bin ich?"':
            # a110 # r1093
            jump morte_s6

        '"Wie bin ich hierhergekommen?"':
            # a111 # r1094
            jump morte_s20

        '"Wie komme ich hier heraus?"' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        'Ignoriere Morte und sieh dich im Raum um.':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"Du erinnerst dich an *gar* nichts? Komm schon, das ist doch ein Haufen Tanar-Ri-Mist. Meinst du das ernst?"'

    menu:
        '"Ja."':
            # a114 # r1101
            jump morte_s33

        '"Na, egal. Ich hätte noch ein paar andere Fragen…"':
            # a115 # r1102
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"Bei allen Göttern und ihren Müttern… Tja, Meister, deine Erinnerungen scheinen sich ganz tief in deiner Rübe vergraben zu haben. Mit etwas Glück kommen sie ja bald nach oben, um Luft zu schnappen, glaub„s mir. Muß ja ne ganz schöne Nacht gewesen sein für dich. Hoffen wir mal besser, daß du niemandem wehgetan hast oder mit dem Gesetz in Konflikt gekommen bist… Sag mal, wo wir gerade davon sprechen, bist du etwa einer von diesen Sinnsaten, die Selbstverstümmelung ganz toll finden, oder hat dir irgend jemand diese Narben zugefügt?"'

    menu:
        '"Sinnsaten?"':
            # a117 # r1105
            jump morte_s12

        '"Narben?"':
            # a118 # r1106
            jump morte_s13

        '"Ich hätte noch ein paar andere Fragen…"':
            # a119 # r1107
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"Sehen nach irgendwelchen Anweisungen aus…" Morte räuspert sich. "Schauen wir mal. Es geht los mit…"  HINWEIS: "Ich weiß, daß du dich so fühlst, als hättest du „n paar Eimer Styx-Wasser getrunken, aber du mußt dein Zentrum finden. In deinem Besitz sollte sich ein JOURNAL befinden, das ein wenig Licht in das Dunkel dieser Angelegenheit bringen kann. PHAROD sollte dir den restlichen Plausch liefern können, wenn er nicht bereits im Totenbuch steht.  Verlier dieses Stück Fleisch ODER das Journal nicht, sonst sind wir schon wieder den Styx hoch, verstanden? Und vertrau mir, was immer du tust, erzähl NIEMANDEM, WER du bist oder WOHER du stammst, denn sonst findest du dich im Handumdrehen im Krematorium wieder."'

    menu:
        '"Kein Wunder, daß mir der Rücken weh tut. Kennst du jemanden namens Pharod?"':
            # a121 # r1118
            jump morte_s36

        '"Hast du vielleicht gesehen, ob ich ein Journal bei mir hatte, als ich hier lag?"':
            # a122 # r1119
            jump morte_s35

        '"Weißt du, wie ich hier rauskomme?"' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"Ich hätte noch ein paar andere Fragen…"':
            # a124 # r1121
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"Nein… du warst nackt bis auf die Haut, als du hier ankamst. Es sieht allerdings so aus, als hätte man dir ein ganzes Journal auf den Körper geschrieben."'

    menu:
        '"Kennst du jemanden mit dem Namen Pharod?"':
            # a126 # r1124
            jump morte_s36

        '"Wie komme ich hier heraus?"' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a128 # r1126
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"Kenn ich nicht. Na ja, ich kenn auch nicht gerade viele Leute. Aber irgendein Dussel muß doch wissen, wo wir diesen Kerl finden… sobald wir hier raus sind, natürlich."'

    menu:
        '"Hast du vielleicht gesehen, ob ich ein Journal bei mir hatte, als ich hier lag?"':
            # a130 # r1129
            jump morte_s35

        '"Wie komme ich hier heraus?"' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"Vergiß es. Ich hätte aber noch ein paar Fragen…"':
            # a132 # r1131
            jump morte_s31

        'Ignoriere Morte und sieh dich im Raum um.':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"Was für ein Glück! Wahrscheinlich haben wir das, wonach wir gesucht haben, in deiner Absteige verloren, Fräulein."'

    menu:
        '"Ehrlich gesagt: Ich vermisse ein Journal."':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"Vielleicht kannst du mir bei der Suche danach behilflich sein, Fräulein."':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"Ich suche gar nichts, aber ich hätte da ein paar Fragen…"':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"Ich muß mich verabschieden. Leb wohl."':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"Meister, hast du nicht „n bißchen Klimper übrig… is“… äh… is„ schon “n Weilchen her."'

    menu:
        '"Oh… na gut, ich denke, das wird mir nicht *wehtun*…"':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"Ich werde dich nicht mal fragen, wie du das anstellen willst."':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"Sieh mal… wir müssen wirklich los, Morte. Leb wohl, Fräulein."':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"Sie meint Geld."'

    menu:
        '"Oh."':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"Um so besser für dich, daß weder du noch dein Schwanz zu haben sind. Damit könntest du dir ohnehin keinen Lebensunterhalt verdienen."'

    menu:
        '"Äh…"':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"Sie ist ein Tiefling, Meister. In ihren Adern fließt Teufelsblut, das sie paranoid und widerspenstig macht… aber der Schwanz ist nicht ohne. Ein Jammer, daß er an einem so häßlichen Körper klebt."'

    menu:
        '"Also, nun…"':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"Hey, Punkt für dich, Morte"':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"Na, warum *traust* du dich denn nicht, du Rotzgöre?! Ich hör nichts als leeres Geschwätz von irgend einem Mistding aus dem Stock! Schlag doch zu! Trau dich! Dann beiß ich dir die Beine ab!"'

    menu:
        '"Genug!"':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"Genug! Wir gehen jetzt."':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"Ein Mimir ist ein wandelndes Lexikon. So was wie ich, Meister."'

    menu:
        '"Schon kapiert."':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"Gib„s auf, Meister. Mit einem Gith zu sprechen ist genauso sinnlos, wie an einer Klingenranke hochzuklettern. Laß uns gehen."'

    menu:
        '"Gith?"' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"Gith?"' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"Ich kann jetzt noch nicht gehen. Ich werde ihm erst ein paar Fragen stellen…"':
            # a150 # r9031
            jump gith_s7  # EXTERN

        'Laß den Gith in Ruhe.':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"Ich würde meine Zeit nicht damit verschwenden, den König der Unwissenden zur Raison bringen zu wollen. Laß uns verschwinden, Meister."'

    menu:
        '"Ich kann jetzt noch nicht gehen. Ich werde ihm erst ein paar Fragen stellen…"':
            # a152 # r9033
            jump gith_s7  # EXTERN

        'Laß den Gith in Ruhe.':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Wollte vielleicht, daß du WEGgehst. Sie war doch ganz eindeutig zu sehr mit mir beschäftigt, als daß sie so„n blöden Wackelkopf mit großer Klappe beachtet hätte.':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"Ich glaube, du bildest dir einiges ein. Sie ist ein Zombie. Eine Leiche. Eine tote Person. Ihre Sinne haben dich wahrscheinlich nicht mal aufgenommen."':
            # a157 # r2606
            jump morte_s48

        '"Ich glaube, du und deine Einbildungskraft, ihr solltet euch mal ein Weilchen voneinander trennen."':
            # a158 # r2607
            jump morte_s48

        '"Wie du willst, Morte. Laß uns gehen."':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"Ja, ja, red„ du nur. Wenn du einmal so lang tot bin wie ich, dann kennst du die Signale. Sie sind vielleicht zu SUBTIL, als daß du sie bemerken könntest, aber deshalb verbringe ich MEINE Nächte mit einer knackigen Frischverstorbenen, während du hier rumstehst und winselst: “Hä? „Wasss ist los?“ „Wo ist me-me-meine Erinnerung?“"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"Du? Klar doch! Glaube mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"Was? Was ist los? Belästigt dich diese Tussi etwa?"'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '"Meinetwegen. Vielleicht sollte er lieber in dein Hauptmenü zurückkehren und mich aus dem Spiel lassen."'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"Oh, bei den Mächten! Ein verfluchter Dabus."'

    menu:
        '"Was ist los?"':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"Er ist ein Dabus. Sie „sprechen“ in Rebussen, diesen bescheuerten Worträtseln. Wenn *du* nicht verstehst, was er sagt, finden wir besser einen Einheimischen oder eine andere Möglichkeit, mit ihm zu kommunizieren… falls wir dies wünschen. Ein lästiger Haufen. Ich wette, sie *können* sprechen, gehen aber lieber allen auf die Nerven mit ihren Rätseln, über die man sich den Kopf zerbrechen muß."'

    menu:
        '"Was ist ein Dabus?"':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"Man sagt, sie arbeiten als Hausmeister für die Dame der Schmerzen. Sie schwirren durch die Gegend, um Sigil nach ihren Launen abzureißen, zu reparieren und wieder aufzubauen. Sie sind schlimmer als Leichenfliegen." Morte seufzt. "Totschlagen darf man sie leider nicht, sonst wird die Dame… wütend."'

    menu:
        '"„Die Dame der Schmerzen“? Wer ist das?"' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"Was kannst du mir über die Dame der Schmerzen erzählen?"' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"Aha."' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"Ich glaube, diese Staubie-Tussi hat Tomaten auf den Ohren, Meister. Lassen wir sie doch in Ruhe, ja?"'

    menu:
        '"Was ist denn mit ihren Händen los?"':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        'Klopf der Frau auf die Schulter, damit sie dich bemerkt.':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        'Laß sie in Ruhe.':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"He… sie ist ein *Tiefling*, Meister. In Tiefling-Adern fließt Scheusalsblut, ganz einfach deshalb, weil irgendwelche Vorfahren mit dem einen oder anderen Dämonen in die Kiste gestiegen sind. Manche werden davon ganz hohl im Kopf… und sehen auch hohlköpfig aus."'

    menu:
        'Klopf der Frau auf die Schulter, damit sie dich bemerkt.':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        'Laß sie in Ruhe.':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"Ich glaube, diese Staubie-Tussi hat Tomaten auf den Ohren, Meister. Lassen wir sie doch in Ruhe, ja?"'

    menu:
        '"Was ist denn mit ihren Händen los?"':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        'Verschwinde.':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"He… sie ist ein *Tiefling*, Meister. In Tiefling-Adern fließt ein Schuß Scheusalsblut, ganz einfach deshalb, weil irgendwelche Vorfahren mit dem einen oder anderen Dämonen in die Kiste gestiegen sind. Manche werden davon ganz hohl im Kopf… und sehen normalerweise auch hohlköpfig aus."'

    menu:
        'Verschwinde.':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"Sieht aus, als hättest du eine neue Freundin, Meister. Ihr beiden braucht doch etwas Zeit füreinander, oder…?"'

    menu:
        '"Halt„s Maul, Morte."':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        'Spiel weiter den Zombie.':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        'Stoß die Frau zurück.':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"Dies könnte das zweite Mal in meinem Leben sein, daß ich dankbar dafür bin, keine Nase zu haben."'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"He! Was machst du da?"'

    menu:
        '"Ich war *gerade* dabei, mit diesem Typen zu reden. Was dagegen?"':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"Nichts, laß uns weiterziehn."':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"Wenn du schon mit den Staubies plaudern mußt, dann halte mich da gefälligst raus. Ich vertrag mich nicht allzu gut mit ihnen… und du solltest es auch nicht tun. Bevor sie dir Gehör schenken, verbrennen oder vergraben sie dich eher. Komm, sei nicht so bescheuert; laß uns abhauen."'

    menu:
        '"Danke für den Rat, aber ich werde *trotzdem* mit diesem Typen reden."':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"Einverstanden, laß uns weiterziehn."':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"He! Du bist wohl taub, was? Was machst du da?"'

    menu:
        '"Paß auf, ich werde mit dem Typen reden. Was dagegen?"':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"Nichts, laß uns weiterziehn."':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"Gut, dann hör halt *nicht* auf mich - es ist schließlich deine Beerdigung."'

    menu:
        '"Jaa, dann kannst du gleich ein Trauerlied anstimmen. Jetzt sei endlich still."':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"Nein, du hast Recht. Vergiß es einfach. Laß uns weiterziehn."':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"Uh, Meister. Das ist ja reiner Vandalismus. Dieses Knochengerüst wird doch nur durch die paar Bolzen zusammengehalten. So weit geht sonst nur die Nekromantie mit diesen alten Knackern, was?"'

    menu:
        '"Und?"':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"Oh… Ich wollte keinen bleibenden Schaden anrichten."':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"Also gut, dann halt nicht. Vielleicht ein andermal."':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"Ach was, ist doch überhaupt kein Problem." Morte macht eine merkwürdige Bewegung, die du als Achselzucken interpretierst. "Ich war einfach nicht sicher, ob du es weißt oder nicht. Und jetzt mach schon."'

    menu:
        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        'Macht nichts. Vielleicht ein andermal.' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        'Macht nichts. Vielleicht ein andermal.' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"Hmmmm. Ob dieser Graubart wohl was dagegen hat, daß *ich* mir sein Knochengerüst ausleihe…"'

    menu:
        '"Graubart?"':
            # a194 # r3975
            jump morte_s68

        '"Ich glaube nicht, daß er auch nur die Chance hätte, was dagegen zu haben."':
            # a195 # r3976
            jump morte_s69

        '"Ich werd das Gefühl nicht los, daß du doppelt so nervig wärst, wenn du Arme hättest. Laß uns gehen."':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"Graubart… verstehst du, ein Opa, ein alter Knacker… ein Tattergreis."'

    menu:
        '"Nun, ich glaube nicht, daß er auch nur die Chance hätte, was dagegen zu haben. Warum sollten wir sein Knochengerüst nicht nehmen?"':
            # a197 # r3979
            jump morte_s69

        '"Irgendwie habe ich den Eindruck, daß du doppelt so nervig wärst, wenn du Arme hättest. Gehen wir."':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr 'Morte mustert kurz das Skelett, dann schüttelt er den Kopf. "Na ja… er sollte schon etwas frischer sein. Und vielleicht auch etwas würdevoller… der hier ist ja völlig kaputt und klapperig."'

    menu:
        '"Du etwa nicht?"':
            # a199 # r3982
            jump morte_s70

        '"Na komm schon. Laß uns gehen."':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"Ach, sehr witzig." Morte starrt dich an. "Und gerade DU MUSST so was sagen, Dussel. Du bist so häßlich, da laufen sogar die Spiegel an."'

    menu:
        '"Oh, wirklich? Zumindest hab„ *ich* alle meine Teile."':
            # a201 # r3985
            jump morte_s71

        '"Laß uns gehen."':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr 'Morte schnaubt. Wie er das macht, so ganz ohne Lungen, ist dir ein ziemliches Rätsel.'

    menu:
        '"Laß dir gesagt sein, Morte, daß es nichts Befriedigenderes gibt, als umherzugehen, die Arme schwingen zu lassen, frische Luft durch die Lungen zu atmen. Einfach KLASSE, einen Körper zu haben."':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"Gehen wir."':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"Daß ich dir damals geholfen habe, aus dem Vorbereitungsraum zu entkommen, ist eines der Dinge, die ich aufs Bitterste bereue." Morte schnaubt nochmals. "Ich hätte dich verrotten lassen sollen… noch mehr, meine ich."'

    menu:
        '"Schön, daß du so empfindest. Gehen wir."':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr 'Morte grinst.'

    menu:
        '"Äh, war das ein „ja“ oder…?"':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"Oh… Verzeihung." Morte schwebt zum Kopf des Skeletts hinauf, begutachtet ihn und kommt wieder runter. Dabei mustert er die Rüstung und die Klinge. "Oh, ja. Oh, ja. Ich glaube, dieses hier ist ganz brauchbar.'

    menu:
        '"Also gut… gib mir „ne Sekunde, ich muß von diesem Ding hier den Kopf runterkriegen."' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"Also gut… gib mir „ne Sekunde, ich muß von diesem Ding hier den Kopf runterkriegen."' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"Ich weiß nicht. Das Ding sieht aus, als wäre es ein bißchen viel für dich."':
            # a209 # r4025
            jump morte_s75

        '"Ich denke, wir sollten lieber die Finger davon lassen."':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"Zu Baator mit dir! Weshalb hast du mich dann GEFRAGT, ob ich es brauche? Nur um zu testen, wie grausam du sein kannst?" Morte zuckt wütend. "Nach alledem, was ich für dich getan habe…"'

    menu:
        '"Also gut… gib mir „ne Sekunde, ich muß von diesem Ding hier den Kopf runterkriegen."' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"Also gut… gib mir „ne Sekunde, ich muß von diesem Ding hier den Kopf runterkriegen."' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"Ich war nur um deine Sicherheit besorgt, Morte. Ich fürchte, du könntest Schaden erleiden, wenn wir deinen Kopf an diesem Ding befestigen."':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"Ich denke trotzdem, wir sollten lieber die Finger davon lassen. Laß uns zusehen, daß wir hier rauskommen."':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr 'Morte starrt dich kurz an. "Sag mal, hab„ ich da was verpaßt? Sind wir etwa VERHEIRATET? Was soll dieses “Ich-will-nicht-daß-dir-was-zustößt"-Gejammer?" Morte starrt dich an. "Wenn ich dir WIRKLICH wichtig wäre, hättest du schon längst dran gedacht, meinen Kopf auf dieses Riesenskelett zu setzen."'

    menu:
        '"Also gut… gib mir „ne Sekunde, ich muß von diesem Ding hier den Kopf runterkriegen."' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"Also gut… gib mir „ne Sekunde, ich muß von diesem Ding hier den Kopf runterkriegen."' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"Tut mir leid, aber so wichtig bist du mir dann doch nicht. Laß uns gehen."':
            # a217 # r4033
            jump morte_dispose

        '"Ich würde sagen, wir sollten lieber die Finger davon lassen. Laß uns lieber zusehen, daß wir hier rauskommen."' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"He! Was machst du da?"'

    menu:
        '"Ich war *gerade* dabei, mit diesem Typen zu reden. Was dagegen?"':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"Nichts, laß uns weiterziehn."':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"Wenn du schon mit den Staubies plaudern mußt, dann halte mich da gefälligst raus. Ich vertrag mich nicht allzu gut mit ihnen… und du solltest es auch nicht tun. Bevor sie dir Gehör schenken, verbrennen oder vergraben sie dich eher. Komm, sei nicht so bescheuert; laß uns abhauen."'

    menu:
        '"Danke für den Rat, aber ich werde *trotzdem* mit diesem Typen reden."':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"Einverstanden, laß uns weiterziehn."':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"He! Du bist wohl taub, was? Was machst du da?"'

    menu:
        '"Paß auf, ich werde mit dem Typen reden. Was dagegen?"':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"Nichts, laß uns weiterziehn."':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"Gut, dann hör halt *nicht* auf mich - es ist schließlich deine Beerdigung."'

    menu:
        '"Jaa, dann kannst du gleich ein Trauerlied anstimmen. Jetzt sei endlich still."':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"Nein, du hast Recht. Vergiß es einfach. Laß uns weiterziehn."':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"He! Was machst du da?"'

    menu:
        '"Ich war *gerade* dabei, mit dieser Dame zu reden. Was dagegen?"':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"Nichts, laß uns weiterziehn."':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"Wenn du schon mit den Staubies plaudern mußt, dann halte mich da gefälligst raus. Ich vertrag mich nicht allzu gut mit ihnen… und du solltest es auch nicht tun. Bevor sie dir Gehör schenken, verbrennen oder vergraben sie dich eher. Komm, sei nicht so bescheuert; laß uns abhauen."'

    menu:
        '"Danke für den Rat, aber ich werde *trotzdem* mit dieser Dame reden."':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"Einverstanden, laß uns weiterziehn."':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"He! Du bist wohl taub, was? Was machst du da?"'

    menu:
        '"Sieh mal, ich wollte nur mit dieser Dame reden. Was dagegen?"':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"Nichts, laß uns weiterziehn."':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"Gut, dann hör halt *nicht* auf mich - es ist schließlich deine Beerdigung."'

    menu:
        '"Jaa, dann kannst du gleich ein Trauerlied anstimmen. Jetzt sei endlich still."':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"Nein, du hast Recht. Vergiß es einfach. Laß uns weiterziehn."':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr 'Morte flüstert dazwischen: "Bei den Mächten… dieser Dussel ist ein *Anarchist.* Daß er sich als Zombie ausgibt, muß für diese Hohlköpfe wohl ganz was Neues sein."'

    menu:
        '"Anarchist?"':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"Die Anarchisten… sie sind ein Bund…" Morte sieht aus, als würde er gleich eine Schimpftirade starten. Dann bemerkt er, daß der Zombie euch anschaut und aufmerksam zuhört. "…sie, äh, sie wollen alle von den Fesseln des Staates *befreien*. Die alte Ordnung zerstören und eine neue Ordnung errichten, die jeglicher Ordnung entbehrt."'

    menu:
        'Wahrheit: "Das scheint mir ein edles Streben. Die Ordnung sollte ruhig ab und zu mal richtig durcheinander geraten."':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        'Lüge: "Das scheint mir ein edles Streben. Die Anarchisten, die sich einem solch hohen Ziel verschreiben, zähle ich *ganz bestimmt* zu meinen Freunden."':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"Das hört sich ziemlich… widersprüchlich an."':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"Das gehört eindeutig zu den dümmsten Sachen, die ich je zu hören bekommen habe."':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        'Wahrheit: "Das scheint mir für niemanden konstruktiv zu sein. Ein bißchen Ordnung, ein paar Gesetze - das ist doch notwendig für den Fortschritt."':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr 'Im Flüsterton: "Er fragt sich, ob du verrückt bist, plemplem, hohl in der Birne… und ich frage mich dasselbe. Setzt du jetzt endlich einen Punkt unter dein Auferstehungs-Geschwätz?! Das ist ja peinlich."'

    menu:
        '"Ich bringe DICH in Verlegenheit?"':
            # a241 # r4684
            jump morte_s88

        '"Ich wollte doch nur wissen, worüber diese… Leiche… redet. Okay?"':
            # a242 # r4685
            jump morte_s88

        '"Ich kann doch nix dafür, daß niemand an diesem verrückten… „übergeschnappten“… Ort wie ein normaler Mensch spricht… oder auch nur AUSSIEHT wie einer."' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"Hör mal, ich werde diesen Typen NICHT anlügen. Besser er weiß, wo er dran ist."':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr 'Morte seufzt. "Hör mal zu, Meister… du mußt deine Gehirnzellen schon etwas anstrengen. Du kannst nicht allen ständig die WAHRHEIT sagen. Wir dürfen doch nicht zulassen, daß uns jeder Grinser, der uns über den Weg läuft, auf„s Korn nimmt, klar?"'

    menu:
        '"„Grinser?“ „Auf“s Korn?„ Was zum - ach, schon gut."':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '"Halt„s Maul, Morte."':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"Ich… werd„s mir merken. Ich will noch ein wenig mit diesem “Zombie„ reden."':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"Warte…" Morte wirkt überrascht. "Dieser Dussel muß ein *Anarchist* sein. Daß er sich als Zombie ausgibt, muß für diese Hohlköpfe ja ganz was Neues sein."'

    menu:
        '"Anarchist?"':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"Die Anarchisten… sind ein Bund, der seine Zeit damit verschwendet, den Vertretern irgendwelcher Behörden nachzuspionieren und zu versuchen, alles niederzureißen, was nach Ordnung oder Kontrolle riecht." Morte schnaubt. "Die Anarchisten denken, daß jeder Dussel auf den Ebenen frei und glücklich sein wird, wenn er nach der Beseitigung des Establishments seine eigene „Wahrheit“ finden darf. Die Anarchisten wollen eine neue Ordnung errichten, die jeglicher Ordnung entbehrt."'

    menu:
        'Wahrheit: "Das scheint mir ein edles Streben. Die Ordnung sollte ruhig ab und zu mal richtig durcheinander geraten."':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"Das hört sich ziemlich… widersprüchlich an."':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"Das gehört eindeutig zu den dümmsten Sachen, die ich je zu hören bekommen habe."':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"Was auch immer."':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        'Wahrheit: "Das scheint mir für niemanden konstruktiv zu sein. Ein bißchen Ordnung, ein paar Gesetze - das ist doch notwendig für den Fortschritt."':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"Er meint, daß dieser Dussel namens Pharod den Staubmenschen schon viele Totenbüchler… Leichen… verkauft hat. Genau das ist auch die Aufgabe der Sammler: Sie sammeln tote Körper und verkaufen sie den Staubmenschen. Sieht aus, als hätte dieser Pharod schon so viele Totenbüchler verkauft, daß die Staubmenschen davon ausgehen, daß er einfach irgendwelche Stockbewohner ins Totenbuch steckt, bevor ihre Stunde geschlagen hat… das heißt, daß er sie tötet."'

    menu:
        '"Ich verstehe. "Da war noch was, was ich wissen wollte…"':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"Hört sich an, als wäre Pharod ein Heiliger. Vielleicht fallen mir später noch ein paar Fragen ein. Rühr dich nicht vom Fleck."':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"Er möchte wissen, ob du ausgeraubt wurdest, was wahrscheinlich der Fall ist."'

    menu:
        '"Ich verstehe. "Da war noch was, was ich wissen wollte…"':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"Ja, ich freu mich schon drauf, diesen Dieb zu finden. Na, vielleicht fallen mir später noch ein paar Fragen ein. Rühr dich nicht vom Fleck."':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"Ja, *sie* sind hier die Blöden, klar."'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"Ich kann einfach nicht glauben, daß du das tust. Sag mal, wie übergeschnappt BIST du eigentlich?"'

    menu:
        '"Ganz schön übergeschnappt, nehme ich an…"' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"Ganz schön übergeschnappt, nehme ich an…"' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"Kannst du seine Lippen nicht etwas fester zusammennähen?"'

    menu:
        '"Hult„s Muul, Murte -"':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"Mmm-HMMPH!"':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"He! Was machst du da?"'

    menu:
        '"Ich war *gerade* dabei, mit diesem Typen zu reden. Was dagegen?"':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"Nichts, laß uns weiterziehn."':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"Wenn du schon mit den Staubies plaudern mußt, dann halte mich da gefälligst raus. Ich vertrag mich nicht allzu gut mit ihnen… und du solltest es auch nicht tun. Bevor sie dir Gehör schenken, verbrennen oder vergraben sie dich eher. Komm, sei nicht so bescheuert; laß uns abhauen."'

    menu:
        '"Danke für den Rat, aber ich werde *trotzdem* mit diesem Typen reden."':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"Einverstanden, laß uns weiterziehn."':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"He! Du bist wohl taub, was? Was machst du da?"'

    menu:
        '"Paß auf, ich werde mit dem Typen reden. Was dagegen?"':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"Nichts, laß uns weiterziehn."':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"Gut, dann hör halt *nicht* auf mich - es ist schließlich deine Beerdigung."'

    menu:
        '"Jaa, dann kannst du gleich ein Trauerlied anstimmen. Jetzt sei endlich still."':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"Nein, du hast Recht. Vergiß es einfach. Laß uns weiterziehn."':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"Was *machst* du da?! Wenn du ihn töten willst, dann bitte richtig!"'

    menu:
        '"*Hab„* ich doch! Ich hab“ ihm den Hals umgedreht! Der sollte sich nicht mehr rühren!"':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"Er *kann* wenigstens gehen." Morte schnaubt. "Dieses Herumschweben geht einem ganz schön auf den Keks, wenn man jemanden treten möchte."'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"He, Meister! Was machst du?!"'

    menu:
        '"Wollt„ nur grade mit diesem Schreiber reden. Der weiß vielleicht, wie ich hierhergekommen bin."':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"Sich mit den Staubies abzugeben ist doch das ALLERLETZTE… "'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"Und wir sollten *vor allem* keinen Plausch mit kranken Staubies halten. Komm schon, haun wir ab. Je schneller wir diesem Ort eins grinsen, desto bess…"'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"Hörst du mir also wieder zu, Meister? Irgendwie schienst du den Faden verloren zu haben."'

    menu:
        '"Nein, mir geht„s gut. Weißt du, wer dieser Geist war?"':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"Alles okay. Laß uns weiterziehn."':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"Hä? Geist?"'

    menu:
        '"Das Gespenst, mit dem ich mich gerade unterhalten habe. Die Frau."':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"Du hast dich mit einer Frau unterhalten? Wo?" Morte sieht sich aufgeregt um. "Wie hat sie ausgesehen?"'

    menu:
        '"Sie war grade hier oben auf der Bahre. Hast du sie denn nicht gesehen?"':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"Äh… nein, du hast einfach den Faden verloren, hast einfach dagestanden, fast wie eine Statue. Ich hatte schon ein wenig Angst, daß du wieder übergeschnappt bist."'

    menu:
        '"Nein, mir geht„s gut… glaub ich jedenfalls. Laß uns weiterziehn."':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"Erinnert mich an einen Job, den ich mal hatte." Er sieht peinlich berührt aus. "Naja, ich meine…ohne die Arme."'

    menu:
        'Untersuche die Leiche.' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        'Untersuche die Leiche.' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"Hmmm. Ich frage mich, ob das auch mit den anderen Zetteln funktionieren würde…"' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"Hmmmm. Ich frage mich, ob das auch mit den anderen Zetteln funktionieren würde…"' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        'Sieh dir die anderen Zettel an.' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        'Wende deine Erzählende-Knochen-Kraft auf die Leiche an.' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        'Laß die Leiche in Ruhe.':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"Mann oh Mann, Meister. Das ist Vandalismus. Diese Bolzen hier sind wohl das einzige, was dieses Knochengerüst noch zusammenhält. Selbst die Nekromantie hat ihre Grenzen, findest du nicht?"'

    menu:
        '"Und?"':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"Oh… ich wollte wirklich keinen bleibenden Schaden anrichten."':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"Ist schon gut. Vielleicht ein andermal."':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"Hmmmm. Ob dieser Graubart wohl was dagegen hat, daß *ich* mir sein Knochengerüst ausleihe…"'

    menu:
        '"„Graubart“?"':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"Ich glaube kaum, daß er in seiner Lage etwas dagegen haben wird."':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"Ich werd das Gefühl nicht los, daß du doppelt so nervig wärst, wenn du Arme hättest. Laß uns gehen."':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"Könntest du damit aufhören? Seine Arme werden abbrechen."'

    menu:
        'Verschränk die Arme vor der Brust.' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        'Imitier die Geste des Skeletts… warte ab, was passiert.' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"Äh…"':
            # a292 # r6666
            jump s42_s10  # EXTERN

        'Laß das Skelett in Ruhe.':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"Sie hat in dieser Stadt die Macht. Du würdest sie gleich erkennen: Ihr Gesicht wird von Klingen umrahmt, sie hat die Größe eines Riesen und schwebt über der Erde, genau wie diese Kerle hier." Morte nickt in Richtung des Dabus, der euch beide anschaut. "Keiner weiß etwas genaues über sie… sie redet nicht viel. Das einzige, was du wissen mußt, ist, daß du sie besser nie wütend machst. Wenn du sie siehst, dann lautet mein Ratschlag: Lauf."'

    menu:
        '"Ich verstehe."':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Ziegenköpfe sagen wollen. Du brauchst einen Übersetzer? Such dir einen Einwohner von Sigil."'

    menu:
        '"Aha."':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"Oh, *natürlich* haben sie Namen. Da bin ich mir sicher."'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"Das glaubst *du*, du kleines Scheusal."'

    menu:
        '"Halt„s Maul, Morte - kannst du ihm noch ein paar andere Fragen stellen, Annah?"':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"Vergiß es. Laß uns einfach gehen."':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Du brauchst einen Übersetzer? Soll doch das kleine Scheusal-Mädel hier den Job machen." Er nickt Annah zu. "Sie ist im Stock heimisch."'

    menu:
        '"Vielleicht…"':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Du brauchst einen Übersetzer?" Er nickt Dak„kon zu. "Sag “Heiliger-als-du-und-doppelt-so-schweigsam„, er soll übersetzen."'

    menu:
        '"Vielleicht…"':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Brauchst du einen Übersetzer? Soll das doch die Tanar-Ri tun." Er nickt Grace zu. "Wahrscheinlich mußte sie sich sowieso die ganze Zeit mit dem Geschwätz dieser Kerle herumschlagen."'

    menu:
        '"Vielleicht…"':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr 'Als du dich abwendest, bemerkst du, daß Morte dich anstarrt. "He? He?"'

    menu:
        '"Was?"':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"Hast du *gesehen* wie diese leichenstarre Schönheit mich angeschaut hat?" Mortes Zähnen fangen wie in freudiger Erwartung an zu klappern. "Sie hat nach irgendeinem Schleifer gesucht, der die Kälte aus ihrem Sarg vertreibt."'

    menu:
        '"Nun fang *bitte* nicht schon wieder damit an."' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"Wovon *redest* du überhaupt?"' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"Was, dieses Starren-mit-leeren-Augen-über-das-Grab-hinaus?"' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr 'Morte ignoriert dich und wird nachdenklich. "Ich habe eigentlich nichts gegen Aufmerksamkeit… es ist nur so, daß ich als mehr als nur ein Totenschädel angesehen werden möchte, verstehst du? Ich habe Gefühle, die über meine einfachen, animalischen Instinkte hinausgehen. Ich möchte umworben werden, und keine kurze Affäre im Mausoleum."'

    menu:
        '"Wenn du weiter so dumm rumquatschst, verschaff ich dir ne dauerhafte Beziehung mit der nächstbesten Häuserwand ."':
            # a305 # r7059
            jump morte_s123

        '"Morte, du *bist* nun mal ein Totenschädel. Und keiner kann„s verhindern, dich als Totenschädel zu sehen. Akzeptier“s einfach."':
            # a306 # r7060
            jump morte_s124

        '"Versteh schon. Laß uns lieber zusehen, daß wir hier rauskommen, okay?"':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"Whoa, Meister…" Morte weicht etwas zurück. "Frauen - die wollen Liebhaber und keine Muskelmänner."'

    menu:
        '"Du bist wahrscheinlich der *Letzte*, von dem ich je Ratschläge in Liebesdingen annehmen würde."':
            # a308 # r7062
            jump morte_s126

        '"Wie du meinst, Morte. Gehen wir."':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"Ja, ich bin vielleicht nur ein Totenschädel, aber ich habe ein großes Herz."'

    menu:
        '"Naja, eigentlich *hast* du ja gar keins."':
            # a310 # r7064
            jump morte_s125

        '"Wie du meinst, Morte. Gehen wir."':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"Was, bist du in mein Leben geplatzt, um auf meine Träume und Hoffnungen zu spucken?! Gut, dann soll es wohl so sein. Ich habe zwar kein Herz, *dafür* aber eine Seele."'

    menu:
        '"Nun, ehrlich gesagt wette ich, daß du k… ach, vergiß es. Laß uns gehen."':
            # a312 # r7066
            jump morte_dispose

        '"Wie du meinst, Morte. Gehen wir."':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"Wenn du halb soviel Grips hättest wie zu deinen Lebzeiten, dann wüßtest du es besser." Mortes Stimme nimmt einen süffisanten Ton an. "In Sachen Liebe macht mir keiner etwas vor."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr 'Morte schaut sich das Skelett einen Moment lang an und schüttelt dann seinen Kopf. "Nein… es ist zu sauber… da ist fast überhaupt kein Fleisch mehr dran. Außerdem krieg ich nie die ganze Tünche von den Knochen."'

    menu:
        '"Ich weiß ja nicht, ob„s “zu sauber„ ist… du könntest noch das eine oder andre über Reinheit lernen."':
            # a315 # r7076
            jump morte_s70

        '"Also gut, gehen wir."':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"Jaa!"'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"Ein Mimir ist ein wandelndes Lexikon. So was wie ich, Meister."'

    menu:
        '"Verstehe ich gut. Nun, Morte, steiger dich da lieber nicht rein. So wie die aussieht, rette ich dich hier bestimmt vor einem zweiten Sterben."':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"Laß uns einfach zusehen, daß wir hier rauskommen. Leb wohl, Fräulein."':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr 'Morte starrt wie hypnotisiert auf die Frau, über deren Lippen sich ein Schwall von Obszönitäten ergießt. Nach dem Ende des verbalen Ausbruchs schweigt Morte für einen Augenblick und wendet sich dann dir zu. "Wow, Meister. Ich hab„ ein paar neue Flüche für meine Sammlung." Er wendet sich wieder der Frau zu, die eine Atempause eingelegt hat. "Außerdem bin ich verliebt."~ [MRT387]'

    menu:
        'Verschwinde.':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"Whoa, Meister." Du willst mit dem Geschöpf sprechen, aber Morte unterbricht dich. "Schließ ab! Du solltest nicht mit jedem Scheusal auf der Straße schwafeln. Laß es sein."'

    menu:
        '"Ich wollt„ ihm ein paar Fragen stellen…"':
            # a320 # r7776
            jump morte_s132

        'Laß das Wesen in Ruhe.':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"Nein, lieber nicht." Morte wirft einen Blick auf das Geschöpf, wendet sich wieder zu dir und flüstert dir zu: "Die sind leicht reizbar. Laß uns einfach gehen."'

    menu:
        '"Ich werd„s wagen."':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        'Laß das Wesen in Ruhe.':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr 'Morte seufzt, als du Anstalten machst, mit dem Geschöpf zu reden.'

    menu:
        '"Ja?"':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"Oh, nichts… das Leben ist der beste Lehrmeister, weißt du." Er nickt in Richtung des Geschöpfs. "Mach weiter."'

    menu:
        '"Das werde ich."':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"Also gut, dann nicht. Gehen wir."':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"Ja, „n “Gith„…" Morte sieht kurz zum Gith hinüber, der dich immer noch anstarrt. "Darüber sprechen wir “n anderes Mal."'

    menu:
        '"Ich kann jetzt noch nicht gehen. Ich werde ihm erst ein paar Fragen stellen…"':
            # a327 # r9035
            jump gith_s7  # EXTERN

        'Laß den Gith in Ruhe.':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"He, Meister… du bringst den Fussler eher um, als daß du ihn aufweckst!"'

    menu:
        '"Du hast Recht, Morte - laß uns gehen."':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr 'Morte schwebt zu dir herüber. "Was gibt„s, Meister?"'

    menu:
        '"Siehst du diese Zähne?"':
            # a330 # r11974
            jump morte_s138

        '"Ach nichts, ist schon gut."':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr 'Morte betrachtet deine Handfläche. "Iiihhh." Er scheint von einer morbiden Faszination ergriffen zu werden. "Lauter häßliche, kleine Dussel, was?"'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"Das fehlte ja gerade noch." Morte schaudert. "Würdest du die Dinger etwa in *dir* haben wollen?"'

    menu:
        '"Komm schon, Morte, sie scheinen dich zu mögen. Sieh mal, wie sie dich anstarren."':
            # a332 # r11976
            jump morte_s140

        'Greif dir Morte und schieb ihm die Zähne in den Mund.':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"Egal."':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"Bleib mir bloß mit diesen ekligen Dingern vom Hals, sonst…" Morte zögert. "Ich hab„ keine Ahnung, wie man Zähnen drohen könnte."'

    menu:
        'Untersuche die Zähne.':
            # a335 # r11979
            jump morte_dispose

        'Greif dir Morte und schieb ihm die Zähne in den Mund.':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"Egal."':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr 'Es geht alles ganz schnell. Du nimmst Morte in den Schwitzkasten, weil das der einzige Griff ist, den du wirklich beherrschst. Als er sich losbeißen will, springen die Zähne aus deiner Hand heraus, hinein in seinen Kiefer. Morte heult vor Schmerz, als Ingress„ Zähne seine alten Zähne herausreißen und in die entstandenen Hohlräume springen.'

    menu:
        '"Na, Morte. Das war doch gar nicht so schlimm, oder?"':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr 'Morte heult noch immer. Die Zähne passen sich seinem Mund an und verankern ihre Wurzeln mit einem schrecklichen Bohrgeräusch.'

    menu:
        '"Morte? Bist du okay?"':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr 'Morte scheint dich nicht zu hören… er heult und heult. Plötzlich schlägt er seine Zähne aufeinander. Er beißt dreimal fest zu, bevor obere und untere Zahnreihe wieder aufeinanderschlagen, und Morte den Mund nicht mehr aufkriegt.'

    menu:
        '"Wow."':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr 'Morte murmelt dir mit weit aufgerissenen Augen etwas zu.'

    menu:
        '"Also… gefallen sie dir?"' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"Morte, bist du okay?"' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr 'Die Zähne öffnen sich plötzlich wieder, und Morte holt tief Luft. "Dafür *bring ich dich um*," sagt er. "Das war echt mies von dir."'

    menu:
        '"Wie fühlen sie sich an?"':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr 'Morte spielt mit seinem Kiefer. "Ungewohnt. Aber nicht schlecht." Plötzlich verlängern sich die Zähne zu Fängen. "Ooooooh! Sie verändern sich!" Dann schrumpfen sie wieder auf ihre normale Größe zurück, werden wieder zu Fängen, dann wieder normal… "Ich glaube, sie werden mir gefallen."'

    menu:
        '"Es tut mir leid, Morte. Ich wollte dir nichts Böses tun."' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"Und? Hatte ich nicht recht?"' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"Oh, ganz ungeschoren kommst du mir trotzdem nicht davon," antwortet Morte. Als er grinst, werden seine Zähne wieder zu Fängen. "Wart„s nur ab."'

    menu:
        '"Hey… Rache hat noch nie jemandem genützt, Morte… Komm, laß uns gehen."' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"Du wirst mir noch dankbar dafür sein. Wirst schon sehen."' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"Was ist?" Morte schwebt näher heran und schaut auf deine Handfläche. "Hey… die führen doch irgendwas im Schilde, oder?"'

    menu:
        '"Ja, du hast re-"':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr 'Was als nächstes passiert, ist schwer zu beschreiben… und schmerzvoll mit anzusehen. Bevor du deine Handfläche schließen kannst, springen die Zähne aus deiner Hand heraus, hinein in Mortes Kiefer. Morte heult vor Schmerz, als Ingress„ Zähne seine alten Zähne herausreißen und in die entstandenen Hohlräume springen.'

    menu:
        '"Morte!"':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr 'Die Zähne öffnen sich plötzlich wieder. Morte ringt nach Luft. "Dafür *bring ich dich um*! Du hast es geplant! Ich weiß es!"'

    menu:
        '"Schau, ich wollte nicht, daß das passiert… Ich habe dich sogar gewarnt. Äh… wie fühlen sie sich an?"':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr 'Morte flüstert dir zu: "Meister, mir gefällt das gar nicht. Die sollten hier gar nicht sein. Der Blutkrieg hat den Himmelskreaturen nicht genug in den Hintern getreten, daß jedes Scheusal jederzeit in Urlaub gehen kann. Die *wollen* was. Sei vorsichtig." Inzwischen antwortet Tegar„in seinem Begleiter…'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"Meister, ich bin sicherer denn je, daß diese Dussel nicht ganz sauber sind. Klingt mir ganz so, als seien sie desertiert, als seien sie auf der Suche nach einem Winkel, der ihren Status in Baator erhöht. Mit denen solltest du nicht reden, Meister… du weißt ja nicht, was die für„n Spiel spielen, und du könntest dir die Pfoten verbrennen… im wahrsten Sinne des Wortes."'

    menu:
        '"In Ordnung, Morte. Nur noch ein paar Fragen an diese beiden…"':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"In Ordnung, Morte. Ich bin fertig mit ihnen."':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr 'Morte schwebt dicht an dich heran und flüstert dir ins Ohr: "Er *hat* recht, Meister… Ich weiß wirklich nicht, worüber du dich so aufregst."'

    menu:
        '"Wie du meinst… Ich wollte nur eine Frage stellen…"':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"Halt„ die Klappe, du Jammerschädel! Und du, Ziegending. Verrecke…"':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"Oh nein… Das warst *du*, und jetzt wirst du dafür zahlen…"':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"Dann vergiß es. Leb wohl."':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"Ja ja! Das gute Zeug!"'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr 'Morte scheint erstaunt, als sich alle Blicke auf ihn richten. "Was? Was?" Du hast den Eindruck, daß er, wenn er Lippen hätte, unschuldig pfeifen würde.'

    menu:
        '"Hast du eine Erklärung dafür, Morte?"':
            # a357 # r12854
            jump morte_s156

        '"Was ist ein „Mimir“?"' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"Beachte ihn nicht… Weißt du die Antwort?"':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"Tja, ich würd„ sagen, wir hören uns an, was dieser Mann zu sagen hat. Ja?" Morte dreht sich um und starrt den Rattenfänger eindringlich an.'

    menu:
        '"Nein… laß uns hören, was du dazu zu sagen hast, Morte."':
            # a360 # r12857
            jump morte_s158

        '"Gleich… was ist ein „Mimir?“"' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        'Wende dich dem Rattenfänger wieder zu.':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr 'Morte rollt seine Augen, als sei es ihm peinlich. "Das ist… ne sprechende Enzyklopädie. Nichts, worauf ich stolz wäre. Und jetzt laß uns anhören, was dieser Kerl zu sagen hat, in Ordnung?"'

    menu:
        '"Wie du meinst."':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"Nein, ich hab„ genug gehört. Leb wohl, Rattenfänger."':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"Ach, nun komm schon, Meister… warum sollte ich dir etwas verheimlichen? Ich hab„ dir alles Nützliche erzählt, das *ich* weiß. Jetzt laß uns mal den Dussel hier die ganze Sache übernehmen."'

    menu:
        '"Wie du meinst."':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"Egal. Gehen wir… Auf bald, Rattenfänger."':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"Ja, Meister! So isses richtig!"'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"Tot, Meister… tot."'

    menu:
        '"Du scheinst aber ganz in Ordnung zu sein, Rattenfänger…"':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"Verstehe. Eine andere Frage…"':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"Danke für die Information. Leb wohl."':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"Tot, Meister… tot."'

    menu:
        '"Ah… Was war das nochmal für eine Geschichte über Leute, die für tote Ratten zahlen?"':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"Ich verstehe. Ich hätte noch eine andere Frage…"':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"Ich verstehe. Leb wohl."':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"Tja, da haben wir einen Baum, dem ein Ast zu viel abgebrochen ist." Morte rollt die Augen. "Hat gar keinen Zweck, mit Xaositekten zu plaudern, Meister. Das ist „n völlig verrückter Haufen."'

    menu:
        '"Xaositekten?"' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"Wer sind die Xaositekten noch mal?"' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"Dachte, ich könnte vielleicht was von ihm lernen. Na, egal, laß uns gehen."' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"Das ist „n “Bund„ ganz ohne Regeln… außer, keinen Gedanken zu lange im Kopf zu behalten. Manchmal werden sie auch “Chaoten„ genannt. Warum, muß ich wohl nicht erst erklären."'

    menu:
        '"Wie rekrutieren sie neue Mitglieder?"':
            # a376 # r13777
            jump morte_s164

        '"Ich verstehe. Geh„n wir."':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"Die scheinen einfach Mitglieder wie die Fliegen anzulocken… na ja, Mitglieder, die verrückt oder chaotisch genug sind, denk ich mal. Ich glaub nicht, daß die Leute haben, die extra rekrutieren… obwohl es nicht so einfach ist, sich bei denen über irgend etwas ganz sicher zu sein."'

    menu:
        '"Ich verstehe. Vielen Dank für die Informationen."':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"Tja, da haben wir einen Baum, dem ein Ast zu viel abgebrochen ist." Morte rollt die Augen. "Hat gar keinen Zweck, mit Xaositekten zu plaudern, Meister. Das ist „n völlig verrückter Haufen."'

    menu:
        '"Xaositekten?"' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"Wer sind die Xaositekten noch mal?"' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"Dachte, ich könnte vielleicht was von ihm lernen. Na, egal, laß uns gehen."' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"Das ist „n “Bund„ ganz ohne Regeln… außer, keinen Gedanken zu lange im Kopf zu behalten. Manchmal werden sie auch “Chaoten„ genannt. Warum, muß ich wohl nicht erst erklären."'

    menu:
        '"Wie rekrutieren sie neue Mitglieder?"' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"Verstehe. Na dann, geh„n wir."':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"Die scheinen einfach Mitglieder wie die Fliegen anzulocken… na ja, Mitglieder, die verrückt oder chaotisch genug sind, denk ich mal. Ich glaub nicht, daß die Leute haben, die extra rekrutieren… obwohl es nicht so einfach ist, sich bei denen über irgend etwas ganz sicher zu sein."'

    menu:
        '"Ich verstehe. Vielen Dank für die Informationen."':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"Also gut…" Morte zischt dich an. "Gehen wir, Meister. Dieser Staubie könnte genausogut Wurmfutter sein."'

    menu:
        '"Das ist nur gerecht. Verschwinden wir von hier."' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"Das ist nur gerecht. Verschwinden wir von hier."' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"Das ist nur gerecht. Verschwinden wir von hier."' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"Das ist nur gerecht. Verschwinden wir von hier."' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"Spieß ihn auf, diesen polierten Affenarsch! Gib„s ihm!"'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"Ja, du sollst antworten!"'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"Ich setze zehn Kupfermünzen auf das Narbengesicht!" Morte schwebt heran und flüstert: "Das bist du, Meister. Ich hoffe, du enttäuschst uns nicht."'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"Gut, Meister. Diesmal hast du ihn erwischt! Zeig„s ihm!"'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"Richtig, du hochglanzpoliertes Backpfeifengesicht… Du hast gehört, was er gesagt hat!"'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"Wer *ich* bin? Ha! Ich hätte dein Vater sein können, aber dieser Affe hat mich die Treppen hochgeprügelt!"'

    menu:
        '"Morte, sei ruhig."':
            # a389 # r15490
            jump morte_s175

        'Laß Morte weiterreden.':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"Was ist los, Prinzessin? Hat es dir die Sprache verschlagen? Und mach deine Klappe zu, bevor dir was in den Hals fliegt! Hast du nicht gehört? Pack deinen rosa Büstenhalter ein und verkriech dich unter dem schmutzigen Rock deiner Mutter, wo du hingehörst! Und grüß sie recht schön von mir, wenn du dort bist!"'

    menu:
        '"Morte: Halt„ *jetzt* die Klappe."':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        'Laß Morte weiterreden.':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"Was? Oh… Tschuldigung, Meister. Bei solchen Typen kann ich einfach nur ausrasten…"'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"Hm, wenn ich es nicht besser wüßte, würde ich sagen-"'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"Was? Ich bin nur ein Mimir, Meister! Ich kann mich nicht „duellieren“!„"'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"Ein Mimir ist, äh… eine Art wandelndes Lexikon. Aber es ist mir wirklich peinlich, darüber zu sprechen."'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"Aber du bist KEIN Mimir, Morte…"' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"Los, Meister… das wirst du ihm doch nicht durchgehen lassen? Dem Schnösel werden wir„s zeigen! Ich kümmere mich um seine Augen, schaufel du nur in ihn rein!"'

    menu:
        '"Du hast recht… greifen wir ihn uns."':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"Jetzt ist nicht die Zeit dafür, Morte. Gehen wir."':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"Was? Oh, ja, Meister, klar - was auch immer du sagst."'

    menu:
        '"Danke. Ich hätte da ein paar Fragen, Der um die Bäume trauert…"' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"Ich mein„s ernst, Morte. Könntest du dir die Mühe machen?"' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"Danke, Morte. Leb wohl, Der um die Bäume trauert."':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr 'Morte schaut dich eine Weile stumm an - dann nickt er. "Ja, kann ich. Wenn es dir so viel bedeutet, mach„ ich“s."'

    menu:
        '"Danke. Annah? Könntest du„s?"' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"Danke. Ignus?"' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"Danke. Grace, könntest du drüber nachdenken?' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"Danke. Dak„kon, könntest du diesem Mann helfen?"' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"Danke. Dak„kon: Hilf diesem Mann."' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"Danke. Nordom, meinst du, du könntest helfen?"' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"Danke. Vhailor, könntest du helfen?"' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"Danke. Ich hätte da ein paar Fragen, Der um die Bäume trauert…"':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"Danke, Morte. Leb wohl, Der um die Bäume trauert."':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"Hey, ich weiß *wirklich* nicht, was das bringen soll. Ich halte nichts von solchen Wunderheilungsgeschichten, Meister - so einfach ist es nicht."'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"Oh, Mann, das darf nicht wahr sein. Ich kann nicht *glauben*, daß du deine Zeit so vergeudest, Meister!"'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"Hey, Meister, ich hab„ ja schon so einiges erlebt… Aber daß so etwas *möglich* ist, gibt mir den Rest."'

    menu:
        '"Ich danke dir, Nordom. Morte? Was denkst du?"' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"Ich danke dir, Nordom. Annah? Könntest du?"' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"Ich danke dir, Nordom. Ignus?"' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"Ich danke dir, Nordom. Grace, würdest du es angehen?"' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"Ich danke dir, Nordom. Dak„kon, könntest du diesem Mann helfen?"' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"Ich danke dir, Nordom. Dak„kon: Hilf diesem Mann."' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"Ich danke dir, Nordom. Vhailor, könntest du helfen?"' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"Ich danke dir, Nordom. Ich hätte da ein paar Fragen, Der um die Bäume trauert…"':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"Ich bin dir dankbar, Nordom. Auf Wiedersehen, Der um die Bäume trauert."':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"Mann! Ich darf gar nicht hinsehen!"'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"Warum nicht, Meister? Man kann sich an denen bestimmt prima abreagieren, oder? Hmm… Na ja, du müßtest für mich das Treten und Werfen übernehmen. Außerdem würde ich gerne den fünf-Meter-Sprung mit den heißen Kohlen sehen!"'

    menu:
        '"Was meinst du, Annah?"' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"Ich nehm eins, Händler."' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"Ich gebe meine Kupfermünzen lieber nicht aus. Ich hätte da ein paar Fragen, Händler…"' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"Ich behalte meine Kupfermünzen, Händler. Leb wohl."' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"Ich habe nicht genug Kupfermünzen, Händler. Aber ich hätte da ein paar Fragen…"' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"Vergiß es, Händler. Ich habe nicht genug Münzen für eins. Leb wohl."' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr 'Morte dreht sich zu dem Stockbewohner um. "Hau ab."'

    menu:
        '"Du kriegst diesen Schädel nicht."':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"Das ist nicht dein Schädel."':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        'Wahrheit: "Na los, nimm den Schädel."':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        'Greif ihn an, wenn er gerade nicht aufpaßt: "Na los, nimm den Schädel."':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        'Wahrheit: "Wenn du mir beweisen kannst, daß es dein Schädel ist, gebe ich ihn dir. Das ist ein faires Angebot."':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"Wer bist du?"':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"Ich kaufe dir den Schädel ab. Das ist doch ein faires Angebot, oder?"':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr 'Morte hat einen Finger des Mannes wie eine Zigarre makaber zwischen die Zähne geklemmt. Er spricht um den Finger herum: "Wenn du mich nochmal anfaßt, geht„s deiner ganzen Hand so wie dem Finger hier, Dussel."'

    menu:
        '"Morte! Gib dem Mann seinen Finger zurück."':
            # a430 # r18810
            jump morte_s190

        '"Pech. Verzieh dich, Köter."':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"Eine harte Lektion. Leb wohl."':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr 'Morte spuckt den Finger auf den Mann. Er prallt an dessen Brust ab und fällt zu Boden.'

    menu:
        '"Pech. Verzieh dich, Köter."':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"Eine harte Lektion. Leb wohl."':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr 'Morte dreht sich schnell zu dir um: "Meister, gib dieser Ratte nichts."'

    menu:
        '"Ich…"':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr 'Morte herrscht den Mann an: "Ich *hab nicht* mit dir geredet, du Rindvieh. Wenn ich mit dir rede, merkst du das daran, daß ich muhe und blöke. Damit du mich besser verstehen kannst."'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"Meister, *nicht*."'

    menu:
        'Gib ihm fünf Kupfermünzen.' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        'Gib ihm fünfzig Kupfermünzen.' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        'Gib ihm hundert Kupfermünzen.' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        'Gib ihm fünfhundert Kupfermünzen.' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"Ich habe nicht mehr."' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"Vergiß das Angebot. Das ist nicht dein Schädel, und du kriegst ihn nicht."':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"Ich schwebe mit dem größten Idioten durch das Multiversum."'

    menu:
        '"…wie, Gelbfinger? Ich bestehle dich und du tust *was*?"':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"Jetzt, wo das geklärt wäre, Gelbfinger, hätte ich ein paar Fragen…"':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"Leb wohl, Gelbfinger."' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"Leb wohl, Gelbfinger."' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"Meister! Komm!"'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"Das Leben über den Straßen Sigils auch nicht."'

    menu:
        'Gib ihm fünf Kupfermünzen.' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        'Gib ihm zehn Kupfermünzen.' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        'Gib ihm fünfzig Kupfermünzen.' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        'Gib ihm hundert Kupfermünzen.' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"Ich nehm„s zurück. Verschwinde und komm mir nie wieder unter die Augen."':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"Hey du, Schläger! Wie geht„s deinem Freund in der Wand?"'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr 'Morte zieht den Kopf ein. "Was immer du sagst, Meister."'

    menu:
        '"Okay. Ojo, ich hätte da ein paar Fragen."':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"Okay. Laß uns gehen."':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"Wow, Meister… was für „ne Schönheit, nicht? So süße, kleine Mädels trifft man nicht überall, weißt du."'

    menu:
        '"Ich kann wenig Attraktives an verrottenden Leichen finden, Morte, sei sie nun weiblich oder nicht."':
            # a453 # r19666
            jump morte_s200

        '"Vielleicht, wenn man über Dinge wie betäubend stinkende, madenzerfressene, verrottende Kadaver hinwegsehen kann."':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr 'Mortes Augen rollen. "Hah! Eines Tages wirst du verstehen, was ich meine."'

    menu:
        'Ignoriere ihn und begrüß den Zombie.' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        'Ignoriere ihn und begrüß den Zombie.' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"Ja, siehst du, das ist, was ich… hey!" Morte dreht sich abrupt zu dir um. "Kommst du mir jetzt etwa mit Sarkasmus?"'

    menu:
        'Ignoriere ihn und begrüß den Zombie.' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        'Ignoriere ihn und begrüß den Zombie.' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '"Eh… weiß nicht, ob du gerne mit diesem… Ding da reden willst."'

    menu:
        '"Warum nicht, Morte?"':
            # a459 # r19691
            jump morte_s203

        '"Also gut. Gehen wir."':
            # a460 # r19692
            jump morte_dispose

        'Ignoriere Morte und grüß den Ghul.':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"Sie waren mal Menschen… sie, oder ihre Vorfahren, haben sich von Leichen ernährt, und das ist aus ihnen geworden. Ganz schön übles Zeug, Meister… sie sind wirklich nicht viel mehr als Tiere. *Gefährliche* Tiere."'

    menu:
        '"Also gut. Gehen wir."':
            # a462 # r19694
            jump morte_dispose

        '"Ich red„ trotzdem mit ihm."':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '"Eh… weiß nicht, ob du gerne mit diesem… Ding da reden willst."'

    menu:
        '"Ich bin überrascht, Morte… Hauptsache untot und weiblich. Mehr verlangst du doch normalerweise nicht."':
            # a464 # r19713
            jump morte_s206

        '"Warum nicht, Morte?"':
            # a465 # r19714
            jump morte_s205

        '"Also gut. Gehen wir."':
            # a466 # r19715
            jump morte_dispose

        'Ignoriere Morte und grüß den Ghul.':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"Sie waren mal Menschen… sie, oder ihre Vorfahren, haben sich von Leichen ernährt, und das ist aus ihnen geworden. Ganz schön übles Zeug, Meister… sie sind wirklich nicht viel mehr als Tiere. *Gefährliche* Tiere."'

    menu:
        '"Also gut. Gehen wir."':
            # a468 # r19717
            jump morte_dispose

        '"Ich werd trotzdem mit ihr reden."':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"Das ist nicht ganz Dasselbe, Meister…"'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"Diese Grabräuberin ist blind und fast taub."'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"Ich glaube, sie meint Organe. Ich hoffe, sie meint Organe."'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr 'Morte dreht sich zu Marta um. "Ja, „Dingerchen“." Dann dreht er sich zu dir. "Alles eine Frage der Semantik."'

    menu:
        '"Marta, warum ziehst du der Leiche Zähne und Fäden?"' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"Marta, warum ziehst du der Leiche Zähne und Fäden?"' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"Äh… also gut. Ich muß mich verabschieden, Marta. Leb wohl."':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"Ich werde mir das *nicht* ansehen."'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"Oh, bei allen Mächten…! Gräßlicher Dabus."'

    menu:
        '"Was ist los?"':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"Er ist ein Dabus. Sie „sprechen“ in Rebussen, diesen bescheuerten Worträtseln. Wenn *du* nicht verstehst, was er sagt, finden wir besser einen Einheimischen oder eine andere Möglichkeit, mit ihm zu kommunizieren… falls wir dies wünschen. Ein lästiger Haufen. Ich wette, sie *können* sprechen, gehen aber lieber allen auf die Nerven mit ihren Rätseln, über die man sich den Kopf zerbrechen muß."'

    menu:
        '"Was ist ein „Dabus“?"':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"Man sagt, sie arbeiten als Hausmeister für die Dame der Schmerzen. Sie schwirren durch die Gegend, um Sigil nach ihren Launen abzureißen, zu reparieren und wieder aufzubauen. Sie sind schlimmer als Leichenfliegen." Morte seufzt. "Totschlagen darf man sie leider nicht, sonst wird die Dame… wütend."'

    menu:
        '"„Die Dame der Schmerzen“? Wer ist das?"' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"Was kannst du mir über die Dame der Schmerzen erzählen?"' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"Verstehe."' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"Sie hat in dieser Stadt die Macht. Du wirst sie gleich erkennen: Ihr Gesicht wird von Klingen umrahmt, sie hat die Größe eines Riesen und schwebt über der Erde, genau wie diese Kerle hier." Morte nickt dem Dabus zu, der euch beide anschaut. "Keiner weiß etwas genaues über sie… sie redet nicht viel. Das einzige, was du wissen mußt, ist, daß du sie besser nie wütend machst. Wenn du sie siehst, dann lautet mein Ratschlag: Lauf."'

    menu:
        '"Äh… Moment mal. Du hast gesagt, die Dabus würden schweben, stimmt„s? Nun, dieser läuft ganz normal auf der Erde."' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"Äh… einen Augenblick. Du hast doch gesagt, daß die Dabus schweben, stimmt„s? Der hier bewegt sich aber auf dem Boden fort."' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"Ich verstehe."':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr 'Morte wirft einen Blick auf den Dabus, und seine Augen weiten sich. "Ah-ha! Ich hab„ gewußt, daß ihr Bocksköpfe gehen könnt! Ich hab“s gewußt!" Morte wendet sich fröhlich wieder dir zu. "Ha! Dieser hier ist wohl nicht abgehoben genug, um vom Boden wegzukommen."'

    menu:
        '"Ja, vielleicht…"':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr 'Morte spricht verächtlich: "Ich würde eher durch die Eingeweide eines Tanar-Ris gehen, als zu interpretieren, was dieser Bockskopf zu sagen versucht. Du brauchst einen Übersetzer? Dann such dir einen Einheimischen Sigils."'

    menu:
        '"Verstehe."':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr 'Morte spricht verächtlich: "Ich würde eher durch die Eingeweide eines Tanar-Ris gehen, als zu interpretieren, was diese schwebenden Bocksköpfe zu sagen versuchen. Willst du einen Übersetzer? Laß dieses kleine Scheusal es machen." Er nickt in Richtung Annah. "Sie stammt aus dem Stock."'

    menu:
        '"Vielleicht werde ich das tun…"':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr 'Morte spricht verächtlich: "Ich würde eher durch die Eingeweide eines Tanar-Ris gehen, als zu interpretieren, was diese schwebenden Bocksköpfe zu sagen versuchen. Willst du einen Übersetzer?" Er nickt in Richtung Dak„kon. "Laß “Der heiliger ist als du und doppelt so schweigsam„ übersetzen."'

    menu:
        '"Vielleicht werde ich das tun…"':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Brauchst du einen Übersetzer? Soll das doch die Tanar-Ri tun." Er nickt Grace zu. "Wahrscheinlich mußte sie sich sowieso die ganze Zeit mit dem Geschwätz dieser Kerle herumschlagen."'

    menu:
        '"Vielleicht werde ich das tun…"':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"Du willst sie einfach töten. Vorahnung bedroht die Staubmenschen."'

    menu:
        '"Ich hätte da noch ein paar Fragen…"':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"Das ist alles, was ich wissen wollte. Leb wohl."':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr 'Morte starrt dich an und schüttelt mit dem Kopf.'

    menu:
        '"Was hast du gesagt, Würfelheld? „Morte ist ein dummer Schädel?“ Ja, sicher ist er das, nicht wahr, Würfelheld?"':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        'Leg den Würfel weg.':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"Hey! Das hat es nicht gesagt!"'

    menu:
        '"Und ob! Gerade eben hat er das gesagt!"':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        'Leg den Würfel weg.':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"W --?! Gib mir das Ding!"'

    menu:
        '"Nein, das ist meiner. Er will sowieso nur bei mir sein. Nicht wahr, Würfelheld? Genau!"':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        'Leg den Würfel weg.':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"Ich. Will. Es. Nur. Mal. Kurz. In. Der. Hand. Halten."'

    menu:
        '"Aber du hast doch gar keine Hände."':
            # a494 # r22859
            jump morte_s225

        'Leg den Würfel weg.':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr '"Dann halt„ ich es eben mit meinen ZÄHNEN."'

    menu:
        '"Nein, ich denke, ich steck ihn erst einmal ein."':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"Ich werde diesen Modronwürfel in Stücke schlagen."~ [MRT251]'

    menu:
        '"Hast du was gehört, Würfelheld? Nein, ich auch nicht!"':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"Oooooh!" Morte beißt seine Zähne zusammen, als Craddock vor Wut zu kochen anfängt… Man kann förmlich sehen, wie sich seine Gehirnwindungen verbiegen.~ [MRT387]'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"Weißt du, Meister, ich konnte seine… ständigen… Pausen… eh nicht mehr ertragen. Jedenfalls… es ist… gut, daß er… jetzt… den Rand hält."'

    menu:
        '"Sehr lustig, Morte. Gehen wir."':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"Meister, wozu brauchen wir einen unerschöpflichen Vorrat an Wasser? Wo brennt„s denn, hm?"'

    menu:
        '"Es könnte später von Nutzen sein, Morte. Gehen wir."':
            # a499 # r24177
            jump morte_dispose

        '"Das ist schon in Ordnung so, Morte."':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"Schon in Ordnung? Falls du es schon vergessen hast, Meister, bist du selbst mit einer Aufgabe beschäftigt! Aber du hast ja letztendlich das Sagen hier. Puhh…"'

    menu:
        '"Danke, daß du mir da zustimmst, Morte. Gehen wir."':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"He… geht„s dir gut? Ich dachte wirklich, du seist ein Totenbüchler."'

    menu:
        '"W…? Wer bist du?"':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"Ich bin sicher, daß du jede Menge schlaue Sprüche auf Lager hast, Morte, aber du hältst jetzt den Mund und kommst AUF DER STELLE mit."':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"Äh… wer ich bin? Wie wär„s, wenn *du* dich zuerst vorstellst? Wer bist du?"'

    menu:
        '"Ich… weiß nicht. Ich kann mich nicht erinnern."':
            # a504 # r24907
            jump morte_s233

        '"Ich hab„ *dich* zuerst gefragt, Totenschädel."':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"Du kannst dich nicht an deinen *Namen* erinnern? Heh. Also, wenn du das nächste Mal in der Stadt einen draufmachst, dann trink nicht so viel Fusel. Ich bin Morte. Ich bin auch hier gefangen."'

    menu:
        '"Gefangen?"':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"Ja, und ich hab„ dich als *Zweiter* gefragt. Wie heißt du?"'

    menu:
        '"Ich… weiß nicht. Ich kann mich nicht erinnern."':
            # a507 # r24912
            jump morte_s233

        '"Du zuerst, Schädel. Ich frag dich zum letzten Mal."':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"Tchhhh… du bist sturer als ein Esel. Also gut, dann spiel *ich* mal den Höflichen hier. Ich heiße Morte. Wer bist du?"'

    menu:
        '"Ich… weiß nicht. Ich kann mich nicht erinnern."':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"Ja, da du dir noch nicht die Beine vertreten konntest, sag ich dir, was los ist: Ich hab„s schon an jeder Tür probiert. Dieser Raum ist fester verschlossen als ein Keuschheitsgürtel."'

    menu:
        '"Und… wo sind wir hier eingesperrt? Was ist dies für ein Ort?"':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"Man nennt diesen Ort die „Leichenhalle“… Es ist ein großer schwarzer Bau mit dem architektonischen Charme einer schwangeren Spinne."'

    menu:
        '"„Die Leichenhalle“? Was… bin ich tot?"':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"Soweit ich weiß nicht. Du hast aber ganz schön viele Narben, du… sieht aus, als ob dich irgendein Dussel mit einem Messer verziert hat. Ein Grund mehr, diesem Ort eins zu grinsen, bevor derjenige, der dich so zugerichtet hat, wiederkommt, um sein Kunstwerk zu vollenden."'

    menu:
        '"Wie kommen wir hier wieder raus?"':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"Nun, alle Türen sind verriegelt. Wir brauchen also den Schlüssel. Die Chancen stehen nicht schlecht, daß einer dieser wandelnden Leichen in diesem Raum ihn hat."'

    menu:
        '"Wandelnde Leichen?"':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"Ja, die Leichenhallenwärter setzen die toten Körper als billige Arbeitskräfte ein. Die Leichen sind stumm wie Steine, aber völlig harmlos, und würden einen erst angreifen, wenn man ihnen zuerst auf die Pelle rückt."'

    menu:
        '"Gib„s keinen anderen Weg? Ich will sie nicht für einen Schlüssel umbringen."':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"Ich soll also eine dieser Leichen überwältigen und nach dem Schlüssel durchsuchen?"':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"Was, du glaubst, das verletzt ihre Gefühle? Sie sind TOT. Aber von der positiven Seite gesehen: Wenn du sie umbringst, haben sie wenigstens ein Weilchen Ruhe, bevor ihre Wärter sie wieder zum Arbeiten aufpäppeln."'

    menu:
        '"Nun, also gut… Ich mach eine von ihnen platt und hol den Schlüssel."':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"Nun, bewaffne dich lieber erst, bevor du das tust. Ich glaub, in einem der Regale hier liegt ein Skalpell."  ^NHINWEIS: Such in den Regalen dieses Raums nach einer Waffe, mit der du die Zombies angreifen kannst.^-'

    menu:
        '"In Ordnung. Ich such mir eine aus."':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"Eine letzte Sache: Diese Leichen sind langsam wie Schnecken, aber von einem von ihnen geschlagen zu werden fühlt sich an, wie von einem Rammbock geküsst zu werden. Wenn sie beginnen, Oberhand über dich zu gewinnen, solltest du daran denken, dass du RENNEN kannst, sie aber nicht. Nutze diesen, um Abstand zu halten, wenn du dich erholen musst."  ^NHINWEIS: <RUNAWAY> Falls Gefahr besteht, dass du stirbst, solltest du rennen, um Abstand zu den Zombies zu halten, während du dich erholst.^-'

    menu:
        '"OK. Danke für den Tip."':
            # a518 # r24932
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"Eine Art sprechendes Lexikon, Meister. Ich mag wirklich nicht darüber sprechen."'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"Aber du bist KEIN Mimir, Morte…"' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr 'Morte wackelt mit seinen Augenbrauen und fängt an, der Frau entgegenzuschweben. "Das ist noch nicht alles, was ich -"'

    menu:
        '"Das reicht, Morte."':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"Ja, ja. Gut." Morte verdreht die Augen und fängt an zu murmeln. "Psst, ich schweige wie ein *Grab*…"'

    menu:
        '"Sag mal,… was hast du mit „von alleine“ gemeint? Tun sie das sonst nicht?"' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"Ich hätte da ein paar Fragen an diese Frau…"':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        'Laß die Frau in Ruhe.':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr 'Morte unterbricht sie: "Nun, weißt du, Meister, es gibt Unterschiede in der *Qualität* eines Mimir. Manche - wie ich - besitzen eben eine einnehmendere Persönlichkeit als andere. Sind eben… äh… „selbstbewußter“. Das ist das richtige Wort."'

    menu:
        '"Hmm."':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"Ich verstehe."':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"Hey! Ich will hier doch nur ein bißchen Spaß haben, Meister!"'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"Nur ein Tip, Meister: Ich würd„s jetzt ruhig angehen lassen. Es müssen ja nicht mehr Tote ins Totenbuch geschrieben werden als nötig… vor allem keine Frauen. Wenn sie getötet werden, könnte das außerdem die Verwalter anlocken."'

    menu:
        '"Ich glaube nicht, daß du„s schon mal gesagt hast… *Wer* sind diese Verwalter?"':
            # a526 # r27303
            jump morte_s250

        '"Die Leichen hier… Wo kommen die alle her?"':
            # a527 # r27304
            jump morte_s252

        '"Warum machst du dir um die weiblichen Leichen Gedanken?"':
            # a528 # r27305
            jump morte_s253

        '"In Ordnung… Ich… versuch, dran zu denken."':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"Sie nennen sich selbst die „Staubmenschen“. Sie sind gar nicht zu übersehen: Sie stehen auf Schwarz und totenstarre Gesichter. Sie sind eine reudige Bande ghulischer Todesanbeter, die glauben, daß jeder sterben sollte… je früher desto besser."'

    menu:
        '"Das versteh ich nicht… Was können diese Staubmenschen dagegen haben, wenn ich mich hier aus dem Staub mache?"':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"Hast du nicht zugehört?! Ich sagte, daß die Staubies glauben, daß JEDER sterben muß, je früher desto besser. Glaubst du, daß die Leichen, die du gesehen hast, sich im Totenbuch besser fühlen als außerhalb des Buchs?"'

    menu:
        '"Die Leichen hier… Wo kommen die alle her?"':
            # a531 # r27308
            jump morte_s252

        '"Vorhin hast du gesagt, daß ich aufpassen soll, keine *weiblichen* Leichen zu töten. Warum?"':
            # a532 # r27309
            jump morte_s253

        '"In Ordnung… Ich… versuch, dran zu denken."':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"Der Tod sucht die Ebenen jeden Tag heim, Meister. Diese Tölpel sind alles, was von den armen Schweinen übriggeblieben ist, die ihre Körper nach dem Tod an die Verwalter verkauft haben."'

    menu:
        '"Klär mich mal auf… *Wer* sind diese Verwalter?"':
            # a534 # r27311
            jump morte_s250

        '"Vorhin hast du gesagt, daß ich aufpassen soll, keine *weiblichen* Leichen zu töten. Warum?"':
            # a535 # r27312
            jump morte_s253

        '"In Ordnung… Ich… versuch, dran zu denken."':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"Wa… im *Ernst*? Hör zu, Meister, diese toten Dinger sind die letzte Chance für ein paar hartgesottene Typen wie uns. Wir müssen *nett* sein… und nicht wegen ein paar Schlüsseln Kleinholz aus ihnen machen, ihnen die Gliedmaßen abhacken oder etwas Ähnliches tun."'

    menu:
        '"Letzte Chance? Wovon… wovon *redest* du?"':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"Meister, SIE sind tot, WIR sind tot… verstehst du, worauf ich hinaus will? Nun?"'

    menu:
        '"Nein… nein, eigentlich nicht."':
            # a538 # r27315
            jump morte_s255

        '"Das kann nicht dein Ernst sein."' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"Meister, wir haben bereits etwas mit diesen hinkenden Damen gemein. Wir sind *alle* mindestens einmal gestorben: da haben wir doch schon Gesprächsstoff. Sie schätzen Männer mit dieser Art von Erfahrung."'

    menu:
        '"Aber… Moment… hast du nicht vorhin gesagt, daß ich *nicht* tot bin?"':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"Nun… okay, *du* bist vielleicht nicht tot, aber *ich* bin„s. Und von mir aus hätte ich nichts dagegen, einen Sarg mit einem dieser sehnigen Kadaver hier zu teilen." Morte fängt an, in freudiger Erwartung mit den Zähnen zu klappern. "Natürlich müßten die Verwalter sich erst von ihnen trennen, und das ist ziemlich unwahrscheinlich…"'

    menu:
        '"Wer sind diese Verwalter noch gleich?"':
            # a541 # r27318
            jump morte_s250

        '"Aber wo kommen all diese Leichen her?"':
            # a542 # r27319
            jump morte_s252

        '"In Ordnung… Ich versuch, dran zu denken."':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"Sieh mal, Meister. Du bist immer noch etwas verwirrt nach deinem Kuss mit dem Tod. Also gebe ich dir zwei kleine Ratschläge: Erstens, wenn du Fragen hast, *fragst* du mich, in Ordnung?"  ^NHINWEIS: <SPEAKTO>^-'

    menu:
        '"In Ordnung… Wenn ich Fragen hab„, wende ich mich an dich."':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"Zweitens, wenn du nur *halb* so vergeßlich bist, wie du scheinst, mußt du dir eben alles notieren. Damit du„s nicht vergißt."'

    menu:
        '"Zum Beispiel in ein Journal?"':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"Ja, wie ein Tagebuch. Falls du wichtige Dinge wie deinen gegenwärtigen Aufenthaltsort nicht mehr genau weißt, blättere darin und frische deine Erinnerung auf. Verstanden?"  ^NHINWEIS: Um auf das Tagebuch zuzugreifen, wählst du die Tagebuch-Taste im Schnellmenü. Dein Tagebuch wird während des Spiels automatisch aktualisiert.^-'

    menu:
        '"OK… Ich hab„s kapiert. Gehen wir."':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"Auf einem der Regale müßte ein Skalpell rumliegen. Hol dir das, bevor du mit einer der Leichen hier die Klingen kreuzt."'

    menu:
        '"OK… Ich such weiter."':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"Prima, du hast das Skalpell gefunden! Und jetzt schnapp dir diese Leichen… und keine Bange, ich bleibe im Hintergrund und gebe dir taktische Ratschläge."'

    menu:
        '"Vielleicht könntest du mir *helfen,* Morte."':
            # a548 # r27325
            jump morte_s262

        '"Also gut."':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"Ich WERDE dir helfen. Guten Rat bekommt man nicht leicht."'

    menu:
        '"Ich meinte beim Angriff auf die *Leiche* helfen."':
            # a550 # r27327
            jump morte_s263

        '"Nun gut."':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"Ich? Ich bin ein Romantiker und kein Soldat. Ich würde dir nur im Weg stehen."'

    menu:
        '"Wenn ich die Leiche angreife, dann stehst du mir besser nicht im Weg rum, oder du bist der Nächste, dem ich dieses Skalpell reinjage."':
            # a552 # r27329
            jump morte_s264

        '"Nun gut."':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"Äh… okay. Ich helfe dir."  ^NHINWEIS: Wenn Morte mit dir kämpfen soll, müßt ihr beide angewählt sein, wenn du die Leiche angreifst. Morte greift dann mit an.^-'

    menu:
        '"Freut mich, daß wir uns verstehen. Und jetzt an die Arbeit."':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"Prima, du hast wohl die richtige Leiche kaltgemacht. Jetzt mußt du nur noch den Schlüssel finden. Er müßte irgendwo an der Leiche sein. Sobald wir ihn haben, hauen wir ab."'

    menu:
        '"In Ordnung."':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"Prima, das ist der Schlüssel. Er muß in eine der Türen im Raum passen."'

    menu:
        '"Ich probier dann mal sämtliche Türen."':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr 'Morte zischt dir ins Ohr: "Anwalt."'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"Eine Art sprechendes Lexikon, Meister. Ich mag wirklich nicht darüber sprechen."'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"Aber du bist KEIN Mimir, Morte…"' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr 'Morte wackelt mit seinen Augenbrauen und fängt an, der Frau entgegenzuschweben. "Das ist noch nicht alles, was ich -"'

    menu:
        '"Das reicht, Morte."':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"Ja, ja. Gut." Morte verdreht die Augen und fängt an zu murmeln. "Psst, ich schweige wie ein *Grab*…"'

    menu:
        '"Sag mal,… was hast du mit „von alleine“ gemeint? Tun sie das sonst nicht?"' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"Ich hätte da ein paar Fragen an diese Frau…"':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        'Laß die Frau in Ruhe.':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr 'Morte unterbricht sie: "Nun, weißt du, Meister, es gibt Unterschiede in der *Qualität* eines Mimir. Manche - wie ich - besitzen eben eine einnehmendere Persönlichkeit als andere. Sind eben… äh… „selbstbewußter“. Das ist das richtige Wort."'

    menu:
        '"Hmm."':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"Ich verstehe."':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"Hey! Ich will hier doch nur ein bißchen Spaß haben, Meister!"'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr 'Morte nickt anerkennend. "He, der Bursche ist nicht schlecht!"'

    menu:
        '"Gut… Hier hast du dein Geld zurück, Malmaner."':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        'Wirf Malmaner die zehn Kupfermünzen hin.':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"Wirklich? Ich hab„ gar nichts gehört, Morte. Gehen wir."':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr 'Morte nickt anerkennend. "He, der Bursche ist nicht schlecht!"'

    menu:
        '"Gut… hier hast du dein Geld zurück, Malmaner."' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        'Wirf Malmaner die dreißig Kupfermünzen hin.' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"Gut… hier hast du dein Geld zurück, Malmaner."' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        'Wirf Malmaner die fünfzig Kupfermünzen hin.' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"Gut… hier hast du dein Geld zurück, Malmaner."' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        'Wirf Malmaner die fünfzig Kupfermünzen hin.' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"Gut… hier hast du dein Geld zurück, Malmaner."' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        'Wirf Malmaner die achtzig Kupfermünzen hin.' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"Wirklich? Ich hab„ gar nichts gehört, Morte. Gehen wir."':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"Hört sich langweilig an."'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"Sie ist „ne Tanar-Ri… ein Sukkubus, Meister."'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"Schließ ab, du Scheusal!" Morte läßt seine Kiefer zusammenschnappen. "Ich bin völlig DAFÜR, daß der Sukkubus mitkommt… die Mächte wissen, daß *du* ungefähr so witzig bist, als ob man sich einen Reißnagel durch den Darm schieben würde."'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"He, warte! *Ich* bin hier derjenige, der sich mit den Ebenen auskennt! Das ist mein Job, Meister!"'

    menu:
        '"Ich finde, daß es eine ziemlich gute Idee ist, zwei Leute in der Gruppe zu haben, die sich mit den Ebenen auskennen. Außerdem hab„ ich auch “angenehm„ gesagt, Morte."':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"Angenehm fürs Auge vielleicht! Es scheint MIR fast so, als ob ein Mädel nur„n bißchen Haut zeigen muß, um dich um den Finger zu wickeln!" Morte schweigt. "Nicht, daß ich was dagegen hätte. Ich wollt“ es nur mal gesagt haben."'

    menu:
        '"Okay Morte, ich hab„s zur Kenntnis genommen. Liebe Grace… verzeih mir, wenn ich ein bißchen zu direkt bin, aber hättest du Lust, mit uns zu reisen?"':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"Was mein vernarbter Gefährte meinte, war, mit UNS… Ich bin übrigens Morte. Bitte vergib meinem Gefährten dafür, uns nicht vorgestellt zu haben… ich halte es für eine AUSGEZEICHNETE Idee, wenn due mitkämst. Wir haben jede Menge Platz für einen Sukkubus. VIEL Platz."'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Danke, Meister! Ich kann dir gar nicht sagen, wie froh ich bin, wieder bei dir zu sein." Seine Stimme trieft vor Sarkasmus. "Und ich hab„ hier sogar noch “n neuen Trick gelernt."'

    menu:
        '"Ich bin auch froh, dich wiederzuhaben."':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"Sorry, mein Freund. Ich wollte ihn nur bewußt irreführen."' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"Sorry, mein Freund, ich wollte ihn nur bewußt irreführen."' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"Wirklich? Das ist nett von dir, Meister. Ich will dir noch mal verzeihen. Aber tu„s ja nicht wieder."'

    menu:
        '"Okay, Morte. Laß uns gehen."':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"Irgendwie glaub„ ich dir das nicht. Aber Schwamm drüber! Laß uns gehen!"'

    menu:
        '"Schön."':
            # a582 # r28747
            jump morte_dispose

        '"Morte, ich habe ihn bewußt irregeführt. Glaub„s mir."':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"Danke, Meister. Laß uns von hier verschwinden!" Morte hält inne. "Oh, übrigens, Meister… diese Typen waren wirklich nicht auf den Kopf gefallen. Die haben mir was Verschärftes beigebracht."'

    menu:
        '"Laß uns gehen."':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"Äh… Meister? Du hast doch schon mal „ne Statue geseh“n, oder? Weißt du dann nicht, daß Statuen nicht sprechen können?"'

    menu:
        '"Du bist vielleicht ein Witzbold, Morte: Du bist ein schwebender, sprechender Totenkopf und streitest ab, daß Statuen leben können."' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"Ich bin mir da nicht so sicher, Morte. Ich berühr die Statue einfach mal…"':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        'Geh.':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"Nun… äh… hmm. Okay, okay, Meister."'

    menu:
        '"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"Siehste! Ich berühr die Statue einfach mal…"':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        'Geh.':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"Vielleicht ist sie anatomisch ein bißchen zu korrekt, Meister?"'

    menu:
        '"War nur „ne rhetorische Frage, Morte."':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"Klar, Meister. Wußte ich doch."'

    menu:
        '"Ich habe einen Magier namens Salabesh getroffen, der mir von einem Steinmann erzählte, der hier sein sollte. Bist du das?"' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        'Schlage die Statue.':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        'Geh.':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr 'Morte rollt mit den Augen und gibt Geräusche von sich, als ob er erstickt. "Bei allen Mächten! Bitte nicht schon wieder so ein Dussel, der… so… spricht!"'

    menu:
        '"Ich will dich was über dich fragen"…':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"Ich will was über diesen Ort wissen."':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"Was weißt du von Ravel Rätselschön?"' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"Darauf komm ich später noch mal zurück. Leb wohl."':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"He, Meister. Er hat seine Finger gekreuzt! Er lügt!"'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr 'Morte meldet sich flüsternd zu Wort. "Er sagt, er ist Anwalt. Ein Berater in rechtlichen Angelegenheiten. Einer von diesen Dusseln, die vor Gericht labern."'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr 'Morte dreht sich um und schaut hinter sich. "Wo?! Wo?!"'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr 'Morte schnappt nach Luft. "Da, hinter dir! Da ist noch ein schwebender Schädel!"'

    menu:
        'Guck dich nach dem Schädel um.' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        'Laß Morte seinen Spaß.' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"Genug, Morte. Ich will ihn was fragen…"' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"Da, wo ich hinzeige! Da!"'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr 'Morte spricht in gespielter Verzweiflung: "Du hast sie gerade verpaßt! Eine ganze *Parade* von ihnen! So was wird wahrscheinlich in einer Million Umdrehungen des Großen Rings nicht wieder vorkommen!"'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr 'Morte wippt leicht, als ob er die Schultern zucken würde. "Ich würde es lieber als tiefe Einsichten in das Wesen des Menschen bezeichnen."'

    menu:
        '"Ich hätte ein paar Fragen…"' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        'Erreg wieder die Aufmerksamkeit des Mannes.' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"Weißt du, Meister, das IST VIELLEICHT GERADE VERRÜCKT GENUG, UM ZU FUNKTIONIEREN!"'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"Bei den Klingenbrüsten der Dame, was…"  Plötzlich wird alles still, als deine letzten Sinne flackern und zu Nichts ersterben. ~ [MRT387]'

    menu:
        'Stirb einen grausamen Tod. Du bist ein Opfer von Gangroighydrons Schrecklichem Fluch geworden.':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"So ein Quatsch! Wir werden uns diesen Schwätzer doch nicht wirklich *anhören*, oder? Los… laß uns ein paar Sinnsaten-Mädels besuchen, die noch nie das Vergnügen hatten, die feurigen Lippen eines Totenschädels zu küssen." Er wackelt vor Freude mit den Augenbrauen.'

    menu:
        '"Sei ruhig, Morte. Wir bleiben… zumindest noch ein bißchen."':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"Du hast recht, Morte. Laß uns von hier verschwinden."':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr 'Morte flüstert: "Der Anfang von noch mehr Leid."'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"Morte, sei ruhig."':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr 'Morte flüstert: "Da kannst du Gift drauf nehmen."'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"Morte, sei ruhig."':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a615 # r32379
            jump morte_s303

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr 'Morte flüstert: "Und euch ewig langweilen."'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"Bitte, Morte, sei ruhig."':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr 'Morte flüstert: "Dann weiß ich schon, wo wir beide mal hinkommen."'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"Morte: Hör auf zu reden."':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr 'Morte flüstert: "Wenn man Glück hat."'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"Das reicht, Morte."':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr 'Morte flüstert: "Und das soll so toll sein? Daß wir das alles *noch mal* durchmachen? He, ich kann„s kaum abwarten, wieder ein schwebender Schädel zu werden. Was für ein Dummkopf. Klingt wie einer, der noch nie gestorben ist, ne?"'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"Morte, halt„ endlich deinen Mund."':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr 'Morte flüstert: "Mann, was für ein Blödsinn."'

    menu:
        'Nicke Morte zu, ohne etwas zu sagen.':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"Morte, sei ruhig."':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"Du hast recht. Laß uns von hier verschwinden, Morte."':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr 'Morte sagt laut: "Was für ein Geschwätz!"'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr 'Morte duckt sich aus dem Blickfeld des Dozenten, dreht sich zu dir um und flüstert: "Los, Meister. Erzähl das Dunkel darüber."'

    menu:
        '"Ja, ich habe eine Frage…"':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"Wir haben keine Fragen. Mein Freund hat mit sich selbst geredet."':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"Toll! Noch mal sterben! Ich bin dabei" Das Publikum lacht. Der Sprecher sieht verärgert aus.'

    menu:
        '"Was passiert, wenn sie sterben?"':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"Ich hätte noch eine andere Frage…"':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"Das ist alles, was ich wissen wollte."':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"Soll ich diesem übergeschnappten jungen Ding eins über die Rübe ziehen, Meister?"'

    menu:
        '"Sei erbarmungslos, Morte."':
            # a642 # r32661
            jump morte_s316

        '"Nein, Morte… ich übernehm die Sache."':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"Mir gefällt deine benebelte Vorgehensweise, Meister."'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr 'Als du vor der Frau niederkniest, schreit Morte: "Meister! Das kann ja wohl nicht wahr sein! Außer du *stehst* auf so was…"'

    menu:
        'Ignoriere Morte und lecke am Stiefel der Frau.':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"Ich will nur keinen Ärger, Morte. Wenn ich nicht aufpasse, kommen noch die Wachen."':
            # a645 # r32664
            jump morte_s313

        '"Du hast recht, Morte. Laß uns gehen."':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"Naja, da muß ich dir recht geben… aber trotzdem…"'

    menu:
        '"Vergiß es, Morte. Meine liebe Frau… laß uns hiermit Schluß machen, bevor ich selbst die Wachen rufe."':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"Du hast recht, Morte. Laß uns einfach gehen."':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr 'Morte kichert und klappert mit den Zähnen. "Du bist ein richtiger Charmeur, was?"'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"Äh… oh…"'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr 'Morte zwinkert dir zu und ruft der Frau zu: "He, du! Ja du, du freches kleines Flittchen… guck mich an, wenn ich mit dir rede! Wieso sind wir denn so verbiestert, hmm?"'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"Oh, ist die kleine Wüstenprinzessin vielleicht traurig, weil der Sultan lieber einen Sohn wollte? Sag mir, „Wüstenprinzessin“: Bist du jede Nacht betrunken und streitlustig? Und wirst du immer von einer Schar lüsternder Speichellecker verfolgt? Und versuchst du auf jämmerliche Weise, deine Existenz vor deinem Vater zu rechtfertigen, der dich nicht haben wollte?"'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"Glaubst du wirklich, daß du dich durch deine lächerlichen Schlägereien besser fühlen wirst? *Wertvoller*? IRRTUM, MEINE LIEBE! Wenn das deine armselige Art ist, besser damit klarzukommen, wer du *bist*, schlage ich vor, du gibst gleich auf, gehst nach Hause und heiratest in den Harem von irgendeinem Höfling ein!"'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr 'Morte wendet sich an dich. "Siehst du, Meister, ich *weiß*, was hier abgeht. Wir *alle* wissen, daß Morte genau ins Schwarze getroffen hat. Aber oh nein, die stolze kleine Wüstenprinzessin, öffentlich zurechtgestutzt, ernied…"'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"Über den Blutkrieg? Das ist ja noch langweiliger, als einem Herrschner zuzuhören, der Gesetze runterlabert. Laß uns ein paar junge Sinnsaten finden, die noch in die Doktrin der Leidenschaft eingeweiht werden müssen!" Er wackelt vor Freude mit den Augenbrauen.'

    menu:
        '"Nein, Morte… ich will mir das anhören."':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"Na gut, Morte. Laß uns gehen."':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr 'Morte verdreht die Augen und schreit: "Oh! Da! Ein sprechender Scheißhaufen!"'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr 'Morte hoppelt in deine Richtung und sagt zu dem Mann: "Ich meinte diesen großen narbenübersäten Dussel hier, Vollblut… nicht dich! Friede Freude Eierkuchen, ja?"'

    menu:
        '"Paß auf, Morte…"':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        'Ignoriere Morte.':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr 'Morte verdreht die Augen und schreit: "Oh! Da! Ein sprechender Scheißhaufen!"'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr 'Morte hoppelt in deine Richtung und sagt zu dem Mann: "Ich meinte diesen großen narbenübersäten Dussel hier, Vollblut… nicht dich! Friede Freude Eierkuchen, ja?"'

    menu:
        '"Paß auf, Morte…"':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        'Ignoriere Morte.':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Ich wusste, du würdest zurückkommen, Meister! Endlich eingesehen, dass du mich brauchst, was?"~ [MRT516]'

    menu:
        '"Ja… laß uns gehen."':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"Nein, Morte, im Moment brauche ich dich nicht."':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"Hmmm. Nun, ich werde hier nicht ewig warten. Also werde ich dir noch eine LETZTE Chance geben. Bist du sicher, daß du meine weisen Ratschläge und meinen scharfen Verstand nicht brauchst?"'

    menu:
        '"Morte, du hast WEDER das eine noch das andere."':
            # a658 # r33962
            jump morte_s327

        '"Na gut, ich hab„s mir anders überlegt. Komm, laß uns gehen."':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"Ja, Morte, im Moment brauche ich weder das eine noch das andere. Aber vielleicht später."':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"Willst du mich beleidigen, Meister? Habe ich was Falsches gesagt? Liegt es daran, daß ich keine Arme habe? Nun sag„s mir schon!"'

    menu:
        '"Na gut, ich hab„s mir anders überlegt. Komm, laß uns gehen."':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"Das hat überhaupt nichts damit zu tun. Ich brauche dich nur einfach im Moment nicht. Leb wohl, Morte."':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"Also, ich werde hier nicht EWIG warten. Solltest du„s dir noch noch anders überlegen, dann mußt du dich beeilen."'

    menu:
        '"Okay. Leb wohl, Morte."':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"Was hast du denn, Meister?"'

    menu:
        '"Kannst du mir noch einmal vorlesen, was auf meinen Rücken tätowiert ist?"':
            # a664 # r65539
            jump morte_s649

        '"Kannst du mir etwas über Sigil erzählen?"':
            # a665 # r65540
            jump morte_s659

        '"Morte… Es macht mir nichts aus, wenn du mich begleitest, aber kannst du vielleicht noch etwas *anderes* außer plappern?"' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"Morte… Was sind noch mal deine besonderen Talente?"' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"Morte, warum hast du mir die andere Zeile meiner Tätowierungen verschwiegen?"' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"Ich könnte einen Rat brauchen. Was glaubst du sollten wir jetzt tun?"':
            # a669 # r65544
            jump morte_s669

        '"Du hast gesagt, du seist ein Mimir, oder, Morte?"' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"Sag mir noch mal, wie du auf der Schädelsäule gelandet bist."' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"Morte, warum bist du mir gefolgt, nachdem ich von der Säule weggegangen bin?"' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"Was weißt du über den Blutkrieg?"' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"Was weißt du über die Nachthexe Ravel?"' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"Wie bist du gestorben, Morte?"':
            # a675 # r65550
            jump morte_s726

        '"Nichts, Morte. Ich wollte nur sehen, ob du mir noch folgst."':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a680 # r34996
            jump morte_s333

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a681 # r34999
            jump morte_s333

        '"Wie du willst, Morte. Laß uns gehen."':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a688 # r35028
            jump morte_s337

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a689 # r35031
            jump morte_s337

        '"Wie du willst, Morte. Laß uns gehen."':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a696 # r35060
            jump morte_s341

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a697 # r35063
            jump morte_s341

        '"Wie du willst, Morte. Laß uns gehen."':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a704 # r35092
            jump morte_s345

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a705 # r35095
            jump morte_s345

        '"Wie du willst, Morte. Laß uns gehen."':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a712 # r35124
            jump morte_s349

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a713 # r35127
            jump morte_s349

        '"Wie du willst, Morte. Laß uns gehen."':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a720 # r35156
            jump morte_s353

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a721 # r35159
            jump morte_s353

        '"Wie du willst, Morte. Laß uns gehen."':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a728 # r35188
            jump morte_s357

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a729 # r35191
            jump morte_s357

        '"Wie du willst, Morte. Laß uns gehen."':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a736 # r35220
            jump morte_s361

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a737 # r35223
            jump morte_s361

        '"Wie du willst, Morte. Laß uns gehen."':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a744 # r35252
            jump morte_s365

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a745 # r35255
            jump morte_s365

        '"Wie du willst, Morte. Laß uns gehen."':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"Psssst. Hast du gesehen, wie sie mich angeschaut hat? Hm? Siehst du? Wie ihre Augen der Rundung meines Hinterkopfes gefolgt sind?"'

    menu:
        '"Wovon *redest* du überhaupt?"':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"Du meinst diesen starren, hohläugigen Friedhofsblick?"':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"Wa… bist du BLIND?! Hast du nicht gesehen, wie sie mich begutachtet hat! Dieses VERLANGEN in ihrem Blick war geradezu unverschämt."'

    menu:
        '"Vielleicht wollte sie, daß du *abhaust*. Sie war offensichtlich zu sehr abgelenkt durch MICH, um sich um einen albernen Flummikopf mit einem großen Mundwerk zu kümmern."':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"Ich glaube, du halluzinierst. Sie ist ein Zombie. Eine Leiche. Eine Tote. Sie hat dich höchstwahrscheinlich gar nicht wahrgenommen."':
            # a752 # r35284
            jump morte_s369

        '"Ich glaube, du und deine Phantasie, ihr solltet mal eine Weile getrennte Wege gehen."':
            # a753 # r35287
            jump morte_s369

        '"Wie du willst, Morte. Laß uns gehen."':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"Du? Klar doch! Glaub mir, wenn so „ne Tussi mal das Zeitliche gesegnet hat, dann macht sie sich nicht mehr so viel aus “Äußerlichkeiten„ und Sprüchen wie “Schau mal, was ich für einen Body habe„ und “ich bin voller Narben und hart im Nehmen.„ Sie stehen auf Typen, die GEISTREICH sind. Und das bin ich, Meister. Du? Knochengerüste wie DEINES gibt es wie Sand am Meer."'

    menu:
        '"Wie du meinst, Morte. Gehen wir."':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"Na klar, wie Du meinst. Wenn du erstmal so lange tot bist wie ich, erkennst du die Zeichen. Sie mögen vielleicht zu SUBTIL für Leute wie dich sein, aber während ich MEINE Nächte mit so„n paar süßen, gerade erst gestorbenen jungen Mädels verbringe, stehst du draußen und machst nur “Hä?„ “Was issn los?„ “Wo sind meine Er-Er-Erinnerungen?„"'

    menu:
        '"Wie du willst, Morte. Laß uns gehen."':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"Hmmmm. Ob dieser Graubart wohl etwas dagegen hat, wenn *ich* mir dieses Knochengerüst mal ausborge…"'

    menu:
        '"Graubart?"':
            # a757 # r35311
            jump morte_s371

        '"Ich glaube kaum, daß er in seiner Lage etwas dagegen haben wird."':
            # a758 # r35326
            jump morte_s372

        '"Ich werd das Gefühl nicht los, daß du doppelt so nervig wärst, wenn du Arme hättest. Laß uns gehen."':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"Graubart… du weißt schon, Opa, alter Knacker, grauer Köter… Alter."'

    menu:
        '"Also ich glaube kaum, daß er in seiner Lage etwas dagegen einzuwenden hat. Warum solltest du seinen Körper also nicht nehmen?"':
            # a760 # r35313
            jump morte_s372

        '"Irgendwie habe ich den Eindruck, daß du doppelt so nervig wärst, wenn du Arme hättest. Gehen wir."':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr 'Morte guckt sich das Skelett genau an und schüttelt dann den Kopf. "Nee… Ich bräuchte schon ein frischeres als dies hier. Und eins mit ein bißchen mehr Würde… das hier ist ja ganz klapprig und kaputt."'

    menu:
        '"Und du etwa nicht?"':
            # a762 # r35315
            jump morte_s373

        '"Also gut, gehen wir."':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"Oh Mann, ich lach mich tot." Morte starrt dich wütend an. "Und überhaupt, das mußt DU sagen, Dussel. Selbst die Spiegel flehen um Gnade, wenn du in der Nähe bist."'

    menu:
        '"Ach ja? Zumindest habe *ich* noch alle meine Teile beisammen."':
            # a764 # r35317
            jump morte_s374

        '"Laß uns gehen."':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr 'Morte schnaubt verächtlich. Da fragst du dich, wie er das macht, so ohne Lungen.'

    menu:
        '"Eines kann ich dir sagen, Morte, es gibt nichts Besseres als so herumzulaufen, mit den Armen zu schlenkern und die frische Luft in den Lungen zu spüren. Es ist WUNDERBAR, einen Körper zu haben."':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"Laß uns gehen."':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"Also wirklich, daß ich dir geholfen habe, dem Vorbereitungsraum zu entkommen, habe ich schon längst bereut." Morte schnaubt noch einmal verächtlich. "Ich hätte dich verrotten lassen sollen… noch ein bißchen mehr, meine ich."'

    menu:
        '"Schön, daß du so empfindest. Gehen wir."':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"Mann oh Mann, Meister. Das ist Vandalismus. Diese Bolzen hier sind wohl das einzige, was dieses Knochengerüst noch zusammenhält. Selbst die Nekromantie hat ihre Grenzen, findest du nicht?"'

    menu:
        '"Und?"':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"Oh… ich wollte wirklich keinen bleibenden Schaden anrichten."':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"Ist gut, macht nichts. Vielleicht ein andermal."':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"Oh, macht nichts." Morte macht eine seltsam ruckartige Bewegung, und du denkst es könnte ein Schulterzucken sein. "Ich war mir nur nicht ganz sicher, ob du das weißt oder nicht. Aber klar doch, versuchs."'

    menu:
        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"Hmmmm. Ob dieser Graubart wohl was dagegen hat, daß *ich* mir sein Knochengerüst ausleihe…"'

    menu:
        '"Graubart?"':
            # a777 # r35388
            jump morte_s379

        '"Ich glaube kaum, daß er in seiner Lage etwas dagegen haben wird."':
            # a778 # r35403
            jump morte_s380

        '"Ich werd das Gefühl nicht los, daß du doppelt so nervig wärst, wenn du Arme hättest. Laß uns gehen."':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"Graubart… verstehst du, ein Opa, ein alter Knacker… ein Tattergreis."'

    menu:
        '"Also ich glaube kaum, daß er in seiner Lage etwas dagegen einzuwenden hat. Warum solltest du seinen Körper also nicht nehmen?"':
            # a780 # r35390
            jump morte_s380

        '"Irgendwie habe ich den Eindruck, daß du doppelt so nervig wärst, wenn du Arme hättest. Gehen wir."':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr 'Morte mustert kurz das Skelett, dann schüttelt er den Kopf. "Na ja… er sollte schon etwas frischer sein. Und vielleicht auch etwas würdevoller… der hier ist ja völlig kaputt und klapperig."'

    menu:
        '"Und du etwa nicht?"':
            # a782 # r35392
            jump morte_s381

        '"Also gut, gehen wir."':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"Ach, sehr witzig." Morte starrt dich an. "Und gerade DU MUSST so was sagen, Dussel. Du bist so häßlich, da laufen sogar die Spiegel an."'

    menu:
        '"Ach ja? Zumindest habe *ich* noch alle meine Teile beisammen."':
            # a784 # r35394
            jump morte_s382

        '"Laß uns gehen."':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr 'Morte schnaubt. Wie er das macht, so ganz ohne Lungen, ist dir ein ziemliches Rätsel.'

    menu:
        '"Eines kann ich dir sagen, Morte, es gibt nichts Besseres als so herumzulaufen, mit den Armen zu schlenkern und die frische Luft in den Lungen zu spüren. Es ist WUNDERBAR, einen Körper zu haben."':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"Laß uns gehen."':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"Meine Beihilfe zu deiner Flucht aus dem Vorbereitungsraum steht sowieso schon ganz oben auf der Liste meiner persönlichen Irrtümer." Morte schnaubt erneut. "Ich hätte dich verrotten lassen sollen… noch mehr, als du es bereits bist, versteht sich."'

    menu:
        '"Schön, daß du so empfindest. Gehen wir."':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"Mann oh Mann, Meister. Das ist Vandalismus. Diese Bolzen hier sind wohl das einzige, was dieses Knochengerüst noch zusammenhält. Selbst die Nekromantie hat ihre Grenzen, findest du nicht?"'

    menu:
        '"Und?"':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"Oh… ich wollte wirklich keinen bleibenden Schaden anrichten."':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"Ist gut, macht nichts. Vielleicht ein andermal."':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"Oh, macht nichts." Morte macht eine seltsam ruckartige Bewegung, und du denkst es könnte ein Schulterzucken sein. "Ich war mir nur nicht ganz sicher, ob du das weißt oder nicht. Aber klar doch, versuchs."'

    menu:
        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"Hmmmm. Ob dieser Graubart wohl was dagegen hat, daß *ich* mir sein Knochengerüst ausleihe…"'

    menu:
        '"Graubart?"':
            # a797 # r35465
            jump morte_s387

        '"Ich glaube kaum, daß er in seiner Lage etwas dagegen haben wird."':
            # a798 # r35480
            jump morte_s388

        '"Ich werd das Gefühl nicht los, daß du doppelt so nervig wärst, wenn du Arme hättest. Laß uns gehen."':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"Graubart… verstehst du, ein Opa, ein alter Knacker… ein Tattergreis."'

    menu:
        '"Also ich glaube kaum, daß er in seiner Lage etwas dagegen einzuwenden hat. Warum solltest du seinen Körper also nicht nehmen?"':
            # a800 # r35467
            jump morte_s388

        '"Irgendwie habe ich den Eindruck, daß du doppelt so nervig wärst, wenn du Arme hättest. Gehen wir."':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr 'Morte mustert kurz das Skelett, dann schüttelt er den Kopf. "Na ja… er sollte schon etwas frischer sein. Und vielleicht auch etwas würdevoller… der hier ist ja völlig kaputt und klapperig."'

    menu:
        '"Und du etwa nicht?"':
            # a802 # r35469
            jump morte_s389

        '"Also gut, gehen wir."':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"Ach, sehr witzig." Morte starrt dich an. "Und gerade DU MUSST so was sagen, Dussel. Du bist so häßlich, da laufen sogar die Spiegel an."'

    menu:
        '"Ach ja? Zumindest habe *ich* noch alle meine Teile beisammen."':
            # a804 # r35471
            jump morte_s390

        '"Laß uns gehen."':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr 'Morte schnaubt. Wie er das macht, so ganz ohne Lungen, ist dir ein ziemliches Rätsel.'

    menu:
        '"Eines kann ich dir sagen, Morte, es gibt nichts Besseres als so herumzulaufen, mit den Armen zu schlenkern und die frische Luft in den Lungen zu spüren. Es ist WUNDERBAR, einen Körper zu haben."':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"Laß uns gehen."':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"Meine Beihilfe zu deiner Flucht aus dem Vorbereitungsraum steht sowieso schon ganz oben auf der Liste meiner persönlichen Irrtümer." Morte schnaubt erneut. "Ich hätte dich verrotten lassen sollen… noch mehr, als du es bereits bist, versteht sich."'

    menu:
        '"Schön, daß du so empfindest. Gehen wir."':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"Mann oh Mann, Meister. Das ist Vandalismus. Diese Bolzen hier sind wohl das einzige, was dieses Knochengerüst noch zusammenhält. Selbst die Nekromantie hat ihre Grenzen, findest du nicht?"'

    menu:
        '"Und?"':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"Oh… ich wollte wirklich keinen bleibenden Schaden anrichten."':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"Ist gut, macht nichts. Vielleicht ein andermal."':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"Oh, macht nichts." Morte macht eine seltsam ruckartige Bewegung, und du denkst es könnte ein Schulterzucken sein. "Ich war mir nur nicht ganz sicher, ob du das weißt oder nicht. Aber klar doch, versuchs."'

    menu:
        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"Hmmmm. Ob dieser Graubart wohl was dagegen hat, daß *ich* mir sein Knochengerüst ausleihe…"'

    menu:
        '"Graubart?"':
            # a817 # r35542
            jump morte_s395

        '"Ich glaube kaum, daß er in seiner Lage etwas dagegen haben wird."':
            # a818 # r35557
            jump morte_s396

        '"Ich werd das Gefühl nicht los, daß du doppelt so nervig wärst, wenn du Arme hättest. Laß uns gehen."':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"Graubart… verstehst du, ein Opa, ein alter Knacker… ein Tattergreis."'

    menu:
        '"Also ich glaube kaum, daß er in seiner Lage etwas dagegen einzuwenden hat. Warum solltest du seinen Körper also nicht nehmen?"':
            # a820 # r35544
            jump morte_s396

        '"Irgendwie habe ich den Eindruck, daß du doppelt so nervig wärst, wenn du Arme hättest. Gehen wir."':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr 'Morte mustert kurz das Skelett, dann schüttelt er den Kopf. "Na ja… er sollte schon etwas frischer sein. Und vielleicht auch etwas würdevoller… der hier ist ja völlig kaputt und klapperig."'

    menu:
        '"Und du etwa nicht?"':
            # a822 # r35546
            jump morte_s397

        '"Also gut, gehen wir."':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"Ach, sehr witzig." Morte starrt dich an. "Und gerade DU MUSST so was sagen, Dussel. Du bist so häßlich, da laufen sogar die Spiegel an."'

    menu:
        '"Ach ja? Zumindest habe *ich* noch alle meine Teile beisammen."':
            # a824 # r35548
            jump morte_s398

        '"Laß uns gehen."':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr 'Morte schnaubt. Wie er das macht, so ganz ohne Lungen, ist dir ein ziemliches Rätsel.'

    menu:
        '"Eines kann ich dir sagen, Morte, es gibt nichts Besseres als so herumzulaufen, mit den Armen zu schlenkern und die frische Luft in den Lungen zu spüren. Es ist WUNDERBAR, einen Körper zu haben."':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"Laß uns gehen."':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"Meine Beihilfe zu deiner Flucht aus dem Vorbereitungsraum steht sowieso schon ganz oben auf der Liste meiner persönlichen Irrtümer." Morte schnaubt erneut. "Ich hätte dich verrotten lassen sollen… noch mehr, als du es bereits bist, versteht sich."'

    menu:
        '"Schön, daß du so empfindest. Gehen wir."':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"Mann oh Mann, Meister. Das ist Vandalismus. Diese Bolzen hier sind wohl das einzige, was dieses Knochengerüst noch zusammenhält. Selbst die Nekromantie hat ihre Grenzen, findest du nicht?"'

    menu:
        '"Und?"':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"Oh… ich wollte wirklich keinen bleibenden Schaden anrichten."':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"Ist gut, macht nichts. Vielleicht ein andermal."':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"Oh, macht nichts." Morte macht eine seltsam ruckartige Bewegung, und du denkst es könnte ein Schulterzucken sein. "Ich war mir nur nicht ganz sicher, ob du das weißt oder nicht. Aber klar doch, versuchs."'

    menu:
        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        'Versuch dem Skelett die Gelenkbolzen herauszunehmen.' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        'Versuch, die Bolzen aus den Gelenken des Skeletts herauszuhebeln.' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        'Schon gut. Vielleicht ein andermal.' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"Ich liebe diese Kleine schon jetzt!"'

    menu:
        '"Kannst du wenigstens schreiben? Oder Pantomime?"':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"Igitt!!"'

    menu:
        '"Hä?"':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr 'Morte flüstert: "Das ist nicht gut, Meister. Paß auf, wo du hintrittst, oder die wischen dir dein Hirn einfach so aus dem Dasein… Die sind in größeren Gruppen mächtiger - jede einzelne ist dann Teil des Gruppenhirns. Die sind *tödlich*."'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr 'Morte flüstert: "Das ist nicht gut, Meister. Paß auf, wo du hintrittst, oder die wischen dir dein Hirn einfach so aus dem Dasein… Die sind in größeren Gruppen mächtiger - jede einzelne ist dann Teil des Gruppenhirns. Die sind *tödlich*."'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr 'Morte flüstert: "Ich weiß ja nicht, was die vorhaben, Meister, aber paß besser auf, was du so denkst. Die sind ein Gruppenhirn, und jede Ratte kommt noch zu diesem Gruppenhirn dazu, und die kämpfen wie - wenn du mir den Ausdruck mal verzeihst - in die Enge getriebene Ratten. Wir sind jetzt bei denen zu Hause, Meister, und die können nirgendwo hin. Mach jetzt nix Falsches."'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"Was für ein Zufall! Ich bin auch hinter hübschen Geschichten her."'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"Ich? Warum soll *ich* denn eine Geschichte erzählen?"'

    menu:
        '"Dann vergiß es."':
            # a839 # r39713
            jump morte_s409

        '"Erzähl einfach nur eine Geschichte, Morte."':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"Nein, nein, ich tu„s ja… Ich dachte bloß, ich beschwer mich ein bißchen, weil sich das so gehört. Außerdem liebe ich die Aufmerksamkeit."'

    menu:
        '"Nein, Morte - auf keinen Fall. Ich möchte sie nicht hören."':
            # a841 # r39715
            jump morte_s410

        '"Also gut… dann erzähl schon."':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"Bitte! Komm schon? Biiitte? Das is ne tolle Geschichte! Viele Personen, Action, retardierende Elemente und eine überraschende Auflösung!"'

    menu:
        '"So toll kann sie gar nicht sein."':
            # a843 # r39717
            jump morte_s411

        '"Was sind denn retardierende Elemente?"':
            # a844 # r39718
            jump morte_s412

        '"Also gut… dann erzähl."':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"Wirklich! Echt! *Komm* schon!"'

    menu:
        '"Warte… Was sind denn „retardierende Elemente“?"':
            # a846 # r39720
            jump morte_s412

        '"Also gut, erzähl."':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"Keine Ahnung! Aber es *klingt* jedenfalls beeindruckend!"'

    menu:
        '"Also gut, erzähl."':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"Na gut, na gut…"'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"Da saß einmal ein älterer Mann allein auf einem dunklen Pfad, OK? Er war sich nicht sicher, in welche Richtung er gehen sollte, und er hatte vergessen, wohin er reiste und wer er war. Er hatte sich „n Moment hingesetzt, um seine müden Beine auszuruhen, als er plötzlich aufblickte und eine ältere Frau vor sich sah. Sie grinste zahnlos und sprach mit einem Gackern: “Und jetzt zu deinem *dritten* Wunsch. Was wünschst du dir also?„"'

    menu:
        '"Erzähl weiter, Morte…"':
            # a849 # r39724
            jump morte_s415

        '"Warte… Ich hätte da eine Frage an Yves…"':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"Wir hören sie uns ein anderes Mal an, Morte. Leb wohl, Yves."':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„Dritter Wunsch?“ Der Mann war perplex. „Wie kann das denn ein dritter Wunsch sein, wenn ich noch keinen ersten und zweiten Wunsch hatte?“"'

    menu:
        '"Erzähl weiter, Morte…"':
            # a852 # r39727
            jump morte_s416

        '"Warte… Ich hätte da eine Frage an Yves…"':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"Wir hören sie uns ein anderes Mal an, Morte. Leb wohl, Yves."':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„Du hattest schon zwei Wünsche“, sagte die Hexe, „aber dein zweiter Wunsch war, daß alles wieder wie vor deinem ersten Wunsch sein sollte. Deshalb erinnerst du dich auch an nichts, weil alles wieder genauso ist wie vorher, bevor du deine Wünsche ausgesprochen hast.“ Sie gackerte den armen Dussel an. „Und deshalb hast du jetzt nur noch einen Wunsch übrig.“"'

    menu:
        '"Erzähl weiter, Morte…"':
            # a855 # r39752
            jump morte_s417

        '"Warte… Ich hätte da eine Frage an Yves…"':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"Wir hören sie uns ein anderes Mal an, Morte. Leb wohl, Yves."':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„Also gut“, sagte der Mann, "ich glaub das zwar nicht, aber es kann ja nicht schaden, wenn ich mir was wünsche. Ich möchte wissen, wer ich bin.„"  "“Putzig„, sagte die alte Frau, “Das war auch dein erster Wunsch gewesen.„ Sprach“s und verschwand für immer."'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"Was zum Teufel war das denn, du blödes Vieleck?! Das war ja die langweiligste Geschichte, die ich je gehört hab!"'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"Ausschmückungen?"'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"*Komm* schon, kleines Scheusal. Mach hier keine Geschichten, sondern erzähl lieber eine, ja?"'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr 'Morte wirbelt um dich herum und macht sich über die offensichtliche Bemerkung des Mädchens lustig. "Bei allen Heiligen, Meister… sie hat recht! Das hab ich ja noch nie bemerkt… Du bist ja voller *Narben*!"'

    menu:
        '"Das sind alles alte Narben. Mir geht„s gut."' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"Nur leicht verletzt. Ich bin schon in Ordnung."' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"Ja, das bin ich, und zwar schwer."' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"Kümmer dich nicht drum. Ich hätte da ein paar Fragen…"':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"Mach dir darum keine Sorgen. Leb wohl."':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr 'Morte wackelt mit den Augenbrauen. "Du bist allerdings zu „dreist“… Hat sicher was zu tun mit diesen schwingenden, hängenden Br-"'

    menu:
        '"Morte, das reicht."':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr 'Morte hält die Klappe.'

    menu:
        '"Das ist kein Problem, Nenny."' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"Sieh einfach zu, daß es nicht noch einmal passiert, Nenny."' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"Das ist kein Problem, Fräulein."' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"Sieh einfach zu, daß es nicht noch einmal passiert, Mädchen."' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"Hey!"'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr 'Morte murmelt vor sich hin. "Ich denke mal, es ist gut, daß *irgendwas* da drin is."'

    menu:
        '"Ich hätte da noch eine Frage, Nenny…"':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"Das ist alles, was ich wissen wollte, Nenny. Leb wohl."':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"Oooh, nein… Jetzt *mußt* du es uns erzählen."'

    menu:
        '"Ja… Bitte: Erzähl es mir."':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"Nun laß das schon, Morte. Ich hatte da noch eine Frage an ihn…"':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"Vergiß es, Morte. Gehen wir."':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr 'Morte schwebt dicht an dich heran und flüstert dir zu: "Ich hab ja Mitleid mit ihrem Liebhaber. Der hat keine Ahnung, wie schlecht er es hat. „N Mädel wie das hier bringt nichts als Ärger."'

    menu:
        '"Das klingt nicht sehr klug, Juliette. Sei doch einfach froh über das, was du hast."':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"Woran hast du denn gedacht, Juliette?"':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"Ich hätte da ein paar Fragen, Juliette…"':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"Das ist alles, was ich wissen wollte, Juliette. Leb wohl."':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr 'Morte flüstert leise: "Wow… unheimliche Braut."'

    menu:
        '"Ich entschuldige mich, meine Dame… Ich war nicht sicher, ob hier jemand drin ist."':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"Ich hätte da ein paar Fragen, meine Dame…"':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"Dann lebt wohl, meine Dame."':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"Komm schon, Meister! Wir sind in „nem Gebäude, das von einigen der aufregendsten Dinger auf dieser Seite des Multiversums wimmelt, und du hältst an, um mit *Modronen* zu sprechen?"'

    menu:
        '"Was kannst du mir über sie erzählen, Morte?"':
            # a880 # r40847
            jump morte_s430

        'Ignoriere Morte, grüße den Modron.':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"Entschuldige bitte, Morte, aber ich unterhalte mich gerade mit dem Modron."':
            # a882 # r40849
            jump morte_s431

        '"Also gut, gehen wir, Morte."':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr 'Morte macht ein Geräusch des absoluten Ekels. "Was kann man da schon sagen? Nervendes kleines Uhrwerk-Ungeziefer… die arbeiten ständig daran, dem Multiversum Gesetz und Ordnung aufzudrücken. Nicht *Gutes*, wie gesagt, sondern nur das *Gesetz*. Vergessen wir sie einfach und reißen ein paar Mädels auf, OK?"'

    menu:
        'Ignoriere Morte, grüße den Modron.':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"Entschuldige bitte, Morte, aber ich unterhalte mich gerade mit dem Modron."':
            # a885 # r40853
            jump morte_s431

        '"Also gut, gehen wir, Morte."':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr 'Morte seufzt laut. "Also gut, wie du willst - aber sag dann nicht, ich hätte dich nicht gewarnt. Du wirst allerdings wahrscheinlich nicht weit mit ihnen kommen, Meister… Das is ne ganz komische Sorte zum Unterhalten."'

    menu:
        '"Sei gegrüßt…"':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"Alles!" schreit Morte. "Tu alles, was du willst, mit mir!"'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"Das ist doch zum Heulen… Wo war diese Schnecke, als ich noch einen *Körper* hatte?!"'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"Mein Freund dachte, du seist attraktiv, aber *wow*! Da hat er sich ja wohl schrecklich geirrt!"'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"Klar, Meister, wie du willst. Was für ne Hexe, was?" Morte macht *hmph* und wackelt dann mit den Augenbrauen. "Ich *mag* das!"'

    menu:
        '"Ich bin sicher, daß du das tust, Morte, aber ich muß mit ihr sprechen."':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"Also gut… Gehen wir einfach, Morte."':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"Als ob ich meinen irgendwo hier in der Nähe sehen lassen würde, wenn ich einen hätte! Was, hast du das Wort „Bordell“ gehört und gedacht, du könntest hier ein bißchen Klimper machen, du flohgeplagte Gossenhure? Ich kann nicht glauben, daß die dich auch nur zu Tür reinlassen, mit all den Zecken, die aus deinen zotteligen Beinen hüpfen!"'

    menu:
        '"Das reicht jetzt, ihr zwei."':
            # a890 # r41637
            jump morte_s435

        'Laß sie machen.':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*Er*! Das heißt „*ER* kommt mir schon ziemlich großmäulig vor“, Kimasxi „Flatterdung“… du zottelige, hammelbeinige Hure!"'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"Besser als du vielleicht?" Morte blinzelt sie mit den Augenbrauen an. "Eh? Eh?"'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"Werd ich nicht tun, *Tiefling*. Ich geb aber zu, daß ich vielleicht ein oder zwei Dinge gelernt habe… guter Einfall, Meister!"~ [MRT387]'

    menu:
        '"Klar, Morte."':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"Sieh mal, Meister. Offensichtlich bist du nach deinem Kuss mit dem Tod immer noch etwas verwirrt, sodass ich dir zwei kleine Ratschläge erteilen will: Erstens, wenn du Fragen hast, *fragst* du mich, in Ordnung?"  ^NHINWEIS: <SPEAKTO>^-'

    menu:
        '"Also gut… Wenn ich irgendwelche Fragen habe, wende ich mich an dich."':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"Zweitens, wenn du nur *halb* so vergeßlich bist, wie du den Eindruck machst, fang lieber an, dir Notizen zu machen - immer, wenn dir etwas begegnet, das wichtig sein *könnte*, schreib„s dir auf, damit du es nicht wieder vergißt."'

    menu:
        '"Wenn ich dieses Journal hätte, das ich eigentlich bei mir haben *sollte*, würde ich das tun."':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"Dann fang ein neues an, Meister. Ist doch kein Verlust. Hier gibt„s genug Pergament und Tinte für dich."'

    menu:
        '"Hmmmm. Also gut. Kann ja nicht schaden… Dann mache ich halt ein neues."':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"Benutze es, um deine Bewegungen im Blick zu behalten. Falls du wichtige Dinge nicht mehr genau weißt, wie, wer du bist… oder viel wichtiger, wer *ich* bin… kannst du es benutzen, um deine Erinnerung aufzufrischen."  ^NHINWEIS: Um auf das Tagebuch zuzugreifen, wählst du die Tagebuch-Taste im Schnellmenü. Dein Tagebuch wird während des Spiels automatisch aktualisiert.^-'

    menu:
        '"OK… Ich hab„s kapiert. Gehn wir."':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Was nagt an dir, Meister?"~ [MRT515]'

    menu:
        '"Kannst du mir noch mal vorlesen, was auf meinen Rücken tätowiert ist?':
            # a897 # r41840
            jump morte_s445

        '"Was ist das hier noch mal für ein Ort?"':
            # a898 # r41841
            jump morte_s450

        '"Dieser Ort ist riesig… Wer kümmert sich darum?"' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"Wer kümmert sich doch gleich um diesen Ort?"' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"Die Leichen hier… Wo kommen die alle her?"':
            # a901 # r41844
            jump morte_s454

        '"Vorhin hast du gesagt, daß ich aufpassen soll, keine *weiblichen* Leichen zu töten. Warum?"' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"Wie kann ich diese Bandagen benutzen?"' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"Nichts, Morte. Ich wollte nur mal gucken, ob du noch da bist."' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"Nichts, Morte. Ich wollte nur mal gucken, ob du noch da bist."' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"Ah, nun *komm* schon, Meister. Erzähl„ mir nicht, daß du es schon vergessen hast."'

    menu:
        '"Ich muß einfach nur mein Gedächtnis auffrischen."':
            # a906 # r41850
            jump morte_s446

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a907 # r41851
            jump morte_s444

        '"Dann vergiß es. Gehen wir."' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"Dann vergiß es. Gehen wir."' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"Ich wette, daß ich DAS oft zu hören bekommen werde." Morte räuspert sich. "Laß mal sehen…"  „Ich weiß, daß du dich so fühlst, als hättest du “n paar Eimer Styx-Wasser getrunken, aber du mußt dich KONZENTRIEREN. In deinem Besitz sollte sich ein JOURNAL befinden, das ein wenig Licht in das Dunkel dieser Angelegenheit bringen kann. PHAROD sollte dir den restlichen Plausch liefern können, wenn er nicht bereits im Totenbuch steht.„'

    menu:
        '"Pharod… hmmm. Lies weiter."':
            # a910 # r41855
            jump morte_s447

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a911 # r41856
            jump morte_s444

        '"Vergiß es. Ich hab genug gehört. Gehen wir."' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"Vergiß es. Ich hab genug gehört. Gehen wir."' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"Mach ich ja, mach ich ja, warte." Morte hält einen Augenblick lang inne. "Also gut, das letzte Stück…"  „Verlier das Journal nicht, sonst sind wir schon wieder den Styx hoch. Und was auch immer du tust, erzähl NIEMANDEM, WER du bist oder WAS mit dir geschieht, denn sonst wirst du auf eine schnelle Pilgerfahrt zum Krematorium geschickt. Tu, was ich dir sage: LIES das Journal, und dann FINDE Pharod.“'

    menu:
        '"Und ich hatte kein Journal bei mir, als ich aufgewacht bin?"':
            # a914 # r41860
            jump morte_s448

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a915 # r41861
            jump morte_s444

        '"Vergiß es. Ich hab genug gehört. Gehen wir."' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"Vergiß es. Ich hab genug gehört. Gehen wir."' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"Nein… du warst nackt bis auf die Haut. Wie ich bereits gesagt habe, sieht so aus, als ob genug von einem Journal direkt auf deinen Körper geschrieben ist."'

    menu:
        '"Und du bist sicher, daß du niemanden namens Pharod kennst?"':
            # a918 # r41865
            jump morte_s449

        '"Wie wahr. Ich hätte da noch ein paar Fragen…"':
            # a919 # r41866
            jump morte_s444

        '"Also gut. Gehen wir."' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"Also gut. Gehen wir."' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"Nee. Trotzdem, irgendein Dussel muß ja wissen, wo man ihn finden kann. Fragen wir doch einfach rum… NACHDEM wir hier raus sind."'

    menu:
        '"Bevor wir gehen hätte ich noch ein paar Fragen…"':
            # a922 # r41870
            jump morte_s444

        '"Also gut. Gehen wir."' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"Also gut. Gehen wir."' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"Man nennt diesen Ort die „Leichenhalle“… Es ist ein großer schwarzer Bau mit dem architektonischen Charme einer schwangeren Spinne."'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"':
            # a925 # r41874
            jump morte_s444

        '"Das ist alles, was ich wissen wollte. Danke."' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"Das ist alles, was ich wissen wollte. Danke."' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"Sie nennen sich selbst die „Staubmenschen“. Sie sind gar nicht zu übersehen: Sie stehen auf Schwarz und totenstarre Gesichter. Sie sind eine räudige Bande ghulischer Todesanbeter, die glauben, daß jeder sterben sollte… je früher, desto besser."'

    menu:
        '"Das verstehe ich nicht… Was können diese Staubmenschen dagegen haben, wenn ich mich hier aus dem Staub mache?"':
            # a928 # r41878
            jump morte_s452

        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"':
            # a929 # r41879
            jump morte_s444

        '"Verstehe. Dann bin ich eben vorsichtig."' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"Verstehe. Dann bin ich eben vorsichtig."' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"Hast du nicht zugehört?! Ich sagte, daß die Staubies glauben, daß JEDER sterben muß, je früher, desto besser. Glaubst du, daß die Leichen, die du gesehen hast, sich im Totenbuch besser fühlen als außerhalb des Buchs?"'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"':
            # a932 # r41883
            jump morte_s444

        '"In Ordnung… Ich… versuche, mir das zu merken."' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"In Ordnung… Ich… versuche, mir das zu merken."' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"Nun, du… du *benutzt* sie. Blutung stillen, und so."  ^NHINWEIS: <BANDAGES2>^-'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"':
            # a935 # r41887
            jump morte_s444

        '"Danke. Ich glaube, damit werde ich schon fertig."' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"Danke. Ich glaube, damit werde ich schon fertig."' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"Der Tod sucht die Ebenen jeden Tag heim, Meister. Diese watschelnden Gerüste hier sind alles, was von den armen Schluckern übriggeblieben ist, die ihre Leichen nach ihrem Tod an die Verwalter verkauft haben."'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen an dich…"':
            # a938 # r41891
            jump morte_s444

        '"In Ordnung… Ich… versuche, mir das zu merken."' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"In Ordnung… Ich… versuche, mir das zu merken."' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"Wa… im *Ernst*? Hör zu, Meister, diese toten Dinger sind die letzte Chance für ein paar hartgesottene Typen wie uns. Wir müssen *nett* sein… und nicht wegen ein paar Schlüsseln Kleinholz aus ihnen machen, ihnen die Gliedmaßen abhacken oder etwas Ähnliches tun."'

    menu:
        '"Letzte Chance? Wovon *redest* du denn?"':
            # a941 # r41895
            jump morte_s456

        '"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich…"':
            # a942 # r41896
            jump morte_s444

        '"In Ordnung… Ich… versuche, mir das zu merken."':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"Meister, SIE sind tot, WIR sind tot… verstehst du, worauf ich hinaus will? Nun?"'

    menu:
        '"Nein… nein, eigentlich nicht."':
            # a944 # r41899
            jump morte_s457

        '"Du *kannst* das nicht ernst meinen."' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich…"':
            # a946 # r41901
            jump morte_s444

        '"Ich habe genug gehört. Gehen wir."':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"Meister, wir haben bereits etwas mit diesen hinkenden Damen gemein. Wir sind *alle* mindestens einmal gestorben: da haben wir doch schon Gesprächsstoff. Sie schätzen Männer mit dieser Art von Erfahrung."'

    menu:
        '"Warte… Hast du vorhin nicht gesagt, daß ich *nicht* tot bin?"':
            # a948 # r41904
            jump morte_s458

        '"Vergiß es. Ich hätte da noch ein paar andere Fragen an dich…"':
            # a949 # r41905
            jump morte_s444

        '"Ich habe genug gehört. Gehen wir."':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"Tja… okay, *du* bist vielleicht nicht tot, aber *ich* bin„s. Und ich für meinen Teil hätte nichts dagegen, einen Sarg mit einem dieser sehnigen Kadaver hier zu teilen." Morte fängt an, in freudiger Erwartung mit den Zähnen zu klappern. "Natürlich müßten die Verwalter sich erst von ihnen trennen, und das ist ziemlich unwahrscheinlich…"'

    menu:
        '"Ich hätte da noch ein paar Fragen an dich, Morte…"':
            # a951 # r41908
            jump morte_s444

        '"Ich habe genug gehört. Gehen wir."':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"Du Heiligster. Das ist ein HÖLLISCHES Buch."'

    menu:
        '"Was ist es?"':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"Wenn ich raten müßte, würde ich sagen, das ist das Buch, in das sie die Namen jedes armen Schluckers ritzen, der das Pech hat, hier abgeladen zu werden."'

    menu:
        '"Könnte mein Name da drin sein?"':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"Äh… tja… *könnte* sein. Um das herauszufinden, mußt du deine Knochenschüssel mit dem schwebenden Staubie da drüben rasseln lassen. Ich bin aber nicht sicher, ob das so ne gute Idee ist."'

    menu:
        '"Na ja, ich brauche Antworten. Ich werde mit ihm sprechen."':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr 'Morte flüstert: "In irgendeiner Klapsmühle fehlt jetzt ein Übergeschnappter."'

    menu:
        '"Ich hätte da ein paar Fragen, Jumble…"':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"Du bist der Mann, der Übelwind verflucht hat, nicht wahr?"' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"Ich möchte, daß du Übelwinds Fluch aufhebst."' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"Ich geh dann jetzt mal, Jumble. Leb wohl."':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"Äh, oh… Siehst so aus, als ob du gerade mit einem Fluch belegt worden bist, Meister…"'

    menu:
        '"Was hast du mit mir gemacht, Jumble?"':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"Jumble… Bitte, mach das wieder rückgängig."':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"Was auch immer du getan hast, Jumble, mach es rückgängig - oder du wirst es bitter bereuen."':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"Gehen wir einfach, Morte."':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"Ich würde sagen, ignoriere die Tussi… Bleib einfach cool. Das macht dich viel interessanter!"'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"Vertrau mir, Kleiner. Beachte sie einfach nicht, mach es ein wenig spannend und irritier sie. Ich sag dir, sie werden wie Kletten an dir hängen, um herauszufinden, was los ist. Nicht wahr, Meister?"'

    menu:
        '"Ja… Dann wird sie glauben, daß was nicht stimmt, und er wird zur Abwechslung mal bestimmen, nach welchen Regeln gespielt wird."':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"Nein… Das ist keine gute Idee."':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"Genau deshalb sollten Giths sich nicht vermehren. Sie reden ständig davon und grübeln, „wo man noch einen Gedankenschinder oder einen Githyanki töten könnte“, und so weiter und so fort. Dabei tun sie„s wahrscheinlich nicht mal gerne. Sie schnappen mit der Zeit alle über oder sind so verbissen, daß sie ihren Sinn für Humor verlieren. Sie schwafeln die ganze Zeit von Konzentration, von einem geeinten Geist, von gegenseitigem Vertrauen. Aber ist dir schon mal aufgefallen, daß die Rasse mit jedem davon gebrochen hat, sobald sie sich von den Gedankensaugern befreit hatte. Und da sage noch einer, Religion und Ideologie seien keine Gefahr für die Ebenen."'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"Wow."'

    menu:
        '"Bist du Nemelle? Ich habe gehört, du kennst das Befehlswort für diese Karaffe."' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"Nemelle? Deine Freundin Aelwyn sucht dich."' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"Suchst du jemanden?"' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"Ich hätte da ein paar Fragen…"':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"Ich habe nichts benötigt, Nemelle. Lebe wohl."':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"Wow."'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"Ui. Du bist mir vielleicht „ne heißblütige Braut! Und wohl scharf auf Aufmerksamkeit? Falls du eifersüchtig bist, kann ich dich auch etwas abschlabbern…" Morte schwebt auf Annah zu und macht dabei feuchte, sabbernde Geräusche…'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr 'Morte hält plötzlich inne. Er dreht sich weg und murmelt irgendwelches unverständliche Zeug vor sich hin.'

    menu:
        '"Bist du Nemelle? Ich habe gehört, du kennst das Befehlswort für diese Karaffe."' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"Nemelle? Deine Freundin Aelwyn sucht dich."' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"Suchst du jemanden?"' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"Ich hätte da ein paar Fragen…"':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"Ich habe nichts benötigt, Nemelle. Lebe wohl."':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"Komm, Meister… Ich bin mir sicher, daß *uns* schon was einfällt. Was?"'

    menu:
        '"Vergiß es, Morte. Gehn wir."':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr 'Morte schwebt näher und flüstert: "Also ich hab damit kein Problem. Was, Meister? Zwinker-zwinker…"'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr 'Morte geht dazwischen, völlig entsetzt. "Nein!!! Bist du *wahnsinnig*, Mann?! Du mußt übergeschnappt sein!"'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr 'Morte rollt mit den Augen. "Blinder Eifer schadet nur…"'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"Ich liiiiiebe die Festhalle."'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr 'Morte seufzt laut hörbar. "Komm, Meister. Müssen wir uns das wirklich mitanhören?"'

    menu:
        '"Sei mal still, Morte. Ich will da zuhören."':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        'Ignoriere Morte und höre weiter zu.':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"Du hast Recht, Morte - laß uns gehen."':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"He. Sieht ganz so aus, als hätte man diesem Schlucker vergessen zu sagen, daß er mit der Regel der Drei aufhören kann."'

    menu:
        '"Was meinst du?"':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"Diese Leichen haben nicht mehr so viel im Oberstübchen. Sie können immer nur eine Aufgabe auf einmal erledigen… Wenn man ihnen was aufträgt, tun sie es so lange, bis man ihnen sagt, daß sie aufhören können. Ich schätze, dieser arme Schlucker hat seine Aufgabe längst erfüllt, aber niemand hat es ihm gesagt."'

    menu:
        '"Wer sagt ihnen, was sie tun sollen?"':
            # a981 # r45092
            jump morte_s481

        '"Du hast da was von der „Regel der Drei“ gesagt. Was meinst du damit?"':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"Schon möglich. Komm, gehen wir weiter."':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"Was? Na ja, die Regel der Drei ist eines dieser „Gesetze“ über die Ebenen. Es besagt, daß immer alles dreimal vorkommt oder aus drei Teilen besteht, oder daß es immer drei Möglichkeiten gibt, und so weiter und so fort."'

    menu:
        '"Hört sich nicht an, als würdest du allzu viel davon halten."':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"Ach, Kokolores! Man kann jede Zahl nehmen und eine Bedeutung in sie hineininterpretieren - irgendeine zufällige Übereinstimmung findet man immer."'

    menu:
        '"Verstehe. Vorhin sagtest du, jemand hätte dieser Leiche etwas aufgetragen und vergessen, ihr zu sagen, daß sie aufhören kann. Wer sagt den Leichen, was sie tun sollen?"':
            # a985 # r45099
            jump morte_s481

        '"Verstehe. Ich wollte diesen Zombie mal etwas genauer unter die Lupe nehmen…"':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"Schon möglich. Komm, gehen wir weiter."':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"Einer der Verwalter hier oder irgendein Nekromant, der sie aus dem Totenbuch geholt hat. Ich tippe auf die Verwalter… Schließlich sind sie es, die die ganzen billigen Arbeitskräfte brauchen."'

    menu:
        '"Verstehe. Und was hast du da vorhin über diese … „Regel der Drei“ gesagt?"':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"Verstehe. Ich wollte diesen Zombie mal etwas genauer unter die Lupe nehmen…"':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"Schon möglich. Komm, gehen wir weiter."':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"He… Meister… vielleicht solltest du n-"'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"Ooh, eine Auktion! Vielleicht können wir da ja Annah versteigern."'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"Ooh, eine Auktion! Vielleicht können wir da ja Dak„kon versteigern."'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"Ooh, eine Auktion! Vielleicht können wir da ja irgendein Knochengerüst für mich ersteigern."'

    menu:
        '"OK, Morte. Ich frag mal."':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"Dann gehen wir am besten schnell weiter."':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"Das muß Liebe sein. Ist es Liebe, Meister?"'

    menu:
        '"Hört auf, ihr beiden. Ich muß hier ein paar Fragen stellen."':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"Wie du meinst, Morte. Lassen wir ihn in Ruhe."':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"He, sieh mal! Noch so ein schwebender Schädel."'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"Klingt so, als ob dieser Streitkolben irgendwie neidisch auf anderer Leute Klugheit ist. Zisch ab, Waffe!"'

    menu:
        '"Sei still! Ich hätte da noch ein paar Fragen…"':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '"Wir haben jetzt genug geredet."':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"Ooh, ein Githyanki. Ich wette, Dak„kon wird bestimmt *gerne* helfen."'

    menu:
        '"Vielen Dank für deinen wertvollen Beitrag, Morte. Geh„n wir."':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"Oh, sie *haben* Namen. Da bin ich mir sicher."'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"Das glaubst *du*, du kleines Scheusal."'

    menu:
        '"Halt„s Maul, Morte - kannst du ihm noch ein paar andere Fragen stellen, Annah?"':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"Vergiß es. Laß uns einfach gehen."':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Ziegenköpfe sagen wollen. Du brauchst einen Übersetzer? Such dir einen Einwohner von Sigil."'

    menu:
        '"Aha."':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Du brauchst einen Übersetzer? Soll doch das kleine Scheusal-Mädel hier den Job machen." Er nickt Annah zu. "Sie ist im Stock heimisch."'

    menu:
        '"Vielleicht werde ich das tun…"':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Du brauchst einen Übersetzer?" Er nickt Dak„kon zu. "Sag “Heiliger-als-du-und-doppelt-so-schweigsam„, er soll übersetzen."'

    menu:
        '"Vielleicht werde ich das tun…"':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr 'Morte spöttelt: "Eher soll mich ein Tanar-Ri fressen, als daß ich versuche herauszufinden, was diese schwebenden Bocksköpfe sagen wollen. Brauchst du einen Übersetzer? Soll das doch die Tanar-Ri tun." Er nickt Grace zu. "Wahrscheinlich mußte sie sich sowieso die ganze Zeit mit dem Geschwätz dieser Kerle herumschlagen."'

    menu:
        '"Vielleicht werde ich das tun…"':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"Oh, bei den Mächten! Ein verfluchter Dabus."'

    menu:
        '"Was ist los?"':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"Er ist ein Dabus. Sie „sprechen“ in Rebussen, diesen bescheuerten Worträtseln. Wenn *du* nicht verstehst, was er sagt, finden wir besser einen Einheimischen oder eine andere Möglichkeit, mit ihm zu kommunizieren… falls wir dies wünschen. Ein lästiger Haufen. Ich wette, sie *können* sprechen, gehen aber lieber allen auf die Nerven mit ihren Rätseln, über die man sich den Kopf zerbrechen muß."'

    menu:
        '"Was ist ein Dabus?"':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"Man sagt, sie arbeiten als Hausmeister für die Dame der Schmerzen. Sie schwirren durch die Gegend, um Sigil nach ihren Launen abzureißen, zu reparieren und wieder aufzubauen. Sie sind schlimmer als Leichenfliegen." Morte seufzt. "Totschlagen darf man sie leider nicht, sonst wird die Dame… wütend."'

    menu:
        '"„Die Dame der Schmerzen“? Wer ist das?"' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"Was kannst du mir über die Dame der Schmerzen erzählen?"' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"Verstehe."' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"Sie hat in dieser Stadt die Macht. Du würdest sie gleich erkennen: Ihr Gesicht wird von Klingen umrahmt, sie hat die Größe eines Riesen und schwebt über der Erde, genau wie diese Kerle hier." Morte nickt in Richtung des Dabus, der euch beide anschaut. "Keiner weiß etwas genaues über sie… sie redet nicht viel. Das einzige, was du wissen mußt, ist, daß du sie besser nie wütend machst. Wenn du sie siehst, dann lautet mein Ratschlag: Lauf."'

    menu:
        '"Aha."':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"Was? Was? Was steht drin, Meister?"'

    menu:
        '"Ich weiß nicht, was ich sagen soll, Morte…"':
            # a1010 # r50411
            jump morte_s501

        '"Nichts, was dich etwas anginge, Morte."':
            # a1011 # r50412
            jump morte_s501

        'Zeig ihm den Kodex.':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"WAS?! Du machst bestimmt nur Witze, oder? Komm schon! Laß mich mal sehen!"'

    menu:
        'Zeig ihm den Kodex.':
            # a1013 # r50415
            jump morte_s503

        '"Nein, Morte. Vergiß einfach, daß du das Buch geseh„n hast."':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr 'Morte murrt sauer vor sich hin… aber akzeptiert deine Antwort.'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr 'Morte schwebt über deine Schulter, um den Inhalt des Kodex zu studieren. Seine Augen springen fast aus ihren Höhlen heraus, als sie die Seiten überfliegen: "Ooh. Ooooooh. Oh, ich… aber… Mann!"'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"Ha! Ha! Ha! Das ist doch wohl ein *Witz*, oder? Das kannst du *nicht* ernst meinen, Meister!"'

    menu:
        '"Ja. Nimmst du ihn, Vrischika?"':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"Nein. Ich hätte noch eine Frage, Vrischika…"':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"Du hast recht, Morte, es war eine blöde Idee. Laßt uns gehen."':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"Ich kann es nicht glauben… Dein Niveau ist ja vorher schon mal ganz schön tief gesunken, Meister, aber das ist die Krönung. Ich sehe *dich* dann in Baator, du verrücktes, kurzgewachsenes, hinterhältiges, undankbares, pockennarbiges, mistfressendes, fetthaariges, krummzähniges, armseliges Stück hirnloser Abfall! Hör gut zu, blöder Schlucker: Mach weiter so, und du wirst bald genug *wirklich* tot sein… Und dann wirst du bekommen, was dir zusteht!"'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"Es hat ihn verschluckt, aber ich weiß nicht, ob er an *jenem* Ende rauskam."'

    menu:
        '"Es reicht. Hör zu, Ravel, du hast mir meine Sterblichkeit genommen, und es hat mehr geschadet als genützt. Ich möchte sie jetzt zurückhaben - du hattest sie nun lang genug, schon zu lang, wie ich finde."':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"Ich glaube, ich weiß, wer in einem Käfig sein sollte…"'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"Also, ich hatte nichts BESSERES zu tun, als zu einem der Irrgänge der Dame zu gehen und eines der bösesten Wesen zu treffen, das jemals seinen Fuß auf Sigil gesetzt hat, also habe ich gesagt „Sicher! Warum n-?“"'

    menu:
        '"Morte, sei still. Ravel, tu ich nicht…"':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"„Sei still?!“" Morte klappert mit den Zähnen. "Den Teufel werde ich! Ich glaube, wir haben dieser Alten genug beim Klappern ihrer Knochenschüssel zugehört, und jetzt mokiert sie sich darüber, daß ich keine Haut habe! Na UND?! Offensichtlich hat die Tatsache, daß SIE Haut hat, bei IHREM Aussehen Wunder gewirkt! Meint sie, ich bin *gerne* ständig NACKT? Und *noch* etwas -"'

    menu:
        '"Morte! Schluß jetzt! Ravel, hör…"' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"Morte! Schluß jetzt! Ravel, hör…"' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"Morte! Schluß jetzt! Ravel, hör…"' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"Verrückt. Wo stehen wir also theoretisch gesehen im Moment?"'

    menu:
        '"Die Antwort darauf will ich wirklich nicht wissen, Morte."':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"Oh, das ist ja *fantastisch*."'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr 'Als du einen Schritt näher an die Säule herantrittst, zischt dir Morte zu: "Pssst! Meister! Meister… Hör zu, das Ding darf mich nicht sehen. Du mußt mich hier wegschaffen, setz mich irgendwo ab und hol mich später wieder ab, oder so…"'

    menu:
        '"Vergiß es, Morte. Ich werde jetzt mit ihr sprechen…"' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"Warum, Morte? Was ist los?"' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"Na gut. Dann gehen wir halt."':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"Ähh… Ich spreche da nicht so gern drüber. Gehen wir einfach, ja?" Mortes Stimme zittert vor Angst, seine Augen flackern unruhig zwischen dir und der massiven Schädelsäule hin und her.'

    menu:
        '"Es geht nicht, daß du so viele Geheimnisse vor mir hast, Morte. Du mußt mir sagen, was hier los ist."':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"Schluß mit dem Versteckspiel, Morte. Sag mir *sofort*, was los ist, oder du wirst dir noch *wünschen*, wir hätten mit den Köpfen gesprochen."':
            # a1028 # r53630
            $ morteLogic.r53630_action()
            jump morte_s514

        '"Na gut. Dann gehen wir halt."':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr 'Morte seufzt und kann deinem Blick nicht länger standhalten. Schließlich fügt er sich. "Okay, okay… Ich sag„s dir. Da ist diese Säule auf Avernus, der ersten Unterebene von Baator. Sie ist aus den Köpfen derer gebaut, die andere durch ihre Lügen in den Tod gestürzt haben. Nun ja… da drüben steht sie. Und da bin ich damals gelandet. Den Rest kannst du dir zusammenreimen."'

    menu:
        '"Dann… warst du einer von diesen Köpfen?"' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"Dann… warst du einer von diesen Köpfen?"' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"Ja. Ich habe ein oder zweimal etwas… übertrieben. Nur leider hat eine meiner Äußerungen deinen Tod herbeigeführt. Eine von ihnen. Vielleicht auch mehrere. Ich weiß es nicht genau, die Erinnerungen sind jetzt verblaßt."'

    menu:
        '"Ich verstehe…"':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"Ja. Ich habe einmal oder zweimal etwas… übertrieben, vielleicht auch zweimal. Leider hat eine meiner Äußerungen-"'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr 'Morte fährt ruhig fort: "… Eine meiner *Andeutungen* hat zu deinem Tod geführt. Eine von ihnen. Vielleicht auch mehrere. Ich weiß nicht genau, diese Erinnerungen sind jetzt verblaßt."'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr 'Morte starrt auf deine Füße - noch nie hast du ihn so unglücklich gesehen. "Diese Erinnerungen, sie… Sieh mal, Meister, ich kann mich nicht einmal mehr daran erinnern, ein Mensch *gewesen* zu sein. Ich weiß nicht, wie mein Leben vor der Säule war…"'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"Erzähl weiter…"' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr 'Morte blickt zu Dak„kon, dann zu dir. "Ja, ich glaube schon. So ist das, wenn man stirbt. Man… vergißt. Ich nehme an, ich war auch zu Lebzeiten kein Mustermitglied der Gemeinschaft… Aber wer ist das schon, zum Teufel?" Morte seufzt noch einmal. "Ich kann halt einfach nichts daran ändern. Nichts ist schlimmer, als immer die Wahrheit zu sagen. Aber sieh mal, Meister: Wenn dieser Haufen Köpfe mich sieht, dann will er mich wiederhaben - *unbedingt*. Das kannst du nicht zulassen!"'

    menu:
        '"Vergiß es, Morte. Ich werde jetzt mit ihr sprechen…"':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"Warte… Wie hast du dich aus der Säule befreit?"':
            # a1035 # r53796
            jump morte_s521

        '"Moment mal… Warum hast du mir nicht schon in der Leichenhalle gesagt, daß du mich kennst?"':
            # a1036 # r53797
            jump morte_s523

        '"Einen Augenblick. Wie lange genau kennst du mich schon, Morte?"':
            # a1037 # r53798
            jump morte_s524

        '"In Ordnung. Gehen wir, Morte."':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"Naja, ich glaube, ich war zu Lebzeiten auch nicht gerade ein Mustermitglied der Gemeinschaft… Aber wer ist das schon, zum Teufel?" Morte seufzt wieder. "Ich kann einfach nichts machen. Nichts ist schlimmer, als die ganze Zeit ehrlich zu sein. Aber sieh mal, Meister: Wenn dieser Haufen Köpfe mich zu Gesicht kriegt, dann will er mich wiederhaben - *unbedingt*. Das kannst du nicht zulassen!"'

    menu:
        '"Vergiß es, Morte. Ich werde jetzt mit ihr sprechen…"':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"Warte… Wie hast du dich aus der Säule befreit?"':
            # a1040 # r53802
            jump morte_s521

        '"Moment mal… Warum hast du mir nicht schon in der Leichenhalle gesagt, daß du mich kennst?"':
            # a1041 # r53803
            jump morte_s523

        '"Einen Augenblick. Wie lange genau kennst du mich schon, Morte?"':
            # a1042 # r53804
            jump morte_s524

        '"In Ordnung. Gehen wir, Morte."':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"Nun… du hast mich rausgezogen, Meister. Ich hab mich an die Oberfläche gekämpft - du warst schon einmal hier, weißt du - ich hab„ gejammert und geschrien, bis du mich bemerkt hast. Ich habe dich angefleht, mich zu retten, und hab“ geschworen, daß ich dir folgen und mein Wissen mit dir teilen würde, bis zu deiner letzten Stunde. Mir wurde aber erst, nachdem du mich rausgerissen hattest, klar, wie lang das sein würde."'

    menu:
        '"Und das ganze Wissen der Säule…?"':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"Oh, das… Naja, mir war auch nicht klar, daß ich das meiste des angesammelten Wissens der Säule verlieren würde, wenn ich erst mal aus ihr raus wäre. Verdammte Mächte, *du* hast vielleicht getobt! Aber du hast mich trotzdem bei dir behalten. Zuerst habe ich mich an dich „gebunden“ gefühlt… Vielleicht dadurch, daß deine Zauberkräfte mich zu einer Art Vertrautem gemacht hätten. Ein paar hundert Jahre später habe ich gemerkt, daß es *mehr* als das war. Etwas Tieferes. Auch mehr als nur eine Schuld, obwohl das todsicher auch etwas damit zu tun hatte. Ich habe mich irgendwie mit dir *verbunden* gefühlt. Vielleicht ist es dein Leid, Meister… deine Qualen. Ich weiß es nicht. Vielleicht habe ich sie mit meinen verglichen, als ich in dieser Säule steckte."'

    menu:
        '"Ich werde jetzt mit der Säule reden…"':
            # a1045 # r53809
            jump morte_s512

        '"Warum hast du mir nicht schon in der Leichenhalle gesagt, daß du mich kennst?"':
            # a1046 # r53810
            jump morte_s523

        '"Und wie lange genau kennst du mich schon, Morte?"':
            # a1047 # r53811
            jump morte_s524

        '"In Ordnung. Gehen wir, Morte."':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr 'Morte beginnt plötzlich, sich zu verteidigen. "Weil ich nie *weiß*, wer du sein wirst! Einige von deinen Inkarnationen waren echt total verrückt! Einmal bist du aufgewacht und warst davon überzeugt, daß *ich* dein Schädel wäre. Du hast mich um den Turm gejagt und wolltest mich fertigmachen und verschlingen… Gott sei Dank bist du dabei von einem Karren überfahren worden. Ein anderes Mal warst du „gut und rechtschaffen“ und wolltest mich zurück in die Säule zu stopfen, weil das der Ort sei, „wo ich hingehöre“." Morte grinst. "*Deshalb*. Außerdem hat es nie etwas geschadet, daß du„s nicht gewußt hast…"'

    menu:
        '"Ich werde jetzt mit der Säule reden…"':
            # a1049 # r53814
            jump morte_s512

        '"Wie hast du dich aus der Säule befreit?"':
            # a1050 # r53815
            jump morte_s521

        '"Und wie lange genau kennst du mich schon, Morte?"':
            # a1051 # r53816
            jump morte_s524

        '"In Ordnung. Gehen wir, Morte."':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"Ich weiß nicht. Jahrtausende, vermutlich. Ich habe jedesmal getan, was ich konnte, um dir zu helfen, den Weg zu finden, aber…" Morte seufzt, dann schwebt er auf Augenhöhe und schaut dich fest an. "So weit schaffst du es selten, Meister. Ehrlich, nur vier oder fünf mal, glaube ich. Diesmal könntest du es schaffen…. Das „du“, das es schafft, findet heraus, was los ist."'

    menu:
        '"Ich werde jetzt mit der Säule reden…"':
            # a1053 # r53819
            jump morte_s512

        '"Wie hast du dich aus der Säule befreit?"':
            # a1054 # r53820
            jump morte_s521

        '"Warum hast du mir nicht schon in der Leichenhalle gesagt, daß du mich kennst?"':
            # a1055 # r53821
            jump morte_s523

        '"In Ordnung. Gehen wir, Morte."':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"Oh, nein…"'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr 'Morte zittert vor Angst, seine Zähne klappern. "Ich kann nicht zurück, Meister! Ich kann nicht! Ich kann nicht! Ich kann nicht!"'

    menu:
        '"Er ist nicht zu dir zurückgekommen. Aber ich habe ein paar Fragen, Schädelsäule…"' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"Er ist nicht zu dir zurückgekommen. Aber ich habe ein paar Fragen, Schädelsäule…"' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"Er ist nicht zu dir zurückgekommen, Schädelsäule. Aber ich habe ein paar Fragen…"' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"Gehen wir einfach, Morte. Komm schon."':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"Na *los*, Meister, hab„ ich dir nicht gerade *gesagt*, was das ist?! Sie besteht aus den Köpfen von Lügnern, deren “Ratschläge„ diejenigen, denen sie rieten, in den Tod führten. Sie kann fast jede Frage beantworten - sie weiß wahnsinnig viel - aber sie erwartet auch viel für ihre Dienste. Frag sie nicht einfach irgendwelche Fragen!"'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"Ich will nicht wieder da rein, Meister. Bitte!"'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"Meister?! Nein! Nein! Das *kannst* du nicht tun! Bitte nicht!"'

    menu:
        '"Keine Sorge, Morte - ich hol„ dich nachher wieder raus."' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"Keine Sorge, Morte - ich hol„ dich nachher wieder raus."' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"Keine Sorge, Morte - ich hol„ dich nachher wieder raus."' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"Keine Sorge, Morte - ich hol„ dich nachher wieder raus."' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"Gehen wir einfach, Morte. Komm schon."':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr 'Morte sieht dich skeptisch an. "Bist du *sicher?* *Schwörst* du es? He, was sag ich da?! Nein! Auf keinen Fall! Bitte, ich will da nicht wieder rein!"'

    menu:
        'Schnapp dir Morte und wirf ihn in die Schädelsäule.':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"Gehen wir einfach, Morte. Komm schon."':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr 'Morte starrt dich mit weit aufgerissenem Mund stumm an. "WAS?! Keine Chance! Du bist nicht so stark wie damals. Paß auf, vergiß es, das schaffst du nie, das wird nicht geschehen! Bitte, ich *will* da nicht mehr rein!"'

    menu:
        'Schnapp dir Morte und wirf ihn in die Schädelsäule.':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"In Ordnung Morte. Schädelsäule: Was für Geschenke würdest du sonst noch annehmen?"' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"Gehen wir einfach, Morte. Komm schon."':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"Heh… Moment mal! Nicht so schnell! Säule… Ich könnte dir sagen, wo Fjhull Schlangenzunge ist! Komm schon, willst du das nicht wissen? Wie wär„s, wenn er dir das gibt und nicht mich? Na? Was sagst du dazu?"'

    menu:
        '"Moment mal, Morte. Wir verraten Fhjull nicht."':
            # a1085 # r53858
            jump morte_s533

        'Warte auf die Antwort der Säule.':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"Was? Bist du *übergeschnappt*?! Du würdest *mich* opfern, aber nicht das *SCHEUSAL*?! Der einzige Grund, warum er dir geholfen hat, ist, daß er dazu verpflichtet, ja verflucht ist! Was ist mit *mir*? Wer hat dir aus der Leichenhalle geholfen, Kumpel? Wer steht - äh, schwebt - neben dir, wenn du den Gefahren in dieser Festung Soundso ins Auge siehst?! Hä?! Hä?! NICHT FHJULL DICKARSCH, DAS IST JA WOHL KLAR!"'

    menu:
        '"Gut, gut. Was meinst du dazu, Säule?"':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"Tut mir leid, Morte. Du mußt da rein."':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"Warum nicht, Meister?" Morte schüttelt den Kopf. "Ich meine, wir sind auf jeder ANDEREN furchtbaren Ebene in diesem Multiversum gewesen, die ich kenne. Warum sollten wir also nicht über den Rand der Klippe schreiten?" Er seufzt klappernd. "Bist DU bereit? Wenn nicht…"'

    menu:
        '"Kannst du mir noch mal sagen, was du von der Gegend hinter dem Portal weißt?"':
            # a1089 # r54156
            jump morte_s544

        '"Ich bin bereit, Morte. Mehr kann ich nicht tun, um mich vorzubereiten. Bist du dabei?"':
            # a1090 # r54157
            jump morte_s535

        '"Vielleicht hast du recht… Ich werde mich noch besser vorbereiten."':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"Nun, ich…" Morte schielt auf den leuchtenden blauen Vorhang und seufzt noch einmal klappernd. "Klar. Gehen wir. Ich meine, es ist wahrscheinlich alles besser, als in der Leichenhalle zu versauern, oder?"'

    menu:
        '"In Ordnung…"':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"Äh…" Morte zögert. Er blickt zum Portal, dann zu dir, dann wieder zum Portal, dann seufzt er klappernd. "Sieh mal, ich will jetzt nicht *ZU* viel sagen, aber äh… naja, da ist etwas, was ich dir sagen muß…"'

    menu:
        '"Was ist los, Morte?"':
            # a1093 # r54162
            jump morte_s537

        '"Was? Komm schon, Morte, wir müssen weiter…"':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"Naja, es geht darum, wo wir hingehen… oder, äh, besser gesagt, wo wir… *waren*."'

    menu:
        '"„Wo WIR gewesen sind?“ Was erzählst du da?"' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"„Wo WIR gewesen sind?“ Was erzählst du da?"' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"„Wo WIR gewesen sind?“ Was erzählst du da?"' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"Äh… Meister?" Morte zögert, sieht zum Portal, dann zu dir, dann wieder zum Portal, dann seufzt er klappernd. "Sieh mal, ich will jetzt nicht *ZU* viel sagen, aber… naja, da ist etwas, was ich dir sagen muß…"'

    menu:
        '"Was ist los, Morte?"':
            # a1098 # r54169
            jump morte_s539

        '"Was? Komm schon, Morte, Ich muß los…"':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"Naja, es geht darum, wohin wir gehen… oder, äh, besser gesagt, wo du… wo wir… *waren*."'

    menu:
        '"„Wo WIR gewesen sind?“ Was erzählst du da?"' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"„Wo WIR gewesen sind?“ Was erzählst du da?"' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"„Wo WIR gewesen sind?“ Was erzählst du da?"' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"Wir… äh, wir sind nicht zum ERSTEN Mal hier. Sieh mal, wir waren schon einmal in dieser „Festung der Reue“… Aber wir… ich… habe es damals nicht gewußt."'

    menu:
        '"Du hast es nicht *gewußt*? Wie ist das möglich?"':
            # a1103 # r54176
            jump morte_s541

        '"Dann hättest du mir also von ANFANG AN SAGEN können… wo das Portal ist, WAS der Portalschlüssel ist, WARUM ich unsterblich bin, WAS mit meiner Sterblichkeit passiert ist UND daß sie sich in dieser Festung befindet?! Morte, ich *BRING* dich um…!"':
            # a1104 # r54177
            jump morte_s542

        '"Morte, du schuldest mir eine Erklärung… Keine Lügen und Täuschungen mehr, nicht jetzt."':
            # a1105 # r54178
            jump morte_s541

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"Das ist schwer zu erklären, wenn man nicht dort *gewesen* ist. Außerdem kanntest du dein *anderes* Ich nicht - er war nicht gerade ein sehr MITTEILSAMER Knochenbrecher. Ich meine, ich wußte, daß er einen BESTIMMTEN Ort gesucht hat, aber ich wußte weder warum, noch wo, noch WAS es war. Deshalb konnte ich dir NICHTS sagen: weil ich NICHTS wußte! Ich… weiß nur, was passiert ist, als wir ANKAMEN…"'

    menu:
        '"Und… was ist passiert?"' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"Und… was ist passiert?"' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr 'Morte sieht erschrocken aus. "Nein! Nein! Wir… ich… habe davon nichts GEWUSST! Schließlich warst du nicht immer der mitteilsamste Kerl auf den Ebenen! Dein… dein *anderes* Ich hat VIEL vom Plausch für sich behalten, und wir haben nicht einmal gewußt, WARUM wir an diesen Ort gegangen sind und WAS das für ein Ort war! Ich weiß nur, was passiert ist, als wir dort ANKAMEN…"'

    menu:
        '"Und… was ist passiert?"' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"Und… was ist passiert?"' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"Nun, wir sind zu dieser - dieser FESTUNG gegangen, und bevor wir sie überhaupt betreten haben, wurden wir alle GETRENNT und haben um unser Leben gekämpft. Deshalb will ich dir *vor allem* folgendes sagen: Wenn du das wirklich durchziehen willst, dann ist es gut möglich, daß jeder, der durch das Portal geht, irgendwo *ganz* weit weg von den anderen landet. Die Sache ist nur die, daß du dort trotzdem Leute bei dir brauchst…"'

    menu:
        '"Warum sagst du das?"':
            # a1116 # r54199
            jump morte_s545

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"Nun, wir sind zu dieser - dieser FESTUNG gegangen, und bevor wir sie überhaupt betreten haben, wurden wir alle GETRENNT haben um unser Leben gekämpft…" Er fröstelt. "Deshalb will ich dir *vor allem* folgendes sagen: Wenn du das wirklich durchziehen willst, dann ist es gut möglich, daß jeder, der durch das Portal geht, irgendwo *ganz* weit weg von den anderen landet. Die Sache ist nur die: Selbst wenn wir getrennt werden, sind wir womöglich deine einzige Hoffnung…"'

    menu:
        '"Warum sagst du das?"':
            # a1119 # r54203
            jump morte_s545

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"Weil was auch immer in der Festung auf dich wartet, Meister, dich bereits einmal besiegt hat. Ich weiß bis heute nicht, wie du das überlebt hast, aber wenn du wieder verlierst, dann brauchst du jemanden, der dich aus der Festung schafft…"'

    menu:
        '"Morte, du mußt mir alles sagen, was du über die Festung weißt… Es ist wichtig."' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"Morte, du mußt mir alles sagen, was du über die Festung weißt… Es ist wichtig."' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"Diese „Festung der Reue“… die erstreckt sich über MEILEN, Meister. Es ist eine Festung, aber es ist mehr wie eine eigene Ebene, ganz aus Stein, vollkommen dunkel, und voller Schatten - überall Schatten. Wenn du dahingehst, dann mußt du gut vorbereitet sein."'

    menu:
        '"Was ist passiert, als wir zum ersten Mal dorthin gegangen sind?"':
            # a1126 # r54212
            jump morte_s548

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"Diese „Festung der Reue“… die erstreckt sich über MEILEN, Meister. Es ist eine Festung, aber es ist mehr wie eine eigene Ebene, ganz aus Stein, vollkommen dunkel, und voller Schatten - überall Schatten. Wenn wir dahingehen, dann müssen wir gut vorbereitet sein."'

    menu:
        '"Was ist passiert, als wir zum ersten Mal dorthin gegangen sind?"':
            # a1129 # r54216
            jump morte_s548

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"Meister, ich weiß nicht, was mit DIR geschehen ist, aber ich weiß, was mit MIR geschehen ist… Ich bin von Gewölbe zu Gewölbe gelaufen, diese Schatten waren überall, sie haben versucht, mich fertigzumachen… Dann… plötzlich waren wir „draußen“, als ob uns jemand zurückgeholt hätte…"'

    menu:
        '"Einen Moment mal. Wenn du „wir“ sagst, klingt das nicht, als ob du nur uns beide meinst."' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"Einen Moment mal. Wenn du „wir“ sagst, klingt das nicht, als ob du nur uns beide meinst."' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"Einen Moment mal. Wenn du „wir“ sagst, klingt das nicht, als ob du nur uns beide meinst."' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"Ich verstehe. Kannst du mir sonst noch was sagen?"':
            # a1135 # r54225
            jump morte_s552

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr 'Morte verstummt einen Moment lang. "Nein… Da waren noch mehr. Da war… Dak„kon, diese Sinnsaten-Braut, Deionarra, dieser blinde Bogenschütze, der die ganze Zeit halb betrunken war, und du und ich. Und dann ging“s einmal in die Hölle und zurück. Anscheinend haben du, ich und Dak„kon es geschafft, aber die beiden anderen nicht. Ich weiß nicht, was mit ihnen passiert ist."'

    menu:
        '"Dak„kon? Aber warum… Ich muß ihn fragen. Aber du sagst, daß Deionarra und der Bogenschütze nicht von der Festung zurückgekehrt sind?"' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"Dak„kon? Aber warum… Ich muß ihn fragen. Aber du sagst, daß diese Frau, Deionarra, und dieser Bogenschütze nicht von der Festung zurückgekehrt sind?"' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr 'Morte verstummt einen Moment lang. "Nein… Da waren noch mehr. Da war… dieser alte Gith, Dak„kon, diese Sinnsaten-Braut, Deionarra, dieser blinde Bogenschütze, der die ganze Zeit halb betrunken war, und du und ich. Und dann ging“s einmal in die Hölle und zurück. Anscheinend haben du, ich und Dak„kon es geschafft, aber die beiden anderen nicht. Ich weiß nicht, was mit ihnen passiert ist."'

    menu:
        '"Du sagst, daß Deionarra und dieser Bogenschütze nie von der Festung zurückgekehrt sind?"' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"Du sagst, daß diese Frau, Deionarra, und dieser Bogenschütze nie von der Festung zurückgekehrt sind?"' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr 'Morte schüttelt den Kopf. "Nicht daß ich wüßte."'

    menu:
        '"Kannst du mir noch mehr über die Festung erzählen?"':
            # a1146 # r54240
            jump morte_s552

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"Mehr kann ich dir nicht sagen, Meister… Nur, daß wir unter Garantie getrennt werden, wenn wir ankommen, der Ort ist RIESIG, und es wimmelt dort nur so vor Schatten… Und irgendwo in der Festung ist etwas, das mächtiger ist als *jeder* von uns. Mehr gibt es nicht zu sagen…"'

    menu:
        '"Bist du *sicher*? Das ist vielleicht unsere letzte Gelegenheit, miteinander zu reden…"':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"Tja…" Morte hält eine Augenblick inne. "Ja, eine Sache solltest du noch wissen: Dein Ich, das ich früher gekannt habe, das Ich, das uns hierher geführt hat - der war nicht wie du. Überhaupt nicht."'

    menu:
        '"Was meinst du?"' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"Was meinst du?"' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"Dein anderes Ich, dem… dem waren die andern egal. Eigentlich alle. Wir hätten ALLE in der Festung draufgehen können, und er hätte nicht mit der Wimper gezuckt. Darum… möchte ich, daß du so bleibst, wie du bist… ich mag dich *so* nämlich lieber. VIEL lieber."'

    menu:
        '"Aber das ist nicht alles, was du sagen willst, stimmt„s?"' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"Ist das alles?"':
            # a1157 # r54265
            jump morte_s556

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '"Was ich sagen will ist, daß DU, trotz deines eselshaften Benehmens, mehr Geist besitzt, als er je hatte. Dein anderes Ich, der… der war so distanziert. Darum… will ich, daß du das nicht vergißt."'

    menu:
        '"Aber das ist nicht alles, was du sagen willst, stimmt„s?"' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"Ist das alles?"':
            # a1161 # r54270
            jump morte_s556

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"Nein…" Morte hält inne. "Da ist noch etwas. Ich habe dieses *andere* Ich von dir damals vielleicht nicht besonders gemocht, aber er war ein ziemlich schlauer Kerl - der schlaueste, den ich je kannte. Der ging immer auf Nummer sicher. Wenn er in der Festung gestorben ist, dann heißt das… naja…"'

    menu:
        '"Du glaubst nicht, daß ich es schaffen kann, was?"':
            # a1164 # r54274
            jump morte_s557

        '"Mach dir nichts draus, Morte. Ich bin bereit, durch das Portal zu gehen - kommst du mit?"' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"Mach dir nichts draus, Morte. Was passiert ist, ist passiert. Ich gehe jetzt jedenfalls durch das Portal."' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"Nein…" Morte schüttelt den Kopf. "Das ist es nicht, Meister. Weil es nicht immer darum geht, wer der Cleverste ist, oder wer der Mächtigste ist, oder wer der Härteste ist… Manchmal geht es einfach nur darum, wer du bist und was du *wirklich* willst. Ich meine, du wolltest einmal unsterblich werden - aber nach allem, ist das *wirklich*, was du wolltest? Sei dir diesmal einfach wirklich sicher, was du willst, mehr sag ich gar nicht."'

    menu:
        '"In Ordnung. Sieh mal, Morte… Wir haben noch nie darüber gesprochen, aber du mußt nicht mit mir mitkommen, okay? Ich verstehe, wenn du nicht willst."' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"Verstanden. Wenn du dann fertig bist, können wir ja gehen. Also, bist du bereit?"' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"Verstanden. Danke für den Ratschlag, Morte. Ich gehe jetzt durch das Portal."' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"Ja… ich weiß, Meister. Und ich kann dich nicht anlügen… Ich will nicht gehen… aber ich werde. Du mußt wissen: Wenn wir erst durch dieses Portal geschritten sind, dann dreht sich nicht mehr alles um *dich*. Du spielst mit *unserem* Leben, und uns stellt keiner wieder her, wenn wir sterben."'

    menu:
        '"Warum bist du dann…"' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"Warum bist du dann…"' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"Warum bist du dann…"' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"Warum bist du dann…"' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"Warum bist du dann…"' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr 'Morte entgegnet: "Du riechst auch nicht besser. Wann hast du denn zum letzten Mal gebadet?"'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr 'Morte entgegnet: "Du riechst auch nicht besser. Wann hast du denn zum letzten Mal gebadet?"'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr 'Morte entgegnet: "Du riechst auch nicht besser. Wann hast du denn zum letzten Mal gebadet?"'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"Was Ravel sagte, im Irrgang - sie sagte, du ziehst Leute, die leiden, an wie ein Magnet." Morte schüttelt den Kopf. "Vielleicht ist es, weil *du* schon so lange leidest. Und vielleicht werden *wir*, wenn du das alles geregelt hast, auch ein bißchen Frieden finden. Vielleicht."'

    menu:
        '"Vielleicht. Dann… bist du dabei, Morte?"' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"Verstanden. Danke für den Ratschlag, Morte. Ich gehe jetzt durch das Portal."' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"Was Ravel gesagt hat, im Irrgang - und was Fell über das Symbol, Folter, gesagt hat? Sie sagen, du ziehst Leute, die leiden, an wie ein Magnet." Morte schüttelt den Kopf. "Vielleicht ist es, weil *du* schon so lange leidest. Und vielleicht werden *wir*, wenn du das alles geregelt hast, auch ein bißchen Frieden finden. Vielleicht."'

    menu:
        '"Vielleicht. Dann… bist du dabei, Morte?"' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"Verstanden. Danke für den Ratschlag, Morte. Ich gehe jetzt durch das Portal."' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"Ich kenne Dich jetzt schon sehr lange, Meister, und du hast *irgend etwas* an dir, das Leute, die leiden, anzieht wie ein Magnet." Morte schüttelt den Kopf. "Vielleicht ist es deshalb, weil *du* schon so lange leidest. Vielleicht werden *wir*, wenn du das alles geregelt hast, auch ein bißchen Frieden finden. Vielleicht."'

    menu:
        '"Vielleicht. Dann… bist du dabei, Morte?"' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"Verstanden. Danke für den Ratschlag, Morte. Ich gehe jetzt durch das Portal."' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr 'Morte verstummt.'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"Der Schädel, das war ich," sagt Morte leise. "Die Frau war so eine Braut, die Deionarra hieß. Den Bogenschützen hab„ ich nicht gekannt…"'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"Ja…" Morte klappert, als würde er frieren. "Meister, in dieser Festung sind *überall* Schatten…"'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"Sie haben mit mir gesprochen wie die Schädelsäule…" Morte senkt die Stimme. "Sie *wußten*…"'

    menu:
        '"Also, ihr beiden: Ich muß alles wissen, was ihr mir über diese Festung sagen könnt…':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"Mehr kann ich dir nicht sagen, Meister - außer, daß wir unter Garantie getrennt werden, sobald wir dort ankommen. Der Ort ist RIESIG, und er wimmelt von Schatten… Und irgendwo in dieser Festung ist etwas, das mächtiger ist als wir *alle*."'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '"Ich kann dir nicht mehr sagen, Meister - nur, daß eine Gruppe, die da reingeht, unter Garantie getrennt wird, sobald sie dort ankommt. Der Ort ist RIESIG, und er wimmelt von Schatten… Und irgendwo in dieser Festung ist etwas, das mächtiger ist als alles, was du je getroffen hast."'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"Meister, hier ist Ärger vorprogrammiert - dieser Modron ist abtrünnig geworden."'

    menu:
        '"Abtrünnig?"':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"Ja, weißt du, manchmal bricht in so einem Modron so ein kleines Chaos aus, und wenn das passiert,… Naja., man könnte sagen, daß diese abtrünnigen Einzelgänger-Modronen eine Art… Rückwärts-Modronen sind."'

    menu:
        '"Dann ist das ein… Rückwärts-Modron?"':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"Meister, so viel Spaß das hier auch macht, ich schätze, einem Baatezu einen Barhocker unter dem Hintern wegzuziehen macht mehr Sinn, als mit diesem blöden Polygon mit unserer Knochenkiste zu klappern."'

    menu:
        '"Weißt *du*, was Getriebegeister sind, Morte?"':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"Meister, ich habe keine Ahnung, was dieser Würfel da herumklappert."'

    menu:
        '"Ich dachte, du wärst der *Experte* zu den Ebenen."':
            # a1185 # r55842
            jump morte_s575

        '"Na gut. Nordom, ich wollte dir noch ein paar Fragen stellen…"':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"Dann vergiß es. Weiter geht„s."':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"W - Ich weiß mehr als *du*, du stolpernder, krächzender Gedächtnisloser! Außerdem hab ich noch drei Wissensstückchen für dich, die dann in deiner leeren Hirnschachtel rumrasseln können: Erstens gibt es zu den Ebenen KEINE Experten, zweitens, ich komme so einem Experten mit Sicherheit am nächsten, und drittens, behandle mich mit etwas Respekt. Warum? Siehe Punkt zwei."'

    menu:
        '"Na gut. Nordom, ich wollte dir noch ein paar Fragen stellen…"':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"Dann vergiß es. Weiter geht„s."':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"Mechanus? Sterbenslangweilig, Meister. Stell dir eine Ebene voller Modronen und riesiger Zahnradgetriebe vor, und du hast die große, LANGWEILIGE Ebene Mechanus. Zu viele Gesetze, zu nervig. Ein Ort, an den man nicht einmal denken will, geschweige denn, ihn besuchen.'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"Nordom, was hast du mit „Null Heimat“ gemeint?"' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"Ach, egal, Morte. Ich hab„ genug gehört. Gehen wir."' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"ENTSCHULDIGE, du Priesterin der Frömmigkeit, aber Mechanus IST die langweiligste Ebene im Universum… Das einzig Interessante daran wäre, wenn *du* zu Besuch kämst…" Morte rollt die Augen. "Aber ich glaube, auch *das* würde nach einer Weile seinen Reiz verlieren."'

    menu:
        '"Nordom, was hast du mit „Null Heimat“ gemeint?"':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"Ach, egal, Morte. Ich hab„ genug gehört. Gehen wir."':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"Alle Modronen sind Teil dieser Quelle, Meister, ist so wie eine riesige Energiebank… Wenn einer von ihnen stirbt, wird die Energie, die man zu seiner Herstellung benötigt hat, in die Bank zurückabsorbiert, und ein neuer wird ausgespuckt. Die Sache ist… wenn so ein Modron ein bißchen plemplem wird, dann bricht er die Verbindung ab, behält aber ein bißchen Energie."'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"Also… Nordom, dieses Mechanus ist eine Energiequelle?"':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"Ach so. Nordom, ich hätte noch einige Fragen an dich…"':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"Mehr wollte ich gar nicht wissen. Gehen wir."':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr 'Morte funkelt Grace, die Gefallene, zornig an. "Also *entschuldige* mal! Ich hatte die Frage bereits beantwortet, danke vielmals. *Ich* bin hier die Informationsquelle, NICHT du, ist das klar?"'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"Oh, *schon* kapiert! Wenn ich vielleicht ein Sukkubus wäre, dann würdest du häufiger auf MICH hören, ja? Wenn ich vielleicht ab und zu ein bißchen mehr Haut zeigen würde, dann würdest du mir mehr Respekt entgegenbringen, was? Das ist ziemlich oberflächlich, Meister, Ziemlich oberflächlich! Ich sollte…"'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr 'NULL NODE'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"Ach wirklich?! Ich…?! Naja…! Ja, du hast… hast du das gehört, Meister? Was die Sukkubusfrau gesagt hat? Sie hat recht. Ich bin leichter zu verstehen, redegewandter, verstehst du? Du bist also auf mich angewiesen, siehst du?"'

    menu:
        '"In Ordnung, dann noch eine Frage: Ihr sagt beide, daß Nordom ein Teil der Quelle, aber von ihr abgeschnitten ist. Und wenn ein Modron stirbt, wird er zurückabsorbiert. Gilt das auch für Nordom?"' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"Ich habe nie etwas anderes behauptet, Morte. Also… Nordom, diese Energiequelle, von der du gesprochen hast… ist die von Mechanus?"':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"In Ordnung. Nordom, ich wollte dich noch was fragen…"':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"Mehr wollte ich gar nicht wissen. Gehen wir."':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr 'Morte nickt.'

    menu:
        '"Und wenn er stirbt, wird ein neuer Nordom erschaffen."':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"Äh… nein."'

    menu:
        '"Was passiert?"':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"Naja, sie nehmen seine Energie, Meister, und dann spucken sie einen anderen Modron aus, aber das ist dann nicht Nordom, weil er eigentlich kein *richtiger* Modron mehr ist. Er hat zu viel von den Ebenen in sich. Sie würden ihn durch einen Nicht-Nordom ersetzen.'

    menu:
        '"Also… dadurch, daß er abtrünnig geworden ist, ist er… sterblich geworden?"':
            # a1203 # r55892
            jump morte_s586

        '"In Ordnung. Nordom, ich wollte dich noch was fragen…"':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"Mehr wollte ich gar nicht wissen. Gehen wir."':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr 'Morte ist einen Moment still. "Naja… so könnte man es sagen. Ich meine, wenn er nicht diese kleine Abtrünnigen-Rebellion abgezogen hätte, dann wäre alles in Ordnung… Wenn er stirbt, wird er einfach durch einen anderen Modron ersetzt. Aber wo er jetzt „rückwärts“ geworden ist, tja, dieser Teil von ihm verschwindet, wenn er stirbt."'

    menu:
        '"In Ordnung. Nordom, ich wollte dich noch was fragen…"':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"Mehr wollte ich gar nicht wissen. Gehen wir."':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"Ahhhhhh! Bei allen Kräften und meinem Verstand, hör auf damit! Er wird noch völlig durchdrehen, wenn du ihn das immer wieder fragst!"'

    menu:
        '"Das hatte ich eigentlich *bezweckt*, Morte."':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"Naja, ich wollte die Antwort, und er hätte sie mir gegeben."':
            # a1209 # r55905
            jump morte_s589

        '"Macht nichts. Ich habe noch ein paar Fragen an Nordom…"':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"Vergiß es. Gehen wir lieber."':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"Oh." Morte „grinst“. "Du hättest ja etwas SAGEN können. Mach doch bitte weiter. Natürlich…" Morte *klickt* mit den Zähnen in einer Imitation von Nordom. "Wenn du etwas über Modronen wissen willst, solltest du MICH fragen."'

    menu:
        '"Okay, Morte… Was kannst du mir über Modronen sagen?"':
            # a1212 # r55910
            jump morte_s590

        '"Macht nichts. Ich habe noch ein paar Fragen an Nordom…"':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"Vergiß es. Gehen wir lieber."':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"Paß auf, Meister, NORMALE Modronen kapieren fast gar nichts außer ihren Grundaufgaben, und dieses blöde Polygon hier kommt obendrein gerade aus den Ebenen. Verwirre diesen Würfel also nicht, okay? Zumindest nicht, solange er bewaffnet ist. Wenn du was über Modronen wissen willst, dann frag nicht ihn, sondern mich."'

    menu:
        '"Okay, Morte… Was kannst du mir über Modronen sagen?"':
            # a1215 # r55915
            jump morte_s590

        '"Macht nichts. Ich habe noch ein paar Fragen an Nordom…"':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"Vergiß es. Gehen wir lieber."':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"Das ist so, Meister: Modronen sind diese blöden geometrischen Figuren, die auf ihrer Heimatebene, Mechanus, herumrattern. Sie sind echt sauber, ordentlich, und sie wollen, daß der REST des Multiversums auch so ist. Deshalb sind sie so eine Plage."'

    menu:
        '"Was ist falsch daran, das Multiversum ordentlicher machen zu wollen?"':
            # a1218 # r55923
            jump morte_s592

        '"Was ist Mechanus?"':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"Macht nichts. Ich habe noch ein paar Fragen an Nordom…"':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"Vergiß es. Gehen wir lieber."':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"Das ist der Ort, wo diese ganzen Uhrwerksdrohnen herkommen. Frag ihn ruhig danach und sieh mal, was er dazu sagt. Sie sitzen da herum und räumen die ganze Zeit nur auf… Dies katalogisieren, *das* in Ordnung bringen, *jenes* in Ordnung bringen, dieses neue Gesetz machen und so weiter und so weiter."'

    menu:
        'Wahrheit: "Das scheint mir ein edles Ziel zu sein. Was ist falsch daran, das Multiversum ordentlicher machen zu wollen?"':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"Du hörst dich nicht so an, als ob dich das besonders begeistern würde."':
            # a1223 # r55935
            jump morte_s592

        '"Ich hätte noch ein paar Fragen an Nordom…"':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '"Vergiß es. Gehen wir lieber."':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr 'Morte blickt zu Nordom hinüber, der seine linke Armbrust an die Seite seines Kopfes hält, als würde er ihr zuhören.'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"Weil, Meister, das Chaos seinen Platz hat. Und wenn alles so wäre, wie ein *Modron* es sieht, dann wäre das hier kein richtiges Leben… oder zumindest kein Leben, das ich führen wollte. Sie wollen immer alles nur *strukturieren*. Bäh."'

    menu:
        'Wahrheit: "Das sehe ich auch so. Es muß auch Chaos geben…. Zu viele Gesetze, und wir würden völlig stagnieren. Hör mal, ich hätte da noch ein paar Fragen an Nordom…"':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"Verstehe. Hör mal, ich hätte noch ein paar Fragen an Nordom…"':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"Na gut. Gehen wir."':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"Ich *mag* es, wie sie riecht. Das ist schön."'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"Moment mal Meister… Baator, das hört sich GAR NICHT GUT an. Dieses Scheusal verheimlicht uns bestimmt etwas… Und selbst wenn es diese „Schädelsäule“ gibt, finden wir wahrscheinlich jemand anders, der weiß, wie wir zu der Festung kommen, *ohne* uns in eine der gefährlichsten Ebenen des Multiversums zu begeben.'

    menu:
        '"Verheimlichst du uns etwas, Schlangenzunge?"':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"Warum willst du da nicht hingehen, Morte?"':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"Das ist ein gefährlicher Ort, Meister. Ich würde da lieber nicht hingehen. Ich war mal dort, und es ist echt nicht nett da. In Ordnung?"'

    menu:
        '"Wir sprechen später darüber, Schlangenzunge. Ich hätte ein paar Fragen…"':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"Dieser Kerl taucht auch *überall* auf!"'

    menu:
        '"Ja, aber er hat uns geholfen. Gehen wir."':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '(NULL NODE)'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"He, tot sein ist gar nicht so übel. Betrachte es doch mal von der positiven Seite… Wenigstens mußt du nicht mehr mit diesen lächerlichen Schnörkeln reden."'

    menu:
        '"Still, Morte. Ich regele das. Erzähl mir, was passiert ist."':
            # a1233 # r61111
            jump morte_dispose

        '"Vergiß es. Ich lasse dich in Ruhe."':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"Ähm… also, Meister… Was meinst du? Wie wär„s, dem alten Morte ein bißchen Klimper zu geben? Es ist schon ein bißchen länger als eine Weile her, weißt du…"'

    menu:
        '"Sicher, warum nicht. Madam?"' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"Tut mir leid, Morte. Nicht genug Klimper. Laß uns gehen."' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"Wir müssen wirklich gehen, Morte. Lebt wohl, Madam."':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"In Ordnung! Danke, Meister!" Morte dreht sich um und folgt der Frau hinaus.'

    menu:
        'Warte, daß er zurückkommt.':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr 'Morte scheint deine Anwesenheit nur halb wahrzunehmen. Abwechselnd kichert er vor sich hin oder seufzt zufrieden.'

    menu:
        '"In Ordnung… Ich nehme also an, daß alles gut gelaufen ist. Lebt wohl, Madam."':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"Ich? Ich bin der Kopf des Vecna."~ [MRT562]'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"Die Götter sind gnädig!!"~ [MRT485]'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"Das ist eine lange Geschichte, in der es um den Kopf des Vecna geht. Ich will nicht darüber reden."~ [MRT559A]'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"Könnten wir *bitte* das Thema wechseln?"~ [MRT559B]'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"Ich? Ich bin *le petit Morte*."~ [MRT560]'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"Was soll ich erzählen? Ich bin ein *Memento Morte*."~ [MRT561]'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"Nur, wenn ich mich auf deine Kissen setzen darf."~ [MRT486A]'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"Nichts! Gar nichts. Überhaupt nichts."~ [MRT486B]'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"Arf! Arf! Heh! Heh! Heh!"~ [MRT484]'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"Sie ist eine Tanar-Ri… ein Sukkubus, Meister."'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"Ich kann nirgends stehen. Hab Probleme mit den Beinen, weißt du."~ [MRT482]'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"Ich dachte, du sähest gut aus, aber da hab ich mich wohl geirrt."~ [MRT483]'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"Ich hab die Luft angehalten, seit ich dich das erste Mal gesehen habe, Scheusal."~ [MRT524]'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"Ich habe einen NAMEN, weißt du."~ [MRT526]'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"Interessant, daß du das ansprichst… gerade neulich hab ich sie gefragt, was sie für dich bezahlen."~ [MRT531]'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"Weißt du, du wärst ein ganzes Stück sympathischer, wenn du den Mund zuließest."~ [MRT530]'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"Aber du hast mein Herz doch schon, Scheusal."~ [MRT532]'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"Ich kann mir schlimmere Arten vorstellen, zu gehen."~ [MRT525]'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"Weißt du, du *bist* schon ein halbes Scheusal."~ [MRT533A]'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"Von da, wo ich schwebe, sieht sie gut aus."~ [MRT533B]'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"Ich habe es gemerkt. Warum teilst du deine Erkenntnis nicht dem Meister mit?"~ [MRT563]'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"Flatulenz, du blödes Vieleck."~ [MRT468A]'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"Dann tu uns allen einen Gefallen und sei „effizienter.“"~ [MRT469A]'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"Ich, äh, habe das nie gesagt!"~ [MRT470B]'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"Hat Annah noch Kleider an?"~ [MRT565A]'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"Dann ist die Antwort ja."~ [MRT565B]'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"Ich geb dir gleich neunzehn, wenn du nicht die Klappe hältst."~ [MRT564]'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"Wenn freier Wille bedeutet, meinen Befehlen ohne Frage zu gehorchen, dann ja."~ [MRT569A]'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"Willkommen auf den Ebenen, Kind."~ [MRT569B]'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"Ist Fall-From-Grace nackt?"~ [MRT568A]'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"Dann ist die Antwort auf deine Frage ja."~ [MRT568B]'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"Annah, Fall-From-Grace und ich, wie wir in einer Sumerischen Schlammkulisse baden."~ [MRT571A]'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"Manche lesen Wörterbücher, andere schreiben sie."~ [MRT572B]'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"Annah, eine Flasche Furyanischen Feuerbernstein und eine Sitzgruppe in der Festhalle."~ [MRT573]'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"Oh, halt„s *Maul*."~ [MRT471D]'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"Geh jemand anderem auf die Nerven, du blöde Zählschachtel."~ [MRT576A]'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"Ich weiß nicht, okay? Es ist einfach… weg."~ [MRT576B]'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"Ich werd„s dir zeigen, wenn du nicht die Klappe hältst."~ [MRT576C]'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"Geh eine Bärenfalle küssen."~ [MRT575A]'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"Vertrau mir. Annah hat nichts dagegen."~ [MRT575B]'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::pfeift unschuldig::~ [MRT472A]'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"Keiner! Das hat ihm keiner gesagt!"~ [MRT473D]'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"Es ist völlig freiwillig von ihrer Seite, du Idiot. Äh… nicht daß ich wüßte."~ [MRT577]'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"Vertrau mir, du hast ihn noch nie gesehen."~ [MRT475AA]'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"Hey Meister… sieh dir das an." Als du nach unten siehst, bemerkst du eine Reihe von dreckigen Fußabdrücken, die zum Torbogen führen… und nicht zurückkommen. "Dort muß ein Portal oder so etwas sein."'

    menu:
        '"Ein Portal? Wie kriegen wir es auf?"':
            # a1240 # r64991
            jump morte_s648

        '"Vielleicht. Los geht„s."':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"Keine Ahnung, Meister. Es muß aber ein gewöhnlicher Schlüssel sein. Sie dir den Verkehr an, der hier durchgegangen ist! Vielleicht kann uns eines der niederen Wesen hier helfen…"'

    menu:
        '"Dann frag ich mich durch. Los geht„s."':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"Ach *komm schon*, Meister. Sag bloß, du hast es schon wieder vergessen."'

    menu:
        '"Ich muß einfach nur mein Gedächtnis auffrischen."':
            # a1243 # r65553
            jump morte_s650

        '"Nein, diesmal will ich *alles* hören - mach weiter, hilf meiner Erinnerung auf die Sprünge."' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1245 # r65555
            jump morte_s329

        '"Dann vergiß es. Gehen wir."':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"Ich wette, daß ich DAS oft zu hören bekommen werde." Morte räuspert sich. "Laß mal sehen…"  „Ich weiß, daß du dich so fühlst, als hättest du “n paar Eimer Styx-Wasser getrunken, aber du mußt dein ZENTRUM finden. In deinem Besitz sollte sich ein JOURNAL befinden, das ein wenig Licht in das Dunkel dieser Angelegenheit bringen kann. PHAROD sollte dir den restlichen Plausch liefern können, wenn er nicht bereits im Totenbuch steht.„'

    menu:
        '"Pharod… hmmm. Lies weiter."' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"Fahre fort."' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1249 # r65560
            jump morte_s329

        '"Vergiß es. Ich hab genug gehört. Gehen wir."':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"Mach ich ja, mach ich ja, warte." Morte hält einen Augenblick lang inne. "Also gut, das letzte Stück…"  „Verlier das Journal nicht, sonst sind wir schon wieder den Styx hoch. Und was auch immer du tust, erzähl NIEMANDEM, WER du bist oder WAS mit dir geschieht, denn sonst wirst du auf eine schnelle Pilgerfahrt zum Krematorium geschickt. Tu, was ich dir sage: LIES das Journal, und dann FINDE Pharod.“'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"Weiter. Was kommt danach?"' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"Und ich hatte kein Journal bei mir, als ich aufgewacht bin?"' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"Also gut. Ich hätte noch ein paar Fragen…"':
            # a1253 # r65567
            jump morte_s329

        '"Vergiß es. Ich hab genug gehört. Gehen wir."':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"Wovon redest du, Meister? Mehr gibt es nicht."'

    menu:
        '"Wie wär„s mit “Trau keinem Totenschädel„?"' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.r65569_action()
            jump morte_s654

        '"Wie wär„s mit “Trau keinem Totenschädel„?"' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1257 # r65571
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"Und natürlich dieser kleine Teil am Ende über „traue keinem Schädel“ und so."'

    menu:
        '"Was hat dieser Teil zu bedeuten? Glaubst du, es geht um *dich*?"':
            # a1259 # r65574
            jump morte_s655

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1260 # r65575
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"Oh… *dieser* Teil am Ende? Nun, ich dachte, es sei ein Fleck, also habe ich diese Zeile nicht vorgelesen."'

    menu:
        '"Ach wirklich? Und was bedeutet es? Glaubst du, es geht um *dich*?"':
            # a1262 # r65578
            jump morte_s655

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1263 # r65579
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"Ich bezweifle es. Ich meine, du kannst *mir* vertrauen, oder, Meister?"'

    menu:
        '"Du *lügst* mich doch nicht etwa an, Morte?"':
            # a1265 # r65582
            jump morte_s656

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1266 # r65583
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"Nein! Komm schon, was ist los, Meister? Ich habe dich noch nie falsch geleitet."'

    menu:
        '"*Noch* nicht. Es gefällt mir nicht, daß du mir diese Zeile nicht vorgelesen hast, und wer weiß, was du mir *noch* verschwiegen hast, seitdem wir unterwegs sind."':
            # a1268 # r65587
            jump morte_s657

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1269 # r65586
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"Nichts! Ich habe dir alles gesagt… nun, FAST alles, aber nichts, sagen wir, *Gefährliches*."'

    menu:
        '"Wenn es NOCH ETWAS gibt, dann erzähl es besser gleich."':
            # a1271 # r65590
            jump morte_s658

        '"Naja, nichts für ungut. Ich hätte noch ein paar Fragen…"':
            # a1272 # r65591
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"Meister, im Ernst, sonst gibt es nichts. Ich würde dir nichts verheimlichen."'

    menu:
        '"Also gut, Morte. Ich hätte noch ein paar Fragen…"':
            # a1274 # r65594
            jump morte_s329

        '"Hoffentlich nicht. Gehn wir."':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"Sigil ist eine ringförmige Stadt, die auf einem unendlich hohen Turm liegt, der angeblich im Zentrum der Ebenen steht… Natürlich wirft dies die Frage auf, *wie* sie auf der Spitze eines unendlich hohen Turms und im Zentrum der Ebenen liegen kann."'

    menu:
        '"Sonst noch was?"':
            # a1276 # r65597
            jump morte_s660

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1277 # r65598
            jump morte_s329

        '"Das ist alles, was ich wissen wollte. Gehn wir."':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"Sigil wird die „Stadt der Tore“ genannt, vor allem weil es dort VIELE unsichtbare Tore gibt, die hinein- und hinausführen - fast jeder Torbogen, jeder Türrahmen, jeder Faßreifen, jedes Bücherregal oder offene Fenster kann unter den entsprechenden Bedingungen ein Portal sein. Es hängt nur davon ab, ob du den passenden Schlüssel hast."'

    menu:
        '"Schlüssel?"':
            # a1279 # r65601
            jump morte_s661

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1280 # r65602
            jump morte_s329

        '"Das ist alles, was ich wissen wollte. Gehn wir."':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"Nun, wie soll ich das erklären - die meisten Portale „schlafen“, okay? Du könntest durchlaufen, vorbeilaufen, drüberlaufen, und nichts würde geschehen. Aber jedes Portal hat etwas, das es „aufweckt“. Das kann eine Melodie oder ein Summen sein, ein Laib altes bytopianisches Brot, die Erinnerung an deinen ersten Kuß, und - ZACK - das Portal erwacht zum Leben, und du kannst hindurchgehen, wo immer es auch hinführt."'

    menu:
        '"Wo zum Beispiel?"':
            # a1282 # r65605
            jump morte_s662

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1283 # r65606
            jump morte_s329

        '"Das ist alles, was ich wissen wollte. Gehn wir."':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"Überall, Meister. Buchstäblich. An jedem erdenklichen Ort gibt es ein Portal dort. Darum ist Sigil überall in den Ebenen so beliebt."'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1285 # r65609
            jump morte_s329

        '"Das ist alles, was ich wissen wollte. Gehn wir."':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"Hey! Plappern ist meine Spezialität." Er klappert kurz mit den Zähnen, dann „grinst“ er. "Hä? Hä?"'

    menu:
        '"Oh, *das* freut mich zu hören."':
            # a1287 # r65612
            jump morte_s664

        '"Ja, ich kenne die Litanei der Flüche, Morte. Mich interessiert mehr, was du bei Lothar herausgefunden hast."' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"Ich hätte da noch ein paar Fragen."':
            # a1289 # r65614
            jump morte_s329

        '"Macht nichts. Gehn wir."':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"Nein, aber jetzt im Ernst, Meister - Ich habe ein Talent für das immer passende Geplapper. Ich kann jemandem wirklich das Ohr heißreden, wenn du verstehst, was ich meine. Ich habe Beleidigungen auf Lager, Frechheiten - Sachen, die einem das Ohr in den Schädel schraubt, weißt du?"'

    menu:
        '"Ah… was soll *das* nützen?"':
            # a1291 # r65617
            jump morte_s665

        '"Ich hätte da noch ein paar Fragen."':
            # a1292 # r65618
            jump morte_s329

        '"Macht nichts. Gehn wir."':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"Es ist eines meiner vielen Talente… Ich nenne es meine „Litanei der Flüche“. Weißt du, manchmal kann ich jemanden mit *genau* der richtigen Bemerkung vollsülzen. Natürlich muß ich mich danach meistens ziemlich schnell aus dem Staub machen… aber du verstehst, was ich meine."'

    menu:
        '"Wie funktioniert das?"':
            # a1294 # r65621
            $ morteLogic.r65621_action()
            jump morte_s666

        '"Sonst noch was?"' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"Ich hätte da noch ein paar Fragen."':
            # a1296 # r65623
            jump morte_s329

        '"Hmmm. Das könnte nützlich sein. Gehn wir."':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"Nun, ich kann jemandem Beleidigungen ins Gesicht schleudern, bis er durchdreht und mich verfolgt."  ^NHINWEIS: Morte besitzt eine Fähigkeit, die „Litanei der Flüche“ genannt wird. Dies ist eine Verspottung ohne Zauber, und wenn der Gegner ihr nicht widerstehen kann, erhält er Strafpunkte auf Rüstungsklasse und Angriffsstärke, und er wird nichts anderes mehr tun als zu versuchen, Morte in einen Nahkampf zu verwickeln. Je mehr Beleidigungen Morte hört, desto besser wird seine Litanei der Flüche. Die Litanei der Flüche ist SEHR wirksam gegen Magier.^-'

    menu:
        '"Kannst du noch etwas anderes?"' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"Ich hätte da noch ein paar Fragen."':
            # a1299 # r65628
            jump morte_s329

        '"Hmmm. Das könnte nützlich sein. Gehn wir."':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"Nun, ich habe ein paar Freunde kennengelernt, als ich bei Lothar im Regal stand und darauf wartete, daß du mich befreist - danke übrigens, daß du deine wertvolle Zeit geopfert hast - und sie sagten, wenn ich jemals Hilfe bräuchte, könne ich sie rufen."'

    menu:
        '"Freunde? Was meinst du?"':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"Ich hätte da noch ein paar Fragen."':
            # a1302 # r65632
            jump morte_s329

        '"Gut zu wissen. Gehn wir."':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"Ich muß nur pfeifen, und dann tauchen sie irgendwie auf. Sie sind eine ganz nette Truppe von Knochenbrechern - und giftig wie *Schlangen*."  ^NHINWEIS: Morte besitzt (inzwischen) eine spezielle Fähigkeit, den "Schädelmob". Wenn er sie beschwört, kann er eine Horde von Schädeln aus dem Hintergrund herbeirufen, die den Gegner mehrmals beißen. Stärke und Schadenspunkte der Schädel schwanken je nach Mortes Stufe, und die Macht kann pro Tag nur eine begrenzte Anzahl von Malen eingesetzt werden.^-'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1304 # r65635
            jump morte_s329

        '"Gut zu wissen. Gehn wir."':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"Also, ich sag dir mal, wie *ich* die Sache sehe…"'

    menu:
        '"Erzähl weiter…"' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"Erzähl weiter…"' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"Erzähl weiter…"' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"Erzähl weiter…"' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"Erzähl weiter…"' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"Erzähl weiter…"' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"Erzähl weiter…"' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"Erzähl weiter…"' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"Erzähl weiter…"' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1315 # r65648
            jump morte_s329

        '"Genauer betrachtet… vergiß es. Gehn wir."':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"Wenn du mich fragst, dann ist das hier deine Show, Meister. Ich kann im Moment nicht viel sagen, was uns weiterbringen könnte."'

    menu:
        '"*Das* ist mal eine Abwechslung. Ich hätte noch ein paar Fragen…"':
            # a1317 # r65651
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"Ich glaube, du solltest diesen „Pharod“ aufspüren, wo immer er auch sein mag. Du hättest nicht diese tätowierten Anweisungen auf dem Rücken, wenn er nicht eine Ahnung hätte, was mit dir los ist. Irgend jemand hier MUSS doch wissen, wo er ist."'

    menu:
        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1319 # r65654
            jump morte_s329

        '"In Ordnung. Suchen wir ihn also weiter."':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"Ich würde sagen, wir versuchen diese „Bronzekugel“ so schnell wie möglich zu klauen und sie dem alten Stotterer zurückzubringen."'

    menu:
        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1321 # r65657
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"Ich würde sagen, wir finden heraus, wo deine Leiche geblieben ist. Vielleicht finden wir heraus, wie du ins Totenbuch geraten bist."'

    menu:
        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1323 # r65660
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"Ich würde sagen, wir suchen jemanden, der mehr über dich weiß - und darüber, wie du hierher gekommen bist. Es muß doch in einem der Bezirke ein paar schlaue Knochenbrecher geben, die etwas mehr über dich wissen."'

    menu:
        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1325 # r65663
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"Es sieht so aus, als müßten wir mehr über diese Nachthexe Ravel herausfinden - Und ich muß dir sagen, Meister, daß ich mich darauf *nicht* gerade freue. Aber vielleicht können uns die Weisen der Festhalle und die Sinnessteine etwas sagen."'

    menu:
        '"Festhalle? Sinnessteine?"' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1328 # r65667
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"Sorry, Meister. Ich vergesse immer, daß du das Wissen eines Grünschnabels hast. Paß auf, die Festhalle ist der Hauptstützpunkt der Sinnsaten im Bezirk der Kuratoren. Sie haben Bibliotheken aus Sinnessteinen, die Erfahrungen speichern, und sie haben jede Menge Weise, Lehrer und Trainer, die uns vielleicht Näheres über Ravel erzählen können."'

    menu:
        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1330 # r65671
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"Nun, Ravel ist in einem Irrgang gefangen. Aber wahrscheinlich gibt es EINEN Schlüssel und EIN Portal, das uns zu ihr führt, wenn du immer noch gehen willst."'

    menu:
        '"Weißt du, was der Schlüssel zu ihrem Irrgang sein könnte?"' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"Weißt du, wo ich ein Portal zu ihrem Irrgang finde?"':
            # a1333 # r65675
            jump morte_s679

        '"Ich hätte da noch ein paar Fragen."':
            # a1334 # r65676
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"Keine Ahnung - Ich meine, ein „Stückchen Ravel“? Das könnte alles sein, von einer ihrer vertrockneten Warzen bis zu einem Kunstwerk, das sie angefertigt hat, oder ein bißchen Sabber aus ihrem Mund. Das ist zu vage. Und trotzdem: Ich wette, daß IRGEND JEMAND im Bezirk etwas darüber wissen muß, wie man an ein Stück dieser blödsinnigen Hexe kommt. Und wenn das nicht klappt, dann können wir die Sinnessteine in der Festhalle benutzen. Vielleicht kann uns einer der Steine etwas Nützliches mitteilen."'

    menu:
        '"Weißt du, wo ich ein Portal zu ihrem Irrgang finde?"':
            # a1336 # r65680
            jump morte_s679

        '"Gutes Argument. Ich hätte noch ein paar Fragen…"':
            # a1337 # r65681
            jump morte_s329

        '"Also gut. Suchen wir weiter."':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"Keine Ahnung, Meister. Es gibt haufenweise Portale in Sigil. Ich würde sagen, wir versuchen es in der Festhalle. Ich glaube zwar nicht, daß dort das Portal ist, aber vielleicht kann uns einer der Sinnessteine etwas sagen. Wenn das nichts nützt, dann sollten wir vielleicht aufhören herumzusuchen und uns von jemandem ein Portal BAUEN lassen."'

    menu:
        '"Gut. Ich hätte noch ein paar andere Fragen…"':
            # a1339 # r65684
            jump morte_s329

        '"In Ordnung. Gehn wir weiter."':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"Ich würde sagen, wir holen uns, was wir brauchen, und dann nichts wie raus, Meister. Dieser Ort macht mir Gänsehaut, dabei habe ich noch nicht mal Haut. Einverstanden?"'

    menu:
        '"Wie wahr. Ich hätte da noch ein paar Fragen…"':
            # a1341 # r65687
            jump morte_s329

        '"Also gut. Gehn wir weiter."':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"Genau, Meister. Das hier ist deine Show. Ich folge dir nur."'

    menu:
        '"Wie wahr. Ich hätte da noch ein paar Fragen…"':
            # a1343 # r65690
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"Nein… du warst nackt bis auf die Haut. Wie ich bereits gesagt habe, sieht so aus, als ob genug von einem Journal direkt auf deinen Körper geschrieben ist."'

    menu:
        '"Und du bist sicher, daß du niemanden namens Pharod kennst?"' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"Wie wahr. Ich hätte da noch ein paar Fragen…"':
            # a1346 # r65694
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"Nein. Und trotzdem muß doch irgendein Dussel wissen, wo er ist. Fragen wir ein paar Einheimische."'

    menu:
        '"Bevor wir gehen hätte ich noch ein paar Fragen…"':
            # a1348 # r65697
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"Ja… ein Mimir ist eine wandelnde Enzyklopädie. Du gibst Informationen hinein, und du bekommst Informationen heraus."'

    menu:
        '"Aber sind denn Mimiren nicht aus silbrigem Metall?"' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1351 # r65701
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"Und? Manche vielleicht, aber *ich* nicht. Und es gibt seltsamere Dinge auf den Ebenen als das, Meister."'

    menu:
        '"Ich glaube kaum, daß du ein Mimir bist, Morte. Was also bist du?"':
            # a1353 # r65704
            jump morte_s686

        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1354 # r65705
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"Was soll die Fragerei? Was weißt *du* denn überhaupt über Mimiren?"'

    menu:
        '"Ich weiß genug, um zu glauben, daß du mich anlügst."' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"Ich weiß genug, um zu glauben, daß du mich anlügst. Erst sagt mir die fehlende Zeile auf meinem Rücken, daß ich dir nicht trauen kann, und nun das. Was soll ich davon halten?"' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"Nichts, denke ich. Ich hätte noch ein paar Fragen…"':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"Ist schon gut. Laß uns gehen."':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"Okay, ich bin *kein* Mimir, aber ich weiß viele Dinge, also *könnte* ich auch einer sein."'

    menu:
        '"Was *bist* du denn dann?"':
            # a1360 # r65714
            jump morte_s688

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1361 # r65715
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"Ich bin ein wandelnder Schädel, der einen Haufen weiß."'

    menu:
        '"Was hat„s mit deinem baatorischen Geruch auf sich?"' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"Was hat„s mit deinem baatorischen Geruch auf sich?"' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1365 # r65720
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"Woher weißt DU schon, wie Baator riecht?!"'

    menu:
        '"Weil ich dort schon *war*, Morte. Ich war auf Avernus."':
            # a1367 # r65723
            jump morte_s691

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1368 # r65724
            jump morte_s329

        '"Vergiß es. Gehn wir."':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"Woher weißt DU schon, wie Baator riecht? Es sei denn - hey, du hast mit dieser Tanar-Ri über mich gesprochen, oder?! Was weiß sie?!"'

    menu:
        '"Nun, sie ist offenbar auf etwas gestoßen. Das riecht nach Baator, oder?"':
            # a1370 # r65727
            jump morte_s691

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1371 # r65728
            jump morte_s329

        '"Vergiß es. Gehn wir."':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"Nun, ja, aber - also, ja. Also rieche ich ein bißchen. *Entschuldige* bitte."'

    menu:
        '"*Warum* riechst du nach Baator?"':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"Ich war eine Zeit in den Höllen. Ziemlich lange. Man nimmt den Gestank mit der Zeit an."'

    menu:
        '"Du warst in den Höllen? Was hast du dort GEMACHT?"':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"Weißt du, nun, da ist diese *Säule* auf Avernus, der ersten Ebene von Baator. Man nennt sie die Schädelsäule, aber es ist mehr eine Säule aus Köpfen."'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"Manche Knochenbrecher sagen, sie besteht *angeblich* aus den Köpfen von Dusseln, vorwiegend Weise und Gelehrte, die ihr Wissen zu Lebzeiten nutzten, um die Wahrheit ein bißchen zu verbiegen… so sehr, daß sie dadurch sogar jemanden verletzt oder, äh, getötet haben könnten. Jedenfalls, als ich *gestorben* bin, bin ich dort gelandet. Komisch, oder?"'

    menu:
        '"Nö."':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"Äh…" Morte schweigt kurz. "Ja, du hast Recht. Es ist überhaupt nicht komisch. Weißt du, ich glaube, daß ich viel wußte, als ich noch am Leben war. Und vielleicht habe ich nicht immer die Wahrheit über das gesagt, was ich wußte. Ich glaube, als ich die Wahrheit ein- zweimal verdreht habe, könnte das dazu geführt haben, daß jemand vorzeitig ins Totenbuch aufgenommen wurde."'

    menu:
        '"Weißt du noch, wer?"':
            # a1376 # r65737
            jump morte_s697

        '"Ich war es, oder?"' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr 'Morte sieht dich kurz an. "Ja. Ich kann nicht sagen, *woher* ich es weiß, Meister, aber ich weiß es eben. Ich glaube, daß du der Grund bist, warum ich hergeschickt wurde. Das letzte Puzzlesteinchen im Mosaik. Das Dumme ist nur: Ich kann mich nicht daran erinnern, was geschehen ist. Ich kann mich nicht einmal daran erinnern, Mensch gewesen zu sein, oder wie mein Leben war, bevor ich auf der Säule aufgewacht bin."'

    menu:
        '"Warum hast du das vergessen?"':
            # a1380 # r65742
            jump morte_s698

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"Ich kann nicht sagen, woher ich es weiß, Meister, aber ich glaube, *du* warst es. Zumindest einmal. Das Dumme ist nur: Ich kann mich nicht daran erinnern, was geschehen ist. Ich kann mich nicht einmal daran erinnern, Mensch gewesen zu sein, oder wie mein Leben war, bevor ich auf der Säule aufgewacht bin."'

    menu:
        '"Warum hast du das vergessen?"':
            # a1383 # r65746
            jump morte_s698

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"So läuft das nun mal, wenn man stirbt, wie du ja sicher selbst weißt. Du… vergißt einfach. Ich denke, ich war im Leben wohl kein gediegenes Mitglied der Gemeinschaft… aber wer ist das schon?" Morte seufzt. "Ich kann nicht anders. Es gibt nichts Schlimmeres, als die ganze Zeit *ehrlich* zu sein."'

    menu:
        '"Außer man wird in die Höllen geschickt. Das klingt schlimmer als die Wahrheit zu erzählen."' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"Nun, das ist wahr… Aber du mußt deine Lügen sorgfältiger wählen."' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"Ja… du hast Recht. *Schon wieder*." Morte klappert mit den Zähnen. Er tut das so, wie jemand anders, der mit den Fingern trommelt. "Ich glaube, daß alles Gute und Böse, alles Lügen und Betrügen einen eines Tages einholt. Und als ich ins Totenbuch gesteckt wurde, war ich eben an der Reihe."'

    menu:
        '"Also wie bist du dann der Säule entkommen?"':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"Nun… du hast mir geholfen, Meister. Als du an der Schädelsäule aufgekreuzt bist, habe ich mich nach vorne gedrängelt. Mein offensichtlicher Wissensschatz und Charme haben deine Aufmerksamkeit erregt. Du wußtest, daß *ich* der Schädel war, der am meisten wußte. Also habe ich eine Abmachung mit dir getroffen."'

    menu:
        '"Abmachung…?"':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr 'Während Morte spricht, wird dir ganz Rot vor Augen, und du hörst ein heulendes, ein fürchterlich *schreiendes* Meer von Stimmen, durchdringend, kreischend, hämmernd, und ALLE betteln und schreien nach Befreiung, und Mortes Stimme… blaß, fast nicht zu hören in der Menge. Er klingt verzweifelt, verängstigt und… auf klägliche, tragische Weise *verloren*.'

    menu:
        'Echo: "Du. Schädel. Sprich."':
            # a1394 # r65762
            jump morte_s702

        'Mach dich von der Erinnerung frei.':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr 'Die heulenden Stimmen verstummen, und du siehst diesen kleinen Schädel, seine rissige Oberfläche in höllisches Licht getaucht, wie er seine Augen auf dich richtet. Blut und Eiter überströmen den Schädel, und seine Zähne klappern, als wäre ihm kalt. "Ich… ich k-k-kann dir helfen. Ich weiß, w-w-was du suchst… all diese Köpfe… all ihr Wissen… aber bitte, ich *flehe* dich an, befreie mich. Laß mich dir *helfen*. Ich sage dir alles, *alles.*"'

    menu:
        'Echo: "*Wirklich*? SCHWÖRE es, Schädel. SCHWÖRE, daß du mir bis ans Ende meiner Tage dienst, oder du bleibst für immer hier."':
            # a1396 # r65765
            jump morte_s703

        'Mach dich von der Erinnerung frei.':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"Ich schwöre. Ich schwöre… aber bitte, *bitte* befreie mich… Ich…" Morte schluckt schwer, sein Stolz ist regelrecht greifbar. "Ich… *flehe* dich an. Laß mich dir *helfen*. Bitte."'

    menu:
        'Echo: "Sehr gut. Ich werde dich befreien."':
            # a1398 # r65768
            jump morte_s704

        'Mach dich von der Erinnerung frei.':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr 'Dein Blick verschiebt sich, als ob du dich bewegen würdest, und das heulende, schreiende Stimmengewirr setzt wieder ein, ein Alptraum aus Heulen, Katzenjammer, Flüchen und Beschimpfungen… du fühlst, wie deine Hände in den schleimigen Sumpf der Säule gleiten, die Bisse von Zähnen, Kiefern, und deine Hände umfassen den kleinen Schädel und ziehen, reißen ihn von der Säule wie alten Schorf…'

    menu:
        'Echo: "Es ist VOLLBRACHT."':
            # a1400 # r65771
            jump morte_s705

        'Mach dich von der Erinnerung frei.':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr 'Du siehst den blutigen Schädel in deinen Händen an, seine Augen verklebt vom Eiter der Säule, und seine Zähne klappern, einmal, zweimal. Er erinnert dich an ein schreiendes Neugeborenes, hilflos - und in deinen Augen erbärmlich.'

    menu:
        'Echo: "Ich habe dich befreit. Nun bestimme ich über dein Leben… und deinen Tod, Morte."' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        'Echo: "Ich habe dich befreit. Nun bestimme ich über dein Leben… und deinen Tod, Morte."' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr 'Deine Sicht wird unscharf, der Nebel der Vergangenheit verzieht sich, und Morte plappert noch immer. "Wir haben eine ganze Zeit darüber geredet, Meister, du und ich, ob die Abmachung funktionieren würde, und ich glaube, wir waren beide voneinander beeindruckt, also hast du mich von der Säule befreit, und seitdem bin ich nun bei dir."'

    menu:
        '"Aha… Und was geschah dann?"':
            # a1404 # r65777
            jump morte_s707

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"Nun, ich habe nicht gewußt, daß ich alles Wissen der Säule verlieren würde, wenn ich sie verlasse… Ich meine, wie hätte ich das wissen können? Ich bin ja noch nie vorher außerhalb dieses verdammten Dings gewesen… Aber du hattest viel Verständnis dafür…"'

    menu:
        '"Du hast all dein Wissen verloren…?"':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr 'Deine Sicht wird wieder unscharf, dir wird schwindlig, und dein Magen dreht sich dir um - Du hörst das Knacken und Brechen von Knochen, und Mortes Heulen - Er heult vor Schmerz, schreit jemanden an, daß er aufhören soll, aufhören, ihn zu *töten*… und du schlägst um dich, wieder und wieder und…'

    menu:
        'Echo: "VERDAMMT seist du, Schädel, du hast mich BELOGEN. Ich RAMME DICH ZURÜCK IN DIESE VERFLUCHTE SÄULE UND LASS DICH DORT *STERBEN*."':
            # a1410 # r65785
            jump morte_s709

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr 'Du hörst das Geräusch von Knochen, die gegen etwas wie Metall schlagen - ein Boden oder eine Wand, und das Klappern von losen Zähnen. Du hörst Morte, der dich wie ein Hund jaulend anfleht aufzu…'

    menu:
        'Echo: "DEIN LEID IN DER SÄULE IST *NICHTS* GEGEN DIE *QUALEN*, DIE DU BEI MIR ERLEIDEN WIRST."':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr 'Deine Sicht wird verschwommen, und Mortes Schreie verstummen und blenden sich in den Rhythmus seines Plapperns ein. "Dann hast du gemerkt, daß ich immer noch zu etwas gut bin, also bin ich mit dir gegangen und seitdem immer bei dir geblieben."'

    menu:
        '"Morte, was wollte ich von der Säule? Und wie lange ist es her, daß ich dich befreit habe?"':
            # a1416 # r65793
            jump morte_s711

        '"Ach… vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr 'Morte denkt einen Moment nach. "Nun, ich weiß nicht genau, wie lange… Ewig, würde ich sagen. Ich habe immer alles getan, um dir zu helfen, aber…" Morte seufzt. "Es ist nicht leicht. Und was du an der Säule wolltest, weiß ich auch nicht. In dem Moment, als du mich befreitest, konnte ich mich nicht mehr erinnern."'

    menu:
        '"Morte, warum hast du nichts GESAGT, als wir in der Leichenhalle waren?"':
            # a1419 # r65797
            jump morte_s712

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr 'Morte beginnt plötzlich, sich zu verteidigen. "Weil ich nie *weiß*, wer du sein wirst! Einige von deinen Inkarnationen waren echt total verrückt! Einmal bist du aufgewacht und warst davon überzeugt, daß *ich* dein Schädel wäre. Du hast mich um den Turm gejagt und wolltest mich fertigmachen und verschlingen… Gott sei Dank bist du dabei von einem Karren überfahren worden. Ein anderes Mal warst du „gut und rechtschaffen“ und wolltest mich zurück in die Säule zu stopfen, weil das der Ort sei, „wo ich hingehöre“." Morte grinst. "*Deshalb*. Außerdem hat es nie etwas geschadet, daß du„s nicht gewußt hast…"'

    menu:
        '"Und du bist die ganze Zeit über bei mir geblieben?"' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"Vergiß es, Morte. Ich hätte noch ein paar Fragen…"' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"Ja klar, Meister. Ich hab„s dir doch gesagt. Morte hält immer seine Versprechen." Er macht eine Pause. "Nun, meistens. He-he. Da war dieses junge Ding auf Arborea, die…"'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr 'Du merkst plötzlich, daß sich Mortes Tonfall verändert hat. Hinter dem Witz bemerkst du, daß er etwas zu verbergen versucht. Etwas darüber, warum er bei dir ist.'

    menu:
        '"Morte, mal im Ernst, warum bist du immer noch bei mir?"':
            # a1425 # r65806
            jump morte_s715

        '"Also gut. Ich hätte noch ein paar Fragen…"':
            # a1426 # r65807
            jump morte_s329

        '"Macht nichts, Morte. Gehn wir weiter."':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"Meister, ich sagte, es ist, weil ich„s dir versprochen habe, in Ordnung?" Er schaut verstört. "Was soll denn sonst der Grund sein?"'

    menu:
        '"Ich weiß es nicht. Du hättest nicht bei mir bleiben müssen, nachdem ich dich befreit hatte."':
            # a1428 # r65810
            jump morte_s716

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1429 # r65811
            jump morte_s329

        '"Vergiß es, Morte. Gehn wir weiter."':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"Nun, natürlich nicht, Meister, aber ich…" Und plötzlich geht dir durch seinen Tonfall ein Licht auf, und du weißt *warum* er all die Zeit über bei dir geblieben ist.'

    menu:
        '"Du fühlst dich *schuldig*, weil du mich vor so langer Zeit in den Tod geführt hast, oder? Und seitdem leidest du darunter."':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"Ach komm schon, Meister. Ich und *schuldig*? Ich bin„s: Morte."'

    menu:
        '"Nein, ich glaube, das war alles. Als ich dich vor deinem wohlverdienten Schicksal rettete, *konntest* du einfach nicht anders, als mir helfen zu wollen. Und als du hättest verschwinden können, bist du bei mir geblieben, weil du dich mir verpflichtet fühlst."':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr 'Morte schweigt einen Moment und sieht dich an. "Vielleicht. Weißt du, was komisch ist? Am Anfang wußte ich nicht, was für ein Gefühl das ist. Es nagt irgendwie langsam an dir, weißt du?"'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"Ich meine, erst dachte ich, es wäre eine Nebenwirkung irgendeines Zaubers, der mich an dich gebunden hat… Aber nach ein paar hundert Jahren merkte ich, es ist *mehr* als das… etwas Tieferes. Ich fühlte mich einfach irgendwie gebunden, *verbunden* mit dir. Vielleicht ist es all dein Leid, Meister… deine Qualen. Ich weiß es nicht. Vielleicht fühlte ich mich… ich weiß es nicht, *verantwortlich* für was auch immer ich getan habe. Was, wenn ich etwas getan habe, das dich in diese Situation gebracht hat?"'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"Das Dumme ist, ich glaube nicht, daß ich - oder wer immer ich war - jemals *sehen* mußte, welche Auswirkungen meine Lügen und Betrügereien haben, und als ich dich zum ersten Mal gesehen habe, als ich gefangen in der Säule war, da *wußte* ich irgendwie, daß du derjenige warst, den ich verraten habe. Damals… vor langer Zeit." Morte seufzt. "Und das ist alles, was ich weiß."'

    menu:
        '"Verstehe. Danke für die Klärung, Morte."':
            # a1433 # r65821
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"Pah, dank nicht mir…" Morte seufzt. Und zu deiner Überraschung scheint seine Stimme nun irgendwie stärker zu sein, zuversichtlicher. Einige Risse und Brüche seines Schädels sind verschwunden, als wären sie verheilt. "Ich muß dir danken. Ich fühle mich jetzt von einer tonnenschweren Last befreit…"'

    menu:
        '"Ich hätte da noch ein paar Fragen."':
            # a1434 # r65823
            jump morte_s329

        '"Also gut, Morte. Gehn wir weiter."':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"Nun, sie ist eine Nachthexe. Und sie war zweifellos dumm genug, DICH unsterblich zu machen, ausgerechnet dich. Ich meine, sie hätte doch auch mich auswählen können." Morte verdreht die Augen. "Trotzdem: Jemand, der verblödet genug ist, sich mit der Dame der Schmerzen anzulegen, ist nicht unbedingt jemand, den wir suchen sollten."'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1436 # r65827
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"Es ist ein Krieg. Ein riesiger, blutiger, chaotischer Krieg. Er findet überall statt, obwohl du ihn nicht immer sehen kannst."'

    menu:
        '"Erzähl weiter…"':
            # a1438 # r65830
            jump morte_s724

        '"Macht nichts. Ich hätte da noch ein paar Fragen…"':
            # a1439 # r65831
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"Also, Meister, es ist ein Krieg zwischen zwei bösen Rassen: Dämonen und Teufel. Vor langer Zeit wußten sie nichts voneinander. Die Teufel waren böse, aber es war eine Art „geregelte“ Bosheit. Die Dämonen waren auch böse, aber sie gingen lockerer damit um - impulsiver, chaotischer, weniger organisiert. Die Teufel waren wie Politiker, die Dämonen waren wie Metzger."'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"Dann eines Tages trafen sich die beiden Rassen. Sie sahen sich an, und es gefiel ihnen nicht, wie die jeweils andere Rasse mit dem Bösen umging. Und seitdem kämpfen sie. Es ist ein einziger Alptraum. Aber es beschäftigt diese beiden Rassen wenigstens, also fallen sie nicht über die ganzen Ebenen her."'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1441 # r65835
            jump morte_s329

        '"Das ist alles, was ich wissen wollte. Gehn wir."':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"Keine Ahnung, Meister. Ich hab es irgendwie vergessen, als ich starb. Und es macht mir auch nicht viel aus. Wenigstens hat nach meinem Tod etwas auf mich gewartet, auch wenn es das Leben als wandelnder Schädel ist. Ich glaube, es hätte schlimmer kommen können."'

    menu:
        '"Was ist mit deinem Körper geschehen?"':
            # a1443 # r65839
            jump morte_s727

        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1444 # r65840
            jump morte_s329

        '"Also gut. Gehen wir."':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"Hey… Ich weiß es nicht, okay? Es ist einfach weg." Morte schaut dich böse an. "Glaub bloß nicht, daß ich es VERMISSE. Mir geht es gut, so wie ich bin, und ich brauche deine halbseidenen Urteile und spitzen Bemerkungen nicht, verstanden?"'

    menu:
        '"Verstehe. Ich hätte da noch ein paar Fragen…"':
            # a1446 # r65842
            jump morte_s329

        '"Egal. Gehn wir. Los, beweg deine Knochen."':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr 'Morte sieht dich böse an. "Ich bin noch nicht überzeugt, daß du nicht eine Art wandelnder Fluch bist, der dazu verdammt wurde, mir zu folgen."'

    menu:
        '"Wie schön er redet… Gehn wir."':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"Was nagt an dir, Meister?"~ [MRT515]'

    menu:
        '"Kannst du mir noch einmal vorlesen, was auf meinen Rücken tätowiert ist?"':
            # a1449 # r66345
            jump morte_s649

        '"Kannst du mir etwas über Sigil erzählen?"':
            # a1450 # r66346
            jump morte_s659

        '"Morte… Es macht mir nichts aus, wenn du mich begleitest, aber kannst du vielleicht noch etwas *anderes* außer plappern?"' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"Morte… Was sind noch mal deine besonderen Talente?"' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"Morte, warum hast du mir die andere Zeile meiner Tätowierungen verschwiegen?"' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"Ich könnte einen Rat brauchen. Was glaubst du sollten wir jetzt tun?"':
            # a1454 # r66350
            jump morte_s669

        '"Du hast gesagt, du seist ein Mimir, oder, Morte?"' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"Sag mir noch mal, wie du auf der Schädelsäule gelandet bist."' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"Morte, warum bist du mir gefolgt, nachdem ich von der Säule weggegangen bin?"' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"Was weißt du über den Blutkrieg?"' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"Was weißt du über die Nachthexe Ravel?"' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"Wie bist du gestorben, Morte?"':
            # a1460 # r66356
            jump morte_s726

        '"Nichts, Morte. Ich wollte nur sehen, ob du mir noch folgst."':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"Hey, Meister, nimmst du das diesen beiden ab? Sie könnten *mir* noch das eine oder andere beibringen…"~ [MRT387]'

    menu:
        '"Ich glaub es, Morte. Geh„n wir."':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"Ich möchte hier nur mal eine Bemerkung einschieben und darauf hinweisen, daß ich nichts sagen werde, das die allgemeine Stimmung vernichten könnte, Meister. Ich werde hier einfach schweben und beobachten. Kümmere dich nicht um mich - mich hier drüben,wie ich hier schwebe und beobachte, ja, das bin ich."'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"Würdet ihr beide wohl den Quatsch sein lassen, bevor ich gezwungen bin einen Dabus hierherzuholen, um euch auseinanderzubringen!" Morte brummt. "Oder laßt mich zumindest mitquatschen."'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr 'Als du die Macht anwendest, beginnt Morte plötzlich zu sprechen. "Warte einen Moment, Meister. Da gibt es… ein paar Dinge, die du wissen musst."~ [MRT242]'

    menu:
        '"Morte…?! Du bist gar nicht tot!"':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"Also, ja…Wenn du erst mal so lange tot bist wie ich, dann kannst du es auch sehr gut imitieren. Ich habe praktisch eure ganze Unterhaltung angehört. Wende deine Macht auf jemand anderen an… Ich brauch„ das nicht."'

    menu:
        '"Also wolltest du hier *rumliegen*, während sie mir das Fell über die Ohren ziehen?"':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"Nun, *ja*, Meister. Es ist nicht so, als ob du stirbst. Ich meine, wenn du versagt hast, dann brauchst du jemanden, der sich für dich erinnert. Und schließlich weißt du, wie nutzlos ich im Kampf bin… zumindest, wenn ich nicht gerade den einen oder anderen Magier beleidige…"'

    menu:
        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"Dann ist das vielleicht genau das, was du für mich tun mußt. Wir reden *später* darüber, Morte…"' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr 'Du wendest deine Macht wieder an…'

    menu:
        'Belebe Annah wieder.' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        'Belebe Dak„kon wieder.' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        'Belebe Grace, die Gefallene, wieder.' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        'Belebe Nordom wieder.' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        'Belebe Ignus wieder.' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        'Belebe Vhailor wieder.' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr 'Als du deine Macht anwendest, schwebt Morte plötzlich in die Luft. "Äh… Warte, Meister. Du mußt mich nicht zum Leben erwecken. Ich habe hier nur so ein bißchen, äh, rumgelegen und habe eurem Gespräch gelauscht."'

    menu:
        'DU HAST DEINEN TOD VORGETÄUSCHT.':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"Nun, ja, ich meine, ich *bin* doch schon tot und… äh, Meister, was ist mit deiner *Stimme* los?"'

    menu:
        'ICH… BIN NUN ETWAS ANDERES. DIE ZEIT WIRD KNAPP, UND BALD WERDEN MICH DIE ZEIT UND DAS SCHICKSAL EINHOLEN. ICH WERDE DICH ZURÜCK NACH SIGIL BRINGEN, MORTE, WENN DU DAS WÜNSCHST.':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"Wa…? Mich zurückbringen? Und was ist mit *dir*? Komm schon, Meister, ich mag vielleicht ein *Feigling* sein, aber ich werde dich keinesfalls hier zurücklassen."'

    menu:
        'VIELE VERBRECHEN WURDEN BEGANGEN, ALS ICH UND MEINE STERBLICHKEIT GETRENNT WAREN. DIESE VERBRECHEN HABEN IHREN… PREIS. WO ICH BALD SEIN WERDE, KANNST DU NICHT HINGEHEN.':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"Nun, ich *könnte* trotzdem mit dir gehen, Meister, wenn du möchtest. Ich meine, wir haben schon Schlimmeres erl…"'

    menu:
        'NICHT DIESES MAL. VIELLEICHT TREFFEN WIR UNS EINES TAGES WIEDER, AUF EINER ANDEREN EBENE. ABER NICHT JETZT.':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr 'Morte starrt dich kurz an und seufzt. "Ohne jetzt sentimental zu werden… aber es war mir ein Vergnügen, Meister."~ [MRT109]'

    menu:
        'LEB WOHL, MORTE.' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        'LEB WOHL, MORTE.' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr 'Morte starrt dich kurz an und seufzt. "Ohne jetzt sentimental zu werden… aber es war mir ein Vergnügen, Meister."~ [MRT109]'

    menu:
        '"Dann machen wir uns an die Arbeit…"':
            # a1497 # r68409
            jump morte_dispose
