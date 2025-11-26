// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~Du siehst einen Mann mit markanten Gesichtszügen. Er wirkt entschlossen und selbstsicher, aber irgendwie abwesend. Seine Augen sind klar und grausam. Er wirkt schwerfällig, aber gelassen, und er hält ein Messer in seinen schwieligen Händen. "Soso. Wieder ein Besucher für den Verrotteten William. Wenn du uns sagst, was du auf dem Herzen hast, Reisender, lassen wir dich vielleicht gehen."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~"Ich suche Pharod."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~"Ich suche nach einem Journal."~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~"Ich bin nur auf der Durchreise."~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~"Ich will keinen Ärger."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~"Schwarzrose will dich tot sehen."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~"Krystall will dich tot sehen."~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~"Das geht dich gar nichts an."~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~"Du willst zu Pharod, was? Na gut, laß uns einen Preis aushandeln und dann sag ich dir, wo du ihn findest."~ */
  IF ~~ THEN REPLY #3718 /* ~"Wieviel?"~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~"Tut mir leid, aber ich bin nicht interessiert."~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~Er mustert dich. "Nur fünf Münzen. Ein fairer Preis für jemanden, der so fertig aussieht wie du."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~"Also, wo ist er?"~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~"Ich bin nicht interessiert."~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~"Soviel habe ich nicht."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~"Du findest ihn in der Nähe des Lumpensammler-Platzes. Halt' nach ihm und seinen Sammlern Ausschau. Mit ihm dürftest du keine Probleme haben."~ */
  IF ~~ THEN REPLY #3659 /* ~"Das hat man mir schon mal gesagt!"~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~"Danke. Leb wohl."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~"Nun, ich weiß etwas, das dich bestimmt interessieren wird. Es gibt da eine Tussi namens Krystall. Sie ist die Obermackerin dieser Klingenengel-Schwestern. Mach sie kalt, dann reden wir über deine Belohnung."~ */
  IF ~~ THEN REPLY #3662 /* ~"Was springt für mich dabei raus?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~"Okay."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~"Ich werde das nicht tun. Ich bin doch kein Meuchelmörder."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~"Ich möchte erst darüber nachdenken."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~"Nun, man kriegt eben das, wofür man bezahlt hat. Und... was hast du hier zu suchen?"~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~"Ich suche nach einem Journal."~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~"Ich bin nur auf der Durchreise."~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~"Ich will keinen Ärger."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~"Schwarzrose will dich tot sehen."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~"Krystall will dich tot sehen."~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~"Das geht dich nichts an."~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~"Hab' ich dir nicht gerade gesagt, daß wir drüber reden, wenn du das Gemetzel hinter dir hast? Und das war auch genauso gemeint, Dussel. Was ist? Tust du's oder tust du's nicht?"~ */
  IF ~~ THEN REPLY #3674 /* ~"Ich würd nur gern wissen, was für mich dabei rausspringt."~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~"Nein. Ich bin kein Meuchelmörder."~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~"Klar. Ich mach's."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~"Hervorragend! Dann komm wieder, wenn du alles erledigt hast. Und damit meine ich erledigt. Jammer mir bloß nicht vor, daß du's nicht geschafft hast. Wir haben eine Abmachung und daran halten wir uns."~ */
  IF ~~ THEN REPLY #3693 /* ~"Mach dir deshalb keine Sorgen."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~"Hast du dir das auch gut überlegt? Man sollte nichts überstürzen. Wie wär's mit zweihundert Münzen?"~ */
  IF ~~ THEN REPLY #3694 /* ~"Wie wär's mit vierhundert?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~"Nein. Ich werde es nicht tun."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~"Okay."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Der Verrottete William hat mir 200 Münzen angeboten, wenn ich Krystall, die Anführerin einer rivalisierenden Bande in der Gasse der Gefährlichen Ecken, beseitige. Ich habe angenommen.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~"Du kriegst, was du verdienst, Dussel. Zweihundert Münzen! Einverstanden?"~ */
  IF ~~ THEN REPLY #3681 /* ~"Wie wär's mit ein bißchen mehr?"~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~"Ja."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Der Verrottete William hat mir 200 Münzen angeboten, wenn ich Krystall, die Anführerin einer rivalisierenden Bande in der Gasse der Gefährlichen Ecken, beseitige. Ich habe angenommen.~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~"Nein. Ich werde es nicht tun."~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~"Okay, dreihundert. Das ist mein letztes Angebot."~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~"Nein. Ich werde es nicht tun."~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~"Abgemacht. Sie ist so gut wie tot."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~Der Verrottete William hat mir 300 Münzen angeboten, wenn ich Krystall, die Anführerin einer rivalisierenden Bande in der Gasse der Gefährlichen Ecken, beseitige. Ich habe angenommen.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~"Dann eben nicht. Schade eigentlich, daß es so laufen mußte." Er erhebt seine Stimme. "Schlitzer! Schafft diesen Abschaum fort!"~ */
  IF ~~ THEN REPLY #3701 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~"Ein Journal also? Nicht vielleicht ein Tagebuch? Oder ein Rechnungsbuch? Muß es unbedingt ein Journal sein?" Er hält inne, aber bevor du etwas sagen kannst, redet er weiter: "Falls es hier gelandet wäre, wäre es sicher ins Feuer gewandert. Ich hab' jedenfalls keins gesehen."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~"Ich suche Pharod."~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~"Ich bin auf der Durchreise."~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~"Ich will keinen Ärger."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~"Schwarzrose will dich tot sehen."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~"Krystall will dich tot sehen."~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~"Das geht dich gar nichts an."~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~"Soso, auf der Durchreise? So ein Pech. Niemand darf hier passieren, ohne dafür einen gewissen Preis zu zahlen."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~"Ich habe diesen Preis bereits gezahlt."~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~Täuschung: "Ich habe diese Gebühr bereits gezahlt."~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~"Wieviel?"~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~"Ich will mal sehen, wie du das Geld einforderst."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~Er lacht und hebt eine Hand in die Höhe. "Nicht so schnell, Freundchen. Das ist nicht der Preis, von dem ich rede. Ich meine etwas völlig anderes: Es gibt da eine Dussel-Frau, die eine feindliche Bande am anderen Ende dieser Gasse anführt. Ich möchte, daß du ihren Namen ins Totenbuch schreibst... und zwar mit Blut. Ihr Name ist Krystall."~ */
  IF ~~ THEN REPLY #3713 /* ~"Was springt für mich dabei raus?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~"Okay."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~"Ich werde das nicht tun. Ich bin doch kein Meuchelmörder."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~"Ich möchte erst darüber nachdenken."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~"Es ist ein kleiner Blutzoll. Sei froh, daß es nicht dein eigenes Blut, sondern das eines anderen Dussels namens Krystall ist. Sie hat sich die Frechheit erlaubt, einen Teil meines Territoriums für sich zu beanspruchen. Ich möchte, daß du sie findest und verschwinden läßt - töte sie."
~ */
  IF ~~ THEN REPLY #3717 /* ~"Was springt für mich dabei raus?"~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~"Einverstanden."~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~"Ich werde das nicht tun. Ich bin doch kein Meuchelmörder."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~"Ich möchte erst darüber nachdenken."~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~"Sie ist bereits tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~"Ja, dann kannst du froh sein, daß ich dir nicht übel gesinnt bin. Du mußt mir nur einen kleinen Gefallen erweisen. Und laß mich gefälligst ausreden!"~ */
  IF ~~ THEN REPLY #3723 /* ~"Was soll ich tun?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~"So ist das? Hast du vor, deinen Auftrag auszuführen?"~ */
  IF ~~ THEN REPLY #3724 /* ~"Ja."~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~"Ich bin mir nicht sicher."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~"Dann mal keine Zeit verschwenden, was? Meine Schlitzer werden mich schon verteidigen."~ */
  IF ~~ THEN REPLY #3727 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~"Das solltest du aber, Junge. *Ich* weiß, daß du gleich stirbst." Er führt eine kleine Handbewegung aus.~ */
  IF ~~ THEN REPLY #34384 /* ~"Wie meinst du das?"~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~"Das denkst du vielleicht, aber alles, was hier geschieht, geht mich was an. Ich frage dich nochmal... was willst du hier?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~"Ich suche Pharod."~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~"Ich suche ein Journal."~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~"Ich will keinen Ärger."~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~"Schwarzrose will dich tot sehen."~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~"Krystall will dich tot sehen."~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~"Ich sagte, daß geht dich nichts an."~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~"Dumm, daß du so was sagen mußt. Noch dümmer, daß du gleich sterben wirst." Er gibt mit seinem Arm ein Signal und zieht sein Messer.~ */
  IF ~~ THEN REPLY #34392 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~"Haste den wachsamen Schwarzrose schon gefunden? Haste ihn wie verabredet umgelegt?"~ */
  IF ~~ THEN REPLY #34394 /* ~"Noch nicht."~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~"Ich hab' ihn gefunden, aber er hat mich überredet, dich statt dessen umzubringen."~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~"Er ist tot. Jetzt will ich meinen Lohn."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~"Noch nicht? Unfähig, was? Sieh zu, daß du ihn findest und komm erst wieder, wenn du den Auftrag erledigt hast!" Er wendet sich wutentbrannt ab.~ */
  IF ~~ THEN REPLY #34397 /* ~"Ich hätte vorher ein paar Fragen...."~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~"Nun gut."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~Die Augen des Verrotteten William leuchten auf. "Haste sie alle fertiggemacht, ja? Dann hab' ich hier deine Belohnung. Muß sie nur noch finden..." Er zückt seinen Dolch und will ihn dir in den Bauch stoßen.~ */
  IF ~~ THEN REPLY #34399 /* ~Kämpfe.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~Flieh.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~Seine Augen blitzen wie Dolche im Mondschein. "Haste die armselige Schlampe wie abgemacht getötet, oder willste schon wieder mit deinem Versagen aufschneiden?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~"Noch nicht."~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~"Sie ist tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~Er schüttelt seinen Kopf. "Selbst diese armen Schlucker, die sich meine Kameraden nennen, können das, was sie behaupten zu können. Aber du bist einfach nur zu nix nütze. Wir werden der Stadt 'nen Gefallen erweisen, wenn wir dich aus dem Weg schaffen." Er zieht sein Messer.~ */
  IF ~~ THEN REPLY #34403 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~"Tatsächlich, hast deinen Auftrag erledigt, was. Jetzt mußt du nur noch diesen verdammten Killer aus dem Weg schaffen, der mir reihenweise meine Männer umlegt. Ich zahl dir auch das Doppelte. Na, wie hört sich das an? Das Angebot sollteste nicht ausschlagen, wirklich nicht."~ */
  IF ~~ THEN REPLY #34405 /* ~"Ich fürchte, ich muß das Angebot ablehnen."~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~"Okay."~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~"Er ist bereits tot. Und nun hätte ich gern meinen Lohn."~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~"Bist du dir da sicher? Du willst den Auftrag nicht?"~ */
  IF ~~ THEN REPLY #34407 /* ~"Nein."~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~"Wenn ich drüber nachdenke, das Doppelte klingt gut. Ich mach's."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~"Das ist wirklich schade. Nun gut. Jungs, es wird Zeit, diesen Unrat loszuwerden." Er zieht langsam sein Messer und kommt auf dich zu...~ */
  IF ~~ THEN REPLY #34409 /* ~Kämpf.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~Flieh.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~"Gut, gut. Du wirst ihn durch die Gasse schleichen sehen. Er bleibt, glaub ich, meist im Schatten."~ */
  IF ~~ THEN REPLY #34411 /* ~"Ich werde ihn finden."~ */ JOURNAL #31878 /* ~Der Verrottete William hat mich gebeten, den Killer Schwarzrose zu töten, der offensichtlich in der Gasse der Gefährlichen Ecken herumschleicht.~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~"Haste diese armselige Schlampe Krystall schon erledigt?"~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~"Noch nicht."~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~"Sie ist tot."~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~Er spricht durch die Zähne, aber jedes Wort ist deutlich zu verstehen. "Komm... nicht... wieder,... bevor... sie... nicht... tot... ist. Ist... das... klar?" Er wendet sich ab. "Ich will dich nicht mal aus der Ferne sehen, solang es sie noch gibt."~ */
  IF ~~ THEN REPLY #34414 /* ~"Wie du willst. Leb wohl."~ */ EXIT
END
