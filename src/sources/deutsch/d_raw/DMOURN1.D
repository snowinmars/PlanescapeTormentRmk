// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7078 /* ~Dieser Staubmensch trägt eine lange schwarze Robe, und seine Hände stecken in den Ärmelaufschlägen. Sein Kopf ist gesenkt, und er ist mit den anderen Staubmenschen, die ihn umgeben, in einen langsamen Sprechgesang vertieft.~ */
  IF ~~ THEN REPLY #7079 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7810 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #7759 /* ~Der Staubmensch scheint dich gehört zu haben, aber er blickt nicht auf.~ */
  IF ~~ THEN REPLY #7811 /* ~"Ich würde gerne einen Moment mit Dir reden."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7812 /* ~Hör ihrem Gesang zu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7813 /* ~Hör ihrem Gesang zu.
~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7814 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7815 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7816 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7817 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7818 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7819 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #7760 /* ~Alle Staubmenschen halten exakt den gleichen Ton und Rhythmus. Alle paar Minuten steigert sich der Sprechgesang fast zu einem Schreien, dann ebbt er wieder ab, so daß es sich beinahe wie ein Echo anhört. Wenn der Sprechgesang verklungen ist, rezitieren die Staubmenschen einige Zeilen und loben den 'Wahren Tod', bevor sie den Sprechgesang erneut anstimmen.~ */
  IF ~~ THEN REPLY #7820 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #7821 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #7761 /* ~Der Staubmensch hebt seinen Kopf. Er unterbricht den Sprechgesang nicht und hält den gleichen Rhythmus und Ton wie die anderen Staubmenschen um ihn herum.~ */
  IF ~~ THEN REPLY #7823 /* ~"Was machst du?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7824 /* ~"Ich trauere um einen Toten."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7825 /* ~"Ich bin hier für jemanden, der jemanden verloren hat."~ */ GOTO 35
  IF ~~ THEN REPLY #7828 /* ~"Tut mir leid, daß ich dich belästigt habe. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #7762 /* ~Der Staubmensch ignoriert dich, senkt den Kopf und setzt den Sprechgesang fort.~ */
  IF ~~ THEN REPLY #7839 /* ~"Ich würde gern mit dir sprechen."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7840 /* ~Hör ihrem Gesang zu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7841 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7842 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7843 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7844 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7845 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7846 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7847 /* ~Laß ihn in Frieden.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #7763 /* ~Der Trauernde hört plötzlich auf und mustert dich. "Erfüllt dich ihr Tod mit Kummer?"~ */
  IF ~~ THEN REPLY #7848 /* ~"Nein. Der Tod regt meine Gefühle nicht."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #7849 /* ~Wahrheit: "Ja... Ich fürchte, ich bin schuld am Tod einer unschuldigen Frau, Deionarra. Nicht nur, daß mich das beschäftigt, sondern ich fühle mich auch schuldig für den Kummer, den ich ihrem Vater zugefügt habe."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #7850 /* ~Wahrheit: "Ja... Ich bin schuld am Tod eines unschuldigen Mannes, Xachariah. Sein Sterben peinigt mich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #7851 /* ~Wahrheit: "Ja... Ich bin schuld am Tod vieler Unschuldiger in den Ebenen. Die Qualen, die mir diese Enthüllung bereitet, sind mir fast unerträglich."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7852 /* ~"Es geht nicht um mich. Da ist diese Frau, Frau-von-Angyar, die einen Sohn verloren hat. Sie leidet schwere Seelenqualen."~ */ GOTO 9
  IF ~~ THEN REPLY #7853 /* ~Lüge: "Nein, ich... äh... spreche für einen Freund... äh... Adahn - er ist derjenige, der Qualen leidet aufgrund des Todes dieser Person."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7854 /* ~"Ja, sein Tod hat mir viele Schmerzen und Qualen bereitet."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Nun ja, äh... bevor ich dazu was sage, hätte ich ein paar Fragen an dich..."~ */ GOTO 20
  IF ~~ THEN REPLY #14817 /* ~"Entschuldige... ich habe Blödsinn geredet. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #7764 /* ~"Wir werden deinen Schmerz und den ihres Vaters betrauern, wenn du es gestattest."~ */
  IF ~~ THEN REPLY #7856 /* ~"Wenn ihr das tun könntet. Es würde das Leid ihres Vaters und meine eigenen außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #7857 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #7765 /* ~"Wir werden deinen Schmerz betrauern, wenn du es wünscht."~ */
  IF ~~ THEN REPLY #7858 /* ~"Wenn ihr das tun könntet. Es würde mein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #7859 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #7766 /* ~"Wir werden deinen Schmerz betrauern, wenn du es wünscht."~ */
  IF ~~ THEN REPLY #7860 /* ~"Wenn ihr das tun könntet. Es würde mein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #7861 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #7767 /* ~"Wir werden ihren Schmerz betrauern, wenn sie es gestattet."
~ */
  IF ~~ THEN REPLY #7862 /* ~"Wenn ihr das tun könntet. Es würde ihr Leid außerordentlich lindern."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #7863 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #7768 /* ~"Wir werden seinen Schmerz betrauern, wenn er es erlaubt."~ */
  IF ~~ THEN REPLY #7864 /* ~"Wenn ihr das tun könntet. Es würde sein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #7865 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #7769 /* ~Der Staubmensch nickt und setzt den Sprechgesang fort.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7866 /* ~Hör ihrem Gesang zu.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #7867 /* ~Hör ihrem Gesang zu.
~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #7868 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #7869 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7870 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7871 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #7872 /* ~Hör ihrem Gesang zu.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #7873 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.7 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #7770 /* ~Der Staubmensch senkt seinen Kopf und setzt den Sprechgesang fort.
~ */
  IF ~~ THEN REPLY #7874 /* ~Verschwinde.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #7771 /* ~"Wir sind in Trauer."~ */
  IF ~~ THEN REPLY #7875 /* ~"Wer ist denn gestorben?"~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7876 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7877 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7878 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7879 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7880 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7881 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #7882 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #7772 /* ~"Wir betrauern nicht die Toten. Wir betrauern die Lebenden."~ */
  IF ~~ THEN REPLY #7883 /* ~"Die Lebenden?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7884 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7885 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7886 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7887 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7888 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7889 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #7890 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7891 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #7773 /* ~"Wir betrauern die Lebenden, die den Verlust der Dahingeschiedenen beklagen."~ */
  IF ~~ THEN REPLY #7892 /* ~"Warum?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7893 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7894 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7895 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7896 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7897 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7898 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #7899 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7900 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #7774 /* ~"Wenn eine Seele den Wahren Tod stirbt, hinterläßt dies oft eine Woge des Schmerzes. Wenn der Verstorbene geliebt wurde, löst sein Tod ein Gefühl der Trauer und des Verlusts aus."~ */
  IF ~~ THEN REPLY #7901 /* ~"Das ist auch nur natürlich..."~ */ GOTO 17
  IF ~~ THEN REPLY #7902 /* ~"Ihr trauert also um die Lebenden, weil..."~ */ GOTO 17
  IF ~~ THEN REPLY #7903 /* ~"Den Wahren Tod?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7904 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7905 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7906 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7907 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7908 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7909 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #7910 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7911 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #7781 /* ~"Schmerz und Trauer um einen Toten sind starke Gefühle. Sie binden die Lebenden an dieses Dasein und verhindern, daß sie, wenn ihre Zeit abgelaufen ist, den Wahren Tod erlangen. Wir betrauern die Lebenden, die mit diesen Gefühlen geschlagen sind."~ */
  IF ~~ THEN REPLY #7912 /* ~"Den Wahren Tod?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7913 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7914 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7915 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7916 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7917 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7918 /* ~"Um wen trauert ihr denn nun genau?"
~ */ GOTO 40
  IF ~~ THEN REPLY #7919 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7920 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #7782 /* ~"Er wird manchmal auch der endgültige Tod genannt. Der Wahre Tod ist die Befreiung von dieser düsteren, schmerzvollen Existenz. Es ist die Befreiung von den Gefühlen. Die Befreiung von der Vernunft. Die Befreiung von diesen Hüllen."~ */
  IF ~~ THEN REPLY #7921 /* ~"Hört sich nach Vergessenheit an."~ */ GOTO 19
  IF ~~ THEN REPLY #7922 /* ~"Ist das der Grund, warum ihr um die Lebenden trauert?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7923 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7924 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7925 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7926 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7927 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7928 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 40
  IF ~~ THEN REPLY #7929 /* ~"Ich... verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7930 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #7783 /* ~Der Staubmensch nickt. "Einige haben es so genannt, aber diese Bezeichnung ist nicht ganz richtig."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #7931 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #7932 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #7933 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #7934 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #7935 /* ~"Um wen trauert ihr denn nun genau?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #7936 /* ~"Um wen trauert ihr denn nun genau?"
~ */ GOTO 40
  IF ~~ THEN REPLY #7937 /* ~"Egal. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7938 /* ~"Ich denke, ich habe genug gehört. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #7784 /* ~Der Staubmensch wartet.~ */
  IF ~~ THEN REPLY #7939 /* ~"Was machst du?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #7940 /* ~"Warum hat sich euer Gesang geändert?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7941 /* ~"Ich trauere um einen Toten."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #7942 /* ~"Ich bitte für einen anderen, der jemanden verloren hat."~ */ GOTO 35
  IF ~~ THEN REPLY #7943 /* ~"Ich würde gerne euren Gesang anhören."~ */ GOTO 11
  IF ~~ THEN REPLY #7944 /* ~"Entschuldige die Störung. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #7785 /* ~Alle Staubmenschen singen im selben Ton und Rhythmus. Im Gegensatz zu dem Sprechgesang, den du gehört hast, als zu das erste Mal zum Denkmal gegangen bist, klingt dieser Gesang wie Wellen, die gegen die Küste branden. Dieses Bild weckt Erinnerungen in dir...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #7945 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #7946 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #7947 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #7948 /* ~Versuch dich zu erinnern...~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #7949 /* ~Schüttel die Erinnerung ab.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #7786 /* ~Du erinnerst dich vage daran, wie du an einer fernen Küste stehst... an einem anderen Ort, weit weg von hier. Jemand ist bei dir, eine Frau. Sie steht links von dir, am Rande deines Blickfelds, und du kannst sie nur schemenhaft erkennen. Als du versuchst, deiner Erinnerung Gestalt zu verleihen, verblaßt sie...~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7950 /* ~Vergewisser dich, wo du bist.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #7951 /* ~Vergewisser dich, wo du bist.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #7787 /* ~...und du bist wieder bei den trauernden Staubmenschen. Ihr Sprechgesang ist fast völlig verstummt. Sie hören auf, rezitieren einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen wieder mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #7952 /* ~Horch noch einmal.~ */ GOTO 21
  IF ~~ THEN REPLY #7953 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #7788 /* ~Alle Staubmenschen singen im selben Ton und Rhythmus. Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, klingt dieser Gesang viel höher, so wie das Sirren eines Pfeiles oder wie Wind, der durch eine Schlucht pfeift. Dieser Sprechgesang beginnt und endet abrupt - wenn er verstummt, rezitieren die Staubmenschen einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen wieder mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #7954 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #7955 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #7789 /* ~Alle Staubmenschen singen im selben Ton und Rhythmus. Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, schwingt in diesem Gesang eine gewisse Energie und Unbändigkeit mit - er ist nicht berechenbar und der Ton scheint sich schon zu verändern, kaum daß er über die Lippen gebracht wurde. Egal wie heftig der Ton von einem Moment zum anderen schwankt - die Staubmenschen singen mit harmonischer Perfektion. Als der Gesang schließlich fast verstummt, rezitieren die Staubmenschen einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen wieder mit ihrem Sprechgesang.
~ */
  IF ~~ THEN REPLY #7956 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #7957 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #7790 /* ~Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, besteht dieser Gesang aus nur einem Ton, der minutenlang andauert... er erinnert dich an das Läuten einer großen Glocke. Nachdem wieder Stille eingekehrt ist, rezitieren die Staubmenschen einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen erneut mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #7958 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #7959 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #7791 /* ~Im Gegensatz zu dem Sprechgesang, den du gehört hast, als zu das erste Mal zum Denkmal gegangen bist, ist dieser Gesang so leise, daß er im Straßenlärm unterzugehen scheint. Nach etwa einer Minute sind die Staubmenschen völlig still, dann rezitieren sie einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen erneut mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #7960 /* ~"Ich habe da ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #7961 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #7792 /* ~Der Staubmensch schaut dich ausdruckslos an. "Unser Sprechgesang hat sich nicht verändert. Wir singen seit Beginn denselben Gesang."~ */
  IF ~~ THEN REPLY #7962 /* ~"Euer Gesang hat sich geändert... Ton und Rhythmus sind jetzt anders."
~ */ GOTO 29
  IF ~~ THEN REPLY #7963 /* ~"Schon gut, macht nichts."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #7793 /* ~Der Staubmensch schüttelt den Kopf. "Vielleicht bist du es, der sich verändert hat."~ */
  IF ~~ THEN REPLY #7964 /* ~"Ich hab' da noch ein paar Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7965 /* ~"Vielleicht ist dem so. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.1 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #7794 /* ~"Ich trauere um Iannis. Sein Herz wurde durch den Verlust seiner einzigen Tochter Deionarra betrübt."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #7966 /* ~"Deionarra? Ich hab' von ihr gehört. Weißt du, wie sie gestorben ist?"
~ */ JOURNAL #27450 /* ~Die trauernden Staubmenschen sagen, daß sie um einen Mann namens Jannis trauern, der offensichtlich der Vater dieses Geistes ist, den ich in der Leichenhalle getroffen habe. Vielleicht könnte ja Jannis mehr über Deionarra und mich wissen...~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7967 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ JOURNAL #27451 /* ~Die trauernden Staubmenschen sagen, daß sie um einen Mann namens Jannis trauern, der seine einzige Tochter verloren hat, Deionarra. Aus irgendeinem Grund kommen mir die Namen bekannt vor, aber ich kann sie nirgendwo unterbringen.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #7968 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ JOURNAL #27451 /* ~Die trauernden Staubmenschen sagen, daß sie um einen Mann namens Jannis trauern, der seine einzige Tochter verloren hat, Deionarra. Aus irgendeinem Grund kommen mir die Namen bekannt vor, aber ich kann sie nirgendwo unterbringen.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.2 13.5 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #7795 /* ~"Wir betrauern deinen Schmerz um die Verstorbenen."~ */
  IF ~~ THEN REPLY #7969 /* ~"Mir geht es wieder besser. Derjenige, um den ihr vor unserem kleinen Plausch getrauert habt, hat es nötiger als ich."~ */ GOTO 34
  IF ~~ THEN REPLY #7970 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7971 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.3 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #7796 /* ~"Wir trauern um die Frau-von-Angyar, die Schmerz ob des Verlusts empfindet."~ */
  IF ~~ THEN REPLY #7972 /* ~"Ihr geht es wieder besser. Derjenige, um den ihr vor unserem kleinen Plausch getrauert habt, hat es nötiger als sie."~ */ GOTO 34
  IF ~~ THEN REPLY #7973 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7974 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.4 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #7797 /* ~"Wir trauern um Adahn, der Schmerz ob des Verlusts empfindet."~ */
  IF ~~ THEN REPLY #7975 /* ~"Ähh... Adahn geht es wieder besser. Derjenige, um den ihr vor unserem kleinen Plausch getrauert habt, hat es nötiger als er."~ */ GOTO 34
  IF ~~ THEN REPLY #7976 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7977 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #7798 /* ~Der Staubmensch nickt, senkt seinen Kopf und setzt den Sprechgesang fort.~ */
  IF ~~ THEN REPLY #7978 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #7979 /* ~Hör zu.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #7980 /* ~Verschwinde.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #7799 /* ~Der Trauernde hört plötzlich auf und mustert dich. "Fühlt derjenige, von dem du sprichst, Trauer um denjenigen, der verstorben ist?"
~ */
  IF ~~ THEN REPLY #7981 /* ~"Nein. Der Tod regt ihre Gefühle nicht."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #7982 /* ~"Ja. Eine Frau, die Frau-von-Angyar, hat einen Sohn verloren. Sie leidet schwere Seelenqualen."~ */ GOTO 9
  IF ~~ THEN REPLY #7983 /* ~Lüge: "Äh, ja...mein Freund, äh... Adahn... hat gerade jemand Nahestehenden verloren. Er leidet unter Qualen aufgrund des Todes dieser Person."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #7984 /* ~"Ja, sein Tod hat ihnen viel Schmerz und Qual bereitet."~ */ GOTO 38
  IF ~~ THEN REPLY #7985 /* ~"Entschuldigung... Ich habe mich versprochen. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #7800 /* ~"Wir werden deinen Schmerz betrauern, wenn du es wünscht."~ */
  IF ~~ THEN REPLY #7986 /* ~"Wenn ihr das tun könntet. Es würde mein Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #7987 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #7801 /* ~"Die Umstände ihres Todes sind mir nicht bekannt."~ */
  IF ~~ THEN REPLY #7988 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7989 /* ~"Also schön. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #7802 /* ~"Wir werden ihren Schmerz betrauern, wenn du es gestattest."~ */
  IF ~~ THEN REPLY #7990 /* ~"Wenn ihr das tun könntet. Es würde ihr Leid außerordentlich lindern."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #7991 /* ~"Nein, das ist wirklich nicht nötig. Leb wohl."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 4.7 11.6
  SAY #7803 /* ~Im Gegensatz zu dem Sprechgesang, den du gehört hast, als du das erste Mal zum Denkmal gegangen bist, ist dieser Gesang viel schwerer wahrzunehmen. Während du zuhörst, fällt dir auf, daß die Töne merkwürdig gedämpft sind, so, als ob die Luft den Gesang erstickt. Nach etwa einer Minute verklingt der Gesang der Staubmenschen, dann rezitieren sie einige Zeilen, in denen sie den 'Wahren Tod' preisen, und beginnen erneut mit ihrem Sprechgesang.~ */
  IF ~~ THEN REPLY #7992 /* ~"Ich habe ein paar Fragen an dich..."~ */ GOTO 3
  IF ~~ THEN REPLY #7993 /* ~Geh, und laß sie ihrem Gesang weiter nachgehen.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.6 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #7804 /* ~"Wir trauern um den, von dem du gesprochen hast und der ob des Verlusts von Kummer gebeugt ist."~ */
  IF ~~ THEN REPLY #7994 /* ~"Der Person geht es wieder besser. Derjenige, um den ihr vorher getrauert hattet, hat es nötiger als der, den ich meinte."~ */ GOTO 34
  IF ~~ THEN REPLY #7995 /* ~"Ich hätte noch ein paar andere Fragen..."~ */ GOTO 20
  IF ~~ THEN REPLY #7996 /* ~"Vielen Dank. Das ist alles, was ich wissen wollte."~ */ GOTO 12
END
