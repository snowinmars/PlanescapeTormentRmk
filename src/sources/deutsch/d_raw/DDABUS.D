// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDABUS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DDABUS~

IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1782 /* ~Du siehst eine große Gestalt mit einer weißen Mähne. Ihre Haut schimmert grünlich, und auf ihrer Stirn prangen zwei Ziegenhörner. Sie trägt eine lange, fließende Robe und scheint dicht über dem Boden zu schweben.~ */
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #1784 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 2
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
~ THEN REPLY #1783 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #1785 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #6863 /* ~Laß das Wesen in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2781 /* ~Die Gestalt dreht sich zu dir um; sein Kopf ist von mehreren Symbolen umgeben. Die Symbole leuchten schwach, und ... sie schweben.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 52
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #1786 /* ~Die Gestalt dreht sich zu dir um; sein Kopf ist von mehreren Symbolen umgeben. Die Symbole leuchten schwach, und ... sie schweben.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 34
END

IF ~~ THEN BEGIN 3 // from:
  SAY #1787 /* ~Der Dabus wartet geduldig, seine Hände sind in den Ärmelaufschlägen verborgen. Verschiedene Symbole materialisieren sich über seinem Kopf und verschwinden wieder, bevor schließlich ein Fragezeichen erscheint.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6864 /* ~Versuch eine Unterhaltung anzufangen, und probiere, ob du übersetzen kannst, was der Dabus sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6867 /* ~Versuch, ein Gespräch zu beginnen; vielleicht kannst du ja übersetzen, was der Dabus gerade sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6869 /* ~Versuch mit dem Dabus zu reden, probier aus, ob du es verstehst.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6870 /* ~"Ich hätte ein paar Fragen an dich..."~ */ GOTO 8
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6871 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6872 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6873 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6874 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6875 /* ~"Annah, kannst du für mich übersetzen, was er gerade sagt?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6876 /* ~"Dak'kon, kannst du für mich übersetzen, was er gerade sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6877 /* ~"Grace, kannst du für mich übersetzen, was er gerade sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6878 /* ~"Es tut mir leid, aber ich kann dich nicht verstehen."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6879 /* ~"Ähh... Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 22.0 22.1
  SAY #6730 /* ~Du stellst dem Dabus verschiedene Fragen, um ein Gefühl für die Bilderrätsel zu bekommen, die über seinem Kopf erscheinen. Während der 'Unterhaltung' ist er äußerst geduldig und gibt dir leicht zu lösende Bilderrätsel auf. Nach einigen Minuten hast du den Bogen raus... es kommt dir vor, als hättest du das schon mal gemacht.~ */
  IF ~~ THEN REPLY #6880 /* ~"Vielleicht kannst du mir helfen..."~ */ GOTO 8
  IF ~~ THEN REPLY #6881 /* ~"Wollte nur mal wieder ein Bilderrätsel lösen. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 3.2 22.2
  SAY #6731 /* ~Du stellst dem Dabus verschiedene Fragen, um ein Gefühl für die Bilderrätsel zu bekommen, die über seinem Kopf erscheinen. Obwohl er während der 'Unterhaltung,' äußerst geduldig ist, scheint es, als ob du den Bogen nicht rauskriegst. Schließlich hört er auf, Symbole hervorzuzaubern und wartet einfach ab.~ */
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6882 /* ~"Morte, kannst du mir übersetzen, was er sagt?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6883 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6884 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"
~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6885 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6886 /* ~"Annah, kannst du für mich übersetzen, was er gerade sagt?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6887 /* ~"Dak'kon, kannst du für mich übersetzen, was er gerade sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6888 /* ~"Grace, kannst du für mich übersetzen, was er gerade sagt?"
~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6889 /* ~"Es tut mir leid, aber ich kann dich nicht verstehen."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~~ THEN REPLY #6890 /* ~"Ähh... Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.12 4.1 5.8 8.6 9.1 10.1 10.2 11.1 12.1 12.2 19.3 22.12
  SAY #6732 /* ~Der Dabus verbeugt sich leicht. Symbole umschwirren seinen Kopf, und dann wendet er sich ab.~ */
  IF ~~ THEN REPLY #6891 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.11 5.7 22.4
  SAY #6733 /* ~Verschiedene Symbole erscheinen über dem Kopf des Dabus. Er verbeugt sich leicht und wendet sich ab.~ */
  IF ~~ THEN REPLY #6892 /* ~"Ähm... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.3 4.0 9.0 10.0 11.0 12.0 19.2 22.3
  SAY #6734 /* ~Der Dabus wartet.~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6893 /* ~"Wer bist du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 9
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #6894 /* ~"Was machst du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 10
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6895 /* ~"Wer bist du?"~ */ DO ~FloatRebus(Myself)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #6896 /* ~"Was machst du da?"~ */ DO ~FloatRebus(Myself)
~ GOTO 12
  IF ~  Global("Know_Lady","GLOBAL",1)
Global("Know_Dabus","GLOBAL",1)
~ THEN REPLY #6897 /* ~"Was kannst du mir über die Dame der Schmerzen erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 19
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #6898 /* ~"Kannst du mir was über Fell erzählen?"~ */ DO ~FloatRebus(Myself)
~ GOTO 20
  IF ~~ THEN REPLY #6899 /* ~"Auf bald."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #6735 /* ~Der Dabus neigt ein wenig sein Haupt, und eine Reihe von Symbolen erscheint über seinem Kopf. Du glaubst, daß er sagen will, er sei ein Dabus.~ */
  IF ~~ THEN REPLY #6902 /* ~"Ich hätte da noch eine andere Frage an dich."~ */ GOTO 8
  IF ~~ THEN REPLY #6903 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #6736 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus. Du glaubst, daß er sagen will, er widme sich seiner Pflicht... oder seinen Pflichten.~ */
  IF ~~ THEN REPLY #6904 /* ~"Ich hätte da noch eine Frage an dich..."~ */ GOTO 8
  IF ~~ THEN REPLY #6905 /* ~"Sehr anschaulich. Danke. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6906 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 11 // from: 8.2
  SAY #6737 /* ~Der Dabus neigt ein wenig sein Haupt und eine Reihe von Symbolen erscheint über seinem Kopf. (Ich bin ein Dabus.)~ */
  IF ~~ THEN REPLY #6900 /* ~"Ich hätte noch eine Frage an dich."~ */ GOTO 8
  IF ~~ THEN REPLY #6901 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 12 // from: 8.3
  SAY #6738 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus. (Ich widme mich meiner Pflicht.)~ */
  IF ~~ THEN REPLY #6907 /* ~"Ich hätte da noch eine Frage an dich..."~ */ GOTO 8
  IF ~~ THEN REPLY #6908 /* ~"Sehr anschaulich. Danke. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
  IF ~~ THEN REPLY #6909 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #6739 /* ~Der Dabus neigt ein wenig sein Haupt, und eine Reihe von Symbolen erscheint über seinem Kopf.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6910 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6911 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6912 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6913 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 14 // from:
  SAY #6740 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6914 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6915 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6916 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY #6741 /* ~Der Dabus neigt ein wenig sein Haupt, und eine Reihe von Symbolen erscheint über seinem Kopf. Du glaubst, daß er sagen will, er sei ein Dabus.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6917 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6918 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6919 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6920 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 16 // from:
  SAY #6742 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus. Du glaubst, daß er sagen will, er widme sich seiner Pflicht... oder seinen Pflichten.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6921 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6922 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6923 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY #6743 /* ~Der Dabus neigt ein wenig sein Haupt und eine Reihe von Symbolen erscheint über seinem Kopf. (Ich bin ein Dabus.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #6924 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 41
  IF ~  Global("Translate_Dabus","GLOBAL",1)
NearbyDialog("DMorte")
~ THEN REPLY #6925 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 42
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6926 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 2
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6927 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 2
END

IF ~~ THEN BEGIN 18 // from:
  SAY #6744 /* ~Eine ganze Menge Symbole erscheinen über dem Kopf des Dabus. (Ich widme mich meiner Pflicht.)~ */
  IF ~  Global("Translate_Dabus","GLOBAL",1)
~ THEN REPLY #6928 /* ~"Was hat er gesagt, Annah?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DANNAH~ 44
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6929 /* ~"Was hat er gesagt, Dak'kon?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 3
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6930 /* ~"Was hat er gesagt, Grace?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 3
END

IF ~~ THEN BEGIN 19 // from: 8.4
  SAY #6745 /* ~Über dem Kopf des Dabus erscheint ein einzelnes Symbol. Es zeigt eine metallene weibliche Maske, aus deren Seite Klingen herausragen. Der bloße Anblick dieses gespenstischen Bildes läßt dich erschauern.~ */
  IF ~  Global("Translate_Dabus","GLOBAL",3)
~ THEN REPLY #6931 /* ~"Äh... nicht ganz die Antwort, die ich erwartet hatte."~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DGRACE~ 4
  IF ~  Global("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6932 /* ~"Ähh... Ich verstehe. Dak'kon, kannst du ihm noch eine Frage stellen?"~ */ DO ~FloatRebus(Myself)
~ EXTERN ~DDAKKON~ 1
  IF ~  GlobalLT("Translate_Dabus","GLOBAL",2)
~ THEN REPLY #6933 /* ~"Ähh... Ich hätte da noch eine Frage an dich..."~ */ DO ~FloatRebus(Myself)
~ GOTO 8
  IF ~~ THEN REPLY #6934 /* ~"Ähh... Das ist alles, was ich wissen wollte. Leb wohl."~ */ DO ~FloatRebus(Myself)
SetGlobal("Translate_Dabus","GLOBAL",0)
~ GOTO 6
END

IF ~~ THEN BEGIN 20 // from: 8.5
  SAY #6746 /* ~Über dem Kopf des Dabus erscheint ein einzelnes Symbol. Es ist ein weißes Oval, das durch einen schwarzen Blitz geteilt wird. Der Dabus läßt das Symbole einige Sekunden lang erscheinen und wendet sich dann ab, ohne dich zu beachten.~ */
  IF ~~ THEN REPLY #6935 /* ~"Ähh... dann leb wohl."~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",0)
~ EXIT
END

IF ~  Global("Know_Dabus","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #6747 /* ~Du siehst einen Dabus. Er ist in eine lange, fließende Robe gehüllt und schwebt dicht über dem Boden.~ */
  IF ~~ THEN REPLY #6936 /* ~"Sei gegrüßt."~ */ DO ~FloatRebus(Myself)
~ GOTO 22
  IF ~~ THEN REPLY #6938 /* ~Laß den Dabus in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 0.1 21.0
  SAY #6748 /* ~Er dreht sein Gesicht zu dir, und eine Reihe von Symbolen erscheint um seinen Kopf herum. Die Symbole sind von schwach glühendem Licht umrandet und... schweben dort einfach in der Luft.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6939 /* ~Versuch, ein Gespräch zu beginnen, vielleicht kannst du ja verstehen, was das Geschöpf sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,WIS)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6940 /* ~Versuch, ein Gespräch zu beginnen, vielleicht kannst du ja verstehen, was das Geschöpf sagt.~ */ DO ~FloatRebus(Myself)
SetGlobal("Know_Dabus_Speak","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6941 /* ~Versuch, mit ihm zu sprechen - sieh, ob du es verstehen kannst.~ */ DO ~FloatRebus(Myself)
~ GOTO 5
  IF ~  Global("Know_Dabus_Speak","GLOBAL",1)
~ THEN REPLY #6942 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~  Global("Know_Dabus_Speak","GLOBAL",0)
~ THEN REPLY #6943 /* ~"Tut mir leid... Ich kann dich nicht verstehen."~ */ DO ~FloatRebus(Myself)
~ GOTO 7
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #6944 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 114
  IF ~  NearbyDialog("DMorte")
NearbyDialog("DAnnah")
~ THEN REPLY #6945 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 117
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
NearbyDialog("DDakkon")
~ THEN REPLY #6946 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 118
  IF ~  NearbyDialog("DMorte")
!NearbyDialog("DAnnah")
!NearbyDialog("DDakkon")
NearbyDialog("DGrace")
~ THEN REPLY #6947 /* ~"Morte, kannst du mir übersetzen, was er gerade sagt?"~ */ EXTERN ~DMORTE~ 119
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #6948 /* ~"Annah, kannst du für mich übersetzen, was er gerade sagt?"~ */ EXTERN ~DANNAH~ 38
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #6949 /* ~"Dak'kon, kannst du übersetzen, was es sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",2)
~ EXTERN ~DDAKKON~ 1
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #6950 /* ~"Grace, kannst du übersetzen, was er sagt?"~ */ DO ~SetGlobal("Translate_Dabus","GLOBAL",3)
~ EXTERN ~DGRACE~ 1
  IF ~~ THEN REPLY #6951 /* ~"Schon gut. Tut mir leid, daß ich dich gestört habe. Leb wohl."~ */ DO ~FloatRebus(Myself)
~ GOTO 6
END
