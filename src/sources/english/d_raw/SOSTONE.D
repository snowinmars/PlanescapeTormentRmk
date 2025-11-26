// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SOSTONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~SOSTONE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #64887 /* ~This dark stone is covered in dust, as if it has been sitting here for years - it looks like a piece of one of the statues that was chipped away. A series of strange runes and markings cover the stone, and it feels strangely familiar somehow.~ */
  IF ~~ THEN REPLY #64888 /* ~Examine the stone...~ */ GOTO 1
  IF ~~ THEN REPLY #64889 /* ~Put the stone away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #64890 /* ~As you touch the stone, a mouth appears on the side, and begins speaking, in your voice; it echoes, as if speaking within a great chamber.~ */
  IF ~~ THEN REPLY #64914 /* ~Listen...~ */ GOTO 2
  IF ~~ THEN REPLY #64915 /* ~Release the stone, let it fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #64891 /* ~"Dak'kon, Morte, Xachariah, Deionarra - it is I. I have placed a minor messaging enchantment on this stone; listen to it fully, then do as I say."~ */
  IF ~~ THEN REPLY #64912 /* ~Continue listening.~ */ GOTO 3
  IF ~~ THEN REPLY #64913 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #64892 /* ~The voice takes a breath; it sounds irritated: "I don't know how we got separated, but I think the portal that brought us here divided us. It's only a minor setback - when you find this stone, stay with it until I can rejoin you. Based on my divinations, this Fortress is the size of several cities - the less you move around, the easier it is for me to find you."~ */
  IF ~~ THEN REPLY #64910 /* ~Continue listening.~ */ GOTO 4
  IF ~~ THEN REPLY #64911 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #64893 /* ~The voice takes another breath, then becomes more detached, as if surveying something and speaking about it: "I fought my way through the first of the vaults; this place is *filled* with shadows, way too many to keep fighting - if you encounter any, run before they swarm you; they're much tougher than the other shadows we encountered before; I think the energies of the Plane feed them somehow, make them stronger."~ */
  IF ~~ THEN REPLY #64908 /* ~Continue listening.~ */ GOTO 5
  IF ~~ THEN REPLY #64909 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #64894 /* ~The voice takes another breath: "There were a series of great war relics within the vault that shifted me from place to place; I managed to lure the shadows to each machine, then shift while they swarmed where I had been. It bought me some time, time enough to escape: Once I had tripped four relics, it opened a portal out." The voice pauses, as if something just occurred to the speaker. ~ */
  IF ~~ THEN REPLY #64906 /* ~Continue listening.~ */ DO ~SetGlobal("Freed_Fortress_Shadows","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #64907 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64895 /* ~"It strikes me now that the vault I came from might be some strange sort of gatehouse - the relics seem to seal it off from both the inside *and* the outside of the Fortress. Whatever built this place likes keeping the shadows under guard so they can't run loose; the shadows don't have any substance, so they wouldn't be able to use the machines to escape the vault. Hmmm. I'll have to think about that some more..."~ */
  IF ~~ THEN REPLY #64904 /* ~Continue listening.~ */ GOTO 7
  IF ~~ THEN REPLY #64905 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #64896 /* ~"No matter - I'm in a room with a great crystal in it, and I'm going to examine it more closely before moving on." The voice pauses, as if the speaker is looking around. "There are five statues in the room, and they look like me - and they look *old,* too, like they've been here for some time."~ */
  IF ~~ THEN REPLY #64902 /* ~Continue listening.~ */ GOTO 8
  IF ~~ THEN REPLY #64903 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #64897 /* ~"As for the crystal... it doesn't seem like it belongs in the Fortress, and its size and shape reminds me of something I've read in the annals, some sort of dimensional prison that segments the soul. I don't think it's a coincidence the portal from the main vault teleported me here: I think the crystal's a trap, so *don't* touch it until we're together again - I *mean* it, Morte."~ */
  IF ~~ THEN REPLY #64900 /* ~Continue listening.~ */ GOTO 9
  IF ~~ THEN REPLY #64901 /* ~Let the stone fall silent.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #64898 /* ~"I'm going to try and find you all now. If you find this reader stone, do *not* move from this spot, or I may never find you. I have left some supplies for you in the base of one of the statues. Don't waste them - I don't know how long it's going to take for us to find our enemy and get out, and we may need those supplies later. I'll see you all soon."~ */
  IF ~~ THEN REPLY #64899 /* ~Let the stone fall silent.~ */ EXIT
END
