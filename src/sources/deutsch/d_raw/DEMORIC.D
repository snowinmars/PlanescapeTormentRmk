// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DEMORIC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DEMORIC~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #1790 /* ~Du siehst einen kräftig gebauten Mann mit dunkler Haut und strengen Gesichtszügen. Er trägt eine Staubmenschen-Robe und schaut dich mit steinernem Blick an.
~ */
  IF ~~ THEN REPLY #1791 /* ~"Sei gegrüßt."~ */ GOTO 3
  IF ~~ THEN REPLY #14590 /* ~Ignoriere den Mann.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 96 even though they appear after this state */
~  Global("Emoric","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #14589 /* ~Du siehst Emoric. Er sieht dich mit versteinertem Blick an.~ */
  IF ~  !Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14591 /* ~"Ich hätte da ein paar Fragen an dich."~ */ GOTO 6
  IF ~  Global("Join_Dustmen","GLOBAL",2)
~ THEN REPLY #14592 /* ~"Ich hätte da ein paar Fragen an dich."~ */ GOTO 2
  IF ~~ THEN REPLY #14823 /* ~Ignoriere Emoric und geh weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #14824 /* ~"Du hast uns verraten." Emoric verstummt, und es klingt so, als ob er ein Urteil verkündete. "Du bist kein Staubmensch mehr."~ */
  IF ~~ THEN REPLY #14825 /* ~"Ich verstehe. Aber da gibt es immer noch ein paar Dinge, die ich gerne wissen möchte... "~ */ GOTO 6
  IF ~~ THEN REPLY #14826 /* ~"Entschuldige die Störung. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14827 /* ~"Du hast das Aussehen von einem, der verloren ist." Die Stimme des Mannes hört sich wie ein sich senkender Stein an. "Hat der Wind dich gesandt, oder bist du mit einem Ziel hier?"~ */
  IF ~~ THEN REPLY #14828 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Emoric","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #14829 /* ~"Ich bin nur zu Besuch. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #14830 /* ~"Ich bin Emoric, Faktotum und Eingeweihter des Vierten Kreises."~ */
  IF ~~ THEN REPLY #14831 /* ~"Ist das deine Bar?"~ */ GOTO 5
  IF ~~ THEN REPLY #14832 /* ~"Na gut. Mehr wollte ich nicht wissen. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.0
  SAY #14833 /* ~"Wenn du Besitztum in Kupfer mißt, ist dies nicht mein Etablissement. Wenn du Besitztum in Geist mißt, gehört es mir." Er hält inne, als ob er versucht, seine Worte zu betonen. "Die Staubmenschen hier sind meine Schüler. Sie stehen unter meinem Schutz."
~ */
  IF ~~ THEN REPLY #14834 /* ~"Kann ich dich mal was fragen...?"~ */ GOTO 6
  IF ~~ THEN REPLY #14835 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0 2.0 5.0 7.4 8.4 9.4 10.2 11.4 12.3 13.1 14.3 15.1 16.1 18.1 19.1 20.0 21.3 24.0 25.0 26.1 27.2 28.0 29.2 30.4 31.2 38.4 39.2 40.0 41.2 42.2 43.1 44.2 45.2 46.2 47.4 48.2 49.1 50.1 51.1 52.3 53.0 54.1 56.0 57.3 62.3 67.4 68.0 80.8 81.5 82.5 83.2 84.2 86.3 87.2 88.5 89.1 90.3 91.2 92.2 93.4 94.1 96.1 97.2 98.4 99.4 100.4 101.3 102.2
  SAY #14836 /* ~Emoric wartet.~ */
  IF ~~ THEN REPLY #14837 /* ~"Ist das deine Bar?"~ */ GOTO 5
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14838 /* ~"Kannst du mir etwas über den Bund der Staubmenschen erzählen?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 26
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #14839 /* ~"Kannst du mir etwas über den Bund der Staubmenschen erzählen?"~ */ GOTO 26
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #14840 /* ~"Ich würde mich gern dem Bund der Staubmenschen anschließen."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #14841 /* ~"Ich würde mich gern dem Bund der Staubmenschen anschließen."~ */ GOTO 41
  IF ~  Global("Join_Dustmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #14842 /* ~"Ich würde mich gern dem Bund der Staubmenschen anschließen."~ */ GOTO 41
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
Global("Dustman_Initiation","GLOBAL",0)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14843 /* ~"Ich würde mich gern dem Bund der Staubmenschen anschließen."~ */ GOTO 97
  IF ~  Global("Dustman_Initiation","GLOBAL",0)
Global("Join_Anarchists","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14844 /* ~Staubmenschen für Anarchisten unterwandern: "Ich möchte mich gern dem Bund der Staubmenschen anschließen."~ */ GOTO 97
  IF ~  GlobalGT("Know_Contract","GLOBAL",0)
Global("Emoric_Contract","GLOBAL",0)
~ THEN REPLY #14845 /* ~"Kannst du mir etwas über die Todesverträge erzählen?"~ */ GOTO 29
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #14846 /* ~"Ich bin auf der Suche nach einem Journal."~ */ GOTO 25
  IF ~  Global("Emoric_Pharod","GLOBAL",0)
Global("Pharod","GLOBAL",0)
~ THEN REPLY #14847 /* ~"Ich suche nach einem Mann namens Pharod. Hast du ihn gesehen?"~ */ GOTO 7
  IF ~  Global("Emoric_Pharod","GLOBAL",2)
GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14848 /* ~"Ich habe mit Pharod geredet und rausgekriegt, woher Pharod die Leichen bekommt, die er dir bringt."~ */ GOTO 21
  IF ~  Global("Emoric_Pharod","GLOBAL",1)
~ THEN REPLY #14849 /* ~"A propos, dieser Job, nach Pharod zu suchen und ihn zu fragen, woher die Leichen kommen... ist der noch zu haben?"~ */ GOTO 17
  IF ~  Global("Dustman_Initiation","GLOBAL",2)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14850 /* ~"Ich habe mit Norochj gesprochen und getan, was er verlangt hat."~ */ GOTO 55
  IF ~  Global("Dustman_Initiation","GLOBAL",3)
GlobalGT("Await","GLOBAL",1)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14851 /* ~"Ich habe mit Den-Tod-Erwartend gesprochen."~ */ GOTO 59
  IF ~  Global("Dustman_Initiation","GLOBAL",4)
GlobalGT("Sere","GLOBAL",0)
Global("Join_Dustmen","GLOBAL",0)
~ THEN REPLY #14852 /* ~"Ich habe mit Sere gesprochen."~ */ GOTO 63
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14854 /* ~"Ich habe Soego gefunden."~ */ GOTO 69
  IF ~  Global("Dustman_Initiation","GLOBAL",5)
Global("Join_Dustmen","GLOBAL",0)
GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #14855 /* ~"Ich habe Soego gefunden."~ */ GOTO 69
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14856 /* ~"Als Staubmensch bitte ich um deine Hilfe."~ */ GOTO 93
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #14857 /* ~"Als Staubmensch hätte ich ein paar Fragen zu unserem Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #14858 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.10
  SAY #14859 /* ~"Ich möchte wissen, warum du den Sammler Pharod suchst."
~ */
  IF ~~ THEN REPLY #14860 /* ~"Sammler?"~ */ GOTO 8
  IF ~~ THEN REPLY #14861 /* ~"Er hat mir etwas gestohlen."~ */ GOTO 13
  IF ~~ THEN REPLY #14862 /* ~"Ich möchte mit ihm sprechen."~ */ GOTO 14
  IF ~~ THEN REPLY #14863 /* ~"Warum? Stimmt was nicht?"~ */ GOTO 11
  IF ~~ THEN REPLY #14864 /* ~"Ich habe Blödsinn geredet. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14865 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #14866 /* ~"Sammler sammeln die Toten und bringen sie zu uns. Ich möchte wissen, warum du diesen Sammler suchst."~ */
  IF ~~ THEN REPLY #14867 /* ~"Warum sammeln Sammler Tote?"~ */ GOTO 9
  IF ~~ THEN REPLY #14868 /* ~"Er hat mir etwas gestohlen."~ */ GOTO 13
  IF ~~ THEN REPLY #14869 /* ~"Ich möchte mit ihm sprechen."~ */ GOTO 14
  IF ~~ THEN REPLY #14870 /* ~"Warum? Stimmt was nicht?"~ */ GOTO 11
  IF ~~ THEN REPLY #14871 /* ~"Ich habe Blödsinn geredet. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14872 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #14873 /* ~"Sie sammeln die Toten für uns, gegen Kupfer."~ */
  IF ~~ THEN REPLY #14874 /* ~"Ihr bezahlt sie für die Leichen? Warum?"~ */ GOTO 10
  IF ~~ THEN REPLY #14875 /* ~"Er hat mir etwas gestohlen."~ */ GOTO 13
  IF ~~ THEN REPLY #14876 /* ~"Ich möchte mit ihm sprechen."~ */ GOTO 14
  IF ~~ THEN REPLY #14877 /* ~"Warum? Stimmt was nicht?"~ */ GOTO 11
  IF ~~ THEN REPLY #14878 /* ~"Ich habe Blödsinn geredet. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14879 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #14880 /* ~"Die Straßen sind keine Begräbnisstätte. Die Leichenhalle ist der Ort, wo die Toten bestattet werden. Das ist die Pflicht eines Staubmenschen." Emoric verstummt einen Moment lang. Aus irgendeinem Grund denkst du, daß er damit seine Worte unterstreichen möchte. "Ich möchte wissen, warum du diesen Sammler Pharod suchst."~ */
  IF ~~ THEN REPLY #14881 /* ~"Ich möchte mit ihm sprechen."~ */ GOTO 14
  IF ~~ THEN REPLY #14882 /* ~"Warum? Stimmt was nicht?"~ */ GOTO 11
  IF ~~ THEN REPLY #14883 /* ~"Ich habe Blödsinn geredet. Aber ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14884 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.3 8.3 9.3 10.1 13.0 14.0 15.0
  SAY #14885 /* ~"Der Sammler Pharod hat mir in letzter Zeit viele Leichen zur Leichenhalle gebracht. Man muß fragen, woher diese Leichen kommen."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14886 /* ~"Ich habe rausgekriegt, wo sie herkommen."~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #14887 /* ~"Erzähl mir mehr über die Leichen."~ */ GOTO 12
  IF ~~ THEN REPLY #14888 /* ~"Hör zu, was immer sich zwischen euch abspielt, hat nichts mit mir zu tun. Ich will nur wissen, wo er ist."~ */ GOTO 20
  IF ~~ THEN REPLY #14889 /* ~"Vielleicht könnte ich rauskriegen, wo diese Leichen herkommen."~ */ GOTO 16
  IF ~~ THEN REPLY #14890 /* ~"Ich weiß es wirklich nicht. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14891 /* ~"Ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #14892 /* ~"Manche sind erst kürzlich verstorben. Sie haben ihre letzten Momente noch in ihren Augen. Viel mehr Leichen sind schon seit Jahrhunderten tot. Der Staub der Jahre liegt auf ihren Knochen. Man muß fragen, woher diese Leichen kommen."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #14893 /* ~"Ich habe rausgekriegt, wo sie herkommen."~ */ GOTO 21
  IF ~~ THEN REPLY #14894 /* ~"Hör zu, was immer sich zwischen euch abspielt, hat nichts mit mir zu tun. Ich will nur wissen, wo er ist."~ */ GOTO 20
  IF ~~ THEN REPLY #14895 /* ~"Vielleicht könnte ich rauskriegen, wo diese Leichen herkommen."~ */ GOTO 16
  IF ~~ THEN REPLY #14896 /* ~"Ich weiß es wirklich nicht. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14897 /* ~"Ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 7.1 8.1 9.1
  SAY #14898 /* ~Emoric bleibt stumm. Sein Blick raubt dir den letzten Nerv... er scheint überhaupt nicht zu blinzeln.~ */
  IF ~~ THEN REPLY #14899 /* ~"Warum willst du wissen, was ich mit Pharod zu regeln habe?"~ */ GOTO 11
  IF ~~ THEN REPLY #14900 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #14901 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.2 8.2 9.2 10.0
  SAY #14902 /* ~"Genau wie ich. Er macht es einem nicht leicht. Er spricht durch andere Männer." Emoric verstummt einen Moment lang. "Wenn zwei Männer durch andere Männer sprechen, wird wenig gesagt und viel verloren."~ */
  IF ~~ THEN REPLY #14903 /* ~"Warum willst du mit Pharod sprechen?"~ */ GOTO 11
  IF ~~ THEN REPLY #14904 /* ~"Warum will Pharod nicht mit anderen sprechen?"~ */ GOTO 15
  IF ~~ THEN REPLY #14905 /* ~"Weißt du vielleicht, wo ich ihn finden kann?"~ */ GOTO 20
  IF ~~ THEN REPLY #14906 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14907 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.1
  SAY #14908 /* ~"Das Warum ist unklar. Er ist ein Mann, der sich vor anderen verbirgt und auch seine Gründe verbirgt."~ */
  IF ~~ THEN REPLY #14909 /* ~"Warum willst du wissen, was ich mit Pharod zu regeln habe?"~ */ GOTO 11
  IF ~~ THEN REPLY #14910 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #14911 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.2
  SAY #14912 /* ~"Wie willst du so etwas anstellen?"~ */
  IF ~~ THEN REPLY #14913 /* ~"Ich könnte Pharod suchen und ihn fragen."~ */ GOTO 17
  IF ~~ THEN REPLY #14914 /* ~"Ich weiß es wirklich nicht. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14915 /* ~"Ich glaube nicht, daß ich dir helfen kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 6.12 16.0
  SAY #14916 /* ~"Wenn du mit dem Sammler Pharod sprechen und mit seinen Antworten zurückkehren würdest, wirst du den Staubmenschen einen großen Dienst erwiesen haben. Finde heraus, woher die Toten kommen, die er uns bringt, und du wirst belohnt werden."~ */
  IF ~~ THEN REPLY #14917 /* ~"Na gut. Ich werde Pharod suchen, mit ihm sprechen und rauskriegen, wo die Leichen herkommen, die er euch bringt."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",2)
~ GOTO 18
  IF ~~ THEN REPLY #14918 /* ~"Nein danke. Ich will diesen Job nicht."
~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #14919 /* ~Emoric nickt. "Dein Weg ist unser Weg. Komm hierher zurück, wenn du die Antworten des Sammlers Pharod hast."~ */
  IF ~~ THEN REPLY #14920 /* ~"Kannst du mir sagen, wo er ist?"~ */ GOTO 20
  IF ~~ THEN REPLY #14921 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14922 /* ~"Ich werde sehen, was ich tun kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #14923 /* ~Emoric nickt. "Dein Weg gehört ganz allein dir."~ */
  IF ~~ THEN REPLY #14924 /* ~"Kannst du mir sagen, wo er ist?"~ */ GOTO 20
  IF ~~ THEN REPLY #14925 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #14926 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 11.2 12.1 14.2 18.0 19.0
  SAY #14927 /* ~"Es ist mir nicht bekannt, wo der Sammler Pharod ist. Er verbirgt sich vor den Augen der Staubmenschen. Ich würde andere Sammler aufsuchen und ihnen deine Frage stellen."~ */
  IF ~~ THEN REPLY #14928 /* ~"Also gut. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14929 /* ~"Ich werde sehen, was ich tun kann. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 6.11 11.0 12.0
  SAY #14930 /* ~"Woher kommen die Leichen, die er uns bringt?"~ */
  IF ~  Global("Lawful_Pharod_3","GLOBAL",0)
~ THEN REPLY #14931 /* ~Wahrheit: "Sie kommen aus den Katakomben unter Sigil. Er holt sich die Leichen, die ihr begraben habt und verkauft sie an euch zurück. Wenn ihr sie wieder begrabt, gräbt er sie einfach wieder aus."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_1","GLOBALLaw",2)
~ GOTO 22
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #14932 /* ~Wahrheit: "Sie kommen aus den Katakomben unter Sigil. Er holt sich die Leichen, die ihr begraben habt und verkauft sie an euch zurück. Wenn ihr sie wieder begrabt, gräbt er sie einfach wieder aus."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_2","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14933 /* ~Lüge: "Einige Leute auf dem Lumpensammler-Platz haben eine Krankheit, die ihre Leichen schneller verfaulen läßt. Ihre Leichen *scheinen* nur älter zu sein, als sie es wirklich sind."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_1","GLOBALLaw",-2)
~ GOTO 22
  IF ~~ THEN REPLY #14934 /* ~"Ich habe Blödsinn geredet. Ich hab's noch nicht rausgekriegt. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14935 /* ~"Ich bin noch dabei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #14936 /* ~Emoric verstummt. Er starrt dich mit seinem versteinerten Blick an - und du hast plötzlich das Gefühl, daß sich seine Augen in deinen Schädel bohren.~ */
  IF ~~ THEN REPLY #14937 /* ~"Äh..."~ */ DO ~SetGlobal("Emoric_Pharod","GLOBAL",3)
AddexperienceParty(2500)
~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #14938 /* ~Emoric nickt. "Du hast den Staubmenschen einen Dienst erwiesen." Er nimmt seine Hände aus seinen Ärmeln und läßt seine langen Ärmel dann über den Tisch fallen wie einen Vorhang. Als er sie zurückzieht, liegt ein kleiner Sarg aus Lapislazuli auf dem Tisch. Es ist ein winziges Ding, kaum 5 cm breit und 8 cm lang. Das Staubmenschensymbol ist auf dem Sargdeckel eingraviert.~ */
  IF ~~ THEN REPLY #14939 /* ~Heb den kleinen Sarg auf.~ */ DO ~GiveGoldForce(300)
~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #14940 /* ~Als du den Sarg in die Hand nimmst, *zwitschert* er, faltet sich auf, und löst sich in einen Strom Hunderter von Kupferstücken auf, die du (irgendwie) davon abhalten kannst, auf den Boden der Bar zu fallen. Wie all diese Münzen in den winzigen Sarg gepaßt haben sollen, ist dir völlig unklar.~ */
  IF ~~ THEN REPLY #14941 /* ~"Danke. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 6
  IF ~~ THEN REPLY #14942 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 6.9
  SAY #14943 /* ~"Diese Augen haben kein Journal gesehen. Vielleicht wird deine Suche dich anderswo hinbringen."~ */
  IF ~~ THEN REPLY #14944 /* ~"Na gut. Ich hätte da noch ein paar andere Fragen an dich..."~ */ GOTO 6
  IF ~~ THEN REPLY #14945 /* ~"Dann suche ich woanders. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 6.1 6.2
  SAY #14946 /* ~"Staubmenschen suchen den Wahren Tod. Manche nennen ihn 'Vergessenheit', aber das ist nicht richtig. Für Staubmenschen ist der Wahre Tod die Freiheit von den Ketten dieses falschen Lebens."~ */
  IF ~~ THEN REPLY #14947 /* ~"Falsches Leben?"~ */ GOTO 27
  IF ~~ THEN REPLY #14948 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #14949 /* ~"Das war mir entfallen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #14950 /* ~"Dieses 'Leben', an das sich so viele mit ihren Gefühlen klammern, ist eine falsche Existenz. Solange man sich daran klammert, wird man immer wieder in es hineingeboren. Man muß sich von Gefühlen lossagen, um diesem Zyklus zu entkommen."~ */
  IF ~  GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #14951 /* ~"Aha. Kannst du mir erklären, wie euer Bund organisiert ist?"~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",2)
~ GOTO 28
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #14952 /* ~"Aha. Kannst du mir erklären, wie euer Bund organisiert ist?"~ */ GOTO 28
  IF ~~ THEN REPLY #14953 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #14954 /* ~"Das war mir entfallen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0 27.1
  SAY #14955 /* ~"Staubmenschen sind in fünf Kreisen organisiert. Der Fünfte Kreis bildet sich aus den niedrigsten Rängen der Staubmenschen, den Neulingen. Der Erste Kreis besteht aus den höchsten Rängen der Staubmenschen, dem führenden Organ unseres Bundes."~ */
  IF ~~ THEN REPLY #14956 /* ~"Ich hätte da noch ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #14957 /* ~"Das war mir entfallen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 6.8
  SAY #14958 /* ~"Möchtest du den Todesvertrag unterzeichnen?"~ */
  IF ~~ THEN REPLY #14959 /* ~"Was genau ist das?"~ */ GOTO 30
  IF ~~ THEN REPLY #14960 /* ~"Ja, ich werde unterschreiben."~ */ GOTO 31
  IF ~~ THEN REPLY #14961 /* ~"Nein, Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14962 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #14963 /* ~"Für fünfzig einfache Kupfermünzen überträgt der Todesvertrag dem Bund der Staubmenschen die Rechte an deiner Leiche nach deinem Tod. Möchtest du den Todesvertrag unterzeichnen?"~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14964 /* ~"Ich werde unterschreiben."~ */ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14965 /* ~Auch wenn Mortais Vertrag schon unterschrieben ist: "Ich werde unterschreiben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #14966 /* ~Auch wenn Kupferauges Vertrag schon unterschrieben ist: "Ich werde unterschreiben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #14967 /* ~Auch wenn Mortais und Kupferauges Vertrag schon unterschrieben sind: "Ich werde unterschreiben."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_3","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #14968 /* ~"Nein, Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14969 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1 30.0 30.1 30.2 30.3
  SAY #14970 /* ~Emoric zieht ein staubiges Stück Pergament und eine Schreibfeder aus seiner Robe. Er weist dich an, das Pergament an drei Stellen zu unterschreiben.~ */
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",0)
~ THEN REPLY #14971 /* ~Unterschreibe an den markierten Stellen.~ */ DO ~SetGlobal("Memory_Dustman_Contract_2","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 32
  IF ~  Global("Memory_Dustman_Contract_2","GLOBAL",1)
~ THEN REPLY #14972 /* ~Unterschreibe an den markierten Stellen.~ */ GOTO 39
  IF ~~ THEN REPLY #14973 /* ~"Ich hab's mir anders überlegt. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #14974 /* ~"Vielleicht ein anderes Mal. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 39.1
  SAY #14975 /* ~Du nimmst die Schreibfeder in die Hand und beginnst, deine Unterschrift in das Pergament zu kratzen... die Schreibfeder macht ein seltsames *kratzendes* Geräusch, als sie das Pergament berührt, wie ein Meißel auf Stein.~ */
  IF ~~ THEN REPLY #14976 /* ~Fahr fort mit dem Unterschreiben...~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #14977 /* ~Als du versuchst, das Pergament zu unterschreiben, bemerkst du jedoch, daß es sich von deiner Schreibfeder gar nicht beschriften zu lassen scheint... wie sehr du es auch versuchst, du scheinst deinen Namen nicht schreiben zu können. Die Tinte scheint einfach nicht aus der Feder fließen zu wollen.~ */
  IF ~~ THEN REPLY #14978 /* ~"Äh... Emoric? Was ist mit diesem Vertrag?"
~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14979 /* ~Als du aufschaust, um mit Emoric zu sprechen, siehst du, daß sein Gesicht zu Stein geworden ist... er ist zu einer Statue geworden. Der Rest der Bar scheint mit einem grauen Nebel gefüllt zu sein, und du kannst die anderen Gäste nicht mehr sehen. Ein leises Flüstern dringt aus Emorics Mund, als ob seine Steinlungen versuchten, einen Atemzug aus seiner Brust zu zwingen.~ */
  IF ~~ THEN REPLY #14981 /* ~"Emoric...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #14983 /* ~Du kannst kaum das Flüstern hören, das von Emorics Steinlippen hervordringt, als du plötzlich bemerkst, daß es nicht *ein* Flüstern ist, sondern viele...

*Unterzeichne*

*Aber wisse, daß sein Preis in Seele und Stein festgesetzt ist*

*Und was kann das Wesen eines Menschen ändern?*

Die geflüsterten Worte schwellen zu einem abgehackten, toten Refrain an, der so klingt, als werde er von fünf, zehn, zwanzig, einhundert Stimmen gesprochen - alt, jung, weiblich, männlich, verzweifelt, ruhig, hysterisch...
~ */
  IF ~~ THEN REPLY #14988 /* ~"Wesen eines Menschen...?"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #14992 /* ~Während du die Worte sprichst, fühlst du dich plötzlich schwach, und dann hörst du auf einmal wieder Emorics Stimme, normal. "Möchtest du immer noch unterzeichnen?"~ */
  IF ~~ THEN REPLY #14994 /* ~Versuch, dich zu orientieren...~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #14996 /* ~Es ist, als ob der Puls der Zeit wieder normal schlagen würde... der Dunst, der die ganze Bar erfüllte, ist verschwunden, und Emoric ist keine Statue mehr. Du spürst einen merkwürdigen Druck in deinem Schädel, als würde irgendetwas verzweifelt versuchen, an die Oberfläche zu drängen, doch vergebens. Als würden Dutzende Erinnerungssplitter versuchen, sich zu einem Bild zu fügen... Du weißt, daß die flüsternde Stimme, die aus Emorics steinernem Gesicht kam, *jemandem* gehörte... der schon lange tot ist.~ */
  IF ~~ THEN REPLY #15001 /* ~Schau wieder auf das Pergament.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #15003 /* ~Als du das staubbedeckte Pergament auf dem Tisch siehst, dämmert dir, daß dies nicht das erste Mal ist, daß du einen Vertrag unterschreibst... vielleicht hast du sogar schon einmal einen ganz ähnlichen Vertrag unterschrieben.~ */
  IF ~  Global("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15009 /* ~Beende das Unterschreiben des Vertrags.~ */ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15011 /* ~Unterschreibe Emorics Vertrag trotzdem zu Ende, obwohl du Mortais Vertrag unterschrieben hast.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",0)
Global("Mortai_Contract","GLOBAL",0)
~ THEN REPLY #15013 /* ~Unterschreibe Emorics Vertrag zu Ende, obwohl du Kupferauges Vertrag unterschrieben hast.
~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~  GlobalGT("Mortai_Contract","GLOBAL",0)
GlobalGT("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #15015 /* ~Unterschreibe Emorics Vertrag zu Ende, obwohl du Mortais und Kupferauges Vertrag unterschrieben hast.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_4","GLOBALLaw",-2)
~ GOTO 40
  IF ~~ THEN REPLY #15017 /* ~"Ich werde noch nicht gleich unterschreiben. Ich hätte da erst noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15019 /* ~"Ich will nicht unterschreiben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.1
  SAY #15029 /* ~Als du die Schreibfeder wieder auf dem Pergament aufsetzt, hörst du ein Flüstern. Plötzlich steigt eine Flut von Erinnerungen in deinem Schädel auf...~ */
  IF ~~ THEN REPLY #15031 /* ~Unterdrück die Erinnerung, unterschreibe den Vertrag...~ */ GOTO 40
  IF ~~ THEN REPLY #15033 /* ~Laß der Erinnerung freien Lauf.~ */ GOTO 32
  IF ~~ THEN REPLY #15035 /* ~"Ich werde noch nicht gleich unterschreiben. Ich hätte da erst noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15037 /* ~"Ich will nicht unterschreiben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 38.0 38.1 38.2 38.3 39.0
  SAY #15085 /* ~An den von Emoric markierten Stellen setzt du drei Kreuze unter den Vertrag. Als du fertig bist, nimmt Emoric den Vertrag und überreicht dir einen Beutel mit fünfzig Kupfermünzen.~ */
  IF ~~ THEN REPLY #15086 /* ~"So, nachdem das aus der Welt wäre, hätte ich noch ein paar Fragen an dich..."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ GOTO 6
  IF ~~ THEN REPLY #15087 /* ~"Das Geschäft ist perfekt... Leb wohl."~ */ DO ~SetGlobal("Emoric_Contract","GLOBAL",1)
GivePartyGold(50)
AddexperienceParty(250)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 6.3 6.4 6.5
  SAY #15088 /* ~"Ein anderer Bund zählt dich bereits zu seinen Mitgliedern."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #15089 /* ~Lüge: "Du irrst dich. Ich gehöre keinem anderen Bund an."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_5","GLOBALLaw",-2)
~ GOTO 42
  IF ~~ THEN REPLY #15090 /* ~"Ich möchte diesen Bund verlassen und mich den Staubmenschen anschließen."~ */ GOTO 45
  IF ~~ THEN REPLY #15091 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15092 /* ~"Das war mir entfallen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #15093 /* ~"Ich irre mich nicht." Emoric spricht in einem Ton der felsenfesten Überzeugung, doch du hörst den unterschwelligen Zweifel heraus.~ */
  IF ~~ THEN REPLY #15094 /* ~"Du irrst dich. Mein Geist ist der eines Staubmenschen, und er gehört keinem anderen Bund. Wenn du an mir *zweifelst*, dann prüfe mich."~ */ GOTO 43
  IF ~~ THEN REPLY #15095 /* ~"Na gut, ich möchte den Bund verlassen und mich den Staubmenschen anschließen."~ */ GOTO 45
  IF ~~ THEN REPLY #15096 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15097 /* ~"Dann haben wir nichts mehr zu besprechen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #15098 /* ~Beim Wort *Zweifel* zuckt Emoric leicht zusammen. Er wahrt seine Fassade recht gut, aber du weißt, wonach du suchst. Emoric mag zwar ein Staubmensch sein, doch schon die kleinste Veränderung in seiner Miene verrät, was er denkt.~ */
  IF ~~ THEN REPLY #15099 /* ~"Noch einmal: Wenn du an mir *zweifelst*, prüfe mich. Du wirst feststellen, daß mein Geist frei von Gefühlen und mein Pfad der eines Staubmenschen ist."~ */ GOTO 44
  IF ~~ THEN REPLY #15100 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15101 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #15102 /* ~Emoric betrachtet dich stumm. Dann sagt er. "Ich habe keine Zweifel. Doch du mußt dich einer Prüfung unterziehen. Wenn du dem Staubmenschenbund beitreten möchtest, werde ich mir deinen Antrag anhören."~ */
  IF ~~ THEN REPLY #15103 /* ~"Ja, ich möchte dem Staubmenschenbund beitreten."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15104 /* ~"Du hast mich schon wieder falsch eingeschätzt. Ich habe nicht den *Wunsch*, dem Staubmenschenbund beizutreten. Ich glaube lediglich, was die Staubmenschen glauben."~ */ GOTO 48
  IF ~~ THEN REPLY #15105 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15106 /* ~"Ich muß mich jetzt verabschieden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 41.1 42.1
  SAY #15107 /* ~"Ist dein Wunsch, dem Staubmenschenbund beizutreten, größer als deine Loyalität zu diesem anderen Bund?"~ */
  IF ~~ THEN REPLY #15108 /* ~"Ja."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15109 /* ~"Du hast meine Absicht mißverstanden. Ich habe nicht den *Wunsch*, dem Staubmenschenbund beizutreten. Ich glaube lediglich, was die Staubmenschen glauben."~ */ GOTO 48
  IF ~~ THEN REPLY #15110 /* ~"Ich ziehe meinen Antrag zurück. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15111 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.0 45.0 97.0
  SAY #15112 /* ~"Wenn du wünschst, dem Staubmenschenbund beizutreten, dann werden deine Gedanken von Leidenschaft beherrscht. Ein Staubmensch kennt keine Leidenschaft."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15114 /* ~"Ich habe Blödsinn geredet. Ich habe nicht den *Wunsch*, dem Staubmenschenbund beizutreten. Ich glaube lediglich, was die Staubmenschen glauben."~ */ GOTO 48
  IF ~~ THEN REPLY #15115 /* ~"Kannst du mir dann mehr über den Pfad eines Staubmenschen sagen?"~ */ GOTO 49
  IF ~~ THEN REPLY #15116 /* ~"Ich ziehe meinen Antrag zurück. Ich hätte da noch ein paar andere Fragen..."
~ */ GOTO 6
  IF ~~ THEN REPLY #15117 /* ~"Ach vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from:
  SAY #15118 /* ~"Dein alter Bund wird es dir übelnehmen. In ihren Gedanken und in ihren Hallen wirst du nicht mehr willkommen sein."~ */
  IF ~  Global("Join_Godsmen","GLOBAL",6)
~ THEN REPLY #15119 /* ~Bund abschwören: "Was sein muß, muß sein. Mein Geist muß sich selbst und keinem anderen treu sein. Von diesem Moment an entsage ich dem Glauben der Göttermenschen."~ */ DO ~SetGlobal("Join_Godsmen","GLOBAL",7)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
~ THEN REPLY #15120 /* ~Bund abschwören: " Was sein muß, muß sein. Mein Geist muß sich selbst und keinem anderen treu sein. Von diesem Moment an entsage ich dem... äh, 'Glauben' der Chaoten."~ */ DO ~SetGlobal("Join_Chaosmen","GLOBAL",2)
~ GOTO 48
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Dustmen","GLOBAL",1)
Global("Join_Sensates","GLOBAL",1)
~ THEN REPLY #15121 /* ~Bund abschwören: " Was sein muß, muß sein. Mein Geist muß sich selbst und keinem anderen treu sein. Von diesem Moment an entsage ich dem Glauben der Sinnsaten."~ */ DO ~SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
~ GOTO 48
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15122 /* ~Lüge, um Staubmenschen für Anarchisten zu unterwandern: "Was sein muß, muß sein. Mein Geist muß sich selbst und keinem anderen treu sein. Von diesem Moment an entsage ich dem Glauben meines alten Bundes."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_6","GLOBALLaw",-2)
~ GOTO 48
  IF ~~ THEN REPLY #15123 /* ~"Dann vergiß es. Ich hätte aber noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15124 /* ~"Dann bin ich nicht bereit. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 44.1 45.1 46.0 47.0 47.1 47.2 47.3 97.1
  SAY #15203 /* ~"Gut. Kennst du unsere Philosophie?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15205 /* ~"Ja."~ */ GOTO 51
  IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15206 /* ~"Nein, nur teilweise."~ */ GOTO 49
  IF ~~ THEN REPLY #15207 /* ~"Ich ziehe meinen Antrag zurück, dem Staubmenschenbund beizutreten. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15209 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 46.1 48.1
  SAY #15210 /* ~"Staubmenschen suchen den Wahren Tod. Manche nennen ihn 'Vergessenheit', aber das ist nicht richtig. Für Staubmenschen ist der Wahre Tod die Freiheit von den Ketten dieses falschen Lebens."~ */
  IF ~~ THEN REPLY #15211 /* ~"Falsches Leben?"~ */ GOTO 50
  IF ~~ THEN REPLY #15212 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15213 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #15214 /* ~"Dieses 'Leben', an das sich viele mit ihren Gefühlen klammern, ist ein falsches Dasein. Solange man sich daran klammert, wird man immer wieder geboren. Man muß alle Gefühle aufgeben, um diesem Kreislauf zu entkommen."~ */
  IF ~~ THEN REPLY #15216 /* ~"Na gut. Jetzt verstehe ich eure Philosophie."~ */ DO ~SetGlobal("Know_Dustmen","GLOBAL",1)
~ GOTO 51
  IF ~~ THEN REPLY #15217 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15219 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 48.0 50.0
  SAY #15221 /* ~"Sag, was du darüber weißt."~ */
  IF ~~ THEN REPLY #15223 /* ~"Das Ziel aller Staubmenschen ist der Wahre Tod, das Vergessen. Dieses 'Leben', an das sich viele mit ihren Gefühlen und Leidenschaften klammern, ist ein falsches Leben. Solange man sich daran klammert, wird man immer wieder geboren. Man muß alle Gefühle aufgeben, um diesem Kreislauf zu entkommen."~ */ GOTO 52
  IF ~~ THEN REPLY #15225 /* ~"Ich ziehe meinen Antrag zurück. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15227 /* ~"Vergiß es. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #15229 /* ~"Glaubst du daran?"~ */
  IF ~~ THEN REPLY #15230 /* ~Wahrheit: "Ja."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 53
  IF ~~ THEN REPLY #15232 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Emoric_7","GLOBALLaw",-2)
~ GOTO 53
  IF ~~ THEN REPLY #15233 /* ~Wahrheit: "Nicht ganz."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
IncrementGlobalOnceEx("GLOBALLawful_Emoric_2","GLOBALLaw",2)
~ GOTO 54
  IF ~~ THEN REPLY #15235 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15239 /* ~"Vergiß es. Ich will nicht mehr Mitglied des Staubmenschenbunds werden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.1 54.0
  SAY #15605 /* ~"Gut, dann prüfe dich. Sprich mit dem Eingeweihten Norochj. Er ist in der Bar. Komm zurück, wenn du getan hast, was er dir auftragen wird."~ */
  IF ~~ THEN REPLY #15609 /* ~"Ich werde mit ihm reden. Erst hätte ich aber ein paar Fragen..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #15610 /* ~"Na gut. Ich gehe jetzt und rede mit ihm."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #15611 /* ~"Ach, ich hab's mir doch noch anders überlegt. Leb wohl."~ */ GOTO 56
END

IF ~~ THEN BEGIN 54 // from: 52.2
  SAY #15612 /* ~"Der Glaube kommt mit der Zeit. Sind deine Überzeugungen so stark, daß sie niemals unserer Philosophie weichen werden?"~ */
  IF ~~ THEN REPLY #15613 /* ~"Ich möchte meine Unsicherheit der Prüfung der Zeit unterziehen. Ich werde einige Zeit unter den Staubmenschen verbringen und dann meinen Glauben prüfen."~ */ GOTO 53
  IF ~~ THEN REPLY #15614 /* ~"Ich glaube nicht, daß ich jemals an eure Philosophie glauben werde. Ich ziehe meinen Antrag zurück. Ich hätte da noch ein paar andere Fragen..."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 6
  IF ~~ THEN REPLY #15615 /* ~"Ich will dem Staubmenschenbund doch nicht beitreten. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 6.13
  SAY #15616 /* ~Emoric nickt. "Du hast getan, was ich dir befohlen habe. Möchtest du mit der Prüfung weitermachen?"~ */
  IF ~~ THEN REPLY #15618 /* ~"Ja. Ich möchte mehr über den Staubmenschenbund erfahren."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15620 /* ~"Ja. Ich bin immer noch nicht sicher, ob ich den Glauben eines Staubmenschen habe, aber ich würde gern mehr über den Bund erfahren, bevor ich mich endgültig entscheide."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",3)
~ GOTO 57
  IF ~~ THEN REPLY #15622 /* ~"Nein. Ich möchte meinen Antrag zurückziehen, dem Staubmenschenbund beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 53.2 55.2 57.4 59.5 60.4 62.4 63.3 64.4 65.1 66.1 67.5 68.2 69.2 70.3 71.3 72.1 74.0 75.2 76.2
  SAY #15626 /* ~"Man wird nichts weiter von dir verlangen."~ */
  IF ~~ THEN REPLY #15628 /* ~"Na gut. Aber ich hätte da noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ GOTO 6
  IF ~~ THEN REPLY #15630 /* ~"Dann gehe ich jetzt. Leb wohl."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 55.0 55.1
  SAY #15634 /* ~"Du mußt dich noch einer Prüfung unterziehen. Geh zu einem unserer Eingeweihten, Den-Tod-Erwartend. Er ist hier in der Bar und sucht voller Leidenschaft den Wahren Tod. Wenn er weiter darauf drängt, wird er für immer unerreichbar sein. Sprich mit ihm und sieh, was du tun kannst."~ */
  IF ~  Global("Await","GLOBAL",2)
~ THEN REPLY #15636 /* ~"Ich hab' schon mit ihm darüber gesprochen."~ */ GOTO 60
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15638 /* ~"Er will nicht mit mir reden."~ */ GOTO 58
  IF ~  !Global("Await","GLOBAL",2)
!Global("Await","GLOBAL",3)
~ THEN REPLY #15640 /* ~"Ich werde mit Den-Tod-Erwartend reden und sehen, was sich machen läßt."~ */ EXIT
  IF ~~ THEN REPLY #15642 /* ~"Ich werde mit ihm reden. Aber erst hätte ich noch ein paar andere Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15644 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 58 // from: 57.1 59.0
  SAY #15645 /* ~"Mich wollte er auch nicht anhören. Was denkst du über Den-Tod-Erwartend?"~ */
  IF ~~ THEN REPLY #15646 /* ~"Kann man einen Staubmenschen mit soviel Leidenschaft wirklich einen Staubmenschen nennen? Ich glaube nicht."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15647 /* ~"Er ist kein Staubmensch. Vielleicht später einmal."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15648 /* ~"Er ist ein Staubmensch."
~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15649 /* ~"Dazu habe ich keine Meinung. Was ist, ist."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 59 // from: 6.14
  SAY #15651 /* ~"Worüber habt ihr gesprochen."~ */
  IF ~  Global("Await","GLOBAL",3)
~ THEN REPLY #15652 /* ~"Er will nicht mit mir reden. Ich hab's versucht, aber er wollte mich nicht anhören."~ */ GOTO 58
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
Global("Await","GLOBAL",2)
~ THEN REPLY #15653 /* ~"Er hat das Leben dem Tod vorgezogen. Bis jetzt."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15655 /* ~"Er hat sich entschieden, noch etwas länger zu leben und zu versuchen, seine Leidenschaft für den Tod zu zähmen."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15656 /* ~"Er hat sich entschieden, dieses Leben auszuhalten und dadurch seine Leidenschaft für den Tod zu zähmen."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15658 /* ~"Er hat sich entschieden, noch etwas länger zu leben und zu lernen, wie man stirbt."~ */ GOTO 61
  IF ~~ THEN REPLY #15660 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 60 // from: 57.0
  SAY #15666 /* ~"Worüber habt ihr gesprochen."~ */
  IF ~  Global("Await_Deal_Answer","GLOBAL",0)
~ THEN REPLY #15668 /* ~"Er hat das Leben dem Tod vorgezogen. Bis jetzt."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",1)
~ THEN REPLY #15670 /* ~"Er hat sich entschieden, noch etwas länger zu leben und zu versuchen, seine Leidenschaft für den Tod zu zähmen."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",2)
~ THEN REPLY #15671 /* ~"Er hat sich entschieden, dieses Leben auszuhalten und dadurch seine Leidenschaft für den Tod zu zähmen."~ */ GOTO 61
  IF ~  Global("Await_Deal_Answer","GLOBAL",3)
~ THEN REPLY #15673 /* ~"Er hat sich entschieden, noch etwas länger zu leben und zu lernen, wie man stirbt."
~ */ GOTO 61
  IF ~~ THEN REPLY #15674 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 61 // from: 59.1 59.2 59.3 59.4 60.0 60.1 60.2 60.3
  SAY #15678 /* ~"Was denkst du über die Entscheidung von Den-Tod-Erwartend?"~ */
  IF ~~ THEN REPLY #15680 /* ~"Er wird nie ein Staubmensch sein."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15681 /* ~"Er ist kein Staubmensch. Vielleicht später einmal."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15683 /* ~"Er ist ein Staubmensch. Er hat seine Lektion gelernt."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
  IF ~~ THEN REPLY #15685 /* ~"Dazu habe ich keine Meinung. Was ist, ist."~ */ DO ~AddexperienceParty(250)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 58.0 58.1 58.2 58.3 61.0 61.1 61.2 61.3
  SAY #15692 /* ~"Du hast mit dem Eingeweihten Den-Tod-Erwartend gesprochen. Ich kenne deine Gedanken über ihn. Du hast getan, was ich dir aufgetragen habe." Emoric nickt. "Du mußt dich einer weiteren Prüfung unterziehen. Es gibt noch eine Person hier in der Bar, mit der du sprechen sollst. Ihr Name ist Sere. Sie ist eine Eingeweihte des Fünften Kreises." Emoric hält kurz inne. "Sie glaubt nicht mehr so stark an die Lehre der Staubmenschen wie früher. Sie ist verbittert. Ich möchte wissen, weshalb."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15693 /* ~"Sie will nicht mit mir reden."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15695 /* ~"Ich habe schon mit ihr geredet. Das Fieber, das sie vor zwei Wochen hatte, hat ihr Angst vor dem Tod eingeflößt. Sie gibt den Staubmenschen die Schuld."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 64
  IF ~  !Global("Sere","GLOBAL",2)
~ THEN REPLY #15697 /* ~"Ich gehe jetzt und rede mit ihr."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ EXIT
  IF ~~ THEN REPLY #15699 /* ~"Ich werde mit ihr reden. Aber erst hätte ich noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 6
  IF ~~ THEN REPLY #15701 /* ~"Ich will diese Prüfung nicht. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",4)
~ GOTO 56
END

IF ~~ THEN BEGIN 63 // from: 6.15
  SAY #15735 /* ~"Ich möchte gerne wissen, was du ihr gesagt hast."~ */
  IF ~  Global("Sere","GLOBAL",2)
~ THEN REPLY #15737 /* ~"Sie will nicht mit mir reden."~ */ DO ~AddexperienceParty(500)
~ GOTO 65
  IF ~  Global("Sere","GLOBAL",1)
GlobalGT("Sere_Beliefs","GLOBAL",0)
~ THEN REPLY #15739 /* ~"Das Fieber, das sie vor zwei Wochen hatte, hat ihr Angst vor dem Tod eingeflößt. Sie gibt den Staubmenschen die Schuld."~ */ GOTO 64
  IF ~~ THEN REPLY #15740 /* ~"Noch nichts Interessantes. Ich werde noch mal mit ihr reden."~ */ EXIT
  IF ~~ THEN REPLY #15741 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 64 // from: 62.1 63.1
  SAY #15744 /* ~"Ich möchte gerne wissen, was du ihr gesagt hast."~ */
  IF ~  Global("Sere_Answer","GLOBAL",1)
~ THEN REPLY #15746 /* ~"Ich habe ihr gesagt, daß ihre Angst und Zweifel sie geprägt haben. Sie ist kein Staubmensch."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",2)
~ THEN REPLY #15747 /* ~"Ich habe ihr gesagt, daß ihre Angst vorübergehend ist. Die Zeit wird beweisen, daß sie ein Staubmensch ist."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",3)
~ THEN REPLY #15749 /* ~"Ich habe ihr gesagt, daß ihre Angst vorübergehend ist. Die Zeit wird beweisen, daß sie ein Staubmensch ist."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~  Global("Sere_Answer","GLOBAL",0)
~ THEN REPLY #15750 /* ~"Ich habe die Ursache für ihren Kummer gefunden, aber ich konnte ihr nicht weiterhelfen."~ */ DO ~AddexperienceParty(500)
~ GOTO 66
  IF ~~ THEN REPLY #15752 /* ~"Das will ich nicht sagen. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 65 // from: 62.0 63.0
  SAY #15751 /* ~"Mich wollte sie auch nicht anhören." Emoric nickt. "Du hast getan, was ich dir aufgetragen habe. Möchtest du deine Weihe fortsetzen?"~ */
  IF ~~ THEN REPLY #15753 /* ~"Ja. Ich möchte gern noch mehr über den Staubmenschenbund erfahren und mit den Prüfungen weitermachen."~ */ GOTO 67
  IF ~~ THEN REPLY #15754 /* ~"Nein. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 66 // from: 64.0 64.1 64.2 64.3
  SAY #15755 /* ~"Du hast getan, was ich dir aufgetragen habe." Emoric nickt. " Möchtest du deine Weihe fortsetzen?"~ */
  IF ~~ THEN REPLY #15756 /* ~"Ja. Ich möchte gern noch mehr über den Staubmenschenbund erfahren und mit den Prüfungen weitermachen."~ */ GOTO 67
  IF ~~ THEN REPLY #15757 /* ~"Ich glaube nicht, daß ich noch irgendwas lernen könnte. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 67 // from: 65.0 66.0
  SAY #15758 /* ~"Ein Eingeweihter des Fünften Kreises, Soego, hat den Staubmenschen missionarische Dienste geleistet." Emoric hält kurz inne... du weißt nicht, ob er nachdenkt oder einfach nur verwirrt ist. "Sein Pfad ist weder mir noch dem übrigen Bund bekannt. Ich möchte wissen, wo er steckt."~ */
  IF ~  Global("Soego","GLOBAL",1)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15759 /* ~"Ist Soego nicht bei der Leichenhalle?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Global("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",0)
~ THEN REPLY #15760 /* ~"Ich dachte, ich hätte ihn getö... äh, das Letzte, was ich gehört hab', war, daß er einen Unfall hatte. Ist er nicht mehr in der Leichenhalle?"~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 68
  IF ~  Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15761 /* ~"Ich habe ihn schon gefunden."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
Global("AR1500_Visited","GLOBAL",1)
~ THEN REPLY #15762 /* ~"Ich habe ihn schon gefunden."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 69
  IF ~~ THEN REPLY #15763 /* ~"Dann werde ich losziehen und ihn suchen. Aber erst hätte ich noch ein paar Fragen..."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 6
  IF ~~ THEN REPLY #15764 /* ~"Ich hab's mir doch anders überlegt. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",5)
~ GOTO 56
END

IF ~~ THEN BEGIN 68 // from: 67.0 67.1
  SAY #15765 /* ~"Nicht mehr. Er war plötzlich verschwunden."~ */
  IF ~~ THEN REPLY #15766 /* ~"Dann werde ich losziehen und ihn suchen. Aber erst hätte ich noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15767 /* ~"Dann gehe ich ihn suchen. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #15768 /* ~"Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ GOTO 56
END

IF ~~ THEN BEGIN 69 // from: 6.16 6.17 67.2 67.3
  SAY #15769 /* ~"Ich möchte wissen, wo er steckt."~ */
  IF ~  Dead("Soego2")
~ THEN REPLY #15770 /* ~"Ich habe ihn in den Katakomben unter Sigil gefunden. Er ist dort gestorben."~ */ GOTO 71
  IF ~  GlobalGT("Soego","GLOBAL",2)
!Dead("Soego2")
~ THEN REPLY #15771 /* ~"Ich habe ihn in den Katakomben unter Sigil gefunden."~ */ GOTO 70
  IF ~~ THEN REPLY #15772 /* ~"Das will ich nicht sagen. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
AddexperienceParty(2500)
~ GOTO 56
END

IF ~~ THEN BEGIN 70 // from: 69.1
  SAY #15773 /* ~"Weshalb ist er dort?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15774 /* ~"Ich weiß es nicht."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15776 /* ~"Er hat eine Gruppe untoter Wachen entdeckt, die die Katakomben bewachten. Er versucht, sie zu überzeugen, sich dem Wahren Tod anzuschließen."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15778 /* ~"Er hat sich mit Lykanthropie infiziert. Sein Geist ist nicht mehr sein eigener, und sein Staubmenschenglaube ist verloren."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15779 /* ~"Das will ich nicht sagen. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 71 // from: 69.0
  SAY #15780 /* ~"Weshalb war er dort?"~ */
  IF ~  GlobalLT("Soego","GLOBAL",3)
~ THEN REPLY #15781 /* ~"Ich weiß es nicht."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  GlobalGT("Soego","GLOBAL",2)
~ THEN REPLY #15783 /* ~"Er hat eine Gruppe untoter Wachen entdeckt, die die Katakomben bewachten. Er hat versucht, sie zu überzeugen, sich dem Wahren Tod anzuschließen."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~  Global("Soego","GLOBAL",4)
~ THEN REPLY #15785 /* ~"Er hatte sich mit Lykanthropie infiziert, was ihn in die Katakomben getrieben hat. Sein Geist war nicht mehr sein eigener, und sein Staubmenschenglaube war verloren."~ */ DO ~AddexperienceParty(2500)
~ GOTO 72
  IF ~~ THEN REPLY #15786 /* ~"Das will ich nicht sagen. Ich ziehe meinen Antrag zurück, den Staubmenschen beizutreten."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 72 // from: 70.0 70.1 70.2 71.0 71.1 71.2
  SAY #15790 /* ~"Gut. Du hast ihn gefunden." Auf deine Antwort reagiert Emoric nur mit einem leichten Kopfnicken. "Du hast alle Aufgaben gemeistert, die dir gestellt wurden. Ich werde dich zum Staubmenschen, zum Eingeweihten des Neunten Kreises, ernennen. Möchtest du dem Bund noch immer beitreten?"~ */
  IF ~~ THEN REPLY #15791 /* ~"Ja."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #15792 /* ~"Nein. Ich hab's mir anders überlegt."~ */ DO ~SetGlobal("Dustman_Initiation","GLOBAL",6)
~ GOTO 56
END

IF ~~ THEN BEGIN 73 // from: 72.0
  SAY #15794 /* ~"Du mußt ein Versprechen ablegen."~ */
  IF ~~ THEN REPLY #15797 /* ~"Ein Versprechen?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 74 // from: 73.0
  SAY #15798 /* ~"Du mußt versprechen, den Staubmenschen zu dienen. Du mußt versprechen, das Leben hinter dir gelassen zu haben. Du mußt versprechen, daß du nur den Wahren Tod suchen willst."~ */
  IF ~~ THEN REPLY #15800 /* ~"Äh... nein danke."~ */ GOTO 56
  IF ~~ THEN REPLY #15802 /* ~"Nun gut."~ */ GOTO 75
END

IF ~~ THEN BEGIN 75 // from: 74.1
  SAY #15843 /* ~"Ich frage dich noch einmal: Glaubst du an die Prinzipien der Staubmenschen?"~ */
  IF ~~ THEN REPLY #15844 /* ~Lüge: "Ja."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_10","GLOBALLaw",-2)
IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 76
  IF ~~ THEN REPLY #15845 /* ~"Ja."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",2)
~ GOTO 76
  IF ~~ THEN REPLY #15846 /* ~"Nein. Ich hab's mir anders überlegt."~ */ DO ~IncrementGlobal("Dustman_Belief","GLOBAL",-2)
~ GOTO 56
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1
  SAY #15848 /* ~"Ich bin dein Zeuge. Leg jetzt deinen Schwur ab."~ */
  IF ~~ THEN REPLY #15849 /* ~Schwur ablegen: "Ich verspreche, den Staubmenschen zu dienen. Ich habe das Leben hinter mir gelassen. Ich suche nur den Wahren Tod."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_4","GLOBALLaw",3)
~ GOTO 77
  IF ~~ THEN REPLY #15850 /* ~Lüge: "Ich verspreche, den Staubmenschen zu dienen. Ich habe das Leben hinter mir gelassen. Ich suche nur den Wahren Tod."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Emoric_11","GLOBALLaw",-3)
~ GOTO 77
  IF ~~ THEN REPLY #15851 /* ~"Nein. Ich hab's mir anders überlegt."~ */ GOTO 56
END

IF ~~ THEN BEGIN 77 // from: 76.0 76.1
  SAY #15853 /* ~"Du gehörst nun zu den Toten. Es gibt ein paar Dinge, die du wissen mußt."~ */
  IF ~~ THEN REPLY #15854 /* ~Hör zu.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #15855 /* ~"Die wandelnden Toten leben bei den Staubmenschen. Sie arbeiten bei ihnen. Doch früher waren sie die Feinde aller Lebenden."~ */
  IF ~~ THEN REPLY #15856 /* ~"Das ist mir schon aufgefallen."~ */ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #15857 /* ~"Die Staubmenschen haben eine Waffenruhe mit allen Toten geschlossen. Man spricht von der *Toten Waffenruhe*. Ein Toter darf einem Staubmenschen nicht schaden, solange wir diese Waffenruhe bewahren." Während Emoric diese Worte spricht, spürst du auf einmal ein seltsames Kribbeln hinten in deinem Schädel... Es scheint etwas mit der Toten Waffenruhe zu tun zu haben, aber du kannst dich nicht erinnern, was.~ */
  IF ~  !Global("Join_Chaosmen","GLOBAL",3)
!Global("Join_Anarchists","GLOBAL",1)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Chaosmen","GLOBAL",1)
~ THEN REPLY #15858 /* ~"Aha."~ */ DO ~SetGlobal("Dead_Truce","GLOBAL",1)
SetGlobal("Dustman_Ressurection","GLOBAL",1)
SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,2500)
~ JOURNAL #61611 /* ~Als ich den Staubmenschen beitrat, erwähnte Emoric die 'Tote Waffenruhe'. Offensichtlich haben die Staubmenschen mit den Untoten, wie beispielsweise Skeletten und Zombies, eine Waffenruhe geschlossen, so daß diese Wesen einem Mitglied ihres Bundes keinen Schaden zufügen werden, wenn sie nicht zuerst angegriffen werden. Doch als er mich zu einem Staubmenschen gemacht hat, hatte ich das unbestimmte Gefühl, daß ich diese Absprache schon irgendwie gebrochen hatte. Die Tote Waffenruhe mag als Schutz vor Angriffen der Untoten helfen, aber ich habe eine seltsame Vorahnung, daß es sie nicht davon abhalten wird, mich anzugreifen. Ich weiß nicht warum... Vielleicht habe ich in der Vergangenheit irgendein Verbrechen gegen sie begangen?~ */ GOTO 80
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15860 /* ~"Äh... ja, einem echten Staubmenschen würden sie wohl nie und nimmer was antun... aber jemand, der nur vortäuscht, ein Staubmensch zu sein, würde wohl nicht denselben Schutz genießen."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15861 /* ~"Äh... ja, einem echten Staubmenschen würden sie wohl nie und nimmer was antun... aber jemand, der nur vortäuscht, ein Staubmensch zu sein, würde wohl nicht denselben Schutz genießen."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Sensates","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_REMOVE_SENSORY_TOUCH)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15862 /* ~"Äh... ja, einem echten Staubmenschen würden sie wohl nie und nimmer was antun... aber jemand, der nur vortäuscht, ein Staubmensch zu sein, würde wohl nicht denselben Schutz genießen."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Godsmen","GLOBAL",7)
GiveExperience(Protagonist,1000)
~ GOTO 80
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15863 /* ~"Äh... ja, einem echten Staubmenschen würden sie wohl nie und nimmer was antun... aber jemand, der nur vortäuscht, ein Staubmensch zu sein, würde wohl nicht denselben Schutz genießen."
~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",1)
SetGlobal("Join_Chaosmen","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.0 79.1 79.2 79.3 79.4
  SAY #15867 /* ~"Außerdem gibt es Zauber, die das Leben verlängern oder den Tod verhindern. Sie sind unserem Bund ein Greuel und wirken bei unseren eigenen Mitgliedern nur selten. Nichts darf unser Streben nach dem Wahren Tod durchkreuzen. Verstehst du das?"~ */
  IF ~~ THEN REPLY #15875 /* ~"Was ist, wenn es für die betreffende Person... schwierig... ist, zu sterben?"~ */ GOTO 82
  IF ~~ THEN REPLY #15876 /* ~"Gehören dazu auch Heilzauber?"~ */ GOTO 89
  IF ~~ THEN REPLY #15877 /* ~"Ich hätte da noch eine Frage zu dieser Toten Waffenruhe..."~ */ GOTO 90
  IF ~  Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15878 /* ~"'Äh... ja, ich nehme an, daß das Anti-Wiederauferstehungstabu nur für einen echten Staubmenschen gelten würde, oder? Es schließt doch Heilzauber nicht aus, oder?"~ */ GOTO 89
  IF ~  Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15879 /* ~"'Äh... ja, ich nehme an, daß das Anti-Wiederauferstehungstabu nur für einen echten Staubmenschen gelten würde, oder? Es schließt doch Heilzauber nicht aus, oder?"~ */ GOTO 89
  IF ~  Global("Join_Godsmen","GLOBAL",6)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15880 /* ~"'Äh... ja, ich nehme an, daß das Anti-Wiederauferstehungstabu nur für einen echten Staubmenschen gelten würde, oder? Es schließt doch Heilzauber nicht aus, oder?"~ */ GOTO 89
  IF ~  !Global("Join_Godsmen","GLOBAL",6)
GlobalGT("Join_Chaosmen","GLOBAL",0)
!Global("Join_Chaosmen","GLOBAL",2)
!Global("Join_Sensates","GLOBAL",1)
!Global("Join_Anarchists","GLOBAL",1)
~ THEN REPLY #15881 /* ~"'Äh... ja, ich nehme an, daß das Anti-Wiederauferstehungstabu nur für einen echten Staubmenschen gelten würde, oder? Es schließt doch Heilzauber nicht aus, oder?"~ */ GOTO 89
  IF ~~ THEN REPLY #15882 /* ~"Ich verstehe. Jetzt, wo ich ein Staubmensch bin, hätte ich noch ein paar Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15883 /* ~"Ich hätte da ein paar Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15884 /* ~"Das kann ich verstehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from: 6.19 80.7 82.4 83.1 84.1 86.2 87.1 88.4 89.0 90.2 91.1 92.1 93.3 94.0 96.0 98.3 99.3 100.3 101.2 102.1
  SAY #15885 /* ~Emoric wartet.~ */
  IF ~~ THEN REPLY #15886 /* ~"Zu dieser Philosophie, daß 'nichts den Wahren Tod durchkreuzen sollte'. Äh, was ist, wenn es für die betreffende Person... schwierig... ist zu sterben?"~ */ GOTO 82
  IF ~~ THEN REPLY #15887 /* ~"Gilt diese Regel der 'Nicht-Wiederauferstehung' auch für Heilzauber?"
~ */ GOTO 89
  IF ~~ THEN REPLY #15888 /* ~"Ich hätte da noch eine Frage zur Toten Waffenruhe."~ */ GOTO 90
  IF ~~ THEN REPLY #15889 /* ~"Welche Hilfe steht mir als Staubmensch zur Verfügung?"~ */ GOTO 98
  IF ~~ THEN REPLY #15890 /* ~"Ich brauche Hilfe."~ */ GOTO 93
  IF ~~ THEN REPLY #15891 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15892 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 82 // from: 80.0 81.0
  SAY #15893 /* ~"Ich verstehe nicht, worauf du hinauswillst, Eingeweihter."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15894 /* ~Wahrheit: "Ich glaube, ich bin unsterblich."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15895 /* ~Wahrheit: "Ich glaube, ich bin unsterblich."
~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15896 /* ~"Also, ich kenne jemanden, der unsterblich ist, und ich frage für ihn."~ */ GOTO 86
  IF ~~ THEN REPLY #15897 /* ~"Was, wenn der betreffende Staubmensch unsterblich wäre?"~ */ GOTO 88
  IF ~~ THEN REPLY #15898 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15899 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15900 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 83 // from: 82.1 88.1 99.0
  SAY #15901 /* ~"Was bringt dich dazu, so etwas zu sagen, Eingeweihter?"~ */
  IF ~~ THEN REPLY #15902 /* ~"Es scheint, als ob ich nicht sterben kann. Wenn ich verwundet werde, heilen meine Wunden wieder ganz schnell."~ */ GOTO 84
  IF ~~ THEN REPLY #15903 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15904 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."
~ */ GOTO 6
  IF ~~ THEN REPLY #15905 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 84 // from: 83.0
  SAY #15906 /* ~Emoric starrt dich an. "Zeig es mir, Eingeweihter."~ */
  IF ~~ THEN REPLY #15907 /* ~Tu das.~ */ GOTO 85
  IF ~~ THEN REPLY #15908 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15909 /* ~"Vergiß es... ich habe mich undeutlich ausgedrückt. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15910 /* ~"Ich habe Blödsinn geredet. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 85 // from: 84.0
  SAY #15911 /* ~Du fügst dir einen kleinen Schnitt zu - die Wunde heilt im Nu. Emoric starrt zuerst auf die Wunde, hält kurz inne und schaut dir dann in die Augen. "Irgendetwas in deinem Wesen wehrt sich gegen den Wahren Tod. Du bist kein Staubmensch mehr. Du mußt gehen."~ */
  IF ~~ THEN REPLY #15912 /* ~"Wenn ich muß... gebe ich den Titel Staubmensch auf. Leb wohl."~ */ DO ~SetGlobal("Join_Dustmen","GLOBAL",3)
SetGlobal("Dead_Truce","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 86 // from: 82.2 88.2 99.1
  SAY #15913 /* ~Emoric hält kurz inne. "Dann... muß dieser Freund... furchtbar leiden. Er ist in diesem falschen Dasein eingesperrt und kann den Wahren Tod nicht erreichen."~ */
  IF ~~ THEN REPLY #15914 /* ~"Hat sich *selbst eingesperrt*?"~ */ GOTO 101
  IF ~~ THEN REPLY #15915 /* ~"Warum würde jemand in diesem falschen Dasein eingesperrt bleiben?"~ */ GOTO 87
  IF ~~ THEN REPLY #15916 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."
~ */ GOTO 81
  IF ~~ THEN REPLY #15917 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15918 /* ~"Klar. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.1 101.1 102.0
  SAY #15919 /* ~"Wer den Wahren Tod sucht, muß zunächst seine Leidenschaft und alle anderen Bande aufgeben, die ihn an dieses falsche Dasein binden und seinen Geist gefangen halten. Viele Wesen, wie zum Beispiel Geister und andere rastlose Seelen, sind an dieses Dasein ob ihrer unerfüllten Leidenschaften gekettet."~ */
  IF ~~ THEN REPLY #15920 /* ~"Was hast du damit gemeint, als du vorhin gesagt hast, daß diese unsterbliche Person sich selbst in diesem Leben eingesperrt hat?"~ */ GOTO 101
  IF ~~ THEN REPLY #15921 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15922 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15923 /* ~"Aha. Danke für die Auskunft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 88 // from: 82.3 99.2
  SAY #15924 /* ~"Dann wären sie keine Staubmenschen. Ihr Glaube an die Unsterblichkeit würde die Eingeweihten an ihr Leben ketten, so daß sie den Wahren Tod nie erreichen könnten." Emoric hält kurz inne. "Wie kommst du auf diese Frage, Eingeweihter?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #15925 /* ~Wahrheit: "Ich glaube, ich bin unsterblich."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 99
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #15926 /* ~Wahrheit: "Ich glaube, ich bin unsterblich."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_5","GLOBALLaw",1)
~ GOTO 83
  IF ~~ THEN REPLY #15927 /* ~"Also, ich habe einen Freund, der unsterblich ist. Ich habe für ihn gefragt."~ */ GOTO 86
  IF ~~ THEN REPLY #15928 /* ~"Ihr *Glaube* würde sie davon abhalten? Wie das?"~ */ GOTO 101
  IF ~~ THEN REPLY #15929 /* ~"War einfach nur so 'ne Frage. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15930 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15931 /* ~"War nur 'ne Frage. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 89 // from: 80.1 80.3 80.4 80.5 80.6 81.1
  SAY #15932 /* ~"Heilende Zaubersprüche funktionieren normalerweise. Reinkarnations- und Wiederauferstehungs-Zauber hingegen sollten nicht auf Mitglieder unseres Bundes angewandt werden. Sie behindern das Streben eines Gläubigen nach dem Wahren Tod."~ */
  IF ~~ THEN REPLY #15933 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15934 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15935 /* ~"Na gut. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 90 // from: 80.2 81.2
  SAY #15936 /* ~Emoric wartet.~ */
  IF ~~ THEN REPLY #15937 /* ~"Was passiert, wenn ich einen der wandernden Toten angreife?"~ */ GOTO 91
  IF ~~ THEN REPLY #15938 /* ~"Was ist mit Selbstverteidigung?"~ */ GOTO 92
  IF ~~ THEN REPLY #15939 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15940 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15941 /* ~"Na gut. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 91 // from: 90.0 92.0
  SAY #15942 /* ~"Damit hättest du die Tote Waffenruhe verletzt."~ */
  IF ~~ THEN REPLY #15943 /* ~"Was ist mit Selbstverteidigung?"~ */ GOTO 92
  IF ~~ THEN REPLY #15944 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."
~ */ GOTO 81
  IF ~~ THEN REPLY #15945 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15946 /* ~"Na gut. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 92 // from: 90.1 91.0
  SAY #15947 /* ~"Es wird nicht vorkommen, daß ein Toter dich angreift, solange die Tote Waffenruhe in Kraft ist."~ */
  IF ~~ THEN REPLY #15948 /* ~"Was passiert, wenn ich einen von ihnen angreife?"~ */ GOTO 91
  IF ~~ THEN REPLY #15949 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15950 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15951 /* ~"Na gut. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 93 // from: 6.18 81.4
  SAY #15952 /* ~"Wie kann ich dir helfen, Eingeweihter?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15953 /* ~"Meine Wunden müssen geheilt werden."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15954 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 95
  IF ~~ THEN REPLY #15955 /* ~"Hast du irgendwelche Zaubersprüche oder Gegenstände, die mir helfen könnten?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15956 /* ~"Eigentlich nicht, vergiß es. Aber ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15957 /* ~"Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15958 /* ~"Heute eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 94 // from: 93.0 98.0 100.0
  SAY #15959 /* ~Emoric neigt leicht den Kopf. Schon spürst du, wie eine betäubende Kälte durch deinen Körper läuft und deine Knochen und Muskeln zu Stein verwandeln scheinen. Je mehr die Kälte deinen Körper durchdringt, desto weniger schmerzen deine Wunden. Kurz darauf kehren deine Empfindungen zurück... doch die Schmerzen sind weg.~ */
  IF ~~ THEN REPLY #15960 /* ~"Danke. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15961 /* ~"Ich fühle mich wieder ganz. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15962 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 95 // from: 93.1 98.1 100.1
  SAY #15963 /* ~"Du kannst dich hier ausruhen, Eingeweihter."~ */
  IF ~~ THEN REPLY #15964 /* ~"Danke..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",1)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
END

IF WEIGHT #0 ~  Global("cd_int_9","LOCALS",1)
~ THEN BEGIN 96 // from:
  SAY #15965 /* ~Nach einiger Zeit wachst du wieder auf. Gut ausgeruht machst du dich auf den Weg zurück zu Emoric.~ */
  IF ~~ THEN REPLY #15966 /* ~"Ich bin ausgeruht, danke. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 81
  IF ~~ THEN REPLY #15967 /* ~"Ich fühle mich wieder ganz. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ GOTO 6
  IF ~~ THEN REPLY #15968 /* ~"Danke, daß ich mich ausruhen durfte. Leb wohl."~ */ DO ~SetGlobal("cd_int_9","LOCALS",0)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 6.6 6.7
  SAY #15969 /* ~"Wenn du dem Staubmenschenbund beitreten willst, will ich deinen Antrag anhören."~ */
  IF ~~ THEN REPLY #15970 /* ~"Ja, ich möchte dem Staubmenschenbund beitreten."~ */ GOTO 46
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN REPLY #15971 /* ~"Du hast mich falsch eingeschätzt. Ich habe nicht den *Wunsch*, dem Staubmenschenbund beizutreten. Ich glaube lediglich, was die Staubmenschen glauben."~ */ GOTO 48
  IF ~~ THEN REPLY #15972 /* ~"Macht nichts. Ich hätte da noch ein paar Fragen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15973 /* ~"Nicht heute. Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 98 // from: 81.3
  SAY #15974 /* ~"Als Eingeweihter erhältst du Zugang zu unserem Schatz an Wissen und Magie sowie zu einem Lager, in dem wir verschiedene Gegenstände und Zauber aufbewahren. Du kannst aber auch direkt zu mir kommen, wenn dein Körper geheilt werden muß oder du dich ausruhen willst."~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15975 /* ~"Meine Wunden müssen geheilt werden."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15976 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 95
  IF ~~ THEN REPLY #15977 /* ~"Was hast du in deinem Lager?"~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15978 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15979 /* ~"Na gut. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15980 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 99 // from: 82.0 88.0
  SAY #15981 /* ~Als du zum Sprechen ansetzt, spürst du ein Stechen an der Hinterseite deines Schädels. Du ahnst, daß es keine gute Idee wäre, Emoric von deinem 'Zustand' zu erzählen. Er starrt dich weiter an und wartet darauf, daß du etwas sagst.~ */
  IF ~~ THEN REPLY #15982 /* ~Wahrheit: "Ich glaube, ich bin unsterblich."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Emoric_6","GLOBALLaw",3)
~ GOTO 83
  IF ~~ THEN REPLY #15983 /* ~"Also, ich kenne jemanden, der unsterblich ist, und ich frage für ihn."~ */ GOTO 86
  IF ~~ THEN REPLY #15984 /* ~"Was, wenn der betreffende Staubmensch unsterblich wäre?"~ */ GOTO 88
  IF ~~ THEN REPLY #15985 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15986 /* ~"Vergiß es. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15987 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #15988 /* ~"Brauchst du sonst noch was, Eingeweihter?"~ */
  IF ~  HPPercentLT(Protagonist,100)
~ THEN REPLY #15989 /* ~"Meine Wunden müssen geheilt werden."~ */ DO ~FullHeal(Protagonist)
~ GOTO 94
  IF ~~ THEN REPLY #15990 /* ~"Ich brauche einen Ort, an dem ich mich ausruhen kann."~ */ GOTO 95
  IF ~~ THEN REPLY #15991 /* ~"Ich würde gern noch einmal in den Laden schauen."~ */ DO ~StartStore("Emoric",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #15992 /* ~"Ich hätte da ein paar Fragen an dich zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15993 /* ~"Ja. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #15994 /* ~"Heute eigentlich nicht. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 101 // from: 86.0 87.0 88.3
  SAY #15995 /* ~"Die Unsterblichkeit ist eine Wahl. Der Glaube wirkt sich auf das Fleisch aus, egal, ob es dein eigener oder ein anderer Glaube ist. Jemand wird unsterblich, wenn er nicht auf das Leben verzichten *will*."~ */
  IF ~~ THEN REPLY #15996 /* ~"Aber nach deiner Argumentation ist der Tod auch eine Wahl. Warum sterben Leute überhaupt?"~ */ GOTO 102
  IF ~~ THEN REPLY #15997 /* ~"Warum würde jemand in diesem falschen Dasein eingesperrt bleiben?"~ */ GOTO 87
  IF ~~ THEN REPLY #15998 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #15999 /* ~"Hmmmm. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #16000 /* ~"Interessant. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 102 // from: 101.0
  SAY #16001 /* ~"Der Tod ist ebenfalls eine Wahl. Doch anders als bei der Unsterblichkeit gibt es viele, die an den Tod glauben, und ihr Glaube erlaubt uns zu sterben." Emoric zögert einen Augenblick. "Wir sind nicht zum ewigen Leben bestimmt, Eingeweihter. Tief in uns drin wissen wir das."~ */
  IF ~~ THEN REPLY #16002 /* ~"Also... warum würde jemand in diesem falschen Dasein eingesperrt bleiben?"~ */ GOTO 87
  IF ~~ THEN REPLY #16003 /* ~"Aha. Ich hätte da noch ein paar andere Fragen zum Bund..."~ */ GOTO 81
  IF ~~ THEN REPLY #16004 /* ~"Hmmmm. Ich hätte da noch ein paar andere Fragen, die nicht den Bund betreffen..."~ */ GOTO 6
  IF ~~ THEN REPLY #16005 /* ~"Interessant. Leb wohl."~ */ EXIT
END
