// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CELESTI2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~CELESTI2~

IF ~  Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 0 // from:
  SAY #59104 /* ~You hold Celestial Fire in your hands, and the blade flares with white fire, singing into your mind. The knowledge that you can shape this weapon to your needs *once* is suddenly gleamingly clear to you.~ */
  IF ~~ THEN REPLY #64490 /* ~Will it to become a hammer.~ */ DO ~TransformPartyItem("Celesti2","CFHammer",1,0,0)
~ GOTO 2
  IF ~~ THEN REPLY #64491 /* ~Will it to become an axe.~ */ DO ~TransformPartyItem("Celesti2","CFAxe",1,0,0)
~ GOTO 3
  IF ~~ THEN REPLY #64492 /* ~Will it to become a club.~ */ DO ~TransformPartyItem("Celesti2","CFClub",1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #64493 /* ~Will it to become spiked gauntlets.~ */ DO ~TransformPartyItem("Celesti2","CFFist",1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #64494 /* ~Will it to become a fine dagger.~ */ DO ~TransformPartyItem("Celesti2","CFDagger",1,0,0)
~ GOTO 6
  IF ~~ THEN REPLY #64495 /* ~Leave the blade as is for now.~ */ EXIT
END

IF ~  !Alignment(Protagonist,LAWFUL_GOOD)
~ THEN BEGIN 1 // from:
  SAY #64496 /* ~The heavy blade sits inert in your hands, a mass of silvery metal of exquisite beauty. It does nothing, no matter how hard you exert your will.~ */
  IF ~~ THEN REPLY #64497 /* ~Leave it alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #64498 /* ~The blade of the weapon stretches, the edges dulling for a moment, and the metal flows toward the head of sword with amazing speed. In a matter of moments, the transformation of the blade into a well-balanced hammer is complete. It is a gorgeous piece of work.~ */
  IF ~~ THEN REPLY #64507 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1
  SAY #64499 /* ~The blade of the weapon stretches, the edges disappearing as the blade rounds itself into a cylinder. Metal flows toward the head of sword with amazing speed. In a matter of moments, the transformation of the blade into a well-balanced axe is complete. It is a gorgeous piece of work.~ */
  IF ~~ THEN REPLY #64505 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2
  SAY #64500 /* ~The crosspiece of the sword melts into the tang of the blade, even as the edges dull and round into a beautiful haft, covered in traceries identical to the ones on the former blade. In a matter of moments, the blade has completed its transformation into a fine, well-balanced club.~ */
  IF ~~ THEN REPLY #64506 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3
  SAY #64501 /* ~Your eyes are not quite able to follow the translation of the blade into gauntlets, but you can feel the metal swirling in your hands. When you separate your hands, you are holding a pair of silvery gauntlets that look absolutely beautiful - and deadly.~ */
  IF ~~ THEN REPLY #64504 /* ~"Excellent."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.4
  SAY #64502 /* ~The blade of the sword condenses, seeming to slide in on itself, and in moments, you have a miniature version of Trias' sword, with a full, hand-sized handle. It feels very serviceable.~ */
  IF ~~ THEN REPLY #64503 /* ~"Excellent."~ */ EXIT
END
