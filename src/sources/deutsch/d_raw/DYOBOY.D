// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~Dieser für sein junges Alter schon sehr kräftige 'Schläger' ist zwar gut bewaffnet und so groß, daß er gefährlich werden könnte, aber für einen richtigen Straßenschläger ist er irgendwie zu sauber. Er trägt eine schwere Axt in der einen Hand und eine Stahlkiste in der anderen. Als du näherkommst, zieht er eine fiese Grimasse: "Was gibt's hier zu glotzen, 'Schlucker'? 'Pack ein', bevor ich dich 'kassiere'!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~"Für einen Schläger bist du mir etwas zu gut gekleidet."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~"Krieg dich wieder ein... Ich wollte nur ein paar Fragen stellen..."~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~Wenn seine Blicke töten könnten, wäre Annah jetzt tot. Er schweigt.~ */
  IF ~~ THEN REPLY #46043 /* ~"Für einen Schläger bist du *irgendwie* zu gut gekleidet."~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~"Krieg dich wieder ein... Ich wollte nur ein paar Fragen stellen..."~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~"Hör auf, deine 'Knochenschüssel' zu schütteln! Das hier ist *mein* Gebiet. Hau ab, bevor ich dich von meinen 'Vollblütern' in Stücke reißen lasse!"~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~"Ich wollt ja nur wissen, was in dieser Kiste steckt."~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~"Ich denk ja gar nicht dran. Ich bleib noch ein Weilchen hier."~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~"Bin schon weg. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~Sein Gesicht läuft vor Ärger rot an, während er frustriert mit den Zähnen knirscht. "Das reicht - du hast es verdammt noch mal nicht anders gewollt! Greift ihn euch, Vollblüter!" Er hebt seine Axt und greift an!~ */
  IF ~~ THEN REPLY #46052 /* ~Kämpfe.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~Flüchte.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~Er zieht eine Augenbraue hoch, schaut auf die Kiste und zuckt mit den Achseln. "Weiß ich nicht - ich krieg das 'verdammte' Ding ja nicht auf... Ich glaube, es ist ein sprechender Kopf... Aber seit er mir runtergefallen ist, ist er still. Eigentlich wollt' ich die Kiste im Kuriositätenladen verscherbeln, aber Vris wollte sie 'verdammt' noch mal nicht haben. Und du? Hundert Kupfermünzen, und sie gehört dir."~ */
  IF ~~ THEN REPLY #46055 /* ~"Warte - woher hast du das Ding?"~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~"Das ist doch der Kopf dieses Knochengerüsts aus der Leichenhalle, stimmt's?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~"Okay, ich nehm sie."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~Der junge Schläger wird plötzlich ganz kleinlaut - dies wirkt fast lächerlich bei diesem Schrank von einem Menschen. "Es geht dich ja eigentlich nichts an, 'Schlucker', aber... ich hab sie gefunden. Na, willst du sie jetzt oder nicht? Gib mir hundert Kupfermünzen, oder ich behalt das 'verdammte' Ding.~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~"Das ist doch der Kopf dieses Knochengerüsts aus der Leichenhalle, stimmt's?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~"Okay, ich nehm sie."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~Er faucht dich so wütend an, daß er Speichel versprüht. "Ich weiß es nicht, 'verdammt' noch mal! Aber was geht dich das an?! Ich hab das 'saudumme' Ding gefunden... Und was ich finde, das behalt ich. Ich bin der rechtmäßige Besitzer der Kiste! Wenn du sie haben willst, dann *kauf* sie. Hundert Münzen, 'Dussel'."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~"Okay, ich nehm sie."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~"Was sagst du, wir haben einen Wettbewerb darum?"~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~"Wie wär's, wenn ich dich einfach bewußtlos schlage und sie mir unter den Nagel reiße?"~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~"Nein, danke. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~"Hä?"~ */
  IF ~~ THEN REPLY #46069 /* ~"Ja, um sie spielen. Du nimmst diese Axt hier und versetzt mir einen ordentlichen Hieb damit, wohin du willst. Wenn ich danach noch aufstehe und mir die Kiste hole, gehört sie mir... Wenn nicht, bist du der neue Besitzer von allem, was ich bei mir habe."~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~"Vergiß es. Ich kauf sie."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~"Vergiß es. Ich schlag dich einfach bewußtlos und schnapp sie mir."~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~Er schaut auf seine Axt und dann sehr skeptisch auf dich.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~"Hast du etwa Angst, ich sei eine Art 'unsterbliches Wesen', dem deine Axt nichts anhaben kann? *Sieh* mich doch an."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~"Hast du etwa Angst, ich sei eine Art 'unsterbliches Wesen', dem deine Axt nichts anhaben kann? *Sieh* mich doch an."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~"Vergiß es. Ich kauf sie."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~"Vergiß es. Ich schlag dich einfach bewußtlos und schnapp sie mir."~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~"Vergiß es. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~Der Schläger versenkt seine schwere Axt in dein Fleisch. Mit einem kräftigen Schlag hackt er dir den Knochen durch. Du bist tot.~ */
  IF ~~ THEN REPLY #46080 /* ~Dunkelheit umgibt dich...~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~Der Schläger versenkt seine schwere Axt in dein Fleisch. Mit einem kräftigen Schlag hackt er dir den Knochen durch. Du taumelst, spuckst eine halbe Lunge voll Blut aus... und grinst den stämmigen Kerl an. Das Entsetzen steht ihm ins Gesicht geschrieben, als du ihm bedeutest, dir die Kiste zu geben.~ */
  IF ~~ THEN REPLY #46082 /* ~"So, die Kiste gehört mir. So ein Pech, daß du gar nicht gemerkt hast, daß ich eine Art 'unsterbliches Wesen' bin, dem deine Axt nichts anhaben kann? Leb wohl."~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~Nimm die Kiste und laß ihn verdutzt stehen.~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~Der kräftige junge Schläger schnappt sich die Münzen und wirft dir die Stahlkiste zu. "Und jetzt hau ab, und komm mir bloß nie wieder unter die Augen, 'Dussel'."~ */
  IF ~~ THEN REPLY #46085 /* ~"Ja, ja. Ist ja gut. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~Der halbstarke Jüngling grinst höhnisch, als du dich näherst. "Du schon wieder?! 'Pack ein', 'Dussel'!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~"Für einen Schläger bist du mir etwas zu gut gekleidet."~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~"Krieg dich wieder ein... Ich wollte nur ein paar Fragen stellen..."~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~Der halbstarke Jüngling grinst höhnisch, als du dich näherst. "Du kannst soviel mit deiner 'verdammten' 'Knochenschüssel' klappern, wie du willst, 'Dussel'. Ich 'plausch' nicht mit dir."~ */
  IF ~~ THEN REPLY #46092 /* ~"Wie du meinst. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~Geh weg.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~Der stämmige, junge Schläger grinst dich spöttisch an, als du ihn ansprichst. "Du schon wieder?! Zieh -" Er unterbricht sich plötzlich, sieht dich mit zusammengekniffenen Augen an und kratzt sich am Kopf. "Sag... Hatte ich nicht... aber..."~ */
  IF ~~ THEN REPLY #61593 /* ~"Ja, ja, ich weiß. Ich habe ein paar Fragen..."~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~"Ja - und jetzt wirst du teuer dafür bezahlen."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~Geh weg.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END
