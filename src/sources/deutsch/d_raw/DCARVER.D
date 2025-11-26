// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCARVER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DCARVER~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #49641 /* ~Der Mann pfeift eine fröhliche Melodie und spielt mit einem gut gepflegten Kampfmesser. Als du ihn ansprichst, hört er zu pfeifen auf und sieht dich neugierig an. "Hm? Was willst du?"~ */
  IF ~~ THEN REPLY #49642 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49643 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #49644 /* ~Der Mann pfeift immer noch eine fröhliche Melodie und spielt dabei mit seinem gefährlich aussehenden Messer. Als du ihn ansprichst, hört er zu pfeifen auf und sieht dich gelangweilt an. "Was ist denn, hä?"~ */
  IF ~~ THEN REPLY #49645 /* ~"Ich hätte da ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #49646 /* ~"Nichts. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49647 /* ~"Mein Name ist Rattenknochen, Schleifer. Ich bin ein Dieb-zur-Miete und stehe im Dienst von Grabteiler, dem Boss der Sammler, die du hier überall auf'm Platz siehst. Er bezahlt mich hauptsächlich dafür, daß ich seinen Jungs beibringe, wie sie sich mucksmäuschenstill verhalten und wie sie kämpfen müssen, wenn sie sich in was hineinreiten. Das dürften die einzigen Fragen sein, die ich dir beantworte, Schleifer." Er rümpft die Nase und zuckt mit den Achseln.~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49648 /* ~"Dieb-zur-Miete? Könntest du mich ausbilden?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49649 /* ~"Weißt du, wie man durch den mit Müll gefüllten Torbogen nordwestlich von hier kommt?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Ein Mann namens Rattenknochen hat mir erzählt, daß ich, wenn ich durch den müllgefüllten Torbogen im Lumpensammler-Platz will, mal mit jemandem namens Creeden reden sollte. Er meinte, daß Creeden hier irgendwo im Stock sein müßte, nicht weit vom Büro zur Schädlings- und Seuchenbekämpfung.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49650 /* ~"Ich suche einen Mann namens Pharod. Weißt du, wo er ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49651 /* ~"Wo ist dieser Grabteiler?"~ */ GOTO 3
  IF ~~ THEN REPLY #49652 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.3 4.2 5.3 6.2 9.2 11.2
  SAY #49654 /* ~Er nickt in Richtung des großen heruntergekommenen Hauses neben ihm. "Sei bloß vorsichtig, Schleifer. Er mag keine Besucher. Er ist allen gegenüber ziemlich mißtrauisch. Grabteiler ist gar nicht sein richtiger Name... Ich und ein paar andere nennen ihn bloß so."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49655 /* ~"Du hast gesagt, daß du ein Dieb-zur-Miete bist. Könntest du mich ausbilden?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49656 /* ~"Weißt du, wie man durch den mit Müll gefüllten Torbogen nordwestlich von hier kommt?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Ein Mann namens Rattenknochen hat mir erzählt, daß ich, wenn ich durch den müllgefüllten Torbogen im Lumpensammler-Platz will, mal mit jemandem namens Creeden reden sollte. Er meinte, daß Creeden hier irgendwo im Stock sein müßte, nicht weit vom Büro zur Schädlings- und Seuchenbekämpfung.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49657 /* ~"Ich suche einen Mann namens Pharod. Weißt du, wo er ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49658 /* ~"Mehr wollt' ich gar nicht wissen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.2 5.2 6.1 9.1 11.1
  SAY #49659 /* ~Rattenknochen schüttelt den Kopf. "Nee, keine Ahnung. Hab aber gehört, daß er ganz in der Nähe sein soll. Ein paar von seinen Leuten kommen hier aber manchmal vorbei und rennen zu so 'nem Versteck, das wer weiß wo ist. Irgendwo da oben bei den höhergelegenen Plattformen, möcht ich wetten, aber das geht mich nichts an." Er zuckt mit den Achseln und spuckt auf den Boden. "Leben und leben lassen", meint Rattenknochen."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49660 /* ~"Du hast gesagt, daß du ein Dieb-zur-Miete bist. Könntest du mich ausbilden?"~ */ GOTO 7
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49661 /* ~"Weißt du, wie man durch den mit Müll gefüllten Torbogen nordwestlich von hier kommt?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Ein Mann namens Rattenknochen hat mir erzählt, daß ich, wenn ich durch den müllgefüllten Torbogen im Lumpensammler-Platz will, mal mit jemandem namens Creeden reden sollte. Er meinte, daß Creeden hier irgendwo im Stock sein müßte, nicht weit vom Büro zur Schädlings- und Seuchenbekämpfung.~ */ GOTO 5
  IF ~~ THEN REPLY #49662 /* ~"Wo ist dein Boss... Grabteiler?"~ */ GOTO 3
  IF ~~ THEN REPLY #49663 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 3.1 4.1 9.0 11.0
  SAY #49664 /* ~"Hä? Nee, keine Ahnung. Hey... du könntest ja mal Creeden fragen, den Rattenfänger! Der stöbert manchmal da oben herum und verschwindet immer für 'ne ganze Weile. Creeden ist normalerweise im Stock zu finden, gleich vor dem Büro zur Schädlings- und Seuchenbekämpfung."~ */
  IF ~~ THEN REPLY #49665 /* ~"Büro zur was...? Wo ist das?"~ */ GOTO 6
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49666 /* ~"Du hast gesagt, daß du ein Dieb-zur-Miete bist. Könntest du mich ausbilden?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49667 /* ~"Ich suche einen Mann namens Pharod. Weißt du, wo er ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49668 /* ~"Wo ist dein Boss... Grabteiler?"~ */ GOTO 3
  IF ~~ THEN REPLY #49669 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49670 /* ~Rattenknochen sieht dich stirnrunzelnd an. "Im Stock, Schleifer. Such dir 'n Schlepper, wenn du einen brauchst."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49671 /* ~"Du hast gesagt, daß du ein Dieb-zur-Miete bist. Könntest du mich ausbilden?"~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49672 /* ~"Ich suche einen Mann namens Pharod. Weißt du, wo er ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49673 /* ~"Wo ist dein Boss... Grabteiler?"~ */ GOTO 3
  IF ~~ THEN REPLY #49674 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.0 3.0 4.0 5.1 6.0
  SAY #49675 /* ~"Klar, für 'n bißchen Klimper. Schon mal ausgebildet worden?"~ */
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #49676 /* ~"Ja, hab ich."~ */ GOTO 23
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #49677 /* ~"Nein, noch nicht."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #49678 /* ~"Gut. Ich geb dir jetzt eins auf die Mütze. Also weich aus." Plötzlich holt er aus und schwingt seine offene Hand gegen deinen Kopf.~ */
  IF ~  CheckStatGT(Protagonist,8,DEX)
~ THEN REPLY #49679 /* ~Weich dem Schlag aus.~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #49680 /* ~Weich dem Schlag aus.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #49681 /* ~Obwohl du dich duckst, trifft dich Rattenknochen heftig am Hinterkopf. "Tut mir leid, Schleifer, aber du bist einfach zu langsam."~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49682 /* ~"Weißt du, wie man durch den mit Müll gefüllten Torbogen nordwestlich von hier kommt?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Ein Mann namens Rattenknochen hat mir erzählt, daß ich, wenn ich durch den müllgefüllten Torbogen im Lumpensammler-Platz will, mal mit jemandem namens Creeden reden sollte. Er meinte, daß Creeden hier irgendwo im Stock sein müßte, nicht weit vom Büro zur Schädlings- und Seuchenbekämpfung.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49683 /* ~"Ich suche einen Mann namens Pharod. Weißt du, wo er ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49684 /* ~"Wo ist dein Boss... Grabteiler?"~ */ GOTO 3
  IF ~~ THEN REPLY #49685 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #49686 /* ~Du weichst Rattenknochens Schlag aus. "Nicht schlecht, Schleifer. Wie sieht's jetzt mit ein bißchen Klimper aus... Fünfzig Kupfermünzen, und ich bring dich richtig gut in Form."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49687 /* ~"Hört sich gut an. Hier..."~ */ DO ~TakePartyGold(50)
~ GOTO 12
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49688 /* ~"Ich hab nicht so viel..."~ */ GOTO 11
  IF ~~ THEN REPLY #49689 /* ~"Nein danke."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.1 10.2 24.1 24.2
  SAY #49690 /* ~Rattenknochen zuckt lustlos mit den Achseln.~ */
  IF ~  Global("RP_Portal","GLOBAL",1)
~ THEN REPLY #49691 /* ~"Weißt du, wie man durch den mit Müll gefüllten Torbogen nordwestlich von hier kommt?"~ */ DO ~SetGlobal("RP_Portal","GLOBAL",2)
~ JOURNAL #49653 /* ~Ein Mann namens Rattenknochen hat mir erzählt, daß ich, wenn ich durch den müllgefüllten Torbogen im Lumpensammler-Platz will, mal mit jemandem namens Creeden reden sollte. Er meinte, daß Creeden hier irgendwo im Stock sein müßte, nicht weit vom Büro zur Schädlings- und Seuchenbekämpfung.~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #49692 /* ~"Ich suche einen Mann namens Pharod. Weißt du, wo er ist?"~ */ GOTO 4
  IF ~~ THEN REPLY #49693 /* ~"Wo ist dein Boss... Grabteiler?"~ */ GOTO 3
  IF ~~ THEN REPLY #49694 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #49695 /* ~"Dir ist klar, daß du das aufgeben mußt, was du gerade machst, ja? Du kannst nicht ein Krieger oder was auch immer *und* ein Dieb sein. Ist das OK für dich, Schleifer?"~ */
  IF ~~ THEN REPLY #49696 /* ~"Ja."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 13
  IF ~~ THEN REPLY #49697 /* ~"Nein, lieber nicht. Ich nehm meine Kupfermünzen zurück. Leb wohl, Rattenknochen."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #49698 /* ~"Dann woll'n wir mal loslegen. Was ich dir jetzt beibringe, sind die sechs besten Eigenschaften eines Diebes: herumschleichen, verstecken, Schlösser knacken, Leute bestehlen, Fallen aufspüren und beseitigen und meine Lieblingseigenschaft: Mutige Dussel von hinten abmurksen."~ */
  IF ~~ THEN REPLY #49699 /* ~"Erzähl weiter..."~ */ GOTO 14
  IF ~~ THEN REPLY #49700 /* ~"Ich glaub, das hab ich im großen und ganzen kapiert, Rattenknochen. Fangen wir mit der Ausbildung an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #49701 /* ~"Herumschleichen - sich im Dunkeln verstecken und sich ganz leise bewegen - ist echt nützlich. Lieber ein Blödmann und lebendig, als ein Schleifer und tot, was? Dadurch gehst du nicht nur Ärger aus 'm Weg. Wenn du *wirklich* mal jemanden abstechen willst, behältst du gleich die Oberhand... Ich erzähl dir später mehr darüber. Aber merk dir folgendes: Du kannst nicht rumschleichen, wenn dich schon jemand beobachtet."~ */
  IF ~~ THEN REPLY #49702 /* ~"Erzähl weiter..."~ */ GOTO 15
  IF ~~ THEN REPLY #49703 /* ~"Ich glaub, das hab ich im großen und ganzen kapiert, Rattenknochen. Fangen wir mit der Ausbildung an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #49704 /* ~"Leute zu bestehlen und Schlösser zu knacken ist auch 'ne feine Sache... Bessert die Kasse auf un' so. Paß nur auf, daß du schnell wegrennst, wenn du beim Stehlen erwischt wirst, und achte immer auf Fallen, wenn du 'n Schloß knackst. Wenn du nach Fallen suchst, dann sieh dich überall langsam und gründlich um... Das kann manchmal 'n bißchen dauern, bis du sie entdeckst."~ */
  IF ~~ THEN REPLY #49705 /* ~"Erzähl weiter..."~ */ GOTO 16
  IF ~~ THEN REPLY #49706 /* ~"Ich glaub, das hab ich im großen und ganzen kapiert, Rattenknochen. Fangen wir mit der Ausbildung an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #49707 /* ~"*Wenn* du eine Falle entdeckst, setze deine Geschicklichkeit ein, um das verdammte Ding zu entschärfen. Es ähnelt wirklich sehr dem Knacken eines Kombinationsschlosses."~ */
  IF ~~ THEN REPLY #49708 /* ~"Erzähl weiter..."~ */ GOTO 17
  IF ~~ THEN REPLY #49709 /* ~"Ich glaub, das hab ich im großen und ganzen kapiert, Rattenknochen. Fangen wir mit der Ausbildung an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49710 /* ~"Als letztes bringe ich dir den *Hinterhältigen Angriff* bei." Rattenknochen seufzt zufrieden. "Wenn du's schaffst, dich an 'nen Mistkerl ranzuschleichen, und wenn du ihn überfallen willst, dann greif den Schlucker von hinten an. Du hast 'ne viel größere Chance, ihn zu treffen, und wenn du ihn triffst, dann ist es besonders hart."~ */
  IF ~~ THEN REPLY #49711 /* ~"Also gut. Fangen wir mit dem Training an."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 13.1 14.1 15.1 16.1 17.0
  SAY #49712 /* ~Rattenknochen nickt. "In Ordnung, Schleifer... Zuerst mußt du dich 'n bißchen ausruh'n. Du bist zu verkrampft. Du mußt dich ab und zu von deinem Instinkt leiten lassen und deinem Gefühl vertrauen..." Und so beginnt deine Ausbildung zum Dieb.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #49713 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Ich habe mich von einem Mann namens Rattenknochen, den ich auf dem Lumpensammler-Platz getroffen habe, zum Dieb ausbilden lassen.~ */ GOTO 19
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #49714 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Ich habe mich von einem Mann namens Rattenknochen, den ich auf dem Lumpensammler-Platz getroffen habe, zum Dieb ausbilden lassen.~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #49715 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Ich habe mich von einem Mann namens Rattenknochen, den ich auf dem Lumpensammler-Platz getroffen habe, zum Dieb ausbilden lassen.~ */ GOTO 21
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #49716 /* ~Lerne soviel wie nur irgend möglich.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",2)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #49717 /* ~Ich habe mich von einem Mann namens Rattenknochen, den ich auf dem Lumpensammler-Platz getroffen habe, zum Dieb ausbilden lassen.~ */ GOTO 21
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #49718 /* ~Nach einer langen Trainingseinheit nickt dir Rattenknochen zufrieden zu. "Ich muß sagen, Schleifer - Ich hab noch nie jemand gekannt, der so schnell gelernt hast wie du. Ich würd fast behaupten, daß du das alles schon mal gemacht hast!"~ */
  IF ~~ THEN REPLY #49719 /* ~"Vielleicht hab ich das, Rattenknochen, und ich hab's einfach nur vergessen. Danke, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #49720 /* ~Nach einer langen Trainingseinheit nickt dir Rattenknochen zufrieden zu. "Ich muß sagen, Schleifer - Ich hab noch nie jemand gekannt, der so schnell gelernt hast wie du. Ich würd fast behaupten, daß du das alles schon mal gemacht hast!" Während Rattenknochen spricht, wird dir bewußt, *daß* du dies schon mal gemacht hast - daß du all diese Fertigkeiten einst besessen hast und daß dieses Ausbilden sie zu neuem Leben erweckt hat.~ */
  IF ~~ THEN REPLY #49721 /* ~"Vielleicht hab ich das, Rattenknochen, und ich hab's einfach nur vergessen. Danke, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 18.2 18.3
  SAY #49722 /* ~Nach einer langen Ausbildungseinheit nickt dir Rattenknochen zufrieden zu. "Ich muß sagen, Schleifer - Ich hab noch nie jemand gekannt, der so schnell gelernt hast wie du. Ich würd fast behaupten, daß du das alles schon mal gemacht hast!" Während Rattenknochen spricht, wird dir bewußt, *daß* du dies schon mal gemacht hast... daß du all diese Fertigkeiten einst besessen hast.~ */
  IF ~~ THEN REPLY #49723 /* ~"Vielleicht hab ich das, Rattenknochen, und ich hab's einfach nur vergessen. Danke, und leb wohl."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49724 /* ~Als verblichene Erinnerungen an das Schleichen in dunklen Korridoren und das Umgehen von tödlichen Fallen vor deinem geistigen Auge auftauchen, gelingt es dir, dich gut genug zu erinnern, um mehr zu 'lernen', als Rattenknochen dir beigebracht hat.~ */
  IF ~~ THEN REPLY #49725 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 7.0
  SAY #49726 /* ~"Ich weiß nicht, wieviel ich dir beibringen kann, wenn du schon Training gehabt hast, Schleifer. Aber wenn du deine Diebeskünste vernachlässigt hast, weil du 'n anderen Weg eingeschlagen hast - Kämpfen, oder Magie oder was auch immer - dann bring ich dich wieder auf Vordermann."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #49727 /* ~"Ich möchte wieder ein Dieb werden, Rattenknochen."~ */ GOTO 24
  IF ~~ THEN REPLY #49728 /* ~"Verstehe. Leb wohl, Rattenknochen."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #49729 /* ~Rattenknochen nickt. "Wie sieht's jetzt mit 'n bißchen Klimper aus... Fünfzig Kupfermünzen, und ich bring dich wieder in Form."~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #49730 /* ~"Hört sich gut an. Hier..."~ */ DO ~TakePartyGold(50)
~ GOTO 25
  IF ~  PartyGoldLT(50)
~ THEN REPLY #49731 /* ~"Ich hab nicht so viel..."~ */ GOTO 11
  IF ~~ THEN REPLY #49732 /* ~"Nein danke."~ */ GOTO 11
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #49733 /* ~"Du weißt hoffentlich, daß du jetzt mit allem aufhör'n mußt, was du bis jetzt getan hast, ja? Du kannst kein Krieger oder sonst was *und* ein Dieb sein. Bist du damit einverstanden, Schleifer?"~ */
  IF ~~ THEN REPLY #49734 /* ~"Ja."~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 26
  IF ~~ THEN REPLY #49735 /* ~"Nein, lieber nicht. Ich nehm meine Kupfermünzen zurück. Leb wohl, Rattenknochen."~ */ DO ~GivePartyGold(50)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #49736 /* ~"Du lernst schnell, Schleifer - wirklich schnell." Er sieht dich einen Moment neugierig an und zuckt dann mit den Achseln. "Das wär's. Jetzt bist du wieder auf der Höhe."~ */
  IF ~~ THEN REPLY #49737 /* ~"Danke, Rattenknochen. Leb wohl."~ */ EXIT
END
