// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUISHO.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUISHO~

IF ~  NumTimesTalkedTo(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 0 // from:
  SAY #50027 /* ~Du triffst auf eine kurzgewachsene, mollige Frau mit roten Haaren. Ihr Gesicht ist von Haßgefühlen und Sorgen gezeichnet, die schon viel zu lange auf ihr zu lasten scheinen. Sie grinst höhnisch, als du dich ihr näherst und dreht ihren Kopf so weg, daß du ihr nicht in die Augen sehen kannst. Sie verhält sich nach dem Motto: Du kannst mich nicht sehen, wenn ich dich nicht sehen kann. Du bist nur Luft für sie.~ */
  IF ~~ THEN REPLY #50029 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Curst_Key","GLOBAL",5)
~ THEN BEGIN 1 // from:
  SAY #50030 /* ~Die Frau ignoriert dich weiter beharrlich. Nichts von dem, was du sagst, macht einen Eindruck auf sie.~ */
  IF ~~ THEN REPLY #50031 /* ~"Also gut."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 2 // from:
  SAY #50033 /* ~Du triffst auf eine kurzgewachsene, mollige Frau mit roten Haaren. Ihr Gesicht ist von Haßgefühlen und Sorgen gezeichnet, die schon viel zu lange auf ihr zu lasten scheinen. Sie schnarrt: "Du bist der, der unter die Erde will, nicht? Du mußt Dona Quisho erst einen Gefallen tun, bevor sie dir ihr Stück des Schlüssels gibt. In der Stadt hier ist ein Scheusal eingesperrt. Ich muß es freibekommen." Eh du dich versiehst, hat sie dir eine Schriftrolle in die Hand gedrückt.~ */
  IF ~~ THEN REPLY #50035 /* ~"Warum?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50036 /* ~"Ich halte nicht viel davon, Scheusale zu befreien."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50038 /* ~"Sag mir, was ich tun muß."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50039 /* ~"Grace, was meinst du dazu?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 3 // from: 2.0 8.0
  SAY #50040 /* ~"Weil es mir gehört! Weil ich ihm so viel geopfert hab! Weil sie es mir weggenommen und eingesperrt haben und mir nie jemand geholfen hat, obwohl ich es mir so gewünscht hab!" Ihre Stimme verrät Gerissenheit. "Aber jetzt hab ich das Wissen, das du brauchst, und du bekommst es erst, wenn du Agril-Shanak freiläßt."~ */
  IF ~~ THEN REPLY #50041 /* ~"Wie weiß ich, ob es keine Randale macht?"~ */ GOTO 6
  IF ~~ THEN REPLY #50042 /* ~"Ich halte nicht viel davon, Scheusale zu befreien."~ */ GOTO 4
  IF ~~ THEN REPLY #50043 /* ~"Sag mir, was ich tun muß."~ */ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50044 /* ~"Grace, was meinst du dazu?"~ */ EXTERN ~DGRACE~ 145
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1 8.1
  SAY #50045 /* ~Sie gackert dir ins Gesicht. "Das macht nichts. Du brauchst den fünften Teil des Schlüssels. Ich habe ihn. Wenn du nicht einen anderen Weg unter die Erde findest, wo du so gerne hinwillst, dann mußt du tun, was ich sage."~ */
  IF ~~ THEN REPLY #50046 /* ~"Wie weiß ich, ob es keine Randale macht?"~ */ GOTO 6
  IF ~~ THEN REPLY #50047 /* ~"Ich werde es nicht tun."~ */ GOTO 7
  IF ~~ THEN REPLY #50048 /* ~"Sag mir, was ich tun muß."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.2 4.2 6.0 8.2
  SAY #50049 /* ~"Finde den Getreidesilo in der Stadt. Finde das Pentagramm, das in den Boden des Silos eingezeichnet ist. Verwende diese Schriftrolle daneben, und wenn Agril-Shanak erscheint... befreie ihn. Handle mit ihm aus, was du willst, aber befreie ihn. Mir ist egal, was du danach machst."~ */
  IF ~~ THEN REPLY #50050 /* ~"Nun denn. Leb wohl."~ */ JOURNAL #50051 /* ~Um den fünften Teil des Schlüssels zu bekommen, soll ich zum Kornspeicher in dieser Stadt gehen, in ihm ein Pentagramm finden, und mit Hilfe der Schriftrolle neben dem Pentagramm das Scheusal Agril-Schanak befreien. Dann werd ich von Dona Quisho den Schlüssel bekommen.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 4.0
  SAY #50052 /* ~Ein leises Lächeln legt sich über ihr Gesicht, eines der giftigsten Lächeln, die du je gesehen hast. "Das ist nicht mein Problem. Es ist deine Sache, wie du mit dem Scheusal fertig wirst. Ich will nur, daß es befreit wird."~ */
  IF ~~ THEN REPLY #50053 /* ~"Was muß ich tun?"~ */ GOTO 5
  IF ~~ THEN REPLY #50054 /* ~"Ich werde es nicht tun."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.1 9.1
  SAY #50055 /* ~"Dann bekommst du den fünften Teil des Schlüssels nicht. Wenn du deine Meinung änderst, dann schon. Komm wieder, wenn du deine Haltung geändert hast." Sie gackert und wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #50056 /* ~Geh weg.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Curst_Key","GLOBAL",5)
Global("Free_Fiend","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #50057 /* ~Als du dich ihr diesmal näherst, liegt Entschlossenheit in ihrem Blick. Sie schnarrt: "Du bist der, der unter die Erde will, nicht? Du mußt Dona Quisho erst einen Gefallen tun, bevor sie dir ihr Stück des Schlüssels gibt. In der Stadt hier ist ein Scheusal eingesperrt. Ich muß es freibekommen." Eh du dich versiehst, hat sie dir eine Schriftrolle in die Hand gedrückt.~ */
  IF ~~ THEN REPLY #50058 /* ~"Warum?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #50059 /* ~"Ich halte nicht viel davon, Scheusale zu befreien."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #50060 /* ~"Sag mir, was ich tun muß."~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ GOTO 5
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #50061 /* ~"Grace, was meinst du dazu?"~ */ DO ~GiveItemCreate("AgScroll",Protagonist,1,0,0)
SetGlobal("Free_Fiend","GLOBAL",1)
~ EXTERN ~DGRACE~ 145
END

IF ~  GlobalGT("Free_Fiend","GLOBAL",0)
GlobalLT("Free_Fiend","GLOBAL",3)
~ THEN BEGIN 9 // from:
  SAY #50062 /* ~Dona Quisho sieht dich an, als du dich ihr näherst, und ihr steht die Verachtung für dich ins Gesicht geschrieben. "Du hast Agril-Shanak noch nicht befreit, oder? Komm erst wieder, wenn du es getan hast."~ */
  IF ~~ THEN REPLY #50063 /* ~"Was sollte ich doch gleich tun?"~ */ GOTO 10
  IF ~~ THEN REPLY #50064 /* ~"Ich werde es nicht tun."~ */ GOTO 7
  IF ~~ THEN REPLY #50065 /* ~"Nun denn. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #50066 /* ~Sie seufzt ungeduldig. "Getreidesilo. Pentagramm. Schriftrolle lesen. Ist das so schwer? Also, los!" Sie wendet sich von dir ab.~ */
  IF ~~ THEN REPLY #50067 /* ~"Dann leb wohl." ~ */ EXIT
END

IF ~  Global("Free_Fiend","GLOBAL",3)
Global("Curst_Key","GLOBAL",5)
~ THEN BEGIN 11 // from:
  SAY #50068 /* ~"Du hast es getan, stimmt's? Ja, das hast du... Aber wo ist Agril-Shanak?"~ */
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50069 /* ~Wahrheit: "Es ist tot."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 13
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #50070 /* ~Lüge: "Es kommt gleich."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #50071 /* ~"Es wird bestimmt gleich hier sein."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
  IF ~  Global("Agril_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #68287 /* ~"Ich habe es schmorend im Pentagramm gelassen. Du kannst es selber befreien. Ich habe es wieder herbeigerufen... Den Rest mußt du erledigen."~ */ DO ~SetGlobal("Free_Fiend","GLOBAL",4)
SetGlobal("Curst_Key","GLOBAL",6)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1 11.2 11.3
  SAY #50072 /* ~Sie gackert. "Und dann werden wir Pläne schmieden und unsere Fallen stellen, und sie werden ihre Fehler bereuen, oh ja!" Sie drückt dir ein Säckchen voll Münzen in die Hand. "Hier ist der letzte Teil des Schlüssels: 'Vom Zentrum dreimal zum äußersten Pol'. Jetzt geh zurück, und sprich mit Besudelter Barse. Er wird dir sagen, was als nächstes zu tun ist." Immer noch gackernd, packt sie ihre Sachen zusammen und huscht hinaus.~ */
  IF ~~ THEN REPLY #50073 /* ~"Leb wohl..."~ */ DO ~GivePartyGold(1500)
AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50074 /* ~Dona Quisho hat mir den fünften Teil des Schlüssels gegeben: "Vom Zentrum dreimal bis zum äußersten Pol." Sie hat noch irgendwas von einer Rache gefaselt, und gemeint, ich soll den Besudelten Barse nochmal fragen, wie man den Schlüssel verwendet.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #50075 /* ~Sie wird bleich. "Tot.... aber... ? Du hast ihn getötet? Dann bin ich verloren. Nimm deinen verdammten Schlüssel und verzieh dich!" Sie spricht diese Worte mit farbloser Stimme: "Vom Zentrum dreimal bis zum äußersten Pol." Sie sieht sich eine Weile lang um. "Sprich nochmal mit Barse. Er weiß, was nun zu tun ist." Sie nimmt sich zusammen und zieht davon.~ */
  IF ~~ THEN REPLY #50076 /* ~"Dann leb wohl."~ */ DO ~AddexperienceParty(131250)
EscapeArea()
~ JOURNAL #50077 /* ~Dona Quisho hat mir den fünften Teil des Schlüssels gegeben: "Vom Zentrum dreimal bis zum äußersten Pol." Sie hat gemeint, ich solle nochmal mit dem Besudelten Barse reden. Als ich ihr erzählt hab, daß Agril-Shanak tot ist, hat sie irgendwas gemurmelt, von wegen daß sie jetzt verloren sei, und ist dann weggestürmt, als ob die Neun Höllen hinter ihr her wären.~ */ EXIT
END
