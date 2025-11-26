// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBERROG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBERROG~

IF ~  Global("Current_Area","GLOBAL",704)
Global("Know_Berrog","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #3184 /* ~Du siehst einen mausartigen Mann mit unruhigen, verängstigten Augen. "Bitte tu mir nicht weh!" flüstert er deutlich hörbar. "Sie töten mich, wenn sie mich finden!"~ */
  IF ~~ THEN REPLY #3185 /* ~"Wer wird dich töten?"~ */ GOTO 5
  IF ~~ THEN REPLY #56942 /* ~"Wer bist du?"~ */ GOTO 6
  IF ~~ THEN REPLY #56943 /* ~"Was machst du hier?"~ */ GOTO 7
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",0)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #56944 /* ~Du siehst einen mausartigen Mann mit unschuldigem Gesicht. Tränen strömen über seine Wangen. Er ist unter einem Wagen eingeklemmt, der ihm langsam das Leben aus dem Leib preßt. Er sieht dich flehentlich an. "Bitte, mein Freund... du mußt mich her rausholen. Ich kann doch nicht hier sterben..."~ */
  IF ~~ THEN REPLY #56945 /* ~"In Ordnung, ich stemme den Wagen weg."~ */ GOTO 10
  IF ~~ THEN REPLY #56946 /* ~"Vergiß es."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~  Global("Current_Area","GLOBAL",900)
Global("Know_Berrog","GLOBAL",1)
Global("Cart_Trap","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #56947 /* ~Du erblickst Berrog Flinkschuh, den Möchtegern-Deva-Befreier. Er ist unter einem Wagen eingeklemmt, der eine Achse verloren hat. "Bitte, mein Freund... du mußt mich hier rausholen."~ */
  IF ~~ THEN REPLY #56948 /* ~"In Ordnung, ich stemme den Wagen weg."~ */ GOTO 10
  IF ~~ THEN REPLY #56949 /* ~"Vergiß es."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 3 // from:
  SAY #56951 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #56952 /* ~Null Node~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 6.1 7.2 8.2
  SAY #56954 /* ~"Die Wachen. Sie sind hinter mir her. Ich glaube, ich habe jemanden mit einer Frage beleidigt, oder irgend etwas Falsches zur falschen Person gesagt. Ich habe nur meine Meinung gesagt, aber mir scheint, man muß hier auf eine ganz bestimmte Weise sprechen. Die sind doch alle korrupt!"~ */
  IF ~~ THEN REPLY #56956 /* ~"Wer bist du überhaupt?"~ */ GOTO 6
  IF ~~ THEN REPLY #56957 /* ~"Was machst du hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #56958 /* ~"Wo kommst du her?"~ */ GOTO 8
  IF ~~ THEN REPLY #56960 /* ~"Dann geh."~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 0.1 5.0 7.1 8.0
  SAY #56962 /* ~"Ich bin Berrog Flinkschuh, Reisender und Problemlöser. Man könnte mich auch einen Dieb nennen, aber ich nenne mich lieber Ingenieur - Fallen und Rätsel und so weiter. Ich nutze meine Fähigkeiten nur für gute Zwecke - ich hasse es, jemandem zu schaden. Ich glaube, sie verwenden hier Motoren für verschiedene Zwecke." Er erschauert.~ */
  IF ~~ THEN REPLY #56965 /* ~"Was machst du hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #56966 /* ~"Wer wird dich umbringen?"~ */ GOTO 5
  IF ~~ THEN REPLY #56968 /* ~"Dann geh."~ */ GOTO 9
END

IF ~~ THEN BEGIN 7 // from: 0.2 5.1 6.0 8.1
  SAY #56969 /* ~"Ich bin nach Verdammnis gekommen, weil ich gehört hatte, daß hier ein Deva gefangengehalten wird. Und weil ich ein paar Freunde bei den Archonen auf dem Berg Zelestia habe, hab' ich gedacht, ich könnte hier helfen. Aber diese Stadt... dieser Ort ist ein Sündenpfuhl, man kann niemandem trauen. Wie kann man nur hier leben? Ich muß hier raus!"~ */
  IF ~~ THEN REPLY #56970 /* ~"Erzähl mir vom Berg Zelestia."~ */ GOTO 8
  IF ~~ THEN REPLY #56971 /* ~"Wer bist du überhaupt?"~ */ GOTO 6
  IF ~~ THEN REPLY #56972 /* ~"Wer wird dich umbringen?"~ */ GOTO 5
  IF ~~ THEN REPLY #56973 /* ~"Dann geh."~ */ GOTO 9
END

IF ~~ THEN BEGIN 8 // from: 5.2 7.0
  SAY #56974 /* ~Seine Augen blicken verklärt. "Dort haben alle Dinge ihren Platz, und alle Dinge sind schön. Scharen geflügelter Archonen schweben durch die Luft, in ausgewogenen Mustern, die einem das Herz brechen könnten. Die Früchte sind größer, das Wild ebenso, und alle Häuser stehen einem offen. Dennoch streben wir ständig danach, uns zu verbessern. Wir testen unsere Tugenden und bewegen uns näher an die Güte heran... Ich sollte so schnell wie möglich wieder nach Hause..."~ */
  IF ~~ THEN REPLY #56975 /* ~"Wer bist du überhaupt?"~ */ GOTO 6
  IF ~~ THEN REPLY #56976 /* ~"Was machst du hier?"~ */ GOTO 7
  IF ~~ THEN REPLY #56977 /* ~"Wer versucht, dich umzubringen?"~ */ GOTO 5
  IF ~~ THEN REPLY #56978 /* ~"Dann geh."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 5.3 6.2 7.3 8.3
  SAY #56979 /* ~Er sieht dich völlig ungläubig an. "Danke! Du wirst mich nicht wiedersehen!" Er huscht davon.~ */
  IF ~~ THEN REPLY #56980 /* ~"Leb wohl."~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.0 2.0
  SAY #56981 /* ~"Warte!... Ist... ist der andere Typ noch auf der anderen Seite gefangen?"~ */
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #56982 /* ~"Er ist noch da."~ */ GOTO 12
  IF ~  Global("Burgher_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #56983 /* ~"Er ist schon tot."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 1.1 2.1 13.1
  SAY #56992 /* ~"Bitte... bitte..." Er dreht sein Gesicht in den Schlamm und weint leise vor sich hin.~ */
  IF ~~ THEN REPLY #56993 /* ~Geh weg.~ */ EXIT
  IF ~~ THEN REPLY #56994 /* ~Töte ihn.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_2","GLOBALGood",-3)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0
  SAY #56995 /* ~"Du... du mußt einen Weg finden, auch ihn zu retten. Lieber ihn als mich. Ich glaube, er war der Bürgermeister von diesem Stall... oder wie immer die das hier nennen."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 28
END

IF ~~ THEN BEGIN 13 // from: 10.1
  SAY #56996 /* ~"Dann hebe den Wagen an, mein Freund..."~ */
  IF ~~ THEN REPLY #56997 /* ~Stemme den Wagen weg.~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #56998 /* ~"Vergiß es. Vielleicht komm ich später nochmal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Berrog_1","GLOBALGood",-1)
~ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 18.1
  SAY #56999 /* ~Er kriecht hervor, als du den Wagen hochstemmst. "Verbindlichsten Dank, mein Freund. Ich habe... genug von diesem Stall. Ich gehe zurück zum Berg Zelestia. Ich hoffe, deine guten Taten werden dir angerechnet... wo auch immer du hingehst." Er blickt zu dem Deva hinüber, der auf dem Balkon steht. Ich kann es nicht glauben, daß ich herkam... um das zu sehen."~ */
  IF ~~ THEN REPLY #57000 /* ~"Gute Absichten und so weiter... Leb wohl."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from:
  SAY #57001 /* ~"Auuu! Da ist jemand auf der anderen Seite! Ihr bringt mich um!"~ */
  IF ~~ THEN REPLY #57002 /* ~"Wer bist du?"~ */ DO ~SetGlobal("Know_Berrog","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #57003 /* ~"Was machst du da unten?"~ */ GOTO 17
  IF ~~ THEN REPLY #57004 /* ~Stemme weiter: "So ein Pech."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #57005 /* ~"Mein Name... ist Berrog Flinkschuh. Ich bin nach Verdammnis gekommen, um den Deva zu befreien... die Kreatur des Guten... aber ich war falsch informiert. Ich hätte nie herkommen sollen..."~ */
  IF ~~ THEN REPLY #57006 /* ~"Was machst du da unten?"~ */ GOTO 17
  IF ~~ THEN REPLY #57007 /* ~Stemme den Wagen vom Stadtverwalter: "Wahrscheinlich nicht."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57008 /* ~Stemme den Wagen von Berrog.~ */ EXTERN ~DBURGHER~ 23
  IF ~~ THEN REPLY #57009 /* ~"Vielleicht komme ich besser später nochmal vorbei... Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.0
  SAY #57010 /* ~"Ich bin... aus der Stadt geflohen.... als sie wegzugleiten begann. Ich war... in seiner Nähe... und er griff nach mir. Der Wagen fiel aus dem Himmel, und er versuchte, mich unter ihn zu stoßen... und selbst zu entkommen. Aber ich bitte dich trotzdem... ihn ebenfalls zu befreien."~ */
  IF ~~ THEN EXTERN ~DBURGHER~ 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #57012 /* ~"Du hast keinen Nutzen davon, mich zu befreien... Das bekenne ich. Aber sicherlich wird dir... das Glück hold sein... wenn du mich uneigennützig rettest... oder besser noch, uns beide rettest."~ */
  IF ~~ THEN REPLY #57013 /* ~Stemme den Wagen vom Stadtverwalter: "Ja, aber er ist nützlich."~ */ DO ~Kill(Myself)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ EXTERN ~DBURGHER~ 18
  IF ~~ THEN REPLY #57014 /* ~Stemme den Wagen von Berrog: "Er ist es nicht wert."~ */ DO ~Kill("Burgher")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Berrog_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",1)
~ GOTO 14
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57015 /* ~"Wie wär's, wenn ich euch beide da raushole? Meine Kameraden und ich schaffen das, wenn wir uns ins Zeug legen."~ */ EXTERN ~DBURGHER~ 26
  IF ~~ THEN REPLY #57016 /* ~"Ich versuche, einen Weg zu finden. Leb wohl."~ */ EXIT
END
