// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER8.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER8~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17772 /* ~Diese alte Frau steht still an der Wand und läßt ihren Blick in die Ferne schweifen. Die ganze Hektik um sie herum scheint sie wenig zu beeindrucken. In der Hand hält sie eine hölzerne Stange, an der Dutzende kleine Fische hängen.~ */
  IF ~~ THEN REPLY #17790 /* ~"Sei gegrüßt..."~ */ GOTO 2
  IF ~~ THEN REPLY #17791 /* ~Laß sie in Ruhe.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
!Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #17773 /* ~"Hallo, mein Herr, feine Fische..." Dann erkennt sie dich. "Oh, Ihr seid es wieder."~ */
  IF ~~ THEN REPLY #22136 /* ~"Ja, ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #17793 /* ~"Ich bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #17774 /* ~"Oh... hallo, mein Herr." Sie kneift die Augen zusammen, um dich besser zu erkennen. "Oh! Und ich hielt Euch schon für einen meiner Stammkunden." Sie zeigt dir ihre Stange mit den Fischen. "Thunfisch, mein Herr? Makrelen? Oder Seegurken?"~ */
  IF ~~ THEN REPLY #17794 /* ~"Keinen Fisch, danke. Ich hätte da ein paar Fragen..."~ */ GOTO 3
  IF ~~ THEN REPLY #17795 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #17775 /* ~"Hmmm..." Sie runzelt die Stirn, preßt ihre Lippen zusammen und schaut über deine Schulter hinweg.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22143 /* ~"Hier ist ein Krug. Kann ich da jetzt die Fischtinte hineingefüllt bekommen?" ~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22108 /* ~"Hast du mal von einem *Brogota-Flossenfisch* gehört? Mir wurde gesagt, er würde Tinte aus seinen Kiemen bluten."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17796 /* ~Dreh dich um, um zu sehen, wo sie hinstarrt.~ */ GOTO 4
  IF ~~ THEN REPLY #17797 /* ~"Äh... kannst du mir was über diese Gegend erzählen?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17798 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17799 /* ~"Ich habe irgendwo ein Journal verloren. Hast du eins gesehen?"~ */ GOTO 15
  IF ~~ THEN REPLY #17800 /* ~"Vergiß es... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2
  SAY #17776 /* ~Hinter dir siehst du nichts Besonderes. Als du dich wieder zurückdrehst, erwischst du sie dabei, wie sie dich beobachtet... Sie schaut schnell weg und läßt den Blick wieder in die Ferne schweifen.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22149 /* ~"Hier ist ein Krug. Kann ich da jetzt die Fischtinte hineingefüllt bekommen?"~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22109 /* ~"Hast du mal von einem *Brogota-Flossenfisch* gehört? Mir wurde gesagt, er würde Tinte aus seinen Kiemen bluten."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17801 /* ~"Was? Komme ich dir bekannt vor?"~ */ GOTO 5
  IF ~~ THEN REPLY #17802 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17803 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17804 /* ~"Ich habe irgendwo ein Journal verloren. Hast du eins gesehen?"~ */ GOTO 15
  IF ~~ THEN REPLY #17805 /* ~"Äh... leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.2 15.2
  SAY #17777 /* ~"Meine Güte, nein!" Sie hält kurz inne. "Doch, das tut Ihr."~ */
  IF ~~ THEN REPLY #17806 /* ~"Hast du mich denn schon mal gesehen?"~ */ GOTO 6
  IF ~~ THEN REPLY #17807 /* ~"Interessant. Leb wohl, Fischfrau."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #17778 /* ~"Ja... entweder Euch oder einen, der Euch ähnlich sieht, mein Herr. Ist schon 'ne Weile her."~ */
  IF ~~ THEN REPLY #17808 /* ~"Erzähl's mir..."~ */ GOTO 7
  IF ~~ THEN REPLY #17809 /* ~"Interessant. Leb wohl, Fischfrau."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 17.0
  SAY #17779 /* ~"Wißt Ihr, mein Herr... Meine Augen sind nicht mehr so gut. Das waren sie schon damals nicht. Aber ich dachte, ich hätte Euch schon mal gesehen, mit ein paar Leuten im Schlepptau."~ */
  IF ~~ THEN REPLY #17810 /* ~"Wie sahen diese Leute aus?"~ */ GOTO 8
  IF ~~ THEN REPLY #17811 /* ~"Interessant. Leb wohl, Fischfrau."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #17780 /* ~"Schwer zu sagen, mein Herr... Ist schon lange her, und es ging so schnell. Aber ich erinnere mich, wie stolz ihr wart... Da war diese Frau, die Euch hinterherlief und versuchte, Euch anzuhalten. Sie wollte mit Euch reden... Doch Ihr habt sie weggestoßen."~ */
  IF ~~ THEN REPLY #17812 /* ~"Was ist dann passiert?"~ */ GOTO 9
  IF ~~ THEN REPLY #17813 /* ~"Interessant. Leb wohl, Fischfrau."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #17781 /* ~"Sie war schön... traurig und zornig zugleich. Sie blieb einen Augenblick lang stehen, bevor sie sich wieder an Eure Fersen heftete."~ */
  IF ~~ THEN REPLY #17814 /* ~"Du hast gesagt, da war eine Gruppe? Wer war noch da?"~ */ GOTO 10
  IF ~~ THEN REPLY #17815 /* ~"Interessant. Leb wohl, Fischfrau."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #17782 /* ~Sie zuckt mit den Achseln. "Und es waren noch zwei Männer dabei, mein Herr... Leider erinnere ich mich nur noch an einen, und der war groß und schlank, mit einer Fahne, die man schon von weitem riechen konnte. Außerdem sah er aus, als hätte er schon lang keine Seife mehr gesehen. Er klebte die ganze Zeit an Euren Fersen, ohne je ein Wort zu sagen. Und diese Frau ignorierte er völlig, obwohl sie ihn bei dem Versuch, Euch zu stoppen, ständig anrempelte. Mehr weiß ich nicht mehr, mein Herr."~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17816 /* ~Gib ihr Kupfermünzen dafür, daß sie sich Zeit für dich genommen hat.~ */ GOTO 11
  IF ~~ THEN REPLY #17817 /* ~"Interessant. Danke, und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #17783 /* ~Wieviel gibst du dem Fischweib?~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #17818 /* ~Eine Kupfermünze.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(1)
~ GOTO 12
  IF ~  PartyGoldGT(4)
~ THEN REPLY #17819 /* ~Fünf Kupfermünzen.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(5)
~ GOTO 13
  IF ~  PartyGoldGT(9)
~ THEN REPLY #17820 /* ~Zehn Kupfermünzen.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(10)
~ GOTO 13
  IF ~  PartyGoldGT(19)
~ THEN REPLY #17821 /* ~Zwanzig Kupfermünzen.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Fishwife_1","GLOBALGood",1)
TakePartyGold(20)
~ GOTO 14
  IF ~~ THEN REPLY #17822 /* ~Nichts: "Interessant. Danke und leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #17784 /* ~Sie lächelt und nickt. "Ich danke Euch, mein Herr."~ */
  IF ~~ THEN REPLY #17823 /* ~"Natürlich. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1 11.2
  SAY #17785 /* ~"Meine Güte! Danke, mein Herr, sehr freundlich. Möge der Schatten der Dame über Euch vorbeiziehen."~ */
  IF ~~ THEN REPLY #17824 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.3
  SAY #17786 /* ~Sie starrt eine Weile auf die Handvoll Münzen, als wüßte sie nicht genau, was sie damit anfangen soll. Als du ihr die Hand noch weiter entgegenstreckst, nimmt sie den Klimper schließlich und lacht nervös. "Oh... oh! Meine Güte! Danke, mein Herr! Möge Euch der Schatten der Dame erspart und das Glück gnädig bleiben! Hier seid Ihr immer willkommen."~ */
  IF ~~ THEN REPLY #17825 /* ~"Danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 3.3 3.4 3.5 4.3 4.4 4.5 15.3 15.4 15.5
  SAY #17787 /* ~Sie schüttelt den Kopf, die Lippen fest zusammengepreßt, und schaut weiterhin über deine Schulter hinweg. Jedesmal wenn du nach hinten schielst, um zu sehen, was ihre Aufmerksamkeit erregt, und dich dann wieder zurückdrehst, erwischst du sie dabei, wie sie dich beobachtet, dann aber plötzlich wegschaut.~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22153 /* ~"Hier ist ein Krug. Kann ich da jetzt die Fischtinte hineingefüllt bekommen?" ~ */ DO ~DestroyPartyItem("Tankard",FALSE)
GiveItemCreate("TankardF",Protagonist,1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22112 /* ~"Hast du mal von einem *Brogota-Flossenfisch* gehört? Mir wurde gesagt, er würde Tinte aus seinen Kiemen bluten."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17826 /* ~"Was? Komme ich dir bekannt vor?"~ */ GOTO 5
  IF ~~ THEN REPLY #17827 /* ~"Kannst du mir was über diese Gegend erzählen?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17828 /* ~"Kennst du einen Mann namens Pharod?"~ */ GOTO 15
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17829 /* ~"Ich habe irgendwo ein Journal verloren. Hast du eins gesehen?"~ */ GOTO 15
  IF ~~ THEN REPLY #17830 /* ~"Äh... leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Good_Fishwife_1","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17788 /* ~"Sehr erfreut, Euch zu sehen, mein Herr! Was kann ich diesmal für Euch tun?"~ */
  IF ~  Global("Mebbeth_Quest","GLOBAL",9)
PartyHasItem("Tankard")
~ THEN REPLY #22157 /* ~"Hier ist ein Krug. Kann ich da jetzt die Fischtinte hineingefüllt bekommen?" ~ */ DO ~TransformPartyItem("Tankard","TankardF",1,0,0)
SetGlobal("Mebbeth_Quest","GLOBAL",10)
~ GOTO 20
  IF ~  Global("Mebbeth_Quest","GLOBAL",7)
~ THEN REPLY #22116 /* ~"Hast du mal von einem *Brogota-Flossenfisch* gehört? Mir wurde gesagt, er würde Tinte aus seinen Kiemen bluten."~ */ DO ~SetGlobal("Mebbeth_Quest","GLOBAL",8)
~ GOTO 18
  IF ~~ THEN REPLY #17831 /* ~"Kannst du mir noch mal erzählen, wie es war, als du mich damals gesehen hast?"~ */ GOTO 17
  IF ~~ THEN REPLY #17832 /* ~"Nichts, bin nur zufällig vorbeigekommen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.2
  SAY #17789 /* ~"Oh, selbstverständlich, mein Herr!"~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 18 // from: 3.1 4.1 15.1 16.1
  SAY #22105 /* ~Sie blinzelt und nickt dann. "Ja, dieser Fisch... ein seltsamer Fisch ist das. Wenige haben überhaupt von ihm gehört, und noch weniger würden ihn essen wollen... schwer zu töten, und selbst tot scheint er noch zu leben. Nicht viele Leute wollen in etwas beißen, das sich noch bewegt."~ */
  IF ~~ THEN REPLY #22120 /* ~"Hast du einen?"~ */ JOURNAL #21904 /* ~Meir'am hat den Fisch, aber *wie immer* ist das nicht ganz so einfach. Ich brauche etwas, worin ich die Tinte transportieren kann, eine Tasse oder einen Humpen zum Beispiel. Vielleicht hat einer der Kaufmänner auf dem Platz etwas, das ich nehmen kann.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #22106 /* ~"Ja... aber du brauchst etwas, wo du die Tinte reintun kannst. Hast du zufällig eine Schüssel oder eine Tasse?"~ */
  IF ~  CheckStatLT(Protagonist,15,INT)
~ THEN REPLY #22126 /* ~"Toll... ich geh eine suchen, und komm dann wieder."~ */ EXIT
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22127 /* ~"Hmmm. Oder einen Krug... vielleicht verkauft ja einer der Händler so was. Auf bald."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.0 4.0 15.0 16.0
  SAY #22107 /* ~Sie nickt und nimmt einen Fisch von dem Stab in ihrer Hand... Er zuckt, und als sie beginnt, ihn wie einen Lappen auszuwringen, fängt er an, mit seinem Körper herumzupeitschen. Sie wringt den Fisch, bis blauschwarze Flüssigkeit aus seinen Kiemen zu sickern beginnt. Als dein Krug fast voll ist, lockert sie ihren Griff und wirft den zuckenden Fisch in einen Sack neben ihr.~ */
  IF ~~ THEN REPLY #22129 /* ~"Danke, und leb wohl.~ */ JOURNAL #21905 /* ~Ich habe endlich die Tinte, einen ganzen Humpen voll. Jetzt kann ich dieses eklige Zeug zu Mebbeth mitnehmen... Wer weiß, vielleicht bringe ich sie sogar dazu, es zu trinken.~ */ EXIT
END
