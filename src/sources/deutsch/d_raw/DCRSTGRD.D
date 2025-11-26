// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSTGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSTGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #1536 /* ~Du siehst eine der Wachen von Verdammnis. Er ist blutverschmiert und atmet schwer. "Hab keine Zeit zu sprechen. Du hast ne Hand frei, du kannst mir helfen bei... der Verteidigung." Er winkt mit einer Hand nach dir und entläßt dich.~ */
  IF ~~ THEN REPLY #58830 /* ~"Was ist passiert?"~ */ GOTO 1
  IF ~~ THEN REPLY #58832 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1538 /* ~"Irgendso'n verdammter Narr hat plötzlich irgendwas freigelassen, und schon sind wir in Carzeri und kämpfen um unser Leben. Und jetzt hau ab und mach was Nützliches."~ */
  IF ~~ THEN REPLY #58831 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Current_Area","GLOBAL",900)
NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #1539 /* ~"Hab ich dir nicht gesagt, du sollst dich um deinen eigenen Dreck kümmern? Ich hab das so gemeint! Mach schon!"~ */
  IF ~~ THEN REPLY #58833 /* ~"Gut, gut."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 23 even though they appear after this state */
~  Global("Current_Area","GLOBAL",702)
~ THEN BEGIN 3 // from:
  SAY #1540 /* ~"Was in drei Teufels Namen machst du denn hier?"~ */
  IF ~~ THEN REPLY #58834 /* ~"Ich schlendere hier nur so ein bißchen herum."~ */ GOTO 5
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58835 /* ~"Was kannst du mir über diese Rüstung erzählen?"~ */ GOTO 6
  IF ~~ THEN REPLY #58836 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 7
  IF ~~ THEN REPLY #58837 /* ~"Nichts. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.3
  SAY #1541 /* ~"Stehenbleiben!" Die Wache greift an!~ */
  IF ~~ THEN REPLY #58838 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58839 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 6.1
  SAY #58840 /* ~"Ein bißchen herumschlendern? In einem Gefängnis?! Du bist hier, um jemandem beim Ausbruch zu helfen!" Er schlägt mit seiner Waffe nach dir!~ */
  IF ~~ THEN REPLY #58858 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58859 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #58841 /* ~"Ich weiß nicht. Sie gehört zum Gefängnis, solange ich denken kann. Was wir auch ausprobieren, die Zelle läßt sich nicht öffnen. Es ist noch dazu eine sehr schöne Rüstung, aber wir kommen einfach nicht ran. Jetzt bist du aber an der Reihe, eine Frage zu beantworten: Was tust du hier unten?"~ */
  IF ~~ THEN REPLY #58860 /* ~"Ich suche nach einem Deva."~ */ GOTO 7
  IF ~~ THEN REPLY #58861 /* ~"Ich schlendere hier nur so herum."~ */ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 3.2 6.0
  SAY #58842 /* ~Er lächelt. "Du wirst schon noch früh genug dem himmlischen Chor beitreten, Dussel." Er zückt seine Waffe und greift an!~ */
  IF ~~ THEN REPLY #58862 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58863 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 8 // from:
  SAY #58843 /* ~Du siehst eine der Wachen von Verdammnis. Er wirkt etwas gelangweilt. "Was willst du?"~ */
  IF ~~ THEN REPLY #58864 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 10
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58865 /* ~"Eine Frau namens Lady Roberta schmiedet Pläne, ihren Mann Carl zu ermorden. Ich glaube, er ist einer der Adjutanten des Stadtverwalters."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58866 /* ~"Ich möchte mich freiwillig stellen für den Mord an Carl Parfidor."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58867 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58868 /* ~"Ich möchte, daß du mich verhaftest."~ */ GOTO 15
  IF ~~ THEN REPLY #58869 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 16
  IF ~~ THEN REPLY #58870 /* ~"Ich möchte mit dem Verantwortlichen sprechen."~ */ GOTO 11
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58871 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 22
  IF ~~ THEN REPLY #58929 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 23 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from: 10.0 11.0 12.1 13.1 14.0 15.2 16.0 17.1 22.0
  SAY #58844 /* ~"Was willst du nun schon wieder?"~ */
  IF ~~ THEN REPLY #58872 /* ~"Was kannst du mir über diesen Ort erzählen?"~ */ GOTO 10
  IF ~~ THEN REPLY #58873 /* ~"Ich möchte mit dem Verantwortlichen sprechen."~ */ GOTO 11
  IF ~  GlobalGT("Snuff_Carl","GLOBAL",0)
GlobalLT("Snuff_Carl","GLOBAL",4)
Global("Roberta_Betrayed","GLOBAL",0)
~ THEN REPLY #58874 /* ~"Eine Frau namens Lady Roberta schmiedet Pläne, ihren Mann Carl zu ermorden. Ich glaube, er ist einer der Adjutanten des Stadtverwalters."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",4)
SetGlobal("Roberta_Betrayed","GLOBAL",1)
~ GOTO 12
  IF ~  Global("Snuff_Carl","GLOBAL",2)
Global("Regret","GLOBAL",10)
~ THEN REPLY #58875 /* ~"Ich möchte mich freiwillig stellen für den Mord an Carl Parfidor."~ */ GOTO 13
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",700)
~ THEN REPLY #58876 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 14
  IF ~  Global("Regret","GLOBAL",10)
~ THEN REPLY #58877 /* ~"Ich möchte, daß du mich verhaftest."~ */ GOTO 15
  IF ~~ THEN REPLY #58878 /* ~"Ich bin auf der Suche nach einem Deva."~ */ GOTO 16
  IF ~  GlobalGT("C_Off","GLOBAL",2)
GlobalLT("C_Off","GLOBAL",6)
Global("Current_Area","GLOBAL",701)
~ THEN REPLY #58879 /* ~"Einer der Beamten dieser Stadt hat mich angeworben, einen anderen von ihnen umzubringen. Ich wollte dich nur davon unterrichten."~ */ GOTO 22
  IF ~~ THEN REPLY #58932 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #58845 /* ~"Wir stehen im Moment unter Sicherheitsverschluß wegen der Pest. Wissen nicht, woher sie kommt, aber wir stellen Teile der Stadt unter Quarantäne, bis wir es wissen. Willst du sonst noch etwas?"~ */
  IF ~~ THEN REPLY #58880 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58881 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.6 9.1 17.0
  SAY #58846 /* ~"Was, der Stadtverwalter? Er ist im Verwaltungsgebäude. Viel Glück. Du wirst es brauchen, wenn du zu ihm vorgelassen werden willst. Er ist derzeit für *niemanden* zu sprechen. Sein Geist scheint derzeit an einem anderen Ort zu verweilen..."~ */
  IF ~~ THEN REPLY #58882 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58883 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 9.2
  SAY #58847 /* ~"Lady Roberta?" Seine Stirn legt sich in Falten. "Wir werden der Sache nachgehen." Er sieht weg. "Ach ja, danke."~ */
  IF ~~ THEN REPLY #58884 /* ~"Was, gibt es dafür etwa keine Belohnung?"~ */ GOTO 17
  IF ~~ THEN REPLY #58885 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58886 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.2 9.3
  SAY #58848 /* ~"Darüber sollte man nicht scherzen. Wir sind dabei, seinen Tod aufzuklären. Wer immer es getan hat, wird dafür eine sehr lange Zeit ins Gefängnis gehen."~ */
  IF ~~ THEN REPLY #58887 /* ~"Ich mache keine Scherze. Ich habe ihn getötet."~ */ GOTO 18
  IF ~~ THEN REPLY #58888 /* ~"Oh. Tut mir leid, war ein blöder Scherz. Ich habe noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #58889 /* ~"Oh. Tut mir leid. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.3 9.4
  SAY #58849 /* ~Er schüttelt den Kopf. "Du hältst mich vielleicht für blöd, aber eines sag ich dir, Dussel: Ich will nichts zu tun haben mit politischen Streitereien. Ich hänge an meiner Arbeit... und an meinem Leben. Geh damit zum Oberbefehlshaber."~ */
  IF ~~ THEN REPLY #58890 /* ~"Nun gut. Dann hätte ich noch ein paar Fragen."~ */ GOTO 9
  IF ~~ THEN REPLY #58891 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 8.4 9.5
  SAY #58850 /* ~"Dich verhaften? Wofür?"~ */
  IF ~~ THEN REPLY #58892 /* ~"Ich möchte einfach nur ins Gefängnis."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 19
  IF ~~ THEN REPLY #58893 /* ~"Weil ich total verrückt bin! Bluugidi-bluk oh wu la la!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_CurstGuard_1","GLOBALLaw",-3)
~ GOTO 20
  IF ~~ THEN REPLY #58894 /* ~"Vergiß es. Beantworte mir nur ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58895 /* ~"Ach, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 8.5 9.6
  SAY #58851 /* ~"Dann suchst du am falschen Ende des Großen Ringes, Dussel, denn selbst wenn es hier einen gäbe, würdest du ihn nicht finden. Er wäre fest unter Verschluß, wie das Gold eine Geizhalses."~ */
  IF ~~ THEN REPLY #58896 /* ~"Nun gut, dann hätte ich ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58897 /* ~"Dann vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.0
  SAY #58852 /* ~Er grinst. "Ist deine Tugendhaftigkeit dir nicht Lohn genug? Wenn du mehr willst als das, geh und rede mit einem der Vorsteher."~ */
  IF ~~ THEN REPLY #58898 /* ~"Dann möchte ich mit dem Verantwortlichen sprechen."~ */ GOTO 11
  IF ~~ THEN REPLY #58899 /* ~"Gut. Ich hätte ein paar Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58900 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.0
  SAY #58853 /* ~"Wirst du dich ergeben, oder müssen wir handgreiflich werden?"~ */
  IF ~~ THEN REPLY #58901 /* ~"Ich ergebe mich."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58902 /* ~"Wir werden kämpfen."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 15.0
  SAY #58854 /* ~"Wenn du drauf bestehst. Gehen wir."~ */
  IF ~~ THEN REPLY #58903 /* ~"Ich hab's mir anderes überlegt. Vergiß es."~ */ GOTO 21
  IF ~~ THEN REPLY #58904 /* ~"Also gut. Laß uns gehen."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.1
  SAY #58855 /* ~"Du hast mich überzeugt. Also dann, gehen wir."~ */
  IF ~~ THEN REPLY #58905 /* ~"Ich hab's mir anderes überlegt. Vergiß es."~ */ GOTO 21
  IF ~~ THEN REPLY #58906 /* ~"Also gut. Laß uns gehen."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.0 20.0
  SAY #58856 /* ~"Dazu ist es nun zu spät, Dussel. Ergibst du dich, ohne Schwierigkeiten zu machen oder nicht?"~ */
  IF ~~ THEN REPLY #58908 /* ~"Ich ergebe mich."~ */ DO ~SetGlobal("Curst_Arrest","GLOBAL",1)
TeleportParty("AR0702",[623.1787],2)
~ EXIT
  IF ~~ THEN REPLY #58909 /* ~"Wir werden kämpfen."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 8.7 9.7
  SAY #58928 /* ~Er schüttelt den Kopf. "Für dich seh ich vielleicht dumm aus, aber, Dussel, ich misch mich nicht in politische Streitereien ein. Ich schätze meinen Job... und mein Leben. Geh damit zum Hauptmann. Er ist drüben beim Tor in der Mitte der Stadt, da wo's in den anderen Teil der Stadt rübergeht."~ */
  IF ~~ THEN REPLY #58930 /* ~"Na gut. Ich hätte da noch ein paar andere Fragen..."~ */ GOTO 9
  IF ~~ THEN REPLY #58931 /* ~"Dann leb wohl."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Current_Area","GLOBAL",702)
Global("Curst_Arrest","GLOBAL",1)
~ THEN BEGIN 23 // from:
  SAY #58933 /* ~"Was zum... EINDRINGLINGE!" Die Wache greift an!~ */
  IF ~~ THEN REPLY #58934 /* ~Kämpfe.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58935 /* ~Flüchte.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END
