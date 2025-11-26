// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DOJO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DOJO~

IF ~  GlobalGT("CR_Vic","GLOBAL",3)
GlobalLT("CR_Vic","GLOBAL",6)
Global("Alley_Pregnant","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18838 /* ~Der große Mann wirkt riesiger als je zuvor. Ein ausgewetzter brauner Pelz bedeckt ihn von Kopf bis Fuß. "Ojo jetzt wie Mann in Wand", sagt er traurig.~ */
  IF ~~ THEN REPLY #2830 /* ~"Was ist denn hier passiert?"~ */ GOTO 1
  IF ~~ THEN REPLY #18839 /* ~"Wo sind sie alle hin?"~ */ GOTO 2
  IF ~~ THEN REPLY #18840 /* ~"Du bist jetzt eine Werratte?"~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18841 /* ~"Du sprichst besser, Ojo. Was ist passiert?"~ */ GOTO 5
  IF ~~ THEN REPLY #18842 /* ~"Dann lege ich dich lieber um."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18843 /* ~"Oh je. Leb wohl."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2829 /* ~"Großer Pelz. Zähne. Alle Freunde beißen. Manche sein Futter. Manche sein pelzig. Sie Ojo alleinlassen."~ */
  IF ~~ THEN REPLY #18844 /* ~"Und wo sind sie alle hingegangen?"~ */ GOTO 2
  IF ~~ THEN REPLY #18845 /* ~"Die Ratten sind eingefallen? Danke, Ojo. Leb wohl."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #18846 /* ~"Ratten und Pelzmänner kommen. Alle schlagen. Gehen weg zu weinendem Platz. Ojo nicht folgen. Sie kommen zurück. Pelzig und böse."~ */
  IF ~~ THEN REPLY #18847 /* ~"Aha. Gibt's noch was, was ich wissen sollte?"~ */ GOTO 6
  IF ~~ THEN REPLY #18848 /* ~"Aha. Danke, Ojo. Leb wohl."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.5 1.1 2.1 4.1 5.1
  SAY #18849 /* ~Als du dich umdrehst, siehst du, daß der große Mann bereit ist, auf dich loszuspringen. Sein Blick ist wild geworden, und ein kleines Rinnsal Geifer läuft ihm aus dem geöffneten Mund. Seine Zähne sehen sehr scharf aus.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18850 /* ~"Tu's nicht, Ojo. Ich will dir nicht weh tun."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18851 /* ~"Tu's nicht, Ojo. Ich will dir nicht weh tun."~ */ GOTO 8
  IF ~~ THEN REPLY #18852 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #18853 /* ~Sein trauriger Blick wandert hinab zu seinen Händen, dann wieder hoch zu dir. "Ratte." Seine Mundwickel zucken; er lächelt boshaft.~ */
  IF ~~ THEN REPLY #18854 /* ~"Gibt's noch was, was ich wissen sollte?"~ */ GOTO 6
  IF ~~ THEN REPLY #18855 /* ~"Oh je. Leb wohl, Ojo."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #18856 /* ~"Dann sorg ich am besten dafür, daß du keine anderen infizierst. Bereite dich darauf vor, zu sterben."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #18857 /* ~Er zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #18858 /* ~"Gibt's noch was, was ich wissen sollte?"~ */ GOTO 6
  IF ~~ THEN REPLY #18859 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 2.0 4.0 5.0
  SAY #18860 /* ~"Du gehen. Ratten beißen. Dann ich dich beißen."~ */
  IF ~~ THEN REPLY #18861 /* ~"Nun denn. Leb wohl."~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.0
  SAY #18862 /* ~Er hält inne... seine Muskeln entspannen sich langsam. "Gehen. Oder ich beißen."~ */
  IF ~~ THEN REPLY #18863 /* ~Geh.~ */ DO ~SetGlobal("Ojo","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #18864 /* ~Greif ihn an.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1
  SAY #18865 /* ~Er ignoriert deine Worte und springt auf dich los!~ */
  IF ~~ THEN REPLY #18866 /* ~"Ojo, warte!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18867 /* ~"Wenn es denn sein muß..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("Ojo","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #18868 /* ~Der große Mann dreht sich in deine Richtung, geht in Angriffstellung und springt!~ */
  IF ~~ THEN REPLY #18869 /* ~"Ojo, warte!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18870 /* ~"Wenn es denn sein muß..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 10 // from:
  SAY #18871 /* ~Ojo dreht sich von der Wand weg und schaut dich stumpfsinnig an.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 197
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18872 /* ~Ojo dreht sich von der Wand weg und starrt Morte mit glühenden Augen an.~ */
  IF ~~ THEN REPLY #18873 /* ~"Okay, Morte, das reicht."~ */ EXTERN ~DMORTE~ 198
  IF ~~ THEN REPLY #18874 /* ~"Ojo, ich hätte da ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #18875 /* ~"Laß uns von hier verschwinden. Leb wohl, Ojo."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 12 // from: 11.1 16.0 17.0 18.4 19.1 20.2 22.2 23.1 27.3 28.2 29.1 30.2 31.1 32.3 33.6 35.1 36.1 37.1 38.2 39.1 40.4 41.4 42.4 43.3
  SAY #18876 /* ~Ojo starrt einfach vor sich hin.~ */
  IF ~  Global("Know_Ojo_Wall","GLOBAL",1)
~ THEN REPLY #18877 /* ~"Kannst du mir noch mal was über den Mann in der Wand erzählen?"~ */ GOTO 27
  IF ~~ THEN REPLY #18878 /* ~"Erzähl mir noch mal was über dich."~ */ GOTO 17
  IF ~~ THEN REPLY #18879 /* ~"Was machst du da?"~ */ GOTO 18
  IF ~~ THEN REPLY #18880 /* ~"Erzähl mir was über die Leute aus diesem Dorf."~ */ GOTO 33
  IF ~~ THEN REPLY #18881 /* ~"Erzähl mir was über die Katakomben."~ */ GOTO 21
  IF ~~ THEN REPLY #18882 /* ~"Erzähl mir was über das Begrabene Dorf."~ */ GOTO 21
  IF ~~ THEN REPLY #18883 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 14.0 15.0 21.0
  SAY #18884 /* ~Er blinzelt dir zu.~ */
  IF ~~ THEN REPLY #18885 /* ~Zeig auf ihn: "Wer bist du?"~ */ GOTO 16
  IF ~~ THEN REPLY #18886 /* ~"Vergiß es. Ich hätte da noch andere Fragen..."~ */ GOTO 15
  IF ~~ THEN REPLY #18887 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 14 // from:
  SAY #18888 /* ~Du siehst einen stämmigen Mann mit hängendem Kiefer. Der Funke der Intelligenz erhellt seinen Blick nur schwach.~ */
  IF ~~ THEN REPLY #18889 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #18890 /* ~"Was machst du da?"~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18891 /* ~"Erzähl mir was über die Leute aus diesem Dorf."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18892 /* ~"Erzähl mir was über die Katakomben."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18893 /* ~"Erzähl mir was über das Begrabene Dorf."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ GOTO 21
  IF ~~ THEN REPLY #18894 /* ~"Ach, vergiß es. Leb wohl."~ */ DO ~SetGlobal("Know_Ojo","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #18895 /* ~Der Mann blinzelt dir zu.
~ */
  IF ~~ THEN REPLY #18896 /* ~"Erzähl mir was von dir."~ */ GOTO 13
  IF ~~ THEN REPLY #18897 /* ~"Was machst du?"~ */ GOTO 21
  IF ~~ THEN REPLY #18898 /* ~"Erzähl mir was über die Leute aus diesem Dorf."~ */ GOTO 21
  IF ~~ THEN REPLY #18899 /* ~"Erzähl mir was über die Katakomben."~ */ GOTO 21
  IF ~~ THEN REPLY #18900 /* ~"Erzähl mir was über das Begrabene Dorf."~ */ GOTO 21
  IF ~~ THEN REPLY #18901 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.0
  SAY #18902 /* ~"Ojo."~ */
  IF ~~ THEN REPLY #18903 /* ~"Okay, Ojo. Ich hätte da ein paar Fragen an dich..."~ */ GOTO 12
  IF ~~ THEN REPLY #18904 /* ~"Danke, Ojo. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.1
  SAY #18905 /* ~Er zuckt mit den Achseln.~ */
  IF ~~ THEN REPLY #18906 /* ~"Okay... dann beantworte mir ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18907 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.2
  SAY #18908 /* ~"Ojo sprechen..." Er bricht plötzlich ab und reibt sich die Hand.~ */
  IF ~~ THEN REPLY #18909 /* ~Schau dir seine Hand genau an.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18910 /* ~"Mit wem redest du?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18911 /* ~"Mit wem redest du?"~ */ GOTO 24
  IF ~~ THEN REPLY #18912 /* ~"Was?"~ */ GOTO 22
  IF ~~ THEN REPLY #18913 /* ~"Okay. Ich hätte da noch ein paar andere Fragen an dich."~ */ GOTO 12
  IF ~~ THEN REPLY #18914 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18915 /* ~Auf seiner Haut ist eine kleiner, eitriger Wundschorf zu sehen. Du siehst, wie er ihn wieder abzieht.~ */
  IF ~~ THEN REPLY #18916 /* ~"Was ist mit deiner Hand passiert?"~ */ GOTO 20
  IF ~~ THEN REPLY #18917 /* ~"Ich hätte da noch ein paar andere Fragen an dich, Ojo."~ */ GOTO 12
  IF ~~ THEN REPLY #18918 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #18919 /* ~"Biß."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18920 /* ~"Wer hat dich gebissen, Ojo?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18921 /* ~"Wer hat dich gebissen, Ojo?"~ */ GOTO 24
  IF ~~ THEN REPLY #18922 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #18923 /* ~"Leb wohl, Ojo."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 12.4 12.5 14.1 14.2 14.3 14.4 15.1 15.2 15.3 15.4
  SAY #18924 /* ~"Nicht mit Fremden sprechen." Er wendet seinen Blick ab und reibt sich die Hand.
~ */
  IF ~~ THEN REPLY #18925 /* ~"Okay. Erzähl mir was über dich."~ */ GOTO 13
  IF ~~ THEN REPLY #18926 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 18.3
  SAY #18927 /* ~"Ojo sprechen." Er dreht sich weg.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18928 /* ~"Mit wem redest du?"~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #18929 /* ~"Mit wem redest du?"~ */ GOTO 24
  IF ~~ THEN REPLY #18930 /* ~"Okay. Ich hätte da noch ein paar andere Fragen an dich."~ */ GOTO 12
  IF ~~ THEN REPLY #18931 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 18.1 20.0 22.0 40.0 41.1 42.1 43.0
  SAY #18932 /* ~Er schaut zur Wand, dann zurück zu dir. "Mann in Wand."~ */
  IF ~~ THEN REPLY #18933 /* ~"Da ist ein Mann in der Wand?"~ */ DO ~SetGlobal("Know_Ojo_Wall","GLOBAL",1)
~ GOTO 27
  IF ~~ THEN REPLY #18934 /* ~"Äh, okay. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 12
  IF ~~ THEN REPLY #18935 /* ~"Verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 18.2 20.1 22.1 40.1 41.2 42.2 43.1
  SAY #18936 /* ~Mit zusammengekniffenen Augen schaut Ojo auf eine der Wände, dann zurück zu dir; seine Mundwickel zucken. "Wer du? Du gehen."~ */
  IF ~~ THEN REPLY #18937 /* ~"Ich wollte dir nur noch ein paar andere Fragen stellen, Ojo."~ */ GOTO 25
  IF ~~ THEN REPLY #18938 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #18939 /* ~"Nein! Du gehen!" Er wird unruhig.~ */
  IF ~~ THEN REPLY #18940 /* ~"Nur noch ein paar andere Fragen."~ */ GOTO 26
  IF ~~ THEN REPLY #18941 /* ~"Okay. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18942 /* ~Er flüchtet sich stolpernd in die nächste Ecke. Keine Überredungskunst vermag es, ihn dazu zu bringen, sich wieder umzudrehen oder dir zu antworten.~ */
  IF ~~ THEN REPLY #18943 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 12.0 23.0 28.1 29.0 30.1 31.0 32.2
  SAY #18944 /* ~Er sieht zur Wand und dann wieder zu dir.~ */
  IF ~~ THEN REPLY #18945 /* ~"Was sagt der Mann in der Wand?"~ */ GOTO 28
  IF ~~ THEN REPLY #18946 /* ~"Wie sieht der Mann in der Wand aus?"~ */ GOTO 30
  IF ~~ THEN REPLY #18947 /* ~"In welcher Wand ist er?"~ */ GOTO 32
  IF ~~ THEN REPLY #18948 /* ~"Okay. Ich hätte da noch ein paar andere Fragen an dich."~ */ GOTO 12
  IF ~~ THEN REPLY #18949 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #18950 /* ~"Er erzählt von dem Ort der weinenden Steine. Erzählt Geschichten. Ich erzähle auch Geschichten."~ */
  IF ~~ THEN REPLY #18951 /* ~"Geschichten über was?"~ */ GOTO 29
  IF ~~ THEN REPLY #18952 /* ~"Ich hätte da noch ein paar andere Fragen zum Mann in der Wand..."~ */ GOTO 27
  IF ~~ THEN REPLY #18953 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18954 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #18955 /* ~Er sieht zur Wand und verfällt in Schweigen.~ */
  IF ~~ THEN REPLY #18956 /* ~"Okay. Erzähl mir noch mal was über den Mann in der Wand."~ */ GOTO 27
  IF ~~ THEN REPLY #18957 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18958 /* ~"Na dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1
  SAY #18959 /* ~"Klein. Rote Augen. Behaart."~ */
  IF ~~ THEN REPLY #18960 /* ~"Klingt nach einer Ratte."~ */ GOTO 31
  IF ~~ THEN REPLY #18961 /* ~"Okay. Ich hätte da noch ein paar andere Fragen zum Mann in der Wand..."~ */ GOTO 27
  IF ~~ THEN REPLY #18962 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18963 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0 32.0 32.1
  SAY #18964 /* ~Er nickt.~ */
  IF ~~ THEN REPLY #18965 /* ~"Okay. Ich hätte da noch ein paar andere Fragen zum Mann in der Wand..."~ */ GOTO 27
  IF ~~ THEN REPLY #18966 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18967 /* ~"Danke, Ojo. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 27.2
  SAY #18968 /* ~Er zeigt auf eine Wand. Du bemerkst darin ein kleines Loch. Bei näherem Hinsehen stellst du fest, daß das Loch ausgefranst ist, als ob sich da eine Ratte durchgefressen hätte.~ */
  IF ~~ THEN REPLY #18969 /* ~"Das sieht aus, als ob eine Ratte dran gekaut hätte."~ */ GOTO 31
  IF ~~ THEN REPLY #18970 /* ~"Ist der Mann in der Wand eine Ratte?"~ */ GOTO 31
  IF ~~ THEN REPLY #18971 /* ~"Aha... Ojo, ich hätte da noch ein paar andere Fragen zum Mann in der Wand..."~ */ GOTO 27
  IF ~~ THEN REPLY #18972 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18973 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 12.3 35.0 36.0 37.0 38.1 39.0 40.3 41.3 42.3 43.2
  SAY #18974 /* ~"Wer?"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #18975 /* ~"Annah."~ */ GOTO 34
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18976 /* ~"Annah."~ */ GOTO 35
  IF ~~ THEN REPLY #18977 /* ~"Marta."~ */ GOTO 36
  IF ~~ THEN REPLY #18978 /* ~"Pharod."~ */ GOTO 37
  IF ~~ THEN REPLY #18979 /* ~"Gris."~ */ GOTO 38
  IF ~~ THEN REPLY #18980 /* ~"Quint."~ */ GOTO 39
  IF ~~ THEN REPLY #18981 /* ~"Ich will dich was anderes fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18982 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #18983 /* ~Er wirft Annah einen angsterfüllten Blick zu.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 109
END

IF ~~ THEN BEGIN 35 // from: 33.1
  SAY #18984 /* ~"Gemeines Mädchen."~ */
  IF ~~ THEN REPLY #18985 /* ~"Okay. Erzähl mir was über die anderen."~ */ GOTO 33
  IF ~~ THEN REPLY #18986 /* ~"Okay. Ich hätte da noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18987 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 33.2
  SAY #18988 /* ~"Unheimliche Hexe."~ */
  IF ~~ THEN REPLY #18989 /* ~"Okay. Erzähl mir was über die anderen."~ */ GOTO 33
  IF ~~ THEN REPLY #18990 /* ~"Okay. Ich hätte da noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18991 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 33.3
  SAY #18992 /* ~"Schön-seltsam."~ */
  IF ~~ THEN REPLY #18993 /* ~"Okay. Erzähl mir was über die anderen."~ */ GOTO 33
  IF ~~ THEN REPLY #18994 /* ~"Okay. Ich hätte da noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #18995 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 33.4
  SAY #18996 /* ~Seine Augen verengen sich plötzlich. "Tot."~ */
  IF ~~ THEN REPLY #18997 /* ~"Woher weißt du, daß er tot ist?"~ */ GOTO 40
  IF ~~ THEN REPLY #18998 /* ~"Okay. Erzähl mir was über die anderen."
~ */ GOTO 33
  IF ~~ THEN REPLY #18999 /* ~"Okay. Ich hätte da noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #19000 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 33.5
  SAY #19001 /* ~"Kwint."~ */
  IF ~~ THEN REPLY #19002 /* ~"Okay. Erzähl mir was über die anderen."~ */ GOTO 33
  IF ~~ THEN REPLY #19003 /* ~"Okay. Ich hätte da noch ein paar andere Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #19004 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0
  SAY #19005 /* ~"Mann in Wand hat's mir gesagt."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19006 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19007 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 24
  IF ~~ THEN REPLY #19008 /* ~"Was hat er dir gesagt?"~ */ GOTO 41
  IF ~~ THEN REPLY #19009 /* ~"Erzähl mir was über die anderen Dorfbewohner."~ */ GOTO 33
  IF ~~ THEN REPLY #19010 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #19011 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.2
  SAY #19012 /* ~"Gris tot."~ */
  IF ~~ THEN REPLY #19013 /* ~"Wo ist Gris?"~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19014 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19015 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 24
  IF ~~ THEN REPLY #19016 /* ~"Erzähl mir was über die anderen Dorfbewohner."~ */ GOTO 33
  IF ~~ THEN REPLY #19017 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #19038 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #19018 /* ~"Am weinenden Ort."~ */
  IF ~~ THEN REPLY #19019 /* ~"Meinst du die Katakomben der Weinenden Steine?"~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19020 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19021 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 24
  IF ~~ THEN REPLY #19022 /* ~"Erzähl mir was über die anderen Dorfbewohner."~ */ GOTO 33
  IF ~~ THEN REPLY #19023 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #19024 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19025 /* ~Er nickt.~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #19026 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,14,CHR)
~ THEN REPLY #19027 /* ~"Erzähl mir was über den Mann in der Wand."~ */ GOTO 24
  IF ~~ THEN REPLY #19028 /* ~"Erzähl mir was über die anderen Dorfbewohner."~ */ GOTO 33
  IF ~~ THEN REPLY #19029 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 12
  IF ~~ THEN REPLY #19030 /* ~"Leb wohl."~ */ EXIT
END
