// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSABAST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSABAST~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #6 /* Triggers after states #: 37 38 39 40 60 43 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #37465 /* ~Du siehst einen älteren Mann in eleganten Roben. Er hat leuchtende Augen und ein warmes Lächeln. Er verbeugt sich leicht vor dir, als du herankommst. "Guten Tag, Schleifer. Ich bin Sebastion, wie kann ich dir dienen?"~ */
  IF ~~ THEN REPLY #37466 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #37467 /* ~Ignoriere den Mann.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 60.0
  SAY #37468 /* ~"Sei ebenfalls gegrüßt, Schleifer..." Er hält mitten im Satz inne, als er deine Narben bemerkt. Du siehst seine Augen über sie wandern und seine Augenbrauen überrascht nach oben schnellen. Er sieht dir wieder in die Augen. "Ich wollte gerade fragen, was ich für dich tun kann, aber das brauche ich wohl nicht. Ich denke, ich kann sehen, warum du zu mir gekommen bist, Schleifer." ~ */
  IF ~~ THEN REPLY #37469 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37470 /* ~"Ich will mit dir über Schwachbaum sprechen."~ */ GOTO 20
  IF ~  Global("Snuff_Grosuk","GLOBAL",0)
~ THEN REPLY #37471 /* ~"Was?... Willst du damit sagen, du kannst mir mit diesen Narben helfen?"~ */ GOTO 28
  IF ~~ THEN REPLY #37472 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.2 4.1 5.1 6.2 7.1 8.2 9.1 11.1 14.1 15.0 16.0 18.1 19.1 28.1 29.1 30.1 35.1 36.0 45.0 50.1 51.1 52.0 53.0 55.0 56.1 58.0
  SAY #37473 /* ~Sein Lächeln wird noch breiter, als er sich leicht verbeugt. "Stell mir deine Fragen, Schleifer."~ */
  IF ~~ THEN REPLY #37474 /* ~"Wer bist du?"~ */ GOTO 3
  IF ~~ THEN REPLY #37475 /* ~"Wo bin ich hier?"~ */ GOTO 6
  IF ~~ THEN REPLY #37476 /* ~"Was ist hier so los?"~ */ GOTO 16
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #37477 /* ~"Ich hatte einen sprechenden Schädel. Er wurde entführt. Kannst du mir helfen?"~ */ GOTO 17
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37478 /* ~"Ich will mit dir über Schwachbaum sprechen."~ */ GOTO 20
  IF ~  GlobalLT("Snuff_Grosuk","GLOBAL",1)
~ THEN REPLY #37479 /* ~"Ich habe das Gefühl, du kannst mir mit meinen Narben weiterhelfen."~ */ GOTO 28
  IF ~~ THEN REPLY #37480 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #37481 /* ~"Ich bin Sebastion, sowas wie ein... Magier. Ich übernehme Arbeit für Leute, die meine Preise zahlen können."~ */
  IF ~~ THEN REPLY #37482 /* ~"Was für eine Art von Arbeit?"~ */ GOTO 4
  IF ~~ THEN REPLY #37483 /* ~"Du zögerst, das Wort *Magier* auszusprechen. Warum?"~ */ GOTO 5
  IF ~~ THEN REPLY #37484 /* ~"Ich habe noch Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37485 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0
  SAY #37486 /* ~Er lächelt dich leicht an und zuckt mit den Schultern. "Vertrauliche Arbeit, Schleifer. Ich bin bekannt für meine Diskretion und dafür, daß ich meine Arbeit erledige. Die Leute kommen mit bestimmten Aufträgen zu mir. Wenn ich sie erledigen kann, tue ich es. Wenn ich das nicht kann, tue ich es nicht. So oder so, meine Lippen sind versiegelt."~ */
  IF ~~ THEN REPLY #37487 /* ~"Du zögerst, das Wort *Magier* auszusprechen. Warum?"~ */ GOTO 5
  IF ~~ THEN REPLY #37488 /* ~"Ich habe noch Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37489 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #37490 /* ~Er nickt. "Ja... Ich bin kein Zauberkundiger, Schleifer, aber ich kann die Kunst auf meine eigene Art und Weise ausführen. Ich habe das normale Studium der Magie aufgegeben und habe meinen eigenen Weg verfolgt." Er hält inne und zuckt mit den Schultern. "Es ist einfacher, mich einen Zauberkundigen zu nennen, als die Feinheiten auszudiskutieren."~ */
  IF ~~ THEN REPLY #37491 /* ~"Was für eine Arbeit machst du?"~ */ GOTO 4
  IF ~~ THEN REPLY #37492 /* ~"Ich habe noch Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37493 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #37494 /* ~Er sieht dich fragend an. "Meint Ihr diesen Markt oder diesen Bezirk von Sigil?"~ */
  IF ~~ THEN REPLY #37495 /* ~"Den Markt."~ */ GOTO 7
  IF ~~ THEN REPLY #37496 /* ~"Diesen Bezirk."~ */ GOTO 8
  IF ~~ THEN REPLY #37497 /* ~"Egal. Ich habe noch Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37498 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 8.0
  SAY #37499 /* ~"Dies ist ein allgemeiner Markt, Schleifer. Es gibt hier viele Dinge zu kaufen. Zaubersprüche, Zaubertränke, Informationen, Frauen, Männer... So ziemlich alles, wenn du dir den Preis leisten kannst."~ */
  IF ~~ THEN REPLY #37500 /* ~"Erzähl mir von diesem Bezirk."~ */ GOTO 8
  IF ~~ THEN REPLY #37501 /* ~"Ich habe noch Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37502 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #37503 /* ~"Dies ist der Untere Bezirk, Schleifer, die Heimat der einfachen Leute und die industrielle Seite Sigils. Er ist nicht so wie die Elendsviertel des Stocks, aber auch nicht so prächtig wie das Viertel der Dame."~ */
  IF ~~ THEN REPLY #37504 /* ~"Erzähl mir etwas von diesem Markt."~ */ GOTO 7
  IF ~~ THEN REPLY #37506 /* ~"Warum heißt er der Untere Bezirk?"~ */ GOTO 9
  IF ~~ THEN REPLY #37507 /* ~"Ich habe noch Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37508 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #37509 /* ~Er stößt ein kurzes Lachen aus und zuckt mit den Schultern. "Das hängt von deinem Blickpunkt ab, Schleifer. Die Reichen sagen, daß er so heißt, weil dies die Heimat der einfachen oder *unteren* Klassen ist. Wenn du die fragst, die hier leben, ist es wegen der Portale... und wegen des Vorfalls."~ */
  IF ~~ THEN REPLY #37510 /* ~"Was für ein Vorfall?"~ */ GOTO 10
  IF ~~ THEN REPLY #37511 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37512 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #37513 /* ~"Ja..." Er legt seine Stirn in Denkfalten. "Vor langer Zeit war diese Gegend als Materieller Bezirk bekannt. Leute, die neu in der Stadt waren, wurden hierher geschickt und erhielten keinen Zugang zu ganz Sigil. Es wurden ihnen noch viele weitere Einschränkungen auferlegt... Ein Dussel hat sich dadurch angegriffen gefühlt und hat einen Aufstand angezettelt. Hat natürlich zu nichts geführt, bis er eine faszinierende Entdeckung machte..."~ */
  IF ~~ THEN REPLY #37514 /* ~"Red' weiter."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #37515 /* ~"Wißt Ihr, es gibt eine ganze Menge Portale in diesem Bereich der Stadt, und die meisten führen zu den Unteren Ebenen. Und dieser armselige Dussel fand nun einen Weg, alle gleichzeitig zu öffnen. Er ließ jeden und alles durch die Portale in die Stadt hinein. Es wurde ziemlich blutig, ein fürchterlicher Krieg folgte daraus. Na jedenfalls ist das auch der Grund, warum dies als der *Untere* Bezirk bekannt ist. Wegen der Portale."~ */
  IF ~~ THEN REPLY #37516 /* ~"Sebastion, wie konnte er alle Tore öffnen?"~ */ GOTO 12
  IF ~~ THEN REPLY #37517 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37518 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #37519 /* ~"Er verwendete einen Gegenstand, den er entweder irgendwo herstellen ließ oder selbst angefertigt hatte. Wie nannte er das Ding doch gleich..." Er macht eine kleine Denkpause. "Ah, ich weiß es wieder, den Schattenverhexten Schlüssel..." Bei der Erwähnung des Schlüssels wird dir schwindelig, die Welt um dich herum bleibt stehen, und alles wird grau. Du fühlst, wie eine längst vergessene Erinnerung sich in dein Bewußtsein zu drängen versucht.~ */
  IF ~  Global("Shadow_Key_Mem","GLOBAL",0)
~ THEN REPLY #37520 /* ~Entspanne dich und laß die Erinnerung kommen.~ */ DO ~PlaySoundNotRanged("SPTR_01")
SetGlobal("Shadow_Key_Mem","GLOBAL",1)
GiveExperience(Protagonist,500)
~ JOURNAL #37522 /* ~Ich erinnere mich an etwas über eine Rebellion im Unteren Bezirk. Ich habe sie entweder verursacht oder eine bedeutende Rolle in ihr gespielt. Ich weiß es nicht genau. ~ */ GOTO 46
  IF ~  Global("Shadow_Key_Mem","GLOBAL",1)
~ THEN REPLY #37521 /* ~Entspann dich und laß es kommen.~ */ GOTO 46
  IF ~~ THEN REPLY #65508 /* ~Konzentriere dich, und unterdrücke die Erinnerung.~ */ GOTO 56
END

IF ~~ THEN BEGIN 13 // from: 50.0 56.0
  SAY #37523 /* ~Er zuckt mit den Schultern. "Das weiß niemand. Der Schlüssel ist schon seit einiger Zeit verschwunden. Viele glauben, daß die Dame der Schmerzen ihn an sich genommen hat, damit er nie wieder benutzt werden kann."~ */
  IF ~~ THEN REPLY #37524 /* ~Was war denn das Ergebnis der Rebellion?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #37525 /* ~Er denkt einen Moment nach. "Nun... Jeder außer dem Anführer wurde ins Totenbuch gesteckt. Der Anführer und die Kreaturen verschwanden eines Tages einfach spurlos, sicherlich das Werk der Dame. Die Überlebenden flüchteten aus dem Bezirk. Der Rauch der Unteren Ebenen hatte die Luft verschmutzt, wißt Ihr. Na, jedenfalls war der Bezirk verlassen, bis schließlich die Gießerei gebaut wurde."~ */
  IF ~~ THEN REPLY #37526 /* ~"Was kannst du mir über die Gießerei erzählen?"~ */ GOTO 15
  IF ~~ THEN REPLY #37527 /* ~"Ich hab' noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37528 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #37529 /* ~Er runzelt die Stirn. "Das ist die Heimat der Göttermenschen, Schleifer. Wenn du irgendwelche Fragen über die hast, solltest du zur Gießerei gehen, um sie zu stellen." ~ */
  IF ~~ THEN REPLY #37530 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37531 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.2
  SAY #37532 /* ~Er sieht dich mißtrauisch an. "Was meinst du, Schleifer?" Er sieht sich um und breitet die Arme aus, als ob er den ganzen Bezirk umfassen wollte. "Das Leben, Schleifer. Das Leben wie gewöhnlich, sonst nichts."~ */
  IF ~~ THEN REPLY #37533 /* ~"OK, ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37534 /* ~"Ich muß jetzt gehen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.3
  SAY #37535 /* ~Er starrt dich eine Weile lang an, bevor er dir antwortet. "Ein Totenschädel... Tja, wenn ich raten sollte, würde ich sagen, daß sich dein Totenschädel jetzt im Besitz des Herrn der Knochen befindet. Was bedeutet, daß du dir lieber einen neuen Totenschädel suchen solltest, Schleifer."~ */
  IF ~~ THEN REPLY #37536 /* ~"Was kannst du mir über den Herrn der Knochen erzählen?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37537 /* ~"Wo finde ich diesen Herrn der Knochen?"~ */ GOTO 19
  IF ~~ THEN REPLY #37538 /* ~"Ich verstehe. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.0
  SAY #37539 /* ~Er runzelt die Stirn und sieht sich einen Moment lang um. "Sein Name ist Lothar, und er schätzt die Aufmerksamkeit anderer gar nicht. Ich weiß nichts über ihn und kann dir keine Fragen über ihn beantworten." Du kannst tatsächlich eine Spur von Angst in seinen Augen entdecken. "Laß uns von etwas anderem sprechen, Schleifer."~ */
  IF ~~ THEN REPLY #37540 /* ~"Wo finde ich diesen Herrn der Knochen?"~ */ GOTO 19
  IF ~~ THEN REPLY #37541 /* ~"Na gut. Ich habe noch andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37542 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 18.0
  SAY #37543 /* ~Er sieht sich nervös um. "Eine Hausruine irgendwo in diesem Bezirk führt zu seinem Grundbesitz. Mehr weiß ich nicht." Du kannst tatsächlich eine Spur von Angst in seinen Augen sehen. "Laß uns von etwas anderem sprechen, Schleifer."~ */
  IF ~~ THEN REPLY #37544 /* ~"Was kannst du mir über den Herrn der Knochen erzählen?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 18
  IF ~~ THEN REPLY #37545 /* ~"Na gut. Ich habe noch andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37546 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.1 2.4 37.0 38.0 39.0 43.0
  SAY #37547 /* ~Er starrt dich einen Moment lang an und seufzt dann. "Was ist mit Schwachbaum, Schleifer?"~ */
  IF ~~ THEN REPLY #37548 /* ~"Er will von seinem Fluch befreit werden."~ */ GOTO 21
  IF ~~ THEN REPLY #37549 /* ~"Ich wollte dir bloß zu deiner guten Arbeit gratulieren.."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_2","GLOBALLaw",-1)
~ GOTO 51
  IF ~~ THEN REPLY #37550 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #37551 /* ~Er sieht dich überrascht an und winkt dich dann fort. "Ich kann das kaum glauben, Schleifer. Schwachbaum hat nicht die geistige Kraft, irgend etwas zu begehren." Er runzelt einen Moment lang die Stirn. "Hat dieser Idiot Hamrys dir diesen Floh ins Ohr gesetzt?"~ */
  IF ~  CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #37552 /* ~"Nein."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #37554 /* ~"Denk drüber nach, Sebastion. Hamrys weiß nicht, daß Schwachbaum ein Zombie ist, und schon gar nicht, wer ihn geschaffen hat. Hab' ich recht?"~ */ GOTO 23
  IF ~~ THEN REPLY #37555 /* ~"Was macht das für einen Unterschied?"~ */ GOTO 52
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #37556 /* ~Er sieht dich gedankenverloren an. "Hmmm. Hamrys ist ein Dummkopf. Ich bezweifle, daß er dahinter kommen würde, wer das getan hat." Er seufzt und zuckt wütend mit den Schultern. "Was so viel heißt, als daß der arme Schwachbaum mehr mitkriegt, als ich dachte." Er sieht von dir weg und scheint tief in Gedanken.~ */
  IF ~~ THEN REPLY #37557 /* ~"Also, befreist du ihn?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.1
  SAY #37558 /* ~Er seufzt und scheint tief in Gedanken. "Ja... ich denke, Ihr habt Recht. Hamrys kann Euch nicht geschickt haben. Ich fürchte, der arme Schwachbaum kriegt mehr mit, als ich beabsichtigt hatte. Verwünscht sei ich für meine Dummheit!"~ */
  IF ~~ THEN REPLY #37559 /* ~"Also, befreist du ihn?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.0 54.0
  SAY #37560 /* ~Er sieht dich einen Moment an, wobei sich verschiedene Emotionen an seinem Gesicht ablesen lassen. Er seufzt und wirft seine Arme wütend nach oben. "Ich kann nicht, tut mir leid." Er wirft dir einen bittenden Blick zu. "Ich würde ja gerne, glaubt mir, aber ich kann nicht. Mit der Schöpfung von Schwachbaum habe ich einen Vertrag erfüllt, und ich kann ihn nicht brechen, ob es nun recht oder schlecht ist. Ich stehe zu meinem Wort, mein Ruf verlangt das."~ */
  IF ~~ THEN REPLY #37561 /* ~Wahrheit: "Ich verstehe dein Dilemma und bin ganz deiner Meinung. Könnte ich ihn statt dessen befreien?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37562 /* ~Wahrheit: "Ehrlich gesagt, ich gebe einen Scheiß auf Verträge. Was du getan hast, war falsch, und man muß ihn befreien."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37563 /* ~"Wer hat dich unter Vertrag genommen? Vielleicht kann ich denjenigen dazu bringen, seiner Befreiung zuzustimmen."~ */ GOTO 27
  IF ~~ THEN REPLY #37564 /* ~"Also, mir ist es wirklich schnuppe. Ich hab' lediglich eingewilligt, ihm zu helfen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 27.0 27.1
  SAY #37565 /* ~"Das könnte schwierig werden..." Er dreht sich um und sieht eine in der Nähe stehende Kiste durch. Dann zieht er ein Buch heraus und legt es dir vor die Nase. "Erst einmal müßtet Ihr dafür eine gewisse magische Befähigung haben. Zweitens müßtet Ihr die Worte auf Seite dreiundzwanzig in diesem Buch ordentlich aufsagen können."~ */
  IF ~~ THEN REPLY #37566 /* ~"Red' weiter."~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #37567 /* ~"Und schließlich müßtet Ihr Schwachbaum genau in dem Moment berühren, wenn Ihr spürt, wie sich die Macht der Worte in Euch sammelt." Er dreht dir den Rücken zu und wühlt in einer anderen Kiste. "Ich kann Euch jedoch nicht erlauben, das Buch zu lesen. Es würde schließlich dasselbe sein, als wenn ich mein Wort durch die Taten eines anderen brechen würde." Er sucht weiter in der Kiste und ignoriert dich völlig.~ */
  IF ~~ THEN REPLY #37569 /* ~Lies das Buch und geh.~ */ DO ~SetGlobal("Release_Dimtree","GLOBAL",4)
AddexperienceParty(4000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #37571 /* ~Ich habe die Zauberformel gelernt, mit der ich Schwachbaum, den Zombie, befreien kann. Sebastion hat mir gestattet, sie aus seinem Buch zu lernen, obwohl er vorgab, nicht zu sehen, was ich tat.~ */ EXIT
  IF ~~ THEN REPLY #37570 /* ~Beachte das Buch nicht und geh.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 24.2
  SAY #37572 /* ~Er lächelt dich an. "Ich bin durch eine Magie gebunden, diese Information nicht preiszugeben, Schleifer. Darum kommen die Leute zu mir. Sie wissen, daß ich einen Vertrag, den ich annehme, mit Diskretion behandle."~ */
  IF ~~ THEN REPLY #37573 /* ~Wahrheit: "Ich verstehe, daß man so Geschäfte macht. Könnte ich ihn statt dessen befreien?"~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Sebastion_1","GLOBALLaw",1)
~ GOTO 25
  IF ~~ THEN REPLY #37574 /* ~Wahrheit: "Ehrlich gesagt, ich gebe einen Scheiß auf Verträge. Was du getan hast, war falsch, und man muß ihn befreien."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sebastion_1","GLOBALLaw",-1)
~ GOTO 25
  IF ~~ THEN REPLY #37575 /* ~"Egal. Ich möchte sowieso nichts damit zu tun haben. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.2 2.5
  SAY #37576 /* ~Er lächelt dich an und zuckt die Schultern. "Vielleicht, Schleifer, vielleicht." Er lehnt sich vor und beginnt, deine Narben sorgfältig zu untersuchen. Er fährt mit einem Finger an einigen entlang und murmelt vor sich hin. Schließlich sieht er zu dir auf. "Ja, Schleifer, ich kann dir helfen. Ich kann dich nicht heilen, aber ich kann dir das Schlimmste deines... Zustands lindern."~ */
  IF ~~ THEN REPLY #37577 /* ~"Und dein Preis?"~ */ GOTO 29
  IF ~~ THEN REPLY #37578 /* ~"Ja, sicher. Ich habe ein paar Fragen an dich..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #37580 /* ~"Ach so, ja... der Preis." Er streicht sich übers Kinn und starrt dich an. Du hast das Gefühl, daß er dich irgendwie einzustufen versucht. Er scheint zu einer Entscheidung zu kommen. "Ich habe da einen Auftrag, den Ihr für mich erledigen könntet."~ */
  IF ~~ THEN REPLY #37581 /* ~"Red' weiter."~ */ GOTO 30
  IF ~~ THEN REPLY #37582 /* ~"Vergiß es. Ich habe noch andere Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #37583 /* ~"Ich bin nicht interessiert an irgenwelchen Jobs. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #37584 /* ~"Ich habe einen Vertrag mit einer gewissen Kreatur unterzeichnet. Ich bin nicht länger in der Lage, diesen Vertrag zu erfüllen, denn das würde meinen Tod bedeuten. Aber diese Kreatur will mich nicht davon entbinden. Statt dessen hat sie mir mit dem Tod gedroht, falls ich den Vertrag nicht erfülle."~ */
  IF ~~ THEN REPLY #37585 /* ~"Laß mich raten: Du willst, daß ich dieses Problem für dich löse."~ */ GOTO 31
  IF ~~ THEN REPLY #37587 /* ~"Ich bin nicht interessiert. Ich habe ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #37589 /* ~"Mir gefällt nicht, wie die Sache hier läuft. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #37591 /* ~Er seufzt. "Ja. Ich kann es nicht selbst tun. Mein Ruf verlangt von mir, daß ich den Vertrag erfülle oder die Folgen trage. Ich bin in dieser Hinsicht auf Eure Gnade angewiesen. Werdet Ihr mir helfen?"~ */
  IF ~~ THEN REPLY #37593 /* ~"Über was für eine Kreatur reden wir hier?"~ */ GOTO 32
  IF ~~ THEN REPLY #37595 /* ~"Wozu hast du dich in dem Vertrag verpflichtet?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 33.0
  SAY #37597 /* ~"Ein Abishai namens Grosuk, Schleifer." Er wartet einen Moment lang deine Reaktion ab. "Ich weiß, daß dies eine schwierige Aufgabe ist, aber ich denke, daß du sie meistern kannst. Außerdem biete ich dir eine hohe Belohnung." Er deutet auf deine Narben.~ */
  IF ~~ THEN REPLY #37599 /* ~"Wozu hast du dich in dem Vertrag verpflichtet?"~ */ GOTO 33
  IF ~~ THEN REPLY #37600 /* ~"Ich verstehe. Ein interessanter Vorschlag."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 31.1 32.0
  SAY #37601 /* ~Er schüttelt den Kopf. "Ich kann dir diese Information nicht preisgeben, Schleifer. Ich bin magisch daran gebunden, sie geheimzuhalten. Darum kommen die Leute zu mir. Sie wissen, daß ich einen Vertrag, den ich annehme, mit Diskretion behandle."~ */
  IF ~~ THEN REPLY #37602 /* ~"Über was für eine Kreatur reden wir hier?"~ */ GOTO 32
  IF ~~ THEN REPLY #37603 /* ~"Ich verstehe. Ein interessanter Vorschlag."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 32.1 33.1
  SAY #37604 /* ~Er sieht dich hoffnungsvoll an. "Wirst du es tun, Schleifer?"~ */
  IF ~  Global("Grosuk_DEAD_KAPUTZ","GLOBAL",1)
~ THEN REPLY #37605 /* ~"Ich habe ihn schon getötet.~ */ JOURNAL #37609 /* ~Für einen Zauberkundigen namens Sebastion sollte ich einen Abishai töten. Dafür wollte er mir mit meinen Narben helfen. Glücklicherweise hatte ich das bereits getan, und aus Dankbarkeit half mir Sebastion doch.~ */ GOTO 57
  IF ~~ THEN REPLY #37606 /* ~"Ja, erzähl mir alles ganz genau."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ JOURNAL #37610 /* ~Ein Zauberkundiger namens Sebastion will, daß ich für ihn einen Abishai töte. Dafür versprach er, mir mit meinen Narben zu helfen. Ich habe eingewilligt.~ */ GOTO 35
  IF ~~ THEN REPLY #37607 /* ~"Nein, ich will damit nichts zu tun haben."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",2)
~ GOTO 36
  IF ~~ THEN REPLY #37608 /* ~"Ich weiß nicht. Ich werde darüber nachdenken."~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.1
  SAY #37611 /* ~Er lächelt dich an und seufzt erleichtert. "Danke, Schleifer. Die Kreatur ist ein Abishai namens Grosuk. Du brauchst eine magische Waffe, um irgendwas gegen ihn auszurichten, also seh dich in den Läden um, wenn du noch keine besitzt. Ein Zauberwirker kann ihn auch verletzen. Grosuk ist normalerweise im Osten zu finden, hinter dem Belagerungsturm."~ */
  IF ~~ THEN REPLY #37612 /* ~"Belagerungsturm?"~ */ GOTO 55
  IF ~~ THEN REPLY #37613 /* ~"Ist gut, aber ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37614 /* ~"Gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.2 34.3
  SAY #37615 /* ~Er versucht, seine Enttäuschung hinter einem Lächeln zu verbergen. "Ich verstehe, Schleifer. Kann ich dir mit noch irgend etwas helfen?"~ */
  IF ~~ THEN REPLY #37616 /* ~"Ja, ich habe noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37617 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 38 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",1)
~ THEN BEGIN 37 // from:
  SAY #37618 /* ~Sebastion lächelt, als du dich ihm näherst. "Guten Tag, Schleifer. Hast du über mein Angebot nachgedacht und beschlossen, es doch anzunehmen?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37619 /* ~"Ich will mit dir über Schwachbaum sprechen."~ */ GOTO 20
  IF ~~ THEN REPLY #37620 /* ~"Ja, erzähl mir alles ganz genau."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37621 /* ~"Ich denke noch darüber nach. Leb wohl."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 39 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #37622 /* ~Sebastion lächelt, als du auf ihn zugehst. "Guten Tag, Schleifer. Sag mir bitte, daß du deine Meinung geändert hast und mir bei meinem Problem helfen wirst."~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37623 /* ~"Ich will mit dir über Schwachbaum sprechen."~ */ GOTO 20
  IF ~~ THEN REPLY #37624 /* ~"Ja, erzähl mir alles ganz genau."~ */ DO ~SetGlobal("Snuff_Grosuk","GLOBAL",3)
~ GOTO 44
  IF ~~ THEN REPLY #37625 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 40 60 43 even though they appear after this state */
~  Global("Snuff_Grosuk","GLOBAL",3)
~ THEN BEGIN 39 // from:
  SAY #37626 /* ~Sebastion lächelt, als du auf ihn zugehst. "Guten Tag, Schleifer. Hast du deinen Auftrag erfüllt?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37627 /* ~"Ich will mit dir über Schwachbaum sprechen."~ */ GOTO 20
  IF ~~ THEN REPLY #37628 /* ~"Nein, ich arbeite daran."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 60 43 even though they appear after this state */
~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
~ THEN BEGIN 40 // from:
  SAY #37629 /* ~Sebastion lächelt, als du auf ihn zugehst. "Guten Tag, Schleifer. Hast du deinen Auftrag erfüllt?"~ */
  IF ~~ THEN REPLY #37630 /* ~"Ja, und ich bin hier, um mir zu holen, was mir zusteht."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #37631 /* ~"Einen Augenblick bitte, Schleifer." Sebastion greift in seine Roben und zieht eine kleine Kristallkugel hervor. Er sieht einen Augenblick lang hinein, bevor er sich wieder dir zuwendet. "Ich kann dir nicht genug danken, Schleifer. Ich werde auch meinen Teil des Handels erfüllen. Bist du bereit?"~ */
  IF ~~ THEN REPLY #37632 /* ~"Ja."~ */ DO ~AddexperienceParty(4000)
PermanentStatChange(Protagonist,CHR,RAISE,2)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #37633 /* ~"Es ist vollbracht, Schleifer. Ich danke dir nochmals." Sebastion verbeugt sich tief vor dir.~ */
  IF ~~ THEN REPLY #37634 /* ~"Danke und leb wohl, Sebastion."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66544 /* ~Ich habe den Abishai Grosuk für Sebastion getötet. Gemäß unseres Abkommens hat er mir dann mit meinen Narben geholfen. Ich habe eine ganz schöne Besserung meines allgemeinen Aussehens feststellen können.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Snuff_Grosuk","GLOBAL",4)
~ THEN BEGIN 43 // from:
  SAY #37635 /* ~Sebastion lächelt dich an. "Guten Tag, Schleifer. Wie kann ich dir helfen?"~ */
  IF ~  Global("Release_Dimtree","GLOBAL",3)
~ THEN REPLY #37636 /* ~"Ich will mit dir über Schwachbaum sprechen."~ */ GOTO 20
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #64548 /* ~"Kannst du mich in der Kunst trainieren, Sebastion?"~ */ GOTO 59
  IF ~~ THEN REPLY #64549 /* ~"Vergiß es, Sebastion. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 37.1 38.1
  SAY #37638 /* ~Er lächelt dich an und seufzt erleichtert. "Danke, Schleifer. Das Wesen ist ein Abishai namens Grosuk. Du kannst es im Osten finden, jenseits des Belagerungsturms."~ */
  IF ~~ THEN REPLY #37639 /* ~"Also gut. Leb wohl."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 60 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 45 // from:
  SAY #37640 /* ~Sebastion lächelt, als du näherkommst. "Guten Tag, Schleifer. Es ist gut, dich wiederzusehen."~ */
  IF ~~ THEN REPLY #37641 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~  
!Class(Protagonist,MAGE)
~ THEN REPLY #37642 /* ~"Kannst du mich in dieser Kunst unterweisen, Sebastion?"~ */ GOTO 59
  IF ~~ THEN REPLY #37643 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 12.0 12.1
  SAY #37644 /* ~Die Welt um dich herum verblaßt, und du findest dich in den dunklen Straßen von Sigil wieder. Dein Herz klopft zum Zerspringen, du atmest stoßweise. Dir kommt es vor, als wärst du schon seit Stunden gerannt, und dennoch kannst du nicht anhalten...~ */
  IF ~~ THEN REPLY #37645 /* ~Weiter.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #37646 /* ~Du läufst um eine Ecke und kommst in eine Gasse, wo du endlich deine Flucht verlangsamst. Du fühlst, wie deine Kraft dich verläßt, als du dich gegen eine Mauer lehnst und versuchst, wieder zu Atem zu kommen. Du merkst, daß du etwas Hartes in der Hand hältst. Du siehst nach unten, öffnest deine Faust und starrst auf den Edelstein, der sich durch das krampfhafte Umfassen in deine Haut eingegraben hat.~ */
  IF ~~ THEN REPLY #37647 /* ~Weiter.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #37648 /* ~Dein Körper sackt gegen die Mauer, bis deine Stirn die kalte, feuchte Fläche berührt. Deine Augen schließen sich, und du zwingst dich, langsam und tief durchzuatmen. Gerade als du merkst, wie deine Kräfte wiederkehren, hörst du in der Ferne ein Geräusch und bist plötzlich wieder hellwach. Du drehst dich um und blickst zum Ende der Gasse.~ */
  IF ~~ THEN REPLY #37649 /* ~Weiter.~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #37650 /* ~Zuerst siehst du gar nichts, nur Visionen von Geistern, die aus den Schatten der Nacht entstehen. Du willst dich gerade wieder abwenden, als dir eine leichte Bewegung ins Auge fällt. Ganz langsam gleitet eine weibliche Gestalt um die Ecke, hält inne und wendet sich dann in deine Richtung. Deine Augen wandern von ihrer schlanken Taille zu ihrem vollen Busen und schließlich zu ihrem von Klingen eingerahmten Gesicht. Selbst in der Dunkelheit kannst du ihre kalten, gefühllosen Augen ausmachen...~ */
  IF ~~ THEN REPLY #37651 /* ~Weiter.~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #37652 /* ~Die Erinnerung verblaßt wieder, und dein normaler Blick kehrt zurück. Du stehst vor Sebastion auf dem Markt. Er sieht dich ziemlich besorgt an, aber das vergeht, als er sieht, daß es dir gut geht. "Ich dachte schon für einen Moment lang, ich hätte dich verloren, Schleifer."~ */
  IF ~~ THEN REPLY #37653 /* ~"Was ist aus diesem Schattenverhexten Schlüssel geworden?"~ */ GOTO 13
  IF ~~ THEN REPLY #37654 /* ~"Interessant. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 51 // from: 20.1
  SAY #37655 /* ~Er strahlt dich an. "Nein wirklich, Schleifer, danke. Es ist immer nett, jemanden zu finden, der den Humor einer solchen Situation zu schätzen weiß."~ */
  IF ~~ THEN REPLY #37656 /* ~"Sag mal, warum hast du es überhaupt getan?"~ */ GOTO 52
  IF ~~ THEN REPLY #37657 /* ~"Ja... Ich habe ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #37658 /* ~"Also, ich muß weiter. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 21.2 51.0
  SAY #37659 /* ~"Ach..." Er lacht, schüttelt den Kopf und versucht dann, sich zusammenzureißen. "Hamrys liebt einfach den Klang seiner eigenen Stimme, Schleifer. Er hatte sich angewöhnt, stundenlang auf dem Markt umherzuschlendern und den Leuten sein Geschwätz aufzuzwingen. Die Geschäfte gingen schlechter. Schwachbaum ist ein geduldiger Gefährte, der seinen vielen Geschichten lauscht und, was noch wichtiger ist, ihn in seinem Laden hält."~ */
  IF ~~ THEN REPLY #37660 /* ~"Aha. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #37661 /* ~"Ach..." Er lacht, schüttelt den Kopf und versucht dann, sich zusammenzureißen. "Hamrys liebt einfach den Klang seiner eigenen Stimme, Schleifer. Er hatte sich angewöhnt, stundenlang auf dem Markt umherzuschlendern und den Leuten sein Geschwätz aufzuzwingen. Mit den Geschäften ging's bergab, da die Kunden vor ihm flohen! Schwachbaum ist ein geduldiger Gefährte, der seinen vielen Geschichten lauscht und, was noch wichtiger ist, ihn in seinem Laden hält."~ */
  IF ~~ THEN REPLY #37662 /* ~"Ich verstehe. Naja, egal. Ich habe ein paar Fragen an dich..."~ */ GOTO 2
  IF ~~ THEN REPLY #37663 /* ~"Wie dem auch sei, was du getan hast, ist trotzdem nicht richtig. Du mußt Schwachbaum befreien."~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.1
  SAY #37664 /* ~Er seufzt und scheint tief in Gedanken versunken zu sein. "Ja... Du hast natürlich recht. Die Pocken sollen mich für meine Dummheit holen!"~ */
  IF ~~ THEN REPLY #37665 /* ~"Dann wirst du ihn befreien?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 55 // from: 35.0
  SAY #37666 /* ~"Ja, auf der anderen Seite des Markts. Verfluchtes Ding, tauchte vor einigen Jahren einfach eines Tages auf. Niemand weiß warum und niemand scheint hineinzugelangen, um es herauszufinden."~ */
  IF ~~ THEN REPLY #37667 /* ~"Ich verstehe. Ich hätte noch ein paar andere Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37668 /* ~"Na gut. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 12.2
  SAY #37669 /* ~Du konzentrierst deine Gedanken auf einen Punkt. Langsam wird die Welt um dich herum wieder farbig und bewegt. Die Erinnerung verblaßt...~ */
  IF ~~ THEN REPLY #37670 /* ~"Was ist aus diesem Schattenverhexten Schlüssel geworden?"~ */ GOTO 13
  IF ~~ THEN REPLY #37671 /* ~"Interessant. Ich habe noch ein paar Fragen an dich..."~ */ GOTO 2
END

IF ~~ THEN BEGIN 57 // from: 34.0
  SAY #37672 /* ~"Einen Augenblick bitte, Schleifer." Sebastion greift in seine Roben und zieht eine kleine Kristallkugel hervor. Er sieht einen Augenblick lang hinein, bevor er sich wieder dir zuwendet. "Ich kann dir nicht genug danken, Schleifer. Selbst, wenn wir kein Abkommen getroffen haben, werde ich dir mit deinen Narben helfen. Bist du bereit?"~ */
  IF ~~ THEN REPLY #37673 /* ~"Ja. Danke."~ */ DO ~SetGlobal("Kill_Grosuk","GLOBAL",4)
PermanentStatChange(Protagonist,CHR,RAISE,2)
SetGlobal("Snuff_Grosuk","GLOBAL",4)
~ JOURNAL #66545 /* ~Ich habe einen Abishai namens Grosuk getötet. Wie es scheint, wollte Sebastion aus irgendeinem Grund den Tod dieses Wesens. Als Belohnung hat mir Sebastion mit meinen Narben geholfen. Ich habe eine ganz schöne Besserung meines allgemeinen Aussehens feststellen können.~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #37674 /* ~Er lächelt dich an. "Es ist vollbracht, Schleifer. Ich danke dir nochmals."~ */
  IF ~~ THEN REPLY #37676 /* ~"Ich habe ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #37677 /* ~"Ich muß weiter, leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 43.1 45.1
  SAY #37678 /* ~"Bist du sicher, daß du deinen derzeitigen Beruf aufgeben und dich der 'Kunst' als ein Zauberkundiger widmen möchtest?~ */
  IF ~  Global("Mage_Training","GLOBAL",0)
~ THEN REPLY #52386 /* ~"Ja..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
SetGlobal("Mage_Training","GLOBAL",3)
~ GOTO 61
  IF ~  GlobalGT("Mage_Training","GLOBAL",0)
~ THEN REPLY #52387 /* ~"Ja..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(MAGE)
~ GOTO 63
  IF ~~ THEN REPLY #58936 /* ~"Nein, laß es mich überdenken. Leb wohl."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Grosuk_Dead_KAPUTZ","GLOBAL",1)
NumTimesTalkedTo(0)
~ THEN BEGIN 60 // from:
  SAY #50446 /* ~Du siehst einen älteren Mann in eleganten Roben. Er hat leuchtende Augen und ein warmes Lächeln. Er verbeugt sich leicht vor dir, als du herankommst. "Guten Tag, Schleifer. Ich bin Sebastion, wie kann ich dir dienen?"~ */
  IF ~~ THEN REPLY #50447 /* ~"Sei gegrüßt."~ */ GOTO 1
  IF ~~ THEN REPLY #50448 /* ~Beachte den Mann nicht.~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.0
  SAY #52388 /* ~"So etwas mache ich normalerweise nicht. Aber zeigt mir doch, was Ihr könnt, und ich gebe Euch dann ein paar Hinweise." Er beobachtet dich genau, als du vorführst, was du kannst. An mehreren Stellen unterbricht er dich und zeigt dir, wie du deine Fähigkeiten verbessern kannst. Einige Stunden später findest du deine Fähigkeiten als Magier schon ziemlich gut.~ */
  IF ~~ THEN REPLY #62180 /* ~"Danke, Sebastion."~ */ DO ~GiveExperience(Protagonist,5000)
~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #62174 /* ~"Du bist höchst willkommen, Freund. Nimm auch noch diese beiden Zaubersprüche, sie könnten praktisch sein. Wenn du mich jetzt bitte entschuldigst, ich habe zu tun."~ */
  IF ~~ THEN REPLY #62177 /* ~"Leb wohl."~ */ DO ~GiveItemCreate("Spwi101",Protagonist,1,1,0)
GiveItemCreate("Spwi102",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.1
  SAY #64650 /* ~"So etwas mache ich normalerweise nicht. Aber zeigt mir doch, was Ihr könnt, und ich gebe Euch dann ein paar Hinweise." Er beobachtet dich genau, als du vorführst, was du kannst. An mehreren Stellen unterbricht er dich und zeigt dir, wie du deine Fähigkeiten verbessern kannst. Einige Stunden später findest du deine Fähigkeiten als Magier schon ziemlich gut.~ */
  IF ~~ THEN REPLY #64651 /* ~"Danke, Sebastion."~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #64652 /* ~"Du bist uns äußerst willkommen. Wenn du mich jetzt entschuldigen würdest, ich muß noch arbeiten."~ */
  IF ~~ THEN REPLY #64653 /* ~"Leb wohl."~ */ EXIT
END
