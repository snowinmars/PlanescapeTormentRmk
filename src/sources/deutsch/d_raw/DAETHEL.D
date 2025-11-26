// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAETHEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DAETHEL~

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3057 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Diesem hier fehlt rechts ein Zahn. Als es Annah und Grace, die Gefallene, neben dir erblickt, sagt es mit schnarrender Stimme: "Schaff dieses Ungeziefer des Abgrunds fort, dann reden wir. Bis dahin sagen wir keinen Ton." Zur Bekräftigung spuckt es noch einmal aus.~ */
  IF ~~ THEN REPLY #3059 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #3061 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Diesem hier fehlt rechts ein Zahn. Als es Annah neben dir erblickt, sagt es mit schnarrender Stimme: "Schaff dieses kleine Scheusal-Ungeziefer fort, dann reden wir. Bis dahin sagen wir keinen Ton." Zur Bekräftigung spuckt es noch einmal aus.~ */
  IF ~~ THEN REPLY #12343 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #12344 /* ~Du kannst ein schuppiges Scheusal sehen, das dem neben ihm stehendem stark gleicht. Beide schimmern rötlich und haben ein durchgestochenes linkes Ohr. Sie sehen wie ein Reptil aus, mit Fledermausflügeln, die auf dem Rücken zusammengefaltet liegen. Diesem hier fehlt rechts ein Zahn. Als es Grace, die Gefallene, neben dir stehen sieht, zischt es knarrend: "Schaff dieses Ungeziefer des Abgrunds weg, dann können wir reden. Bis dahin sagen wir nichts." Es spuckt nochmals, um seine Worte zu unterstreichen.~ */
  IF ~~ THEN REPLY #12345 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedTo(0)
~ THEN BEGIN 3 // from:
  SAY #12346 /* ~Du siehst ein geschupptes Scheusal, das dem Exemplar neben ihm stark gleicht. Beide haben ein durchstochenes linkes Ohr, sind von schwärzlicher Farbe, haben etwas Reptilienartiges an sich und besitzen zusammengefaltete Fledermausflügel. Diesem fehlt rechts ein Zahn. "Ah, Tegar'in", sagt es, "unser alter Freund ist zurückgekehrt, um uns einen Besuch abzustatten."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 8
END

IF ~  NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #12347 /* ~Der Abishai weicht zurück, als du näher kommst. "Nimm die kleinen Chaosratten", sagt er, auf Grace, die Gefallene, und Annah zeigend, "weg von uns, dann handeln wir mit dir. Bis dahin sagen wir hier kein Wort."~ */
  IF ~~ THEN REPLY #12348 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #12349 /* ~Der Abishai weicht zurück, als du näher kommst. "Nimm die kleine Chaosratte", sagt er, auf Annah zeigend, "weg von uns, dann handeln wir mit dir. Bis dahin sagen wir hier kein Wort."~ */
  IF ~~ THEN REPLY #12350 /* ~"Auf bald, dann."~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
~ THEN BEGIN 6 // from:
  SAY #12351 /* ~Der Abishai weicht zurück, als du näher kommst. "Nimm die kleine Chaosratte", sagt er, auf Grace, die Gefallene zeigend, "weg von uns, dann handeln wir mit dir. Bis dahin sagen wir hier kein Wort."~ */
  IF ~~ THEN REPLY #12352 /* ~"Auf bald, dann."

~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
!PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 7 // from:
  SAY #12353 /* ~"Der Verlorene Sohn kehrt zurück, was?" Das Scheusal zischt dir ein Lächeln zu, wobei sich aus seinen Mundwinkeln üble Dämpfe kräuseln. "Sind deine Erinnerungen also wieder zu dir zurückgekehrt, alter Freund?"~ */
  IF ~~ THEN REPLY #12354 /* ~"Was meinst du?"~ */ EXTERN ~DTEGARIN~ 10
  IF ~~ THEN REPLY #12355 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #12356 /* ~"Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1 14.1 34.0 50.0
  SAY #12357 /* ~"Fragen? Vielleicht haben wir Antworten. Wir wollen in jedem Fall versuchen, dir zu helfen, Freund."~ */
  IF ~~ THEN REPLY #12358 /* ~"Wer seid ihr?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12359 /* ~"Was macht ihr hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #12360 /* ~"Was ist das für ein Ort hier?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12361 /* ~"Erzähl mir was über Scheusale."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12362 /* ~"Kennst du einen Sammler namens Pharod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12363 /* ~"Ich suche nach einem Journal."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14814 /* ~"Ich denke über den Handel nach, den du vorhin erwähnt hast."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12364 /* ~"Kennst du einen Sammler, der mit Scheusalen Geschäfte macht?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14729 /* ~"Wo versteckt sich dieser Sammler noch mal?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14730 /* ~"Was für eine 'Macht' wird der Anhänger mir geben?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14731 /* ~"Ich hab's nicht geschafft, den Anhänger von den Erinnyen zu holen, und jetzt ist sie weg."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14732 /* ~Lüge: "Ich konnte die Erinnyen nicht finden; sie war nicht in der Gasse, von der du mir erzählt hast."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14733 /* ~"Hier ist der Anhänger."~ */ GOTO 40
  IF ~~ THEN REPLY #14815 /* ~"Nichts. Leb wohl."
~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #12365 /* ~"Das bin ich auch, Tegar'in, wirklich betrübt. Doch ich nehme es leicht. Es ist schließlich schon Hunderte von Jahren her, und wir wissen, wie das Gedächtnis der Sterblichen mit dem Alter nachzulassen pflegt."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY #12366 /* ~Aethelgrin ignoriert dich und antwortet seinem Begleiter: "Und wieder einmal, Tegar'in, hast du den Nagel auf den Kopf getroffen. Wenn es auch vielleicht besser ist, nicht die Art Aufmerksamkeit erregt zu haben wie einer, der den Namen 'Dreimal Verdammter' trägt."~ */
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12367 /* ~"Ich hätte da noch ein paar Fragen."~ */ EXTERN ~DTEGARIN~ 12
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12368 /* ~"Ich hätte da noch ein paar Fragen."~ */ EXTERN ~DMORTE~ 151
END

IF ~~ THEN BEGIN 11 // from:
  SAY #12369 /* ~"Was denn, ist das ein kleiner, schwebender Totenschädel, den ich da sehe? Dir haftet ein wunderbarer süßer Duft baatorischer Verwesung an, mein Süßer. Vielleicht sprechen wir darüber noch... später." Der Abishai richtet seine Aufmerksamkeit wieder auf dich. "Also dann... du sagtest, du hattest einige Fragen?"~ */
  IF ~~ THEN REPLY #12370 /* ~"Wer seid ihr?"~ */ EXTERN ~DTEGARIN~ 9
  IF ~~ THEN REPLY #12371 /* ~"Was macht ihr hier?"~ */ GOTO 12
  IF ~~ THEN REPLY #12372 /* ~"Was ist das für ein Ort hier?"~ */ EXTERN ~DTEGARIN~ 14
  IF ~~ THEN REPLY #12373 /* ~"Erzähl mir was über Scheusale."~ */ GOTO 13
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12374 /* ~"Kennst du einen Sammler namens Pharod?"~ */ EXTERN ~DTEGARIN~ 17
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12375 /* ~"Ich suche nach einem Journal."~ */ GOTO 14
  IF ~  Global("Devil_Offer","AR0402",1)
~ THEN REPLY #14816 /* ~"Ich denke über den Handel nach, den du vorhin erwähnt hast."~ */ EXTERN ~DTEGARIN~ 25
  IF ~  Global("RC_ID","GLOBAL",1)
!Global("2Devils","AR0402",1)
~ THEN REPLY #12376 /* ~"Kennst du einen Sammler, der mit Scheusalen Geschäfte macht?"~ */ EXTERN ~DTEGARIN~ 19
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14734 /* ~"Wo versteckt sich dieser Sammler noch mal?"~ */ GOTO 50
  IF ~  Global("2Devils","AR0402",1)
~ THEN REPLY #14735 /* ~"Was für eine 'Macht' wird der Anhänger mir geben?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14736 /* ~"Ich hab's nicht geschafft, den Anhänger von den Erinnyen zu holen, und jetzt ist sie weg."~ */ EXTERN ~DTEGARIN~ 57
  IF ~  Global("RC_Contract","GLOBAL",1)
~ THEN REPLY #14737 /* ~Lüge: "Ich konnte die Erinnyen nicht finden; sie war nicht in der Gasse, von der du mir erzählt hast."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Abishai_1","GLOBALLaw",-1)
~ EXTERN ~DTEGARIN~ 57
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14738 /* ~"Hier ist der Anhänger."~ */ GOTO 40
  IF ~~ THEN REPLY #14739 /* ~"Nein. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.1 11.1
  SAY #12377 /* ~"Was wir tun? Was denn, ist das nicht völlig klar, alter Freund? Wir haben Urlaub von unserer geliebten Aufgabe und genießen nun die so benötigte Erholung, und vielleicht rekrutieren wir ja noch jemanden für unsere ehrenvolle Sache. Unsere Vorgesetzten unterstützen unsere Anwesenheit jedenfalls vorbehaltlos."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 13
END

IF ~~ THEN BEGIN 13 // from: 8.3 11.3
  SAY #12378 /* ~"Wie wir das sehen, gibt es zwei Arten von Scheusalen: Diejenigen, die recht haben, und diejenigen, die nicht recht haben. Unsere Seite - die der Baatezu - hat recht. Die andere Seite, die der verfluchten, verhaßten, chaotischen Tanar-Ri, hat nicht recht und muß daher ausgelöscht werden."
~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 15
END

IF ~~ THEN BEGIN 14 // from: 8.5 11.5
  SAY #12379 /* ~"Ich führe keine Journale, Freund, und ich rate dir, auch keins zu führen. Frag meinen lieben Kameraden Tegar'in warum, und du wirst Erleuchtung erfahren."~ */
  IF ~~ THEN REPLY #12380 /* ~"Wie du meinst. Tegar'in, warum sollte ich kein Journal führen?"~ */ EXTERN ~DTEGARIN~ 18
  IF ~~ THEN REPLY #12381 /* ~"Vielleicht später. Ich hätte noch eine paar andere Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #12382 /* ~"Vielleicht später. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #14654 /* ~"Ja, ja, tut er. Weiß er es?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #14655 /* ~"Ja, natürlich, du hast nur zu recht." Das Scheusal wendet sich dir zu. "Was weißt du von diesem Sammler, mein langjähriger Freund?"~ */
  IF ~~ THEN REPLY #14741 /* ~"Wenig, außer daß er seltsame Angewohnheiten hat und im Gespräch mit Scheusalen gesehen wurde."~ */ GOTO 17
  IF ~~ THEN REPLY #14740 /* ~"Eigentlich gar nichts. Ich hatte gehofft, du könntest mich aufklären."~ */ GOTO 17
  IF ~~ THEN REPLY #14742 /* ~"Sehr wenig. Aber ich werd dich ein anderes Mal danach fragen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #14656 /* ~"Ich würd's dir erzählen, Kamerad, aber unglücklicherweise hab' ich geschworen, nicht darüber zu sprechen!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 21
END

IF ~~ THEN BEGIN 18 // from:
  SAY #14657 /* ~"Hast du nicht geschworen, Tegar'in?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 22
END

IF ~~ THEN BEGIN 19 // from:
  SAY #14658 /* ~"Wunderbar!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 23
END

IF ~~ THEN BEGIN 20 // from:
  SAY #14659 /* ~Das andere Scheusal unterbricht, bevor Tegar'in sprechen kann: "Der Anhänger! Vergiß es nicht!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 24
END

IF ~~ THEN BEGIN 21 // from:
  SAY #14660 /* ~"...vielleicht bist du bereit, einen Deal mit uns auszuhandeln? Wie damals in alten Zeiten..."~ */
  IF ~~ THEN REPLY #14743 /* ~"Nein. Kein Geschäft."~ */ GOTO 29
  IF ~~ THEN REPLY #14744 /* ~"Woran habt ihr gedacht?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.1
  SAY #14661 /* ~"Wir sagen dir alles, was wir über den 'Sammler' wissen..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 26
END

IF ~~ THEN BEGIN 23 // from:
  SAY #14662 /* ~"...seine Schwäche, und wie man ihn besiegt und so an seinen Anhänger kommt - mit dem wir dich stärker machen könnten. Dafür..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 27
END

IF ~~ THEN BEGIN 24 // from:
  SAY #14663 /* ~"Ja, der Anhänger. Er hat die Form eines menschlichen Schädels, und aus seiner Krone strahlen sechs Kristalle."~ */
  IF ~~ THEN REPLY #14745 /* ~"Wieso holt ihr ihn euch nicht selbst?"~ */ GOTO 25
  IF ~~ THEN REPLY #14746 /* ~"Was bewirkt dieser Anhänger?"~ */ GOTO 26
  IF ~~ THEN REPLY #14747 /* ~"Abgemacht."~ */ GOTO 30
  IF ~~ THEN REPLY #14748 /* ~"Nein. Kein Geschäft."
~ */ GOTO 29
END

IF ~~ THEN BEGIN 25 // from: 24.0 28.0
  SAY #14664 /* ~"Es ist uns verboten, uns dem 'Sammler' auch nur zu nähern, von belästigen oder schädigen ganz zu schweigen."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 28
END

IF ~~ THEN BEGIN 26 // from: 24.1
  SAY #14665 /* ~"Nichts, für dich."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 29
END

IF ~~ THEN BEGIN 27 // from:
  SAY #14666 /* ~"Ansonsten hat er keine Kräfte. Er ist tatsächlich ein ziemlich passives Ding."
~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 31
END

IF ~~ THEN BEGIN 28 // from:
  SAY #14667 /* ~"Aber der Nutzen eines solchen Gegenstandes für uns ist doch sicher ganz offensichtlich."~ */
  IF ~~ THEN REPLY #14749 /* ~"Wieso holt ihr ihn euch nicht selbst?"~ */ GOTO 25
  IF ~~ THEN REPLY #14750 /* ~"Abgemacht."~ */ GOTO 30
  IF ~~ THEN REPLY #14751 /* ~"Nein. Kein Geschäft."~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 21.0 24.3 28.2
  SAY #14668 /* ~"Zu schade, zu schade."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 32
END

IF ~~ THEN BEGIN 30 // from: 24.2 28.1
  SAY #14669 /* ~"Ausgezeichnet."~ */
  IF ~~ THEN DO ~SetGlobal("RC_ID","GLOBAL",3)
~ EXTERN ~DTEGARIN~ 33
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14670 /* ~"Sie wurde durch einen Fluch in die Form gepreßt, die sie jetzt hat, weißt du. Ein Großteil ihrer Macht ist vergangen, verwelkt durch die heilige Macht des Priesters."~ */
  IF ~~ THEN REPLY #14752 /* ~"Interessant..."~ */ EXTERN ~DTEGARIN~ 34
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14671 /* ~"Flatternde, gurrende Dinger, das sind sie."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 35
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14672 /* ~"Nimm einfach den Anhänger von ihrer Leiche ab und komm zurück, um unseren Handel zu erfüllen, Freund. Wir werden die Macht, die sie im Anhänger festhalten konnte, dazu verwenden, dich zu stärken, und dann den verbrauchten Anhänger für uns selbst behalten."~ */
  IF ~~ THEN REPLY #14753 /* ~"Ich verstehe."~ */ GOTO 34
  IF ~~ THEN REPLY #14754 /* ~"Mach ich nicht. Kein Geschäft."~ */ EXTERN ~DTEGARIN~ 37
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #14673 /* ~"Wie wunderbar! Komm hierher zurück, wenn die Tat vollbracht ist."~ */
  IF ~~ THEN REPLY #14755 /* ~"Bevor ich gehe, hätte ich noch ein paar Fragen..."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ GOTO 8
  IF ~~ THEN REPLY #14756 /* ~"Dann leb wohl."~ */ DO ~SetGlobal("2Devils","AR0402",1)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #14674 /* ~"Wie grausam!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 38
END

IF ~~ THEN BEGIN 36 // from:
  SAY #14675 /* ~"*Viel* stärker, ja!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 39
END

IF ~~ THEN BEGIN 37 // from:
  SAY #14676 /* ~"Tegar'in! Was ist passiert?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 40
END

IF ~~ THEN BEGIN 38 // from:
  SAY #14677 /* ~"Sollen wir ihn jetzt töten und nach Baator zerren?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 41
END

IF ~~ THEN BEGIN 39 // from:
  SAY #14678 /* ~"Ha! Siehst du, wie er wimmert, Tegar'in?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 42
END

IF ~~ THEN BEGIN 40 // from: 8.12 11.12 47.1
  SAY #14679 /* ~"Einfach exzellent!" Aethelgrin schnappt dir den Anhänger von Yemeth aus der Hand und wirft ihn Tegar'in zu.~ */
  IF ~~ THEN DO ~TakePartyItemNum("SkulPend",1)
SetGlobal("2Devils","AR0402",4)
AddexperienceParty(1000)
~ EXTERN ~DTEGARIN~ 45
END

IF ~~ THEN BEGIN 41 // from:
  SAY #14680 /* ~Aethelgrin sieht weg, da seine Aufmerksamkeit plötzlich von etwas auf der Bar hinter ihm abgelenkt wird.~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 47
END

IF ~~ THEN BEGIN 42 // from:
  SAY #14681 /* ~"Mmm? Oh, nein, hab' ich nicht."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 48
END

IF ~~ THEN BEGIN 43 // from:
  SAY #14682 /* ~"Nicht möglich, fürchte ich. Er gehört jetzt uns, und er bedeutet uns viel zuviel, als daß wir ihn verlieren möchten. Bitte komm doch zurück, wenn du diesen Zauber losgeworden bist, der uns daran hindert, dir zu helfen."~ */
  IF ~~ THEN REPLY #14757 /* ~Greif die Scheusale an.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #14758 /* ~"Hm. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 47.2
  SAY #14683 /* ~"Was? Nein! Das kannst du nicht tun!"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 50
END

IF ~~ THEN BEGIN 45 // from:
  SAY #14684 /* ~"Ihn töten?"~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 52
END

IF ~~ THEN BEGIN 46 // from:
  SAY #14685 /* ~"Unwürdiger Wurm! Weg mit dir!"~ */
  IF ~  PartyHasItem("SkulPend")
~ THEN REPLY #14759 /* ~"Warte... ich hab' den Anhänger."~ */ EXTERN ~DTEGARIN~ 53
  IF ~~ THEN REPLY #14760 /* ~Geh weg.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
PartyHasItem("SkulPend")
!Global("2Devils","AR0402",2)
!Global("2Devils","AR0402",3)
~ THEN BEGIN 47 // from:
  SAY #14686 /* ~"Sieh mal, er ist zurück, und zwar mit dem Anhänger!"~ */
  IF ~~ THEN REPLY #14761 /* ~"Wartet. Was für eine Macht werdet ihr mir geben?"~ */ EXTERN ~DTEGARIN~ 43
  IF ~~ THEN REPLY #14762 /* ~"Hier ist der Anhänger."~ */ GOTO 40
  IF ~~ THEN REPLY #14763 /* ~"Ich hab' beschlossen, den Anhänger zu behalten."~ */ GOTO 44
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",2)
~ THEN BEGIN 48 // from:
  SAY #14687 /* ~"Ah, sieh mal, wer zurück ist. Tut mir so leid, Freund, aber wir sprechen erst mit dir, wenn du uns den Anhänger gebracht hast. Leb wohl."~ */
  IF ~~ THEN REPLY #14764 /* ~Geh weg.~ */ EXIT
END

IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
NumTimesTalkedToGT(0)
Global("2Devils","AR0402",3)
~ THEN BEGIN 49 // from:
  SAY #14688 /* ~"Sieh mal, wer das ist, Tegar'in..."~ */
  IF ~~ THEN EXTERN ~DTEGARIN~ 56
END

IF ~~ THEN BEGIN 50 // from: 8.8 11.8
  SAY #14689 /* ~"Sie sollte sich allein in der Gasse nördlich dieses Etablissements verstecken, zwischen zwei Gebäuden. Such sie dort spät am Abend."~ */
  IF ~~ THEN REPLY #14765 /* ~"Ich hätte da noch ein paar Fragen..."~ */ GOTO 8
  IF ~~ THEN REPLY #14766 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END
