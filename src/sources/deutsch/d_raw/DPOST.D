// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6229 /* ~Diese vor Schmutz starrende Leiche sieht schlimm aus; ihre Schultern sind eingesunken, und ein Bein ist gebrochen, so daß sie zur Seite gekippt ist. Sie ist von Kopf bis Fuß mit Flecken bedeckt... nach dem Geruch und dem Aussehen zu urteilen, stammen die Flecken von verfaultem Obst, Schlamm und Vogeldreck. Um dieses entwürdigende Bild zu vervollständigen, wurden Graffities in die Leiche eingeritzt und Zettel auf Brust, Rücken und Kopf genagelt.~ */
  IF ~~ THEN REPLY #6230 /* ~"Und ich dachte schon, *ich* wäre schlecht dran. Tun diese ganzen Nägel nicht weh?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6231 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6233 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6234 /* ~Sieh dir die Graffiti und Zettel genau an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6235 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6236 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #6237 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6232 /* ~Die Leiche antwortet nicht.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6238 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6239 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6240 /* ~Sieh dir die Graffiti und Zettel genau an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6241 /* ~Wende deine Erzählende-Knochen-Fähigkeit auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6242 /* ~"Es war nett, mit dir gesprochen zu haben. Leb wohl."~ */ EXIT
  IF ~~ THEN REPLY #6243 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN BEGIN 2 // from: 0.4 1.3 3.1 4.1 5.7 6.4 7.6 8.3 9.5 10.5 11.3 12.3 13.2 18.4 19.3
  SAY #6244 /* ~Diese Leiche antwortet nicht. Es sieht so aus, als ob sie schon zu tot ist, um noch auf irgendeine deiner Fragen zu antworten.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6245 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6246 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6247 /* ~Sieh dir die Graffiti und Zettel genau an.~ */ GOTO 5
  IF ~~ THEN REPLY #6248 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0 5.0 6.1 7.3 8.0 9.2 10.0 11.0 12.0 18.1 19.0
  SAY #6249 /* ~Trotz der vielen Nähte löst sich die verwesende Haut der Leiche an mehreren Stellen ab und gibt den Blick auf lange Muskelstränge und Knochen frei. Man könnte glauben, daß dieser Zombie als Zielscheibe herhalten mußte... abgesehen von den Obst- und Schlammresten stecken in einigen Rissen der Haut noch immer Steine und Glassplitter. Ein grotesk aussehender Pflasterstein steckt noch immer seitlich in seinem Kopf.
~ */
  IF ~~ THEN REPLY #6250 /* ~Sieh dir die Graffiti und Zettel genau an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6251 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6252 /* ~Zieh den Pflasterstein heraus.~ */ DO ~AddexperienceParty(250)
GiveItem("Cobble",Protagonist)
~ GOTO 13
  IF ~~ THEN REPLY #6253 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.1 2.1 5.1 6.2 7.4 8.1 9.3 10.1 11.1 12.1 13.0 18.2 19.1
  SAY #6254 /* ~Trotz der vielen Nähte löst sich die verwesende Haut der Leiche an mehreren Stellen ab und gibt den Blick auf lange Muskelstränge und Knochen frei. Man könnte glauben, daß dieser Zombie als Zielscheibe herhalten mußte... abgesehen von den Obst- und Schlammresten stecken in einigen Rissen der Haut noch immer Steine und Glassplitter.~ */
  IF ~~ THEN REPLY #6255 /* ~Sieh dir die Graffiti und Zettel genau an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6256 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6257 /* ~Laß die Leiche in Ruhe.
~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.2 2.2 3.0 4.0 6.3 7.5 8.2 9.4 10.2 10.3 10.4 11.2 12.2 13.1 18.3 19.2
  SAY #6258 /* ~Eine Reihe von Zetteln sind vom Regen zerstört worden, aber einige sind noch immer lesbar. Einer, der an seinen Rücken geheftet ist, ist von einem 'Büro zur Schädlings- und Seuchenbekämpfung', der auf seiner Stirn sieht wie eine Restaurantrechnung aus, einer auf seiner Brust sieht nach einer öffentlichen Bekanntmachung aus, und noch ein anderer scheint so eine Art Annonce zu sein.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6259 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6260 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6261 /* ~Ignoriere die Zettel, aber sieh dir die Graffities genau an.~ */ GOTO 9
  IF ~~ THEN REPLY #6262 /* ~Sieh dir den Zettel vom 'Büro zur Schädlings- und Seuchenbekämpfung' an.~ */ GOTO 6
  IF ~~ THEN REPLY #6263 /* ~Sieh dir die Menükarte an.~ */ GOTO 7
  IF ~~ THEN REPLY #6264 /* ~Untersuche die Offizielle Bekanntmachung.~ */ GOTO 8
  IF ~~ THEN REPLY #46493 /* ~Schau dir den Anschlag genauer an.~ */ GOTO 18
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46496 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #46497 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #6267 /* ~"An alle Bürger des Stocks, die um eine wolfeil entlohnte Anstellung bei der höchst GESCHETZTEN und GROSZÜGIGEN Regirung von Sigil ersuchen: Anfragen sint zu richten an das 'Büro zur Schädlings- und Seuchenbekämpfung', daß um Hilfe bei der Eindemmung der Schedelrattenplahge bittet! ES WIRD EIN KOPFGELT GEZAHLT! Für jeden Rattenschwantz wird Kuppfer gezahlt. (Die Schwäntze müssen echt sein und von Ratten stammen. Schwäntze von Katzen, Hunden und Scheusalen werden nicht angenommen.) Büro einige Straßen SÜTLICH UND WESTLICH des Leichenhallentors, im unteren Stock. Anfragen sint zu richten an den offiziellen verantwortlichen Inspecktor, den EHRENWERTEN PHINEAS T. LORT, XXXIX."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6268 /* ~"'Büro zur Schädlings- und Seuchenbekämpfung'?"~ */ GOTO 11
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6269 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6270 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6271 /* ~Sieh dir die anderen Zettel an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6272 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6273 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY #6274 /* ~Irgend jemand hat eine Speisekarte der Bar "Zum Staubfänger" angebracht, aber sie ist unleserlich, da mit Holzkohle die Worte 'BAR ZUR SCHWELENDEN LEICHE' darauf gekritzelt wurden.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6275 /* ~"Bar 'Zur Schwelenden Leiche'?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6276 /* ~"Bar 'Zur Schwelenden Leiche'?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6277 /* ~"Bar 'Zur Schwelenden Leiche'?"~ */ GOTO 10
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6278 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6279 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6280 /* ~Sieh dir die anderen Zettel an...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6281 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6282 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5
  SAY #6283 /* ~"ÖFFENTLICHE MITTEILUNG: Kraft Anordnung des Justizrates und in Übereinstimmung mit der Bürgerschaft von Sigil wird hiermit verkündet, daß diejenigen, die einen registrierten Diener der Staubmenschen entweder durch Inschriften, vorsätzliche Beschädigung oder durch das Anbringen von Zetteln verunstalten, einen VERBRECHERISCHEN ANGRIFF verüben und für den Vandalismus zur Rechenschaft gezogen werden, den sie an besagtem Diener angerichtet haben." - Auf Anordung der Halle der Redner -~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6284 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6285 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6286 /* ~Sieh dir die anderen Zettel an...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6287 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6288 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #6289 /* ~Die Graffities reichen von Obszönitäten über Staubmenschen bis zu Lobeshymnen auf örtliche Banden. Ein Graffiti erregt dein Interesse... Irgend jemand hat den Namen "Pharod" in den linken Arm der Leiche eingeritzt und dann mit einem "X" durchgestrichen.~ */
  IF ~  Global("Post_Point","GLOBAL",1)
~ THEN REPLY #6290 /* ~"Pharod?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Post_Point","GLOBAL",2)
~ JOURNAL #66757 /* ~Indem ich Pharods Namen laut ausgesprochen habe, habe ich den "Posten" gefragt, wo er zu finden ist... Er hat auf ein paar Blöcke westlich von der Leichenhalle und, seltsamerweise, nach unten gezeigt. Ist Pharod irgendwo in der Erde eingegraben?~ */ GOTO 12
  IF ~  Global("Post_Point","GLOBAL",2)
~ THEN REPLY #6291 /* ~"Pharod?"~ */ GOTO 12
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6292 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6293 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6294 /* ~Sieh dir die anderen Zettel an...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6295 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6296 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 7.2
  SAY #6297 /* ~Plötzlich reißt der Zombie seinen linken Arm hoch und zeigt nach Süden. Kurz darauf läßt er ihn mit einem PLUMPS wieder fallen.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6298 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6299 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6300 /* ~"Hmmm. Ich frage mich, ob das auch mit den anderen Zetteln funktionieren würde..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6301 /* ~"Hmmmm. Ich frage mich, ob das auch mit den anderen Zetteln funktionieren würde..."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6302 /* ~Sieh dir die anderen Zettel an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6303 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6304 /* ~"Ähh... Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #6305 /* ~Plötzlich reißt der Zombie seinen linken Arm hoch und zeigt nach Südwesten. Kurz darauf läßt er ihn mit einem PLUMPS wieder fallen.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6306 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6307 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6308 /* ~Sieh dir die anderen Zettel an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6309 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6310 /* ~"Ähh... Danke."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 9.1
  SAY #6311 /* ~Plötzlich reißt der Zombie seinen linken Arm hoch und zeigt nach Westen... und nach unten. Kurz darauf läßt er ihn mit einem PLUMPS wieder fallen.
~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6312 /* ~Untersuche die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6313 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6314 /* ~Sieh dir die anderen Zettel an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6315 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6316 /* ~"Ähh... danke."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY #6317 /* ~Du greifst den Pflasterstein und ziehst ihn aus dem Kopf der Leiche. Hirnmasse und verwesendes Fleisch tropfen langsam davon ab... es sieht so aus, als ob das, was einmal in seinem Kopf war, schon lange zu Schleim geworden ist.~ */
  IF ~~ THEN REPLY #6318 /* ~Untersuche die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #6319 /* ~Sieh dir die anderen Zettel an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6320 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #6321 /* ~Laß die Leiche in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #6322 /* ~Plötzlich reißt der Zombie seinen linken Arm hoch und zeigt nach Südosten. Kurz darauf läßt er ihn mit einem PLUMPS wieder fallen.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 109
END

IF ~~ THEN BEGIN 15 // from:
  SAY #9749 /* ~Der Zombie steht regungslos da. Du bemerkst eine freie Stelle auf seiner Schulter, wo du ihren Namen einritzen könntest.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9750 /* ~Der Zombie reißt sofort seinen Arm in die Höhe (und zeigt dorthin, wo Xixi sich wohl befindet).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9751 /* ~Der Zombie regt sich nicht.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.6
  SAY #46498 /* ~"GESUCHT: Kräftige Person, die bereit ist, den Staubmenschen in einer wichtigen Ermittlung zu helfen. Angemessene Belohnung nach erfolgter Ausführung besagter Aufgabe. Interessenten bitte melden beim Eingeweihten Norochj in der Bar 'Zum Staubfänger'."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #46499 /* ~"'Zum Staubfänger'?"~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 19
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46501 /* ~Untersuch die Leiche.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46502 /* ~Untersuch die Leiche.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #46503 /* ~Sieh dir die anderen Zettel an...~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46504 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #46505 /* ~Laß die Leiche in Ruhe.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46500 /* ~Der Zombie reißt seinen linken Arm in die Höhe und zeigt nach Westen auf das Gebäude, vor dem du stehst. Einen Augenblick später fällt der Arm mit einem DUMPFEN Schlag herab.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46506 /* ~Untersuch die Leiche.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46507 /* ~Untersuch die Leiche.~ */ GOTO 4
  IF ~~ THEN REPLY #46508 /* ~Sieh dir die anderen Zettel an.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46509 /* ~Wende deine Erzählende-Knochen-Kraft auf die Leiche an.~ */ GOTO 2
  IF ~~ THEN REPLY #46510 /* ~"Ähh... Danke."~ */ EXIT
END
