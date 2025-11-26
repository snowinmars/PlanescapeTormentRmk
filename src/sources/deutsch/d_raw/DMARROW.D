// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARROW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARROW~

IF ~  Global("Marrow","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2792 /* ~Schon von weitem riechst du, daß dieser Mann nach Mist und vergammeltem Fleisch riecht. Obwohl er schon ziemlich altersschwach ist, macht er mit seinen langen, dünnen Finger und eingesunkenen Augen noch einen ziemlich finsteren Eindruck, als er sich seinen Weg durch den Müll bahnt. Er geifert und rollt seine Augen wie ein Wahnsinniger.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17228 /* ~"Sei gegrüßt..."~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17229 /* ~"Sei gegrüßt..."~ */ EXTERN ~DANNAH~ 102
  IF ~~ THEN REPLY #17230 /* ~Laß ihn in Ruhe.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2793 /* ~Er versucht dich zu fixieren, aber sein Blick schweift ab. Seine Augen sitzen tief in den Höhlen. Seine Haut ist furchtbar blaß und voller Pusteln und gelblicher Krusten, die aussehen, als würden sie jeden Moment abfallen. Sein Gestank ist unerträglich. Als du den Mund zum Sprechen öffnest, leckt er seine Lippen und schluckt. "Duuu To-ten-büch-lerrr?"~ */
  IF ~~ THEN REPLY #17231 /* ~"Was hast du gesagt?"~ */ GOTO 2
  IF ~~ THEN REPLY #17232 /* ~"Alles okay?"~ */ GOTO 2
  IF ~~ THEN REPLY #17233 /* ~Geh weg.
~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #17170 /* ~"Duuuu..." Er leckt wieder seine Lippen und zupft mit seinen langen, dürren Fingern an sich herum, während er dich anstarrt. "Duuu To-ten-büch-lerrr?" Sein Blick schweift nach links ab, bevor er wieder auf dich fällt. "Tot? Tot? Hhun-gerrr." Er greift nach dir und leckt sich die rauhen Lippen.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17234 /* ~Laß ihn dich berühren.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17235 /* ~Laß ihn dich berühren.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17236 /* ~Laß ihn dich nicht berühren.
~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 21.1
  SAY #17171 /* ~Er läßt seine Finger wie eine Spinne über deinen Arm wandern, als wollte er gleich ein Stück herausreißen. Dabei leckt er sich wieder die aufgeplatzten Lippen, von denen gelblicher Geifer herunter tropft. Mit einem heiseren Stöhnen graben sich seine Finger plötzlich in deinen Arm und reißen ein Stück Fleisch heraus. Die Wunde ist klein, aber in deinem momentanen Zustand fatal... Du sinkst tot zu Boden.~ */
  IF ~~ THEN REPLY #17237 /* ~Geschafft.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 21.0
  SAY #17172 /* ~Er läßt seine Finger wie eine Spinne über deinen Arm wandern, als wollte er gleich ein Stück herausreißen. Dabei leckt er sich wieder die aufgeplatzten Lippen, von denen gelblicher Geifer herunter tropft. Mit einem heiseren Stöhnen graben sich seine Finger plötzlich in deinen Arm und reißen ein Stück Fleisch heraus.~ */
  IF ~~ THEN REPLY #17239 /* ~Weiche zurück.~ */ GOTO 6
  IF ~~ THEN REPLY #339 /* ~Geh weiter.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 21.2
  SAY #17173 /* ~Er greift mit seinen Händen ins Leere, wo du standst, und winselt leise wie ein gequälter Hund. "H-hhung-ger."~ */
  IF ~~ THEN REPLY #17242 /* ~Weiche zurück.~ */ GOTO 7
  IF ~~ THEN REPLY #17243 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #17174 /* ~Dir dreht sich der Magen um, als du siehst, wie er das Stück Fleisch nimmt und es sich in den Mund steckt. Er kaut langsam darauf herum, bevor er es schließlich hinunterschluckt. "Duuu tot?"~ */
  IF ~~ THEN REPLY #17245 /* ~"Nein, ich bin nicht tot."~ */ GOTO 8
  IF ~~ THEN REPLY #17250 /* ~"Nein, aber du wirst es gleich sein..."~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #17248 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17176 /* ~Plötzlich schnappt er nach einer fetten, weißen Made, die soeben noch auf einem Abfallhaufen herumgekrochen war. Dir dreht sich der Magen um, als er sich die Made in den Mund steckt. Er kaut langsam darauf herum, bevor er sie schließlich hinunterschluckt. "Duuu tot?"~ */
  IF ~~ THEN REPLY #17249 /* ~"Nein, ich bin nicht tot."~ */ GOTO 9
  IF ~~ THEN REPLY #17251 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #17177 /* ~"Duuu schmeckst tooot." Er kratzt sich unter der Robe. Da bemerkst du plötzlich den Finger, den er an einer Kordel um den Hals hängen hat. Darauf scheint ein Ring zu stecken. "Immer noch h-hun-grig."~ */
  IF ~~ THEN REPLY #17252 /* ~"Was ißt du normalerweise?"~ */ GOTO 10
  IF ~~ THEN REPLY #17253 /* ~"Was ist das für ein Fingerknochen?"~ */ GOTO 11
  IF ~~ THEN REPLY #17255 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #17178 /* ~"Duuu siehst tooot aus." Er kratzt sich unter der Robe. Da bemerkst du plötzlich den Finger, den er an einer Kordel um den Hals hängen hat. Darauf scheint ein Ring zu stecken. "Immer noch h-hun-grig."~ */
  IF ~~ THEN REPLY #17257 /* ~"Was ißt du normalerweise?"~ */ GOTO 10
  IF ~~ THEN REPLY #17258 /* ~"Was ist das für ein Fingerknochen?"~ */ GOTO 11
  IF ~~ THEN REPLY #17259 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #17179 /* ~Er macht ein grunzendes Geräusch, wie ein Schwein. "Tot."~ */
  IF ~~ THEN REPLY #17260 /* ~"Was ist das für ein Fingerknochen?"~ */ GOTO 11
  IF ~~ THEN REPLY #17261 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0
  SAY #17180 /* ~Er schaut hinunter; dabei verzieht er sein mit Pusteln bedecktes Gesicht zu einer gräßlichen Fratze. "Schmatz." Es scheint, als würde er gleich anfangen zu kauen.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17262 /* ~Halte ihn davon ab.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17264 /* ~Halte ihn davon ab.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17266 /* ~"Iß das bloß nicht. Nimm lieber einen Bissen von mir. Ich bin frischer."~ */ GOTO 14
  IF ~~ THEN REPLY #17269 /* ~Lüge: "Friß das nicht. Ich bring dir statt dessen eine ganze Leiche."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17271 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.1
  SAY #17181 /* ~Als du seine Hand packst, beginnt er sich heftig zu wehren. Dabei beißt er dir ein großes Stück Fleisch aus dem Arm... Du mußt ihn loslassen. Eigentlich ist die Wunde nicht schlimm, aber in deinem momentanen Zustand fatal. Du sinkst tot zu Boden.~ */
  IF ~~ THEN REPLY #17273 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 13.0
  SAY #17182 /* ~Als du seine Hand packst, beginnt er sich heftig zu wehren. Dabei beißt er dir ein großes Stück Fleisch aus dem Arm... Du mußt ihn loslassen, nicht wegen des Schmerzes, sondern weil du ihn sonst in zwei Stücke reißt. Er kaut eine Weile auf dem Fleisch herum, bevor er wieder auf den Fingerknochen schaut.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17274 /* ~Halte ihn davon ab, den Fingerknochen zu fressen.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17276 /* ~Halte ihn davon ab, den Fingerknochen zu fressen.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17277 /* ~"Iß das bloß nicht. Nimm lieber einen Bissen von mir. Ich bin frischer."~ */ GOTO 14
  IF ~~ THEN REPLY #17278 /* ~Lüge: "Friß das nicht. Ich bring dir statt dessen eine ganze Leiche."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17280 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 11.2 13.2 31.1 32.1
  SAY #17183 /* ~Mit einem Lächeln greift er nach deiner ausgestreckten Hand.~ */
  IF ~~ THEN REPLY #17281 /* ~"Gib mir erst den Fingerknochen, 'Markfreund'."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17282 /* ~Laß ihn dich beißen.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17283 /* ~Laß ihn dich beißen.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 15
  IF ~~ THEN REPLY #17285 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.2 17.1
  SAY #17184 /* ~Seine Zähne graben sich in das Fleisch deines Unterarmes und ziehen mit einer einzigen Halsdrehung ein Stück heraus. Zu spät bemerkst du, daß dein Körper nicht in einem Zustand war, in dem er weitere Wunden verkraften konnte. Du sinkst auf dem Boden zusammen und stirbst.~ */
  IF ~~ THEN REPLY #17286 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.0
  SAY #17185 /* ~Seine Zähne graben sich in das Fleisch deines Unterarmes und ziehen mit einer einzigen Halsdrehung ein Stück heraus. Der Schmerz ist überwältigend, aber Markfreund hockt da, als sei nichts passiert, und kaut laut schmatzend auf dem Mundvoll Fleisch herum, das er dir herausgerissen hat.~ */
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17287 /* ~"Jetzt... gib mir deinen Finger."~ */ GOTO 19
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17288 /* ~"Äh... danke. Leb wohl."~ */ EXIT
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17289 /* ~Geh weg.~ */ GOTO 22
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17290 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.0 19.0
  SAY #17186 /* ~Er nickt gierig und läßt dich den Fingerknochen nehmen.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17291 /* ~Laß ihn dich beißen.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17292 /* ~Laß ihn dich beißen.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #17293 /* ~Laß dich nicht von ihm beißen, geh weg.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_1","GLOBALGood",-1)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 29.2
  SAY #17187 /* ~Als du aus seiner Reichweite gehst, jault er kläglich wie ein Hund, der von seinem Herrchen getreten wird...~ */
  IF ~~ THEN REPLY #17294 /* ~Geh weg.~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #17188 /* ~Er preßt den Fingerknochen fest an sich, blickt flehend zu dir auf und schüttelt den Kopf. "N-nein. Hun-gerrr!"~ */
  IF ~~ THEN REPLY #17295 /* ~"Du kriegst noch einen von mir, wenn du mir den Fingerknochen gibst."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~~ THEN REPLY #17297 /* ~Geh weg.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 11.3 13.3
  SAY #17189 /* ~Seine Augen leuchten; plötzlich ist der Fingerknochen zweitrangig. "Oh-kee."~ */
  IF ~~ THEN REPLY #17298 /* ~"Ich geh und hol etwas... Fleisch... für dich. Friß *nicht* diesen Fingerknochen, sonst kriegst du kein Fleisch. Leb wohl."~ */ DO ~SetGlobal("Marrow","GLOBAL",4)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #17190 /* ~Er jault kläglich: "H-hun-gerrr. Duuu To-ten-büch-lerrr?" Er stolpert auf dich zu und fixiert deine Arme. "Tot? Hhun-gerrr." Er streckt seine Hand nach dir aus... gelblicher Geifer läuft ihm über das Kinn.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17299 /* ~Laß ihn dich berühren.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17300 /* ~Laß ihn dich berühren.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17301 /* ~Laß ihn dich nicht berühren.~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.2 9.2 10.1 11.4 13.4 14.3 16.2 19.1
  SAY #17191 /* ~Als du gehst, reißt er den Fingerknochen vom Kordel und schluckt ihn an einem Stück hinunter, mitsamt dem Ring.~ */
  IF ~~ THEN REPLY #17307 /* ~Geh weg.~ */ DO ~SetGlobal("Marrow","GLOBAL",3)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",0)
~ THEN BEGIN 23 // from:
  SAY #17193 /* ~Er jault kläglich: "H-hun-gerrr."~ */
  IF ~~ THEN REPLY #17308 /* ~"Hier... beiß noch mal von mir ab."~ */ GOTO 29
  IF ~~ THEN REPLY #17312 /* ~"Oh je. Leb wohl."~ */ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #17194 /* ~Er stolpert auf dich zu und winselt. "H-hun-gerrr."
~ */
  IF ~~ THEN REPLY #17313 /* ~"Warum folgst du mir?"~ */ GOTO 25
  IF ~~ THEN REPLY #17314 /* ~Wahrheit: "Hör auf, mir zu folgen, oder ich töte dich. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17315 /* ~Täuschung: "Hör auf, mir zu folgen, oder ich töte dich. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17321 /* ~"Hör auf, mir zu folgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17195 /* ~Er zeigt auf deine Hände. Dabei geifert er. "Fing-errrr... Hhun-gerrr!"~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17322 /* ~"Also gut. Hier, nimm einen Bissen von meinem Arm."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 27
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17323 /* ~"Also gut. Hier, nimm einen Bissen von meinem Arm."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 26
  IF ~~ THEN REPLY #17325 /* ~Wahrheit: "Hör auf, mir zu folgen, oder ich töte dich. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17326 /* ~Täuschung: "Hör auf, mir zu folgen, oder ich töte dich. Leb wohl."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17328 /* ~"Hör auf, mir zu folgen. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #17196 /* ~Seine Zähne graben sich in das Fleisch deines Unterarmes und ziehen mit einer einzigen Halsdrehung ein Stück heraus. Zu spät bemerkst du, daß dein Körper nicht in einem Zustand war, in dem er weitere Wunden verkraften konnte. Du sinkst auf dem Boden zusammen und stirbst.~ */
  IF ~~ THEN REPLY #17329 /* ~Dunkelheit umgibt dich...~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #17197 /* ~Seine Zähne graben sich in das Fleisch deines Unterarmes und ziehen mit einer einzigen Halsdrehung ein Stück heraus. Der Schmerz ist überwältigend, aber Markfreund hockt da, als sei nichts passiert, und kaut laut schmatzend auf dem Mundvoll Fleisch herum, das er dir herausgerissen hat.~ */
  IF ~~ THEN REPLY #17330 /* ~"Hör auf, mir zu folgen. Leb wohl."~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",3)
~ THEN BEGIN 28 // from:
  SAY #17198 /* ~Er jault kläglich: "H-hun-gerrr."~ */
  IF ~~ THEN REPLY #17331 /* ~"Hier... beiß noch mal von mir ab."~ */ GOTO 29
  IF ~~ THEN REPLY #17334 /* ~"Oh je. Leb wohl."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 28.0
  SAY #17199 /* ~"Fff... fffleisch. Nicht mehr h-hun-grig..?" Der Mann greift nach deinem Arm. Geifer läuft ihm aus dem irre grinsenden Mund...~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17335 /* ~Laß ihn dich beißen.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 34
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17336 /* ~Laß ihn dich beißen.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 33
  IF ~~ THEN REPLY #17337 /* ~Zieh deinen Arm weg und geh.~ */ GOTO 18
END

IF ~  Global("Marrow","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #17200 /* ~Freudig klatscht er in die krallenbewehrten Hände. "Hun-gerrr! Duuu bringst Fffleisch?" Gelblicher Geifer läuft ihm über die aufgeplatzten Lippen.~ */
  IF ~~ THEN REPLY #17338 /* ~Lüge: "Ja, aber gib mir erst den Fingerknochen."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #17339 /* ~"Nein, noch nicht."~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17201 /* ~Er nickt gierig. Dann zögert er plötzlich und schnüffelt die Luft. "Duuu h-hast gar kein Fffleisch! Duuu lüüügst!"~ */
  IF ~~ THEN REPLY #17340 /* ~Lüge: "Ich... muß ihn irgendwo verloren haben. Ich bin bald wieder da."~ */ EXIT
  IF ~~ THEN REPLY #17341 /* ~"Hier, beiß statt dessen ein Stück von mir ab."~ */ GOTO 14
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #17202 /* ~"Nnnein? So... h-hungrig..." Er schaut hinunter auf den Fingerknochen und leckt sich mit seiner gelben Zunge die schorfigen Lippen.~ */
  IF ~~ THEN REPLY #17343 /* ~"Friß das nicht... ich bin gleich wieder da."
~ */ EXIT
  IF ~~ THEN REPLY #17344 /* ~"Hier, beiß statt dessen ein Stück von mir ab."~ */ GOTO 14
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #17205 /* ~Seine Zähne graben sich in das Fleisch deines Unterarmes und ziehen mit einer einzigen Halsdrehung ein Stück heraus. Zu spät bemerkst du, daß dein Körper nicht in einem Zustand war, in dem er weitere Wunden verkraften konnte. Du sinkst auf dem Boden zusammen und stirbst.~ */
  IF ~~ THEN REPLY #17346 /* ~Dunkelheit umgibt dich...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.0
  SAY #17206 /* ~Seine Zähne graben sich in das Fleisch deines Unterarmes und ziehen mit einer einzigen Halsdrehung ein Stück heraus. Der Schmerz ist überwältigend, aber Markfreund hockt da, als sei nichts passiert, und kaut laut schmatzend auf dem Mundvoll Fleisch herum, das er dir herausgerissen hat.~ */
  IF ~~ THEN REPLY #17347 /* ~"Ich... hoffe, das hilft. Leb wohl."~ */ EXIT
END
