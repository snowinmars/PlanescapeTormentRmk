// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROYALGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DROYALGD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51341 /* ~Dieses gewaltige Skelett ist wesentlich größer als ein normaler Mensch und trägt eine reichverzierte Bronzerüstung, in die aufwendige Symbole eingraviert sind. Als du dich ihm näherst, sieht es dich kurz an, dann wendet es sich wieder ab.~ */
  IF ~~ THEN REPLY #51342 /* ~"Sei gegrüßt..."~ */ GOTO 1
  IF ~~ THEN REPLY #51409 /* ~Laß das riesige Skelett in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51410 /* ~"Sei gegrüßt, Lebender", dröhnt die Stimme des Wesens. "Ich stehe hier als Königliche Wache seiner Majestät des Schweigenden Königs. Ich muß dich bitten, mich nicht mit Fragen von meiner Aufgabe abzulenken."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51412 /* ~"Warum braucht er Wachen? Er ist doch tot..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51411 /* ~"Warum braucht er Wachen? Er ist doch tot..."~ */ GOTO 2
  IF ~~ THEN REPLY #51414 /* ~"Könntest du mir wenigstens verraten, wer du bist... oder warst?"~ */ GOTO 4
  IF ~~ THEN REPLY #51415 /* ~"Dann leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1
  SAY #51413 /* ~Das riesige Skelett zuckt zusammen, sieht sich um und knurrt dir dann durch zusammengebissene Zähne zu: "Schweig, Narr! Sprich noch einmal davon, und du wandelst nicht länger unter den Lebenden!"~ */
  IF ~~ THEN REPLY #51416 /* ~"Gut. Könntest du mir wenigstens sagen, wer du bist... oder warst?"~ */ GOTO 4
  IF ~~ THEN REPLY #51417 /* ~"Dann auf Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 4.0
  SAY #51418 /* ~"Der Schweigende König ist mehr als ein verrunzelter Leichnam, Lebender. Selbst in jenen lang vergangenen Tagen, als er zu uns sprach, war der Schweigende König *mehr* als nur ein nobler Mann. Der Schweigende König ist eine *Institution*. Eine, die ich jetzt ebenso wie in den vergangenen zweihundert Jahren mit ganzer Seele verteidige. Sein großer Wille lebt weiter in den Worten Hargrimms und der Muffigen Mary, und so soll es auf ewig sein, bis meine Knochen unter den Füßen eines größeren Feindes zu Staub werden."~ */
  IF ~~ THEN REPLY #51419 /* ~"Verstehe. Wer bist du... oder warst du?"~ */ GOTO 4
  IF ~~ THEN REPLY #51420 /* ~"Ich verstehe. Wiedersehen."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0
  SAY #51421 /* ~"Ich bin im Tod, wie ich es im Leben war, einer der Neunundneunzig Söhne der Westlichen Berge, gezeugt, als das Glied von Amahar abgetrennt und auf das Angesicht von Ith'hyr hinuntergeworfen wurde. Durch Ehre daran gebunden, unsere Königin zu verteidigen, waren wir für diese Welt verloren, als unsere - und die unserer Herrin mit ihr - von einem zornigen Gottling, einem Bruder Amahars, zerstört wurde. Viele von uns wandern auf den Ebenen umher, aber einige, wie ich selbst, haben sich entschieden, in Sigil zu bleiben. Als ich starb, wurde ich hier begraben und wachte später in dem Zustand auf, in dem du mich jetzt findest. Dann habe ich mir einen neuen Herrn, den Schweigenden König, gesucht, um ihn zu verteidigen."~ */
  IF ~  CreatureInArea("AR1501")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51422 /* ~"Warum ihn verteidigen? Er ist doch tot..."~ */ GOTO 3
  IF ~  CreatureInArea("AR1500")
Global("Silent_King","GLOBAL",1)
~ THEN REPLY #51423 /* ~"Wieso willst du ihn verteidigen? Schließlich ist er tot..."~ */ GOTO 2
  IF ~~ THEN REPLY #51424 /* ~"Verstehe. Leb wohl."~ */ EXIT
END
