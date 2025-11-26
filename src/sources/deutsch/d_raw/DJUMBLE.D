// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJUMBLE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DJUMBLE~

IF ~  Global("Jumble","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2937 /* ~Die orangefarbene Tunika dieses kleinen, beinahe glatzköpfigen Mannes sowie sein ziemlich großer Bauch verleihen ihm das Aussehen eines Kürbisses. Er klopft sich geistesabwesend in langsamem Rhythmus auf seinen dicken Bauch, als sei der eine Trommel. Mit seinem sonderbaren, schiefen Lächeln und dem seltsamen Glänzen in den Augen sieht er leicht verrückt aus.~ */
  IF ~~ THEN REPLY #2938 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Jumble","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #41917 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #41918 /* ~Der Mann verbeugt sich übertrieben schwungvoll vor dir und reicht dir eine kleine Karte, auf der nur 'Jumble Mördersinn - Xaositekten-Xauberer der X-traklasse' steht. Dann schnappt er dir die Karte wieder weg und macht sich daran, sie aufzuessen, wobei er die ganze Zeit wild grinst.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 462
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41928 /* ~"Ich hätte da ein paar Fragen, Jumble..."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41929 /* ~"Du bist der Mann, der Übelwind verflucht hat, nicht wahr?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~Ich habe den Mann, der Übelwind verflucht hat, in der Städtischen Festhalle gefunden: Jumble Mördersinn.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
!NearbyDialog("DMorte")
~ THEN REPLY #67863 /* ~"Ich möchte, daß du Übelwinds Fluch aufhebst."~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41930 /* ~"Ich geh dann jetzt mal, Jumble. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.0
  SAY #41931 /* ~Jumble gähnt und schaut weg. Dabei trommelt er sich mit den Handflächen gegen den Bauch.~ */
  IF ~~ THEN REPLY #41932 /* ~"Jumble? Meine Fragen?"~ */ GOTO 3
  IF ~~ THEN REPLY #41933 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.1 12.2
  SAY #41934 /* ~Jumble rollt die Augen. Er dreht sich zu dir um, grinst und nagt an seinem Daumen.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41935 /* ~"Verrat mir wenigstens, ob du Übelwind verflucht hast."~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~Ich habe den Mann, der Übelwind verflucht hat, in der Städtischen Festhalle gefunden: Jumble Mördersinn.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67865 /* ~"Gut. Aber ich möchte, daß du Übelwinds Fluch aufhebst."~ */ GOTO 9
  IF ~~ THEN REPLY #41936 /* ~"Bist du stumm? Gibst du mir deshalb keine Antwort?"~ */ GOTO 4
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41937 /* ~Wahrheit: "Ich will ein paar Antworten, und wenn ich sie aus dir herausprügeln muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41938 /* ~Bluff: "Ich will ein paar Antworten, und wenn ich sie aus dir herausprügeln muß.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41939 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #41940 /* ~Jumble legt seinen Kopf auf die Seite und grinst dich blöd an. Dann zieht er langsam die Schultern hoch, schließt die Augen und streckt dir die Zunge raus.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41941 /* ~Wahrheit: "Ich will ein paar Antworten, und wenn ich sie aus dir herausprügeln muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41942 /* ~Bluff: "Ich will ein paar Antworten, und wenn ich sie aus dir herausprügeln muß.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41943 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.3 3.4 4.0 4.1 9.1 9.2 10.0 10.1
  SAY #41944 /* ~Jumble zieht eine Augenbraue hoch und geht einen Schritt zurück. Auf einmal macht er den Mund, auf und läßt eine Flut unartikulierter Silben entweichen, ohne daß sich seine Lippen oder sein Kehlkopf dabei bewegen würden.~ */
  IF ~~ THEN REPLY #41945 /* ~"Was zum...?"~ */ DO ~SetGlobal("Jumble","GLOBAL",2)
ApplySpell(Protagonist,SPECIAL_ADD_JUMBLE_CURSE)
~ JOURNAL #66219 /* ~Ich bin von einem Xaositekten-Magier namens Jumble Mördersinn mit einem endlosen Schluckauf verflucht worden. Hoffentlich hat jemand anderes in der Festhalle eine Idee, wie man entweder den nervenden Fluch bannen kann... oder wie man Jumble dazu bewegt, es selbst zu tun.~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #41946 /* ~Jumble schließt den Mund. Das Gestammel hört auf. Jetzt schaut er dich mit zusammengekniffenen Augen und einem selbstzufriedenen Lächeln auf seinem runden Gesicht prüfend an. Plötzlich bekommst du einen Schluckauf.

Dein Schluckauf hört und hört nicht auf.

Jumble Mördersinn schaut einfach weg und scheucht dich mit einer Handbewegung fort.
~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 463
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41947 /* ~"Was hast du mit mir angestellt?"~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41948 /* ~"Jumble... Bitte, mach das wieder rückgängig."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41949 /* ~"Was auch immer du getan hast: Mach es rückgängig - oder du wirst es bitter bereuen."~ */ GOTO 7
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #41950 /* ~"Ich suche mir besser jemand anderen, der mir helfen kann, diesen Fluch loszuwerden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2 6.3
  SAY #41951 /* ~Jumble ignoriert dich völlig.~ */
  IF ~~ THEN REPLY #41952 /* ~Greif ihn an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41953 /* ~"Ich suche mir besser jemand anderen, der mir helfen kann, diesen Fluch loszuwerden. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.2 3.0 11.1
  SAY #41954 /* ~Jumble setzt eine Unschuldsmiene auf und zuckt mit den Achseln, als wolle er sagen: 'Ich weiß nicht.' Dann hält er sich die Hand vor den Mund und fängt an zu kichern wie ein albernes kleines Kind.~ */
  IF ~~ THEN REPLY #41955 /* ~"Ich will, daß du diesen Fluch aufhebst."~ */ GOTO 9
  IF ~~ THEN REPLY #41956 /* ~"Ich hätte da noch eine Frage..."~ */ GOTO 3
  IF ~~ THEN REPLY #41957 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.3 3.1 8.0 11.2
  SAY #41958 /* ~Jumble stellt sich taub. Dabei rülpst er laut und trommelt sich wieder gegen den Bauch. Er läßt seinen Blick durch die Festhalle schweifen.~ */
  IF ~~ THEN REPLY #41959 /* ~"Was kann ich tun, damit du Übelwinds Fluch aufhebst?"~ */ GOTO 10
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41960 /* ~Wahrheit: "Heb sofort diesen Fluch auf, Jumble, bevor ich dir wehtun muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41961 /* ~Bluff: "Heb sofort diesen Fluch auf, Jumble, bevor ich dir wehtun muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41962 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #41963 /* ~Ohne dich eines Blickes zu würdigen, schüttelt Jumble den Kopf.~ */
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41964 /* ~Wahrheit: "Heb Übelwinds Fluch auf, Jumble, bevor ich dir wehtun muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 5
  IF ~  !Global("Jumble ","GLOBAL",2)
~ THEN REPLY #41965 /* ~Bluff: " Heb Übelwinds Fluch auf, Jumble, bevor ich dir wehtun muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 5
  IF ~~ THEN REPLY #41966 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #41967 /* ~Jumble Mördersinn verbeugt sich in der für ihn typischen, übertriebenen Manier. Dann legt er den Kopf schief und schaut dich neugierig an.~ */
  IF ~~ THEN REPLY #41968 /* ~"Ich hätte da ein paar Fragen, Jumble..."~ */ GOTO 2
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #41969 /* ~"Du bist der Mann, der Übelwind verflucht hat, nicht wahr?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~Ich habe den Mann, der Übelwind verflucht hat, in der Städtischen Festhalle gefunden: Jumble Mördersinn.~ */ GOTO 8
  IF ~  Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #67866 /* ~"Ich möchte, daß du Übelwinds Fluch aufhebst."~ */ GOTO 9
  IF ~~ THEN REPLY #41970 /* ~"Bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",2)
~ THEN BEGIN 12 // from:
  SAY #41971 /* ~Jumble betrachtet dich mit gerunzelter Stirn, nagt an seinem Daumen und bedeutet dir mit einer Handbewegung zu gehen.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41972 /* ~Beleg ihn mit dem Fluch, den Salabesh dir beigebracht hat.~ */ GOTO 15
  IF ~~ THEN REPLY #41973 /* ~"Jumble, bitte nimm diesen Fluch von mir."~ */ GOTO 13
  IF ~~ THEN REPLY #41974 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #41975 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #41976 /* ~Er rollt die Augen und gähnt unverblümt.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41977 /* ~Beleg ihn mit dem Fluch, den Salabesh dir beigebracht hat.~ */ GOTO 15
  IF ~~ THEN REPLY #41978 /* ~Wahrheit: "Bann den Fluch, Jumble, bevor ich dir weh tun muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Jumble_1","GLOBALGood",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41979 /* ~Täuschung: "Bann den Fluch, Jumble, bevor ich dir weh tun muß."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jumble_1","GLOBALLaw",-1)
~ GOTO 14
  IF ~~ THEN REPLY #41980 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1 13.2
  SAY #41981 /* ~Jumble Mördersinn inspiziert und säubert demonstrativ seine Fingernägel.~ */
  IF ~  Global("Know_Salabesh_Curse","GLOBAL",1)
~ THEN REPLY #41982 /* ~Beleg ihn mit dem Fluch, den Salabesh dir beigebracht hat.~ */ GOTO 15
  IF ~~ THEN REPLY #41983 /* ~Greif ihn an.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #41984 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0 13.0 14.0
  SAY #41985 /* ~Jumble starrt dich mit etwas skeptischem Ausruck an, während du die obskuren Silben von Salabeshs Fluch aussprichst. Nach einem Moment angespannter Stille bemerkt der Xaositektenmagier, daß scheinbar nichts passiert ist... Und auf seinem Gesicht breitet sich ein böses Lächeln aus.~ */
  IF ~~ THEN REPLY #41986 /* ~Sprich weiter...~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #41987 /* ~Als er zum Sprechen ansetzen und mit einem eigenen Fluch kontern will, merkt er plötzlich, daß seine Stimme weg ist! Salabeshs Fluch hat Jumble die Sprache verschlagen und somit den Xaositekten seiner Fähigkeit beraubt, andere zu verfluchen. Er faßt sich an die Kehle. Panik spiegelt sich in seinen Augen.~ */
  IF ~~ THEN REPLY #41988 /* ~"So, der Spieß ist umgedreht, Jumble. Was passiert jetzt wohl, wenn jemand - *hick!* - den du einmal verflucht hast, herausfindet, daß du nicht mehr sprechen - oder verfluchen - kannst?"~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #41989 /* ~Jumble wirft sich mit flehendem Blick auf die Knie. Er sieht aus, als würde er jeden Moment in Tränen ausbrechen.~ */
  IF ~~ THEN REPLY #41990 /* ~"Würdest du jetzt - *hick!* - bitte diesen Fluch von mir nehmen? Und versprechen, daß du keinen mehr verfluchst, der dir nicht schaden wollte?"~ */ DO ~SetGlobal("Jumble","GLOBAL",3)
AddexperienceParty(10000)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #41991 /* ~Jumble legt seine Hände aufs Herz und nickt energisch.~ */
  IF ~~ THEN REPLY #41992 /* ~"Gut. Dann heb ich den Fluch auf..."~ */ DO ~ApplySpell(Protagonist,SPECIAL_REMOVE_JUMBLE_CURSE)
~ JOURNAL #66550 /* ~Ich habe Jumble Mördersinn gezwungen, den Fluch, mit dem er mich belegt hatte, zu bannen. Dabei hat mir ein böser Zauber geholfen, den ich von Salabesh, dem Onyx, 'Herrn der Flüche', gelernt habe.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #41993 /* ~Jumble atmet erleichtert auf, als du Salabeshs Fluch wieder rückgängig machst. Im Gegenzug nimmt auch er seinen Fluch zurück und beendet deinen Schluckauf. Er verneigt sich demütig und starrt auf den Boden.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67870 /* ~"Du hast Übelwind auch verflucht, oder?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ JOURNAL #67862 /* ~Ich habe den Mann, der Übelwind verflucht hat, in der Städtischen Festhalle gefunden: Jumble Mördersinn.~ */ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41994 /* ~"Ich möchte, daß du auch Übelwind von seinem Fluch befreist."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Ich habe Jumble Mördersinn überredet, Übelwinds Fluch mit einem kleinen Fluch von mir zu brechen.~ */ GOTO 20
  IF ~~ THEN REPLY #41995 /* ~"Leb wohl, Jumble."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1 22.0
  SAY #41996 /* ~Jumble nickt widerwillig und hebt Übelwinds Fluch mit einer Handbewegung auf.~ */
  IF ~~ THEN REPLY #41997 /* ~"Danke, Jumble. Leb wohl."~ */ EXIT
END

IF ~  Global("Jumble","GLOBAL",3)
~ THEN BEGIN 21 // from:
  SAY #41998 /* ~Jumble verneigt sich verlegen vor dir und schaut dich gequält an. Es ist offensichtlich, daß er es vorziehen würde, nichts mehr mit dir zu tun zu haben.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",0)
~ THEN REPLY #67871 /* ~"Du hast Übelwind auch verflucht, oder?"~ */ DO ~SetGlobal("Jumble_Reekwind","GLOBAL",1)
~ GOTO 22
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Reekwind","GLOBAL",1)
Global("Jumble_Reekwind","GLOBAL",1)
~ THEN REPLY #41999 /* ~"Ich möchte, daß du Übelwind von seinem alten Fluch befreist."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ JOURNAL #66551 /* ~Ich habe Jumble Mördersinn überredet, Übelwinds Fluch mit einem kleinen Fluch von mir zu brechen.~ */ GOTO 20
  IF ~~ THEN REPLY #42000 /* ~"Bin nur zufällig vorbeigekommen, Jumble. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.0 21.0
  SAY #67867 /* ~Jumble seufzt laut auf, verdreht die Augen und nickt.~ */
  IF ~~ THEN REPLY #67868 /* ~"Ich möchte, daß du deinen alten Fluch von ihm nimmst."~ */ DO ~SetGlobal("Reekwind","GLOBAL",2)
AddexperienceParty(1000)
~ GOTO 20
  IF ~~ THEN REPLY #67869 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END
