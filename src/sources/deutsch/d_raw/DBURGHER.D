// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBURGHER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DBURGHER~

IF ~  NumTimesTalkedTo(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57017 /* ~Du siehst einen alternden Githzerai. Er ist unter den Rädern eines Wagens eingeklemmt, der während des Chaos auf ihn gefallen sein muß. Er spuckt Blut und grinst dich an. "Du wirst mir nicht helfen, oder? Deswegen sind wir überhaupt hergekommen..." Er lacht leise.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57018 /* ~"Wer bist du?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57019 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57020 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57021 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57022 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57023 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Berrog_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #57024 /* ~Der Githzerai hustet wieder. "Bist du wieder gekommen, um mich zum Besten zu halten? Den Gefallen tue ich dir nicht."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57025 /* ~"Wer bist du?"~ */ EXTERN ~DDAKKON~ 186
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57026 /* ~"Wer bist du?"~ */ GOTO 4
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57027 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57028 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ GOTO 5
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57029 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 187
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57030 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 2 // from:
  SAY #57031 /* ~"Ja, lege die Klinge weg, du Zerth-Schwein. Ich spucke auf deine Lehren. Trage deine Ketten noch eine Weile." Der Githzerai dreht seinen Kopf zu dir um. "Ich bin Tovus Giljaf. Ich war einmal der Stadtverwalter hier... bis der verfluchte Deva ausgebrochen ist."~ */
  IF ~~ THEN REPLY #57032 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #57033 /* ~"Du warst der Stadtverwalter?"~ */ GOTO 9
  IF ~~ THEN REPLY #57034 /* ~"Ich halte eigentlich nicht viel von dieser Stadt."~ */ GOTO 10
  IF ~~ THEN REPLY #57035 /* ~"Laß mich dich da rausholen."~ */ GOTO 5
  IF ~~ THEN REPLY #57036 /* ~"In dem Fall laß ich dich sterben. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #57038 /* ~"Ja, bring mich nur um, du Zerth-Schwein. Tu, was dir dein Herr befiehlt." Der alte Githzerai kichert blutend vor sich hin, bis Dak'kon ihm die Kehle durchschneidet.~ */
  IF ~~ THEN REPLY #57039 /* ~"Gut gemacht, Dak'kon."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1
  SAY #57040 /* ~"Ich bin Tovus Giljaf. Ich war der Verwalter dieser Stadt... bis der verfluchte Deva ausgebrochen ist."~ */
  IF ~~ THEN REPLY #57041 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #57042 /* ~"Du warst der Stadtverwalter?"~ */ GOTO 9
  IF ~~ THEN REPLY #57043 /* ~"Ich halte eigentlich nicht viel von dieser Stadt."~ */ GOTO 10
  IF ~~ THEN REPLY #57044 /* ~"Laß mich dich da rausholen."~ */ GOTO 5
  IF ~~ THEN REPLY #57045 /* ~"In dem Fall laß ich dich sterben. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.3 2.3 4.3 8.0 9.0 10.0
  SAY #57046 /* ~Sein dünner Mund preßt sich noch weiter zusammen. "Dann hebe ihn schon an, und fertig."~ */
  IF ~~ THEN REPLY #57047 /* ~"Los, tun wir's."~ */ DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #57048 /* ~"Vergiß es. Vielleicht komm ich später nochmal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.5 1.5 8.2 9.2 10.2
  SAY #57049 /* ~"Dann verfluche ich dich, vernarbter Mann, und wünsche dir alle Seuchen und die Pest an den Hals." Er spuckt einen blutigen Klumpen auf dich, trifft aber nicht.~ */
  IF ~~ THEN REPLY #57050 /* ~"Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #57051 /* ~Du wirfst dich mit deinem ganzen Gewicht gegen den Karren und schaffst es, ihn so weit anzuheben, daß er darunter hervorkriechen kann.
"Meinen Dank... Mensch. Ich gehe jetzt zu den Mauern, um meinen Wachen zu helfen. Meine Stadt soll nicht untergehen." Er lächelt dich schief an. "Ich beneide dich nicht um den Konflikt mit dem Deva. Er ist ein furchterregender Gegner. Hier. Nimm dies. Es könnte dir helfen."~ */
  IF ~~ THEN REPLY #57052 /* ~"Leb wohl."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.0 4.0 9.1 10.1
  SAY #57053 /* ~"Wir hatten ihn vor vielen, vielen Jahren eingesperrt. Ich dachte, er wäre gut versteckt vor allen Spürhunden und Verrätern. Plötzlich explodierte etwas unter der Erde, blitzte, und meine schöne, schöne Heimat... weggeglitten." Er sieht dir tief in die Augen. "Ich möchte mich rächen. Befreie mich, ja?"~ */
  IF ~~ THEN REPLY #57054 /* ~"In Ordnung. Fertig?"~ */ GOTO 5
  IF ~~ THEN REPLY #57055 /* ~"Du warst der Verwalter dieser Stadt?"~ */ GOTO 9
  IF ~~ THEN REPLY #57056 /* ~"Nein, das glaube ich nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 9 // from: 2.1 4.1 8.1
  SAY #57057 /* ~"Meine Landsleute... und ich... wir haben diese Stadt als eine Basis benutzt, um wieder an die Macht zu  gelangen... aber das ist eine andere Geschichte für einen anderen Tag. Befreie mich!"~ */
  IF ~~ THEN REPLY #57058 /* ~"In Ordnung. Fertig?"~ */ GOTO 5
  IF ~~ THEN REPLY #57059 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #57060 /* ~"Nein, das glaube ich nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~~ THEN BEGIN 10 // from: 2.2 4.2
  SAY #57061 /* ~"Ich auch nicht... Aber sie gehört mir, und sie an diesen aufgetakelten, selbstgerechten Deva zu verlieren... das kann ich nicht ertragen." Er hustet feucht. "Befreie mich, und ich werde dir bei deiner Rache an ihm helfen. Meine Wachen können die Monster für eine Weile aufhalten."~ */
  IF ~~ THEN REPLY #57062 /* ~"In Ordnung. Fertig?"~ */ GOTO 5
  IF ~~ THEN REPLY #57063 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 8
  IF ~~ THEN REPLY #57064 /* ~"Nein, das glaube ich nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 6
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 11 // from:
  SAY #57065 /* ~Du erblickst einen alternden Githzerai, der unter den Rädern eines Wagens, der während des Chaos auf ihn gefallen sein muß, eingeklemmt ist. Er spuckt Blut und grinst dich an. "Du hilfst mir wohl nicht, oder? Deshalb sind wir überhaupt hier..." Er lacht leise.~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57066 /* ~"Wer bist du?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57067 /* ~"Wer bist du?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57068 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57069 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57070 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57071 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 12 // from:
  SAY #57072 /* ~Der Githzerai hustet wieder Blut. "Willst du mich wieder zum Besten halten? Den Gefallen tue ich dir nicht."~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57073 /* ~"Wer bist du?"~ */ EXTERN ~DDAKKON~ 188
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57074 /* ~"Wer bist du?"~ */ GOTO 15
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57075 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57076 /* ~"Ganz ruhig. Ich zieh dich raus."~ */ GOTO 16
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #57077 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXTERN ~DDAKKON~ 189
  IF ~  !NearbyDialog("Ddakkon")
~ THEN REPLY #57078 /* ~"Nein."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 13 // from:
  SAY #57079 /* ~"Ja, lege die Klinge weg, du Zerth-Schwein. Ich spucke auf deine Lehren. Trage deine Ketten noch eine Weile." Der Githzerai dreht seinen Kopf zu dir um. "Ich bin Tovus Giljaf. Ich war einmal der Stadtverwalter hier... bis der verfluchte Deva ausgebrochen ist."~ */
  IF ~~ THEN REPLY #57080 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #57081 /* ~"Du warst der Stadtverwalter?"~ */ GOTO 20
  IF ~~ THEN REPLY #57082 /* ~"Ich halte eigentlich nicht viel von dieser Stadt."~ */ GOTO 21
  IF ~~ THEN REPLY #57083 /* ~"Laß mich dich da rausholen."~ */ GOTO 16
  IF ~~ THEN REPLY #57084 /* ~"In dem Fall laß ich dich sterben. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #57085 /* ~"Ja, bring mich nur um, du Zerth-Schwein. Tu, was dir dein Herr befiehlt." Der alte Githzerai kichert blutend vor sich hin, bis Dak'kon ihm die Kehle durchschneidet.~ */
  IF ~~ THEN REPLY #57086 /* ~"Gut gemacht, Dak'kon."~ */ DO ~SetAnimState("Dakkon",ANIM_MIMEATTACK2)
SetAnimState(Myself,ANIM_MIMEDIE)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1 12.1
  SAY #57087 /* ~"Ich bin Tovus Giljaf. Ich war der Verwalter dieser Stadt... bis der verfluchte Deva ausgebrochen ist."~ */
  IF ~~ THEN REPLY #57088 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #57089 /* ~"Du warst der Stadtverwalter?"~ */ GOTO 20
  IF ~~ THEN REPLY #57090 /* ~"Ich halte eigentlich nicht viel von dieser Stadt."~ */ GOTO 21
  IF ~~ THEN REPLY #57091 /* ~"Laß mich dich da rausholen."~ */ GOTO 16
  IF ~~ THEN REPLY #57092 /* ~"In dem Fall laß ich dich sterben. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 11.3 12.3 13.3 15.3 19.0 20.0 21.0
  SAY #57093 /* ~Sein dünner Mund preßt sich noch weiter zusammen. "Dann hebe ihn schon an, und fertig."~ */
  IF ~~ THEN REPLY #57094 /* ~"Los, tun wir's."~ */ GOTO 22
  IF ~~ THEN REPLY #57095 /* ~"Vergiß es. Vielleicht komm ich später nochmal."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 11.5 12.5 19.2 20.2 21.2
  SAY #57096 /* ~"Dann verfluche ich dich, vernarbter Mann, und wünsche dir alle Seuchen und die Pest an den Hals." Er spuckt einen blutigen Klumpen auf dich, trifft aber nicht.~ */
  IF ~~ THEN REPLY #57097 /* ~"Bis dann."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 25.0
  SAY #57098 /* ~Du wirfst dich mit deinem ganzen Gewicht gegen den Karren und schaffst es, ihn so weit anzuheben, daß er darunter hervorkriechen kann. Von der anderen Seite des Karrens her hörst du einen Schmerzschrei, der plötzlich von einem platschenden Geräusch abgeschnitten wird."Meinen Dank... Mensch. Ich gehe jetzt zu den Mauern, um meinen Wachen zu helfen. Meine Stadt soll nicht untergehen." Er lächelt dich schief an. "Ich beneide dich nicht um den Deva. Er ist ein furchterregender Gegner. Hier. Nimm dies. Es könnte dir helfen."~ */
  IF ~~ THEN REPLY #57099 /* ~"Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_3","GLOBALGood",-3)
AddexperienceParty(125000)
SetGlobal("Cart_Trap","GLOBAL",2)
GiveItem("SPWI803",Protagonist)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 13.0 15.0 20.1 21.1
  SAY #57100 /* ~"Wir hatten ihn vor vielen, vielen Jahren eingesperrt. Ich dachte, er wäre gut versteckt vor allen Spürhunden und Verrätern. Plötzlich explodierte etwas unter der Erde, blitzte, und meine schöne, schöne Heimat... weggeglitten." Er sieht dir tief in die Augen. "Ich möchte mich rächen. Befreie mich, ja?"~ */
  IF ~~ THEN REPLY #57101 /* ~"In Ordnung. Fertig?"~ */ GOTO 16
  IF ~~ THEN REPLY #57102 /* ~"Du warst der Verwalter dieser Stadt?"~ */ GOTO 20
  IF ~~ THEN REPLY #57103 /* ~"Nein, das glaube ich nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 20 // from: 13.1 15.1 19.1
  SAY #57104 /* ~"Meine Landsleute... und ich... wir haben diese Stadt als eine Basis benutzt, um wieder an die Macht zu  gelangen... aber das ist eine andere Geschichte für einen anderen Tag. Befreie mich!"~ */
  IF ~~ THEN REPLY #57105 /* ~"In Ordnung. Fertig?"~ */ GOTO 16
  IF ~~ THEN REPLY #57106 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #57107 /* ~"Nein, das glaube ich nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 21 // from: 13.2 15.2
  SAY #57108 /* ~"Ich auch nicht... Aber sie gehört mir, und sie an diesen aufgetakelten, selbstgerechten Deva zu verlieren... das kann ich nicht ertragen." Er hustet feucht. "Befreie mich, und ich werde dir bei deiner Rache an ihm helfen. Meine Wachen können die Monster für eine Weile aufhalten."~ */
  IF ~~ THEN REPLY #57109 /* ~"In Ordnung. Fertig?"~ */ GOTO 16
  IF ~~ THEN REPLY #57110 /* ~"Was kannst du mir über den Deva erzählen?"~ */ GOTO 19
  IF ~~ THEN REPLY #57111 /* ~"Nein, das glaube ich nicht."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Burgher_2","GLOBALGood",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 22 // from: 16.0
  SAY #57112 /* ~Als du dich anschickst, den Wagen anzuheben, hörst du einen Schmerzensschrei von der anderen Seite des Wagens...~ */
  IF ~~ THEN EXTERN ~DBERROG~ 15
END

IF ~~ THEN BEGIN 23 // from:
  SAY #57113 /* ~"Du zerquetschst mich, du Dummkopf! Wenn du diesen Wagen anhebst, wirst du einen von uns zerquetschen. Ich kann dich dafür belohnen, wenn du statt mir ihn zerquetschst!"~ */
  IF ~~ THEN REPLY #57114 /* ~"Wie das?"~ */ GOTO 24
  IF ~~ THEN REPLY #57115 /* ~"In diesem Fall sollte ich ihm helfen. Du scheinst ein Teil des Bösen zu sein, das die Stadt hier in Carzeri festhält."~ */ GOTO 25
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57116 /* ~"Wie wär's, wenn ich euch beide da raushole? Meine Kameraden und ich schaffen das, wenn wir uns ins Zeug legen."~ */ GOTO 26
  IF ~~ THEN REPLY #57117 /* ~"Ich komme wieder, wenn ich eine Lösung gefunden habe."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 28.0
  SAY #57118 /* ~"Ich befehlige immer noch die Wachen von Verdammnis. Ich kann sie herbeirufen, ihnen helfen, die Flut der Monster abbremsen, die zwischen dir und dem Deva steht... Befreie mich, und deine Aufgabe wird um einiges leichter sein.. Befreie ihn, und du gewinnst nichts."~ */
  IF ~~ THEN EXTERN ~DBERROG~ 18
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #57119 /* ~"Das... ist der Deva. Dieser kleine Dieb hier ist nichts im Vergleich zu dem Deva. Befreie mich!"~ */
  IF ~~ THEN REPLY #57120 /* ~Hebe den Wagen auf Berrog: "In Ordnung."~ */ DO ~Kill("Berrog")
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
~ GOTO 18
  IF ~~ THEN REPLY #57121 /* ~Schick dich an, den Wagen von Berrog zu heben. "Ich glaube, ich befreie lieber ihn."~ */ EXTERN ~DBERROG~ 18
  IF ~  NumInPartyGT(2)
CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #57122 /* ~"Wie wär's, wenn ich euch beide da raushole? Meine Kameraden und ich schaffen das, wenn wir uns ins Zeug legen."~ */ GOTO 26
  IF ~~ THEN REPLY #57123 /* ~"Ich komme wieder, wenn ich hier etwas ausrichten kann."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 25.2
  SAY #57124 /* ~Du und deine Gefährten versammeln sich um den Wagen, und mit vereinten Kräften schafft ihr es, den Wagen so zu heben, daß sich die beiden Eingeklemmten befreien können."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
IncrementGlobalOnceEx("GLOBALGood_Burgher_1","GLOBALGood",1)
IncrementGlobal("Curst_Counter","GLOBAL",1)
AddexperienceParty(225000)
SetGlobal("Cart_Trap","GLOBAL",3)
~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #57125 /* ~"Meinen Dank... Mensch. Ich gehe jetzt zu den Mauern, um meinen Wachen zu helfen. Meine Stadt soll nicht untergehen." Er lächelt dich schief an. "Ich beneide dich nicht um den Konflikt mit dem Deva. Er ist ein furchterregender Gegner. Hier. Nimm dies. Es könnte dir helfen."~ */
  IF ~~ THEN REPLY #57126 /* ~"Leb wohl."~ */ DO ~GiveItem("SPWI803",Protagonist)
EscapeArea()
EscapeArea()
~ EXTERN ~DBERROG~ 14
END

IF ~~ THEN BEGIN 28 // from:
  SAY #57127 /* ~"Es ist... der Stadtverwalter, du kleiner Narr." Er wendet seine Aufmerksamkeit dir zu.~ */
  IF ~~ THEN GOTO 24
END
