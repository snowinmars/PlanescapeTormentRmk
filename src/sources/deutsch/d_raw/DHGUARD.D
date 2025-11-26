// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DHGUARD~

IF ~  NumTimesTalkedTo(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 0 // from:
  SAY #27728 /* ~Die große Figur mit der roten Rüstung steht regungslos da und bewacht offensichtlich die Treppe. Du erinnerst dich dunkel daran, daß die schmuckvolle Rüstung ihn als einen Offizier des Harmoniums ausweist, einen der Gesetzeshüter der Stadt.~ */
  IF ~~ THEN REPLY #27898 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #27900 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 8.0
  SAY #27923 /* ~Der Mann geht gemächlich zurück zur Straße. "Geh weiter"~ */
  IF ~~ THEN REPLY #27924 /* ~"Was machst du hier?"~ */ GOTO 11
  IF ~~ THEN REPLY #27925 /* ~"Ich hätte ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #27926 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 11.1 12.1 13.1 14.0
  SAY #27927 /* ~"Mich brauchst du nicht zu fragen. Geh weiter."~ */
  IF ~~ THEN REPLY #27928 /* ~"Was machst du hier?~ */ GOTO 11
  IF ~~ THEN REPLY #27929 /* ~"Ich brauch nur ein paar Antworten..."~ */ GOTO 3
  IF ~~ THEN REPLY #27930 /* ~"Ich brauche deine Hilfe..."~ */ GOTO 4
  IF ~~ THEN REPLY #27931 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27932 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #27933 /* ~Er schüttelt den Kopf. "Dann sprich mit einem Bewohner. Ich hab' hier zu tun... und ich werde meine Arbeit nicht vernachlässigen, nur um mit dir oder irgendwem sonst zu reden. Und jetzt geh weiter!"~ */
  IF ~~ THEN REPLY #27934 /* ~"Kannst du mir wenigstens verraten, was du hier machst?"~ */ GOTO 11
  IF ~~ THEN REPLY #27935 /* ~"Aber ich brauch deine Hilfe..."~ */ DO ~SetAnimState(Myself,ANIM_MIMESTANDTOSTANCE)
~ GOTO 4
  IF ~~ THEN REPLY #27936 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27937 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.2 3.1
  SAY #27938 /* ~Er hebt seine Waffe. "Du brauchst Hilfe? Ist irgendwo was passiert?"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #27939 /* ~"Nun ja,... nein. Ich hätte nur ein paar Fragen."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #27940 /* ~"Nun ja,... nein. Ich hätte nur ein paar Fragen."~ */ GOTO 6
  IF ~~ THEN REPLY #27941 /* ~"Nein, vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #27942 /* ~Er seufzt. "Ich versteh ja, daß du Fragen hast, und zu einem anderen Zeitpunkt und an einem anderen Ort würde ich dir ja auch helfen. Aber..." Er hält inne, um die Treppe hinunterzublicken. "Aber jetzt nicht, also... geh endlich weiter!"~ */
  IF ~~ THEN REPLY #27943 /* ~"Kannst du mir wenigstens verraten, was du hier machst?"~ */ GOTO 11
  IF ~~ THEN REPLY #27944 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27945 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #27946 /* ~"Jetzt hör mal zu, du Dussel, ich h..." Er hält inne, um mißtrauisch die Treppe hinunterzublicken und wendet sich dann wieder dir zu. "Ich habe hier einen Auftrag und den kann ich nicht erfüllen, wenn ich mit irgendsoeinem Typen quatsche, der alles mögliche sucht und wissen will, wie er wer weiß wohin kommt. Geh weiter!"~ */
  IF ~~ THEN REPLY #27947 /* ~"Kannst du mir wenigstens verraten, was du hier machst?"~ */ GOTO 11
  IF ~~ THEN REPLY #27948 /* ~"Und was ist, wenn ich einfach Lust hab', hier zu bleiben?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Patrolman_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #27949 /* ~Geh.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.3 3.2 5.1 6.1
  SAY #27950 /* ~Er zuckt mit den Achseln und seine Rüstung klirrt bei der Bewegung. "Du kannst hier gern rumstehen, aber die Gesetzeshüter nerven darfst du nicht. Verzieh dich lieber, bevor es hier... Stunk gibt. Leb wohl."~ */
  IF ~~ THEN REPLY #27951 /* ~"Kannst du mir wenigstens verraten, was du hier machst?"~ */ GOTO 11
  IF ~~ THEN REPLY #27952 /* ~Geh.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("MK_Counter","GLOBAL",1000)
~ THEN BEGIN 8 // from:
  SAY #27953 /* ~Der Offizier des Harmoniums scheint die Treppe neben sich zu bewachen. Du glaubst, diesem Mann schon mal begegnet zu sein, aber wegen der großen Helme und der gleichen Harmonium-Rüstung sind die Wachen schwer voneinander zu unterscheiden.
~ */
  IF ~~ THEN REPLY #27954 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #27955 /* ~Laß den Soldaten in Ruhe.~ */ EXIT
END

IF ~  GlobalGT("MK_Counter","GLOBAL",999)
~ THEN BEGIN 9 // from:
  SAY #27956 /* ~Du erkennst in dem Mann ein Mitglied des Harmoniums, einem Bund, der in letzter Zeit hinter dir her ist. Er scheint dich noch nicht bemerkt zu haben.~ */
  IF ~~ THEN REPLY #27957 /* ~"Sei gegrüßt..."~ */ GOTO 10
  IF ~~ THEN REPLY #27958 /* ~Verschwinde, bevor er dich sieht.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27959 /* ~Durch die Schlitze in seinem Helm kannst du sehen, wie die Augen des Mannes größer werden. "Da ist er!" Er will dich angreifen und brüllt: "Schnappt diesen Mann, tot oder lebendig!"~ */
  IF ~~ THEN REPLY #27960 /* ~Verteidige dich.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 1.0 2.0 3.0 5.0 6.0 7.0
  SAY #27961 /* ~Er zeigt auf die Treppe neben sich, die direkt unter die Stadt zu führen scheint. "Ich bewache die Treppe hier."~ */
  IF ~~ THEN REPLY #27962 /* ~"Warum? Wo führt sie hin?"~ */ GOTO 12
  IF ~~ THEN REPLY #27963 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #27964 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #27965 /* ~"Ins Untere Reich." Als er deinen Gesichtsausdruck sieht, fährt er fort. "Untersigil, vielleicht hast du den Namen ja schon mal gehört."~ */
  IF ~~ THEN REPLY #27966 /* ~"Gibt's einen Grund dafür, daß du Leute davon abhältst, diesen Ort zu betreten?"~ */ GOTO 13
  IF ~~ THEN REPLY #27967 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #27968 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #27969 /* ~Er kichert leise vor sich hin, wobei die Plättchen seiner Rüstung klirren. "Ich passe auf, was da *rauskommt*. Zeug, das hier in Sigil *nichts zu suchen hat*."~ */
  IF ~~ THEN REPLY #27970 /* ~"Was gibt's da unten?"~ */ GOTO 14
  IF ~~ THEN REPLY #27971 /* ~"Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #27972 /* ~"Das ist alles, was ich wissen wollte. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #27973 /* ~"Mach dir darüber keine Gedanken." Er sieht dich eine Weile neugierig an. "Du willst da runtergehen, stimmt's? Nun, dann sei auf der Hut. Es gibt da so Gerüchte, daß da unten schreckliche Kreaturen leben."~ */
  IF ~~ THEN REPLY #27974 /* ~"Danke. Ich hätte noch ein paar Fragen..."~ */ GOTO 2
  IF ~~ THEN REPLY #27975 /* ~"Danke für die Warnung. Leb wohl."~ */ EXIT
END
