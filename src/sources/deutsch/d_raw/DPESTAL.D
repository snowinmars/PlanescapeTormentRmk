// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTAL~

IF ~  Global("Evil_Book_Spoken","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26924 /* ~Als du das Buch berührst, hörst du eine Stimme: "Ich grüße dich, Meister. Wie kann dir dieser bescheidene Band zu Diensten sein?"~ */
  IF ~~ THEN REPLY #26926 /* ~"Du kannst sprechen?"~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #26927 /* ~"Gar nicht. Hör auf, mit mir zu reden."~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.3 4.19 6.2 7.2 8.2 9.2 10.2 11.2 12.2 13.2 14.2 15.2 16.2 17.2 18.2 19.2 20.2 21.2 22.1 26.1 27.1 54.3
  SAY #26928 /* ~"Wie du wünschst, Meister. Stell deine Fragen, und ich werde dir so gut ich kann weiterhelfen."~ */
  IF ~~ THEN REPLY #26929 /* ~"Erzähl mir doch mal, was du machen kannst."~ */ GOTO 3
  IF ~~ THEN REPLY #26930 /* ~"Gut. Dann halt' jetzt den Mund."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #26931 /* ~"Ich kann sprechen, Meister, in vielen unterschiedlichen Sprachen. Du solltest nur darauf achten, daß uns andere nicht bei unserer Unterhaltung sehen, denn sie können mich nicht hören. Und, Meister, die Sprache ist nicht die einzige meiner Fähigkeiten."~ */
  IF ~~ THEN REPLY #26932 /* ~"Was kannst du machen? Worin bestehen deine Fähigkeiten?"~ */ GOTO 3
  IF ~~ THEN REPLY #26933 /* ~"Wie kam Mantuok in deinen Besitz?"~ */ GOTO 5
  IF ~~ THEN REPLY #26934 /* ~"Erzähl mir was von dir."~ */ GOTO 6
  IF ~~ THEN REPLY #26935 /* ~"Das reicht für den Moment."~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0 5.0
  SAY #26936 /* ~"Ich kann dir Fähigkeiten gewähren, die dir größeren Spielraum in den Launen des Schicksals ermöglichen, Meister, und ich kann dir Ratschläge geben."~ */
  IF ~~ THEN REPLY #26937 /* ~"Von welchen Fähigkeiten sprichst du?"~ */ GOTO 23
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26938 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26939 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26940 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26941 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26942 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26943 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26944 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26945 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26946 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26947 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26948 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26949 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26950 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26951 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26952 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26953 /* ~"Gib mir einen Rat."~ */ GOTO 22
  IF ~~ THEN REPLY #26954 /* ~"Vergiß es. Beantworte mir noch ein paar Fragen."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.17 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.0 26.0 27.0
  SAY #26955 /* ~"Was möchtest du wissen, Meister?"~ */
  IF ~~ THEN REPLY #26956 /* ~"Was kannst du machen? Worin bestehen deine Fähigkeiten?"~ */ GOTO 3
  IF ~~ THEN REPLY #26957 /* ~"Wie kam Mantuok in deinen Besitz?"~ */ GOTO 5
  IF ~~ THEN REPLY #26958 /* ~"Erzähl mir was von dir."~ */ GOTO 6
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26959 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26960 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26961 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26962 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26963 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26964 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26965 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26966 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26967 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26968 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26969 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26970 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26971 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26972 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26973 /* ~"Gib mir einen Rat."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26974 /* ~"Gib mir einen Rat."~ */ GOTO 22
  IF ~~ THEN REPLY #26975 /* ~"Das reicht für den Moment."~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #26976 /* ~"Der kranke Ratten-Magier grub mich in den Katakomben aus, Meister. Er entriß mich meinem früheren Meister, der jetzt schon lange tot ist. Er brachte mich in sein Nest, um etwas von mir zu lernen. Seine Macht war jedoch begrenzt... Es war schwierig, mit ihm zu sprechen, und er verstand wenig von dem, was ich ihn lehrte."~ */
  IF ~~ THEN REPLY #26977 /* ~"Erzähl mir was über deine Fähigkeiten."~ */ GOTO 3
  IF ~~ THEN REPLY #26978 /* ~"Verstehe. Beantworte mir noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #26979 /* ~"Das ist wahr. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 4.2
  SAY #26980 /* ~"Dieser Bitte nachzukommen ist nicht leicht, Meister, aber dein Diener wird versuchen, sie so gut wie möglich zu beantworten. Ich bin ein Kodex aus heute vergessenen Momenten, heute verlorenen Ideen und Gedanken aus anderen Zeiten und anderen Welten. Auf meinen Seiten findet man die Überlieferungen vergessener Kulturen. Kurzum, mein Meister, und das einzige von Belang: Zwischen meinen Seiten liegt MACHT verborgen. Diese Macht kann dir gehören... mein Meister."~ */
  IF ~~ THEN REPLY #26981 /* ~"Erzähl mir was über deine Fähigkeiten."~ */ GOTO 23
  IF ~~ THEN REPLY #26982 /* ~"Hab' gerade kein Interesse. Aber beantworte mir doch noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #26983 /* ~"Nicht interessiert. Lebe wohl, Buch."~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.3
  SAY #26984 /* ~"Ich gebe dir diesen Rat, mein Meister: Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26985 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */ GOTO 8
  IF ~~ THEN REPLY #26986 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27016 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */ GOTO 4
  IF ~~ THEN REPLY #26987 /* ~"Das reicht."~ */ JOURNAL #27016 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.4 7.0
  SAY #26988 /* ~"Dann gebe ich dir diesen Rat, mein Meister. Wenn sie von Freundschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26989 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn sie von Freunschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */ GOTO 9
  IF ~~ THEN REPLY #26990 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27017 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn sie von Freunschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */ GOTO 4
  IF ~~ THEN REPLY #26991 /* ~"Das reicht."~ */ JOURNAL #27017 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn sie von Freunschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.5 8.0
  SAY #26992 /* ~Du fühlst einen leichten Druck in deiner Brust als das Buch spricht: "Dann gebe ich dir diesen Rat, mein Meister. Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26993 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */ GOTO 10
  IF ~~ THEN REPLY #26994 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27018 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */ GOTO 4
  IF ~~ THEN REPLY #26995 /* ~"Das reicht."~ */ JOURNAL #27018 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 3.4 4.6 9.0
  SAY #26996 /* ~"Dann gebe ich dir diesen Rat, mein Meister. Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26997 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */ GOTO 11
  IF ~~ THEN REPLY #26998 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27019 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */ GOTO 4
  IF ~~ THEN REPLY #26999 /* ~"Das reicht."~ */ JOURNAL #27019 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 3.5 4.7 10.0
  SAY #27000 /* ~"Dann gebe ich dir diesen Rat, mein Meister. Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27001 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst." ~ */ GOTO 12
  IF ~~ THEN REPLY #27002 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27020 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst." ~ */ GOTO 4
  IF ~~ THEN REPLY #27003 /* ~"Das reicht."~ */ JOURNAL #27020 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst." ~ */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.6 4.8 11.0
  SAY #27004 /* ~Du fühlst, wie sich dein Mundwinkel zu einem leichten Grinsen verzieht. Du unterdrückst es schnell. "Dann gebe ich dir diesen Rat, mein Meister: Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27005 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */ GOTO 13
  IF ~~ THEN REPLY #27006 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27021 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27007 /* ~"Das reicht."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 3.7 4.9 12.0
  SAY #27008 /* ~"Dann gebe ich dir diesen Rat, mein Meister. Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27009 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 14
  IF ~~ THEN REPLY #27010 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 4
  IF ~~ THEN REPLY #27011 /* ~"Das reicht."~ */ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 3.8 4.10 13.0
  SAY #27012 /* ~"Hier ist mein Rat, Meister. Wenn du mächtig sein willst, mußt du Opfer bringen. Opfere etwas von dir selbst oder etwas, das dir lieb und teuer ist. Denn Macht ist wie ein Tauschhandel: man gibt und nimmt."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27013 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn du mächtig sein willst, mußt du Opfer bringen. Opfere etwas von dir selbst oder etwas, das dir lieb und teuer ist. Denn Macht ist wie ein Tauschhandel: man gibt und nimmt." ~ */ GOTO 15
  IF ~~ THEN REPLY #27014 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 4
  IF ~~ THEN REPLY #27015 /* ~"Das reicht."~ */ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 3.9 4.11 14.0
  SAY #27024 /* ~Dein Blut scheint langsamer durch deine Adern zu fließen, während das Buch spricht. "Hier ist mein Rat, Meister. Ehre und Tugend sind Begriffe, die den Menschen und den Geist töten. Sie sind nur Abstrakta, die die Menschen verwirren und in den Tod treiben. Bleib dir selbst treu und gehorche nur deinem eigenen Willen."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27025 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Ehre und Tugend sind Begriffe, die den Menschen und den Geist töten. Sie sind nur Abstrakta, die die Menschen verwirren und in den Tod treiben. Bleib dir selbst treu und gehorche nur deinem eigenen Willen." ~ */ GOTO 16
  IF ~~ THEN REPLY #27026 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27027 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 3.10 4.12 15.0
  SAY #27029 /* ~"Hier ist mein Rat, Meister. Verschone keinen, der dir Schaden zugefügt hat. Alles andere ist ein offenes Eingeständnis deiner Schwäche."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27030 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Verschone keinen, der dir Schaden zugefügt hat. Alles andere ist ein offenes Eingeständnis deiner Schwäche."~ */ GOTO 17
  IF ~~ THEN REPLY #27031 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27032 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 3.11 4.13 16.0
  SAY #27034 /* ~"Hier ist mein Rat, Meister. Die Seele des Menschen ist ein Meer von Gefühlen. Der Mensch bemüht sich häufig, diesen Gefühlen eine Ordnung zu geben, doch es ist eine falsche Ordnung. Der natürliche Gemütszustand des Menschen ist das Chaos, und dieser Zustand sollte so hingenommen werden."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27035 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Die Seele des Menschen ist ein Meer von Gefühlen. Der Mensch bemüht sich häufig, diesen Gefühlen eine Ordnung zu geben, doch es ist eine falsche Ordnung. Der natürliche Gemütszustand des Menschen ist das Chaos, und dieser Zustand sollte so hingenommen werden."~ */ GOTO 18
  IF ~~ THEN REPLY #27036 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27037 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 3.12 4.14 17.0
  SAY #27039 /* ~"Hier ist mein Rat, Meister. Wisse, was Gnade ist und nutze sie zu deinem Vorteil... aber praktiziere sie nicht."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27040 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wisse, was Gnade ist und nutze sie zu deinem Vorteil... aber praktiziere sie nicht." ~ */ GOTO 19
  IF ~~ THEN REPLY #27041 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27042 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 3.13 4.15 18.0
  SAY #27044 /* ~"Hier ist mein Rat, Meister. Nähre die Furcht in anderen, denn die Menschen lassen sich nur durch Furcht beherrschen. Nichts anderes hinterläßt tiefere Narben."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27045 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nähre die Furcht in anderen, denn die Menschen lassen sich nur durch Furcht beherrschen. Nichts anderes hinterläßt tiefere Narben."~ */ GOTO 20
  IF ~~ THEN REPLY #27046 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27047 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 3.14 4.16 19.0
  SAY #27049 /* ~"Hier ist mein Rat, Meister. Habe ein Lächeln für deine Feinde übrig und reiche ihnen die Hand der Freundschaft. Wenn sie deine Hand ergreifen, versetz ihnen einen Stoß mit dem Dolch in deiner anderen Hand.Sie würden mit dir genauso verfahren."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27050 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ JOURNAL #27053 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Habe ein Lächeln für deine Feinde übrig und reiche ihnen die Hand der Freundschaft. Wenn sie deine Hand ergreifen, versetz ihnen einen Stoß mit dem Dolch in deiner anderen Hand; sie würden mit dir genauso verfahren."~ */ GOTO 21
  IF ~~ THEN REPLY #27051 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27052 /* ~"Das reicht."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 1
END

IF ~~ THEN BEGIN 21 // from: 3.15 4.17 20.0
  SAY #27054 /* ~Während das Buch diese Worte spricht, spürst du, wie sich dein Herz zusammenzieht. Du fühlst dich irgendwie beschmutzt: "Hier ist mein letzter Rat, Meister. Nimm ihn dir zu Herzen. Du kannst alles auslöschen, was dir nicht paßt. Du brauchst nur den Willen dazu."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27055 /* ~"Gib mir noch mehr Ratschläge."~ */ JOURNAL #27058 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Du kannst alles auslöschen, was dir nicht paßt. Du brauchst nur den Willen dazu." ~ */ GOTO 22
  IF ~~ THEN REPLY #27056 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27057 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 3.16 4.18 21.0
  SAY #27059 /* ~"Ich bedaure, Meister, daß ich keinen anderen Rat mehr habe. Denke darüber nach, was ich dir bisher gesagt habe."~ */
  IF ~~ THEN REPLY #27060 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27061 /* ~"Das reicht."~ */ GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 3.0 6.0
  SAY #27062 /* ~"Mit diesen Fähigkeiten, Meister, kannst du dein Leben unermeßlich verbessern. Leider muß ich aber von dir...eine kleine Gegenleistung für diese Mächte verlangen."~ */
  IF ~~ THEN REPLY #27063 /* ~"Kleine Gegenleistung? Was denn?"~ */ GOTO 24
  IF ~~ THEN REPLY #27064 /* ~"Dann will ich nichts."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #27065 /* ~"Die Gegenleistung ist sehr klein, Meister. Ich würde sie gar nicht erwähnen, wenn ich es nicht müßte..." Das Buch macht eine kurze Pause. "Um meine Macht nutzen zu können, mußt du nur einen kleinen Teil von dir opfern, Meister. Du mußt Blut über meine erste Seite vergießen. Durch diesen Akt wird das Band zwischen uns gestärkt, und ich kann dir dabei helfen, dein Potential voll zu entfalten. Du zahlst nur einen geringen Preis im Vergleich zu den Zaubern, die du dafür erhältst."~ */
  IF ~~ THEN REPLY #27066 /* ~"In Ordnung. Hier."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_6","GLOBALGood",-1)
SetGlobal("E_Book","GLOBAL",1)
GiveItemCreate("SPWI115",Protagonist,1,1,0)
~ JOURNAL #27068 /* ~Dieses seltsame Buch, das ich aufgehoben habe, hat mich aufgefordert, ein paar Tropen meines Blutes auf seine Seiten fallen zu lassen. Das habe ich getan und einen Zauberspruch gewonnen. Es hat mir außerdem mehr Macht versprochen.~ */ GOTO 25
  IF ~~ THEN REPLY #27067 /* ~"Nein."~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #27069 /* ~Du schneidest dich und läßt ein wenig Blut auf die Seite tropfen. Es läuft dir kalt den Rücken herunter, und du fühlst dich leer und verletzt. Gleichzeitig verspürst du ein Triumphgefühl: Du hast einen neuen Zauber gelernt: Blindheit. "Dies ist jetzt deine Macht... Meister. Doch dies ist nur die erste von vielen Fähigkeiten auf meinen Seiten."~ */
  IF ~~ THEN REPLY #27070 /* ~"Erzähl mir was über diese anderen Fähigkeiten."~ */ GOTO 29
  IF ~~ THEN REPLY #27071 /* ~"Beantworte mir noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27072 /* ~"Ich möchte einen Rat von dir."~ */ GOTO 36
  IF ~~ THEN REPLY #27073 /* ~"Ich brauch im Moment nichts weiter."~ */ GOTO 28
END

IF ~  Global("Evil_Book_Spoken","GLOBAL",1)
Global("E_Book","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #27074 /* ~"Meister, womit kann ich dir dienen? Möchtest du deine Neugier stillen?"~ */
  IF ~~ THEN REPLY #27075 /* ~"Ja. Beantworte mir ein paar Fragen."~ */ GOTO 4
  IF ~~ THEN REPLY #27076 /* ~"Nein."~ */ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 23.1 24.1
  SAY #27077 /* ~"Es ist nur ein kleines Opfer, Meister, der Gewinn jedoch ist groß... Doch es liegt an dir. Mein Angebot kannst du jederzeit wieder aufgreifen, Meister."~ */
  IF ~~ THEN REPLY #27078 /* ~"Gut. Beantworte mir noch ein paar Fragen."~ */ JOURNAL #27080 /* ~Dieses seltsame Buch, das ich gefunden habe, hat mich aufgefordert, für Macht ein kleines Stück von mir selbst aufzugeben. Ich habe es abgelehnt. Die Möglichkeit steht mir aber noch offen.~ */ GOTO 4
  IF ~~ THEN REPLY #27079 /* ~"Gut. Leb wohl."~ */ JOURNAL #27080 /* ~Dieses seltsame Buch, das ich gefunden habe, hat mich aufgefordert, für Macht ein kleines Stück von mir selbst aufzugeben. Ich habe es abgelehnt. Die Möglichkeit steht mir aber noch offen.~ */ GOTO 1
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #27081 /* ~"Dann denke daran: komm zurück, wenn du mehr Macht brauchst. Ich warte auf dich... Meister."~ */
  IF ~~ THEN REPLY #27082 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 35.3 53.0 54.0
  SAY #27083 /* ~Die Stimme des Buchs klingt traurig. "Leider, Meister, mußt du ein größeres Opfer als Gegenleistung für mehr Macht erbringen. Ich würde dir diese Macht gern einfach so geben, doch wie du siehst, kann ich das nicht."~ */
  IF ~~ THEN REPLY #27084 /* ~"Was ist das für ein Opfer?"~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27085 /* ~"Dann vergiß es."~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0 35.4 53.1 54.1
  SAY #27086 /* ~"Das zweite Opfer ist, daß du einen deiner Gefährten ans Gefängnis oder in die Sklaverei verkaufen mußt. Dieser Akt symbolisiert das Band zwischen dir und der Macht. Dein Gefährte repräsentiert die Macht, die du erhältst. Die Bewohner des Bezirks der Kuratoren, so wurde mir gesagt, werden dir hierbei helfen. Frag nach Vrischika, der Importeurin."~ */
  IF ~~ THEN REPLY #27087 /* ~"Ich denk drüber nach. Du gibst mir doch noch einen Rat, oder?"~ */ JOURNAL #27092 /* ~Das Buch hat mir einen weiteren Zauberspruch versprochen, wenn ich einen meiner Begleiter in die Sklaverei verkaufe. Ich soll Vrischika, die Importeurin, aufsuchen, wenn ich diese Macht sehen möchte.~ */ GOTO 36
  IF ~~ THEN REPLY #27088 /* ~"Ich mach's. Du gibst mir doch noch einen Rat, oder?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Das Buch hat mir einen weiteren Zauberspruch dafür versprochen, wenn ich einen meiner Begleiter in die Sklaverei verkaufe. Ich soll Vrischika, die Importeurin, aufsuchen, wenn ich diese Macht sehen möchte. Ich habe eingewilligt.~ */ GOTO 36
  IF ~~ THEN REPLY #27089 /* ~"Ich denk drüber nach. Du mußt mir noch ein paar Fragen beantworten."~ */ JOURNAL #27092 /* ~Das Buch hat mir einen weiteren Zauberspruch versprochen, wenn ich einen meiner Begleiter in die Sklaverei verkaufe. Ich soll Vrischika, die Importeurin, aufsuchen, wenn ich diese Macht sehen möchte.~ */ GOTO 35
  IF ~~ THEN REPLY #27090 /* ~"Ich mach's. Aber zuerst mußt du mir noch ein paar Fragen beantworten."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Das Buch hat mir einen weiteren Zauberspruch dafür versprochen, wenn ich einen meiner Begleiter in die Sklaverei verkaufe. Ich soll Vrischika, die Importeurin, aufsuchen, wenn ich diese Macht sehen möchte. Ich habe eingewilligt.~ */ GOTO 35
  IF ~~ THEN REPLY #27091 /* ~"Ich werd mal drüber nachdenken. Leb wohl."~ */ JOURNAL #27092 /* ~Das Buch hat mir einen weiteren Zauberspruch versprochen, wenn ich einen meiner Begleiter in die Sklaverei verkaufe. Ich soll Vrischika, die Importeurin, aufsuchen, wenn ich diese Macht sehen möchte.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #27094 /* ~"Es bedrückt mich, daß du für meine Fähigkeiten noch nicht mal diesen niedrigen Preis bezahlen willst. Laß dich nicht von Zweifel und Verwirrung einwickeln, Meister... doch ich komme vom Thema ab. Denke daran, daß du mein Angebot jederzeit annehmen kannst."~ */
  IF ~~ THEN REPLY #27095 /* ~"Ich mach's. Du gibst mir doch noch einen Rat, oder?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27096 /* ~"Ich denk drüber nach. Du mußt mir noch ein paar Fragen beantworten."~ */ GOTO 35
  IF ~~ THEN REPLY #27097 /* ~"Ich werd mal drüber nachdenken. Leb wohl."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #27098 /* ~"Meister. Willst du deinen Unterricht fortsetzen? Mein Angebot an dich, größere Einsicht und größere Fähigkeiten zu erlangen, gilt noch."~ */
  IF ~~ THEN REPLY #27099 /* ~"Sag mir, was ich tun muß."~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27100 /* ~"Noch nicht. Beantworte mir erst noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27101 /* ~"Noch nicht. Ich möchte einen Rat von dir."~ */ GOTO 36
  IF ~~ THEN REPLY #27102 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #27103 /* ~"Meister. Willst du deinen Unterricht fortsetzen? Mein Angebot an dich, größere Einsicht und größere Fähigkeiten zu erlangen, gilt noch. Du mußt nur das zweite Opfer erbringen."~ */
  IF ~~ THEN REPLY #27104 /* ~"Also gut, ich mach's. Aber jetzt beantworte mir ein paar Fragen."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #27105 /* ~"Klingt fair. Ich mach's. Ich brauch aber noch einen Rat von dir."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27106 /* ~"Ich denk drüber nach. Gib mir noch einen Rat."~ */ GOTO 36
  IF ~~ THEN REPLY #27107 /* ~"Ich hätte da zuerst noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27108 /* ~"Nicht jetzt. Leb wohl."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #27109 /* ~"Meister, hast du das zweite Opfer erbracht? Man sieht dir an, daß du's getan hast. Du hast richtig gehandelt; du lernst schnell. Höre mir zu und lerne noch mehr." Das Buch spricht einige unverständliche Silben, und du spürst ein Brennen in deiner Brust. Jetzt kennst du den Zauber Natternkuß.~ */
  IF ~~ THEN REPLY #27110 /* ~"Kannst du mich noch mehr lehren, Buch?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ JOURNAL #27112 /* ~Das Buch hat mir den Zauber des Natternkusses dafür gegeben, daß ich einen meiner Begleiter in die Sklaverei verkauft habe.~ */ GOTO 55
  IF ~~ THEN REPLY #27111 /* ~"Danke. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.1 30.2 30.3 31.1 32.1 33.0 33.3 36.16 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.0 53.2 54.2
  SAY #27113 /* ~"Du willst Antworten?"~ */
  IF ~~ THEN REPLY #27114 /* ~"Wie kam Mantuok in deinen Besitz?"~ */ GOTO 53
  IF ~~ THEN REPLY #27115 /* ~"Erzähl mir was von dir."~ */ GOTO 54
  IF ~~ THEN REPLY #27116 /* ~"Kannst du mir einen Rat geben?" ~ */ GOTO 36
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27117 /* ~"Hast du noch mehr Fähigkeiten für mich?"~ */ GOTO 29
  IF ~  GlobalGT("E_Book","GLOBAL",1)
~ THEN REPLY #27118 /* ~"Was war das noch für ein Opfer, das ich für die neue Fähigkeit erbringen muß?"~ */ GOTO 30
  IF ~~ THEN REPLY #27119 /* ~"Ich hab' genug. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 30.0 30.1 31.0 32.2 33.1 33.2 35.2
  SAY #27120 /* ~"Du wünscht meinen Rat... Meister?"~ */
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #27121 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27122 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 38
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27123 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 39
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27124 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 40
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27125 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27126 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27127 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27128 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 44
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27129 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 45
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27130 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 46
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27131 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27132 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 48
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27133 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27134 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27135 /* ~"Ja."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ GOTO 51
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27136 /* ~"Ja."~ */ GOTO 52
  IF ~~ THEN REPLY #27137 /* ~"Beantworte mir statt dessen noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27138 /* ~"Das reicht für den Moment."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #27139 /* ~"Hier ist mein Rat. Nimm dich vor allen in acht, die in deiner Nähe sind. Schließ sie niemals ganz in dein Vertrauen und schwäche deine Stärke nicht, indem du sie teilst. Viele Kaiser, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."
~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27140 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */ GOTO 38
  IF ~~ THEN REPLY #27141 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27016 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */ GOTO 35
  IF ~~ THEN REPLY #27142 /* ~"Das reicht."~ */ JOURNAL #27016 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nimm dich vor denen in acht, die dir nahestehen. Schließ sie niemals ganz in dein Vertrauen, und schwäche deine Stärke nicht, indem du sie teilst. Viele Herrscher, die ich kannte, haben so gehandelt, und ich wünsche dir nicht, das gleiche Schicksal zu erleiden."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #27143 /* ~"Hier ist mein Rat. Wenn sie von Freundschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27144 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn sie von Freunschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */ GOTO 39
  IF ~~ THEN REPLY #27145 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27017 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn sie von Freunschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */ GOTO 35
  IF ~~ THEN REPLY #27146 /* ~"Das reicht."~ */ JOURNAL #27017 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn sie von Freunschaft reden, dann laß sie sich als Freunde beweisen. Worte haben wenig Gewicht im Vergleich zu Taten. Wenn es wirklich Freunde sind, dann sollten sie bereit sein, für dich zu sterben."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #27147 /* ~Du fühlst einen leichten Druck in deiner Brust, während das Buch spricht: "Hier ist mein Rat. Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere glauben sonst, daß du unsicher bist. So wie ein Stein, der wankt und umgestoßen werden kann."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27148 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */ GOTO 40
  IF ~~ THEN REPLY #27149 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27018 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */ GOTO 35
  IF ~~ THEN REPLY #27150 /* ~"Das reicht."~ */ JOURNAL #27018 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Zeige keine Schwäche, gebe keine Fehler zu und sei nicht zaghaft. Andere leiten sonst daraus ab, daß du unsicher bist, ein Stein der wankt und vielleicht umstürzt."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 39.0
  SAY #27151 /* ~"Hier ist mein Rat. Sei mißtrauisch gegenüber jeder Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27152 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */ GOTO 41
  IF ~~ THEN REPLY #27153 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27019 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */ GOTO 35
  IF ~~ THEN REPLY #27154 /* ~"Das reicht."~ */ JOURNAL #27019 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Kenne keine Gnade. Ein zugekehrter Rücken ist kein Schutz gegen das Messer eines Mörders."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.4 40.0
  SAY #27155 /* ~"Hier ist mein Rat. Hüte dich vor den verbreiteten Ansichten über Liebe. Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27157 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst." ~ */ GOTO 42
  IF ~~ THEN REPLY #27158 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27020 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst." ~ */ GOTO 35
  IF ~~ THEN REPLY #27159 /* ~"Das reicht."~ */ JOURNAL #27020 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Hüte dich vor den verbreiteten Ansichten über Liebe. Die Liebe muß oft grausam sein, damit sie über bloße Sentimentalität hinauswächst." ~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 41.0
  SAY #27160 /* ~Du fühlst, wie sich dein Mundwinkel zu einem leichten Grinsen verzieht. Du unterdrückst es schnell. "Hier ist mein Rat. Trenne dich von allen engstirnigen Narren und von allen Schwachen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Kraft, da hinzutreten, wohin andere sich nicht trauen."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27161 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */ GOTO 43
  IF ~~ THEN REPLY #27162 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27021 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */ GOTO 35
  IF ~~ THEN REPLY #27163 /* ~"Das reicht."~ */ JOURNAL #27021 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Trenne dich von allen engstirnigen Narren und von allen Schwächlingen, indem du erkennst, daß du eine Bestimmung hast. Dies allein gibt dir die Autorität, Wege zu beschreiten, auf die sich andere nicht wagen."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.6 42.0
  SAY #27164 /* ~"Hier ist mein Rat. Es gibt zwei Geheimnisse, wie man zu Macht kommt. Das erste ist: Lege niemals alles offen, was du weißt."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27165 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 44
  IF ~~ THEN REPLY #27166 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ GOTO 35
  IF ~~ THEN REPLY #27167 /* ~"Das reicht."~ */ JOURNAL #27022 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Es gibt zwei Geheimnisse dafür, wie man Größe erlangt. Eins davon besagt, daß man niemals alles offenlegen soll, was man weiß."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 43.0
  SAY #27168 /* ~"Hier ist mein Rat. Wer Macht haben will, muß Opfer bringen. Etwas von sich selbst oder etwas, das einem lieb und teuer ist. Denn Macht ist wie ein Tauschhandel: man gibt und nimmt."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27169 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn du mächtig sein willst, mußt du Opfer bringen. Opfere etwas von dir selbst oder etwas, das dir lieb und teuer ist. Denn Macht ist wie ein Tauschhandel: man gibt und nimmt." ~ */ GOTO 45
  IF ~~ THEN REPLY #27170 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27023 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn du mächtig sein willst, mußt du Opfer bringen. Opfere etwas von dir selbst oder etwas, das dir lieb und teuer ist. Denn Macht ist wie ein Tauschhandel: man gibt und nimmt." ~ */ GOTO 35
  IF ~~ THEN REPLY #27171 /* ~"Das reicht."~ */ JOURNAL #27023 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wenn du mächtig sein willst, mußt du Opfer bringen. Opfere etwas von dir selbst oder etwas, das dir lieb und teuer ist. Denn Macht ist wie ein Tauschhandel: man gibt und nimmt." ~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.8 44.0
  SAY #27172 /* ~Dein Blut scheint langsamer durch deine Adern zu fließen, während das Buch spricht. "Hier ist mein Rat. Ehre und Tugend sind Begriffe, die den Menschen und den Geist töten. Sie sind nur Abstrakta, die die Menschen verwirren und in den Tod treiben. Bleib dir selbst treu und gehorche nur deinem eigenen Willen."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27173 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Ehre und Tugend sind Begriffe, die den Menschen und den Geist töten. Sie sind nur Abstrakta, die die Menschen verwirren und in den Tod treiben. Bleib dir selbst treu und gehorche nur deinem eigenen Willen." ~ */ GOTO 46
  IF ~~ THEN REPLY #27174 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27028 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Ehre und Tugend sind Begriffe, die den Menschen und den Geist töten. Sie sind nur Abstrakta, die die Menschen verwirren und in den Tod treiben. Bleib dir selbst treu und gehorche nur deinem eigenen Willen." ~ */ GOTO 35
  IF ~~ THEN REPLY #27175 /* ~"Das reicht."~ */ JOURNAL #27028 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Ehre und Tugend sind Begriffe, die den Menschen und den Geist töten. Sie sind nur Abstrakta, die die Menschen verwirren und in den Tod treiben. Bleib dir selbst treu und gehorche nur deinem eigenen Willen." ~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.9 45.0
  SAY #27176 /* ~"Hier ist mein Rat. Schone niemanden, der dir Schaden zugefügt hat. Alles andere ist ein offenes Eingeständnis deiner Schwäche."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27177 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Verschone keinen, der dir Schaden zugefügt hat. Alles andere ist ein offenes Eingeständnis deiner Schwäche."~ */ GOTO 47
  IF ~~ THEN REPLY #27178 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27033 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Verschone keinen, der dir Schaden zugefügt hat. Alles andere ist ein offenes Eingeständnis deiner Schwäche."~ */ GOTO 35
  IF ~~ THEN REPLY #27179 /* ~"Das reicht."~ */ JOURNAL #27033 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Verschone keinen, der dir Schaden zugefügt hat. Alles andere ist ein offenes Eingeständnis deiner Schwäche."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 36.10 46.0
  SAY #27180 /* ~"Hier ist mein Rat. Die Seele des Menschen ist ein Meer von Gefühlen. Der Mensch bemüht sich häufig, diesen Gefühlen eine Ordnung zu geben, doch es ist eine falsche Ordnung. Der natürliche Gemütszustand des Menschen ist das Chaos, und dieser Zustand sollte so hingenommen werden."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27181 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Die Seele des Menschen ist ein Meer von Gefühlen. Der Mensch bemüht sich häufig, diesen Gefühlen eine Ordnung zu geben, doch es ist eine falsche Ordnung. Der natürliche Gemütszustand des Menschen ist das Chaos, und dieser Zustand sollte so hingenommen werden."~ */ GOTO 48
  IF ~~ THEN REPLY #27182 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27038 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Die Seele des Menschen ist ein Meer von Gefühlen. Der Mensch bemüht sich häufig, diesen Gefühlen eine Ordnung zu geben, doch es ist eine falsche Ordnung. Der natürliche Gemütszustand des Menschen ist das Chaos, und dieser Zustand sollte so hingenommen werden."~ */ GOTO 35
  IF ~~ THEN REPLY #27183 /* ~"Das reicht."~ */ JOURNAL #27038 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Die Seele des Menschen ist ein Meer von Gefühlen. Der Mensch bemüht sich häufig, diesen Gefühlen eine Ordnung zu geben, doch es ist eine falsche Ordnung. Der natürliche Gemütszustand des Menschen ist das Chaos, und dieser Zustand sollte so hingenommen werden."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.11 47.0
  SAY #27184 /* ~"Hier ist mein Rat. Wisse, was Gnade ist und nutze sie zu deinem Vorteil... aber praktiziere sie nicht."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27185 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wisse, was Gnade ist und nutze sie zu deinem Vorteil... aber praktiziere sie nicht." ~ */ GOTO 49
  IF ~~ THEN REPLY #27186 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27043 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wisse, was Gnade ist und nutze sie zu deinem Vorteil... aber praktiziere sie nicht." ~ */ GOTO 35
  IF ~~ THEN REPLY #27187 /* ~"Das reicht."~ */ JOURNAL #27043 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Wisse, was Gnade ist und nutze sie zu deinem Vorteil... aber praktiziere sie nicht." ~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 36.12 48.0
  SAY #27188 /* ~"Hier ist mein Rat. Nähre die Furcht in anderen, denn die Menschen lassen sich nur durch Furcht beherrschen. Nichts anderes hinterläßt tiefere Narben."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27189 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nähre die Furcht in anderen, denn die Menschen lassen sich nur durch Furcht beherrschen. Nichts anderes hinterläßt tiefere Narben."~ */ GOTO 50
  IF ~~ THEN REPLY #27190 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27048 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nähre die Furcht in anderen, denn die Menschen lassen sich nur durch Furcht beherrschen. Nichts anderes hinterläßt tiefere Narben."~ */ GOTO 35
  IF ~~ THEN REPLY #27191 /* ~"Das reicht."~ */ JOURNAL #27048 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Nähre die Furcht in anderen, denn die Menschen lassen sich nur durch Furcht beherrschen. Nichts anderes hinterläßt tiefere Narben."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 36.13 49.0
  SAY #27192 /* ~"Hier ist mein Rat. Habe ein Lächeln für deine Feinde übrig und reiche ihnen die Hand der Freundschaft. Wenn sie deine Hand ergreifen, versetz ihnen einen Stoß mit dem Dolch in deiner anderen Hand; sie würden mit dir genauso verfahren."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27193 /* ~"Gib mir noch mehr Ratschläge."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ JOURNAL #27053 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Habe ein Lächeln für deine Feinde übrig und reiche ihnen die Hand der Freundschaft. Wenn sie deine Hand ergreifen, versetz ihnen einen Stoß mit dem Dolch in deiner anderen Hand; sie würden mit dir genauso verfahren."~ */ GOTO 51
  IF ~~ THEN REPLY #27194 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27053 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Habe ein Lächeln für deine Feinde übrig und reiche ihnen die Hand der Freundschaft. Wenn sie deine Hand ergreifen, versetz ihnen einen Stoß mit dem Dolch in deiner anderen Hand; sie würden mit dir genauso verfahren."~ */ GOTO 35
  IF ~~ THEN REPLY #27195 /* ~"Das reicht."~ */ JOURNAL #27053 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Habe ein Lächeln für deine Feinde übrig und reiche ihnen die Hand der Freundschaft. Wenn sie deine Hand ergreifen, versetz ihnen einen Stoß mit dem Dolch in deiner anderen Hand; sie würden mit dir genauso verfahren."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.14 50.0
  SAY #27196 /* ~Während das Buch diese Worte spricht, spürst du, wie sich dein Herz zusammenzieht. Du fühlst dich irgendwie beschmutzt: "Hier ist mein letzter Rat. Nimm ihn dir zu Herzen. Du kannst alles auslöschen, was dir nicht paßt. Du brauchst nur den Willen dazu.."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27197 /* ~"Gib mir noch mehr Ratschläge."~ */ JOURNAL #27058 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Du kannst alles auslöschen, was dir nicht paßt. Du brauchst nur den Willen dazu." ~ */ GOTO 52
  IF ~~ THEN REPLY #27198 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ JOURNAL #27058 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Du kannst alles auslöschen, was dir nicht paßt. Du brauchst nur den Willen dazu." ~ */ GOTO 35
  IF ~~ THEN REPLY #27199 /* ~"Das reicht."~ */ JOURNAL #27058 /* ~Das Buch hat mir den folgenden Ratschlag gegeben: "Du kannst alles auslöschen, was dir nicht paßt. Du brauchst nur den Willen dazu." ~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 36.15 51.0
  SAY #27200 /* ~"Ich bedaure, daß ich keinen anderen Rat mehr habe. Denke darüber nach, was ich dir bisher gesagt habe."~ */
  IF ~~ THEN REPLY #27201 /* ~"Nun denn. Ich hätte da noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27202 /* ~"Das reicht."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 35.0
  SAY #27203 /* ~Das Buch seufzt: "Der kranke Ratten-Magier grub mich in den Katakomben aus. Er entriß mich meinem früheren Meister. Er brachte mich in sein Nest, doch seine Macht war begrenzt, und er verstand wenig von dem, was ich ihn lehrte."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27204 /* ~"Erzähl mir was über deine Fähigkeiten."~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27205 /* ~"Erzähl mir was über deine Fähigkeiten."~ */ GOTO 30
  IF ~~ THEN REPLY #27206 /* ~"Verstehe. Beantworte mir noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27207 /* ~"Das ist wahr. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 35.1
  SAY #27208 /* ~"Ich bin Macht, Meister, und ich kann dich mehr lehren."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27209 /* ~"Wie jetzt?"~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27210 /* ~"Hilf mir mal auf die Sprünge."~ */ GOTO 30
  IF ~~ THEN REPLY #27211 /* ~"Hab' gerade kein Interesse. Aber beantworte mir doch noch ein paar Fragen."~ */ GOTO 35
  IF ~~ THEN REPLY #27212 /* ~"Nicht interessiert. Lebe wohl, Buch."~ */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 34.0
  SAY #27213 /* ~"Sachte! Du mußt Geduld haben! Du hast mir bereits bewiesen, daß du alles tun wirst, um diese Macht zu erlangen. Und du mußt wissen, daß du für diese Macht bezahlen WIRST."~ */
  IF ~~ THEN REPLY #27214 /* ~"Was muß ich tun?"~ */ GOTO 59
  IF ~~ THEN REPLY #27215 /* ~"Ich hab' genug bezahlt. Vergiß es."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY #27216 /* ~Das Buch sagt voller Verachtung. "So weit zu kommen, um dann einen Rückzieher zu machen! Welch Schande! Du bist schwächer als ich dachte."~ */
  IF ~~ THEN REPLY #27217 /* ~"Wie dem auch sei. Beantworte mir ein paar Fragen."~ */ GOTO 57
  IF ~~ THEN REPLY #27218 /* ~"Gut. Was muß ich tun?"~ */ GOTO 59
  IF ~~ THEN REPLY #27219 /* ~"Wie dem auch sei. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #27220 /* ~"Nein. Erst wenn du bereit bist, dein Potential voll zu entfalten."~ */
  IF ~~ THEN REPLY #27221 /* ~"Was muß ich tun?"~ */ GOTO 59
  IF ~~ THEN REPLY #27222 /* ~"Dann vergiß es einfach."~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #27223 /* ~"So sei es denn. Ein Weg führt zum Mißerfolg, einer zum Erfolg."
~ */
  IF ~~ THEN REPLY #27224 /* ~"Gut."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 55.0 56.1 57.0
  SAY #27225 /* ~"Hast du Gefährten, die du verraten würdest?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27226 /* ~"Wie wär's mit Morte?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ JOURNAL #27235 /* ~Das Buch hat mir noch mehr Macht angeboten, wenn ich einen meiner Begleiter töte. Das ist ganz schön verlockend...~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27227 /* ~"Wie wär's mit Annah?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27228 /* ~"Wie wär's mit Dak'kon?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27229 /* ~"Wie wär's mit Grace, der Gefallenen?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27230 /* ~"Wie wär's mit Nordom?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27231 /* ~"Wie wär's mit Vhailor?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27232 /* ~"Wie wär's mit Ignus?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27233 /* ~"Es gibt niemand, den ich zu verraten bereit wäre."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27234 /* ~"Ich hab' keine Gefährten."~ */ GOTO 63
END

IF ~  Global("E_Book","GLOBAL",5)
~ THEN BEGIN 60 // from:
  SAY #27236 /* ~"Ich kann dir noch eine weitere Fähigkeit geben. Du hast bewiesen, daß du bereit bist, eine Sache zu Ende zu führen. Deine letzte Aufgabe besteht darin, einen deiner Gefährten niederzumetzeln, alleine, ohne Zaubersprüche."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27237 /* ~"Wie wär's mit Morte?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27238 /* ~"Wie wär's mit Annah?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27239 /* ~"Wie wär's mit Dak'kon?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27240 /* ~"Wie wär's mit Grace, der Gefallenen?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27241 /* ~"Wie wär's mit Nordom?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27242 /* ~"Wie wär's mit Vhailor?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27243 /* ~"Wie wär's mit Ignus?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27244 /* ~"Glaub ich nicht."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27245 /* ~"Ich hab' keine Gefährten."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.7 60.7
  SAY #27246 /* ~"Bah. Dann werde ich keine Minute länger damit verschwenden, dich etwas zu lehren. Hast du keinen Ehrgeiz? Hast du keine Wünsche? Du schwacher Narr!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27247 /* ~"Gut. Wie wär's mit Morte?"~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27248 /* ~"Gut. Wie wär's mit Annah?"~ */ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27249 /* ~"Gut. Wie wär's mit Dak'kon?"~ */ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27250 /* ~"Gut. Wie wär's mit Grace, der Gefallenen?"~ */ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27251 /* ~"Gut. Wie wär's mit Nordom?"~ */ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27252 /* ~"Gut. Wie wär's mit Vhailor?"~ */ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27253 /* ~"Gut. Wie wär's mit Ignus?"~ */ GOTO 66
  IF ~~ THEN REPLY #27254 /* ~"Wie ich schon sagte: Es gibt niemanden, den ich zu opfern bereit wäre. Keine Macht der Welt ist das wert."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.7 63.0
  SAY #27255 /* ~Bis jetzt hast du nicht gewußt, daß ein Buch auch höhnisch grinsen kann. "Dann leide in der Dunkelheit, Narr!"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27256 /* ~"Ich hab's mir anders überlegt. Ich töte Morte."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27257 /* ~"Ich hab's mir anders überlegt. Ich töte Annah."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27258 /* ~"Ich hab's mir anders überlegt. Ich töte Dak'kon."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27259 /* ~"Ich hab's mir anders überlegt. Ich töte Grace, die Gefallene."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27260 /* ~"Ich hab's mir anders überlegt. Ich töte Nordom."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27261 /* ~"Ich hab's mir anders überlegt. Ich töte Vhailor."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27262 /* ~"Ich hab's mir anders überlegt. Ich töte Ignus."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27263 /* ~"Ich hab' keine Gefährten."~ */ GOTO 63
  IF ~~ THEN REPLY #27264 /* ~"Mach ich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.8 60.8 62.7
  SAY #27265 /* ~"Dann such dir einen! Gewinne das Vertrauen von jemandem und mißbrauche es, und du wirst dich der dritten Macht würdig erweisen! Vorher brauchst du gar nicht wieder mit mir zu sprechen."~ */
  IF ~~ THEN REPLY #27266 /* ~"Nein."~ */ GOTO 62
  IF ~~ THEN REPLY #27267 /* ~"Gut, gut."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",6)
~ THEN BEGIN 64 // from:
  SAY #27268 /* ~"Nun? Hast du dein Ziel erreicht? Hast du einen Gefährten niedergemetzelt, alleine, ohne Zaubersprüche?"~ */
  IF ~  Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27269 /* ~"Ja, hab' ich."~ */ DO ~SetGlobal("E_Book","GLOBAL",7)
IncrementGlobalOnceEx("GLOBALEvil_Book_8","GLOBALGood",-8)
~ GOTO 67
  IF ~  !Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27270 /* ~"Noch nicht."~ */ GOTO 65
  IF ~~ THEN REPLY #27271 /* ~"Nein. Und das werde ich auch nicht."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1 64.2
  SAY #27272 /* ~Das Buch verstummt plötzlich und keine Überredungskunst der Welt kann es dazu bringen, dir wieder zu antworten.~ */
  IF ~~ THEN REPLY #27273 /* ~"Schön."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.0 59.1 59.2 59.3 59.4 59.5 59.6 60.0 60.1 60.2 60.3 60.4 60.5 60.6 61.0 61.1 61.2 61.3 61.4 61.5 61.6 62.0 62.1 62.2 62.3 62.4 62.5 62.6
  SAY #27274 /* ~"Mir ist egal wen du tötest, solange du deine Bereitschaft zeigst. Geh jetzt und tu's!"~ */
  IF ~~ THEN REPLY #27275 /* ~"Wie du meinst."~ */ JOURNAL #27276 /* ~Ich habe eingewilligt, einen meiner Begleiter zu töten, um vom Buch mehr Macht zu erhalten. ~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.0
  SAY #27277 /* ~"Hervorragend. Du hast dich als würdiger Lehrling erwiesen. Dies ist dann also der letzte Zauber, den ich dir beibringen kann." Das Buch murmelt einige seltsame Silben, und du vernimmst ein merkwürdiges Heulen in deinem Herzen. Jetzt kennst du das Machtwort: Töten.~ */
  IF ~~ THEN REPLY #27278 /* ~"Danke, Buch. Was jetzt?"~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~Das Buch hat mir noch einen noch mächtigeren Zauberspruch für den Tod eines meiner Begleiter gegeben - ein würdiger Handel.~ */ GOTO 68
  IF ~~ THEN REPLY #27279 /* ~"Leb wohl, Buch."~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~Das Buch hat mir noch einen noch mächtigeren Zauberspruch für den Tod eines meiner Begleiter gegeben - ein würdiger Handel.~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",7)
~ THEN BEGIN 68 // from: 67.0
  SAY #27282 /* ~Das Buch schweigt und antwortet dir nicht. Ihm scheinen die Worte zu fehlen.~ */
  IF ~  Global("E_Book","GLOBAL",8)
~ THEN REPLY #27283 /* ~"Wie du meinst."~ */ DO ~SetGlobal("E_Book","GLOBAL",9)
~ JOURNAL #27284 /* ~Das Buch spricht nicht mehr mit mir.~ */ EXIT
  IF ~  Global("E_Book","GLOBAL",9)
~ THEN REPLY #27283 /* ~"Wie du meinst."~ */ EXIT
END
