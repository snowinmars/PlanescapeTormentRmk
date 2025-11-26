// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTOMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DTOMB~

IF ~  Global("CW_Statue_Cursed","GLOBAL",0)
~ THEN BEGIN 0 // from: 1.1 4.1 5.1
  SAY #31524 /* ~The statue looks like it is about to make some angry proclamation. The sculptor has captured the essence of fury magnificently; the chiseled tension lines around the neck and forehead alone must have taken many long months to get correct. Fine cracks run over the entire statue, and there is a plaque attached to its base.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31530 /* ~Apply the Gorgon Salve to the statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 6
  IF ~~ THEN REPLY #31531 /* ~Read the plaque.~ */ DO ~SetGlobal("CW_Know_Curse","AR0608",1)
SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 1
  IF ~  Global("CW_Got_Splinter","AR0608",0)
~ THEN REPLY #31532 /* ~Examine the cracks.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #31533 /* ~Leave the statue.~ */ DO ~SetGlobal("View_Art_Tomb","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.2 4.2 5.2
  SAY #31534 /* ~The plaque reads: 'This statue is believed to be the final fate of the Etherserian sorcerer Gangroighydon. Attacked by a conclave of rival sorcerers at the height of his dream madness, he was imprisoned with a spell that turned his flesh into stone. Gangroighydon is said to have been frozen with a final, awful curse still upon his lips, a curse so terrible that it was *never* meant to be spoken by the lips of a living man.'~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31535 /* ~Apply the Gorgon Salve to the statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31536 /* ~Examine the statue.~ */ GOTO 0
  IF ~~ THEN REPLY #31537 /* ~Leave the statue.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #31538 /* ~You carefully examine the cracks that run, like a network of fine, black veins, along the statue's surface. At one point, near its inner arm, is a section where an entire splinter of stone looks ready to come off.~ */
  IF ~  PartyHasItem("Fhammer")
~ THEN REPLY #31539 /* ~Break the piece off.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Statue_2","GLOBALLaw",-1)
~ GOTO 3
  IF ~  !PartyHasItem("Fhammer")
~ THEN REPLY #31540 /* ~Break the piece off.~ */ GOTO 5
  IF ~~ THEN REPLY #31541 /* ~Read the plaque.~ */ GOTO 1
  IF ~~ THEN REPLY #31542 /* ~Leave the statue.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #31543 /* ~You reach for the section of the forearm where the cracks have formed, grip it firmly, and strike it with your forge-hammer. There is the barest sound of metal striking on stone, and a splinter the size of a dagger snaps off the statue.~ */
  IF ~~ THEN REPLY #31544 /* ~"Got it..."~ */ DO ~GiveItemCreate("Splinter",Protagonist,15,0,0)
SetGlobal("CW_Got_Splinter","AR0608",1)
AddexperienceParty(4000)
~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31545 /* ~As it comes free, you feel water begin to trickle on the back of your hand... you watch a tear well up in the eyes of the statue as a splinter of the arm comes off in your hands. You quickly - and quietly - tuck away the splinter and turn away from the crying statue.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31546 /* ~Apply the Gorgon Salve to the statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31547 /* ~Examine the statue.~ */ GOTO 0
  IF ~~ THEN REPLY #31548 /* ~Read the plaque.~ */ GOTO 1
  IF ~~ THEN REPLY #31549 /* ~Leave the statue.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1
  SAY #31550 /* ~You reach for the section of the forearm where the cracks have formed, grip it firmly, and yank - to no avail. You'll need a hammer to break the stone, and a small one: the limited space between the statue's arm and body means a large one... one suitable for combat, for instance... won't work.~ */
  IF ~  PartyHasItem("Gsalve")
Global("CW_Know_Curse","AR0608",1)
~ THEN REPLY #31551 /* ~Apply the Gorgon Salve to the statue.~ */ DO ~DestroyPartyItem("Gsalve",TRUE)
IncrementGlobalOnceEx("GLOBALChaotic_Statue_1","GLOBALLaw",-1)
SetGlobal("CW_Statue_Cursed ","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #31552 /* ~Examine the statue.~ */ GOTO 0
  IF ~~ THEN REPLY #31556 /* ~Read the plaque.~ */ GOTO 1
  IF ~~ THEN REPLY #31557 /* ~Leave the statue.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 0.0 1.0 4.0 5.0
  SAY #31558 /* ~You smear the foul-smelling ointment over the statue. There is a strange shimmering around the statue, and you watch as the statue takes an intake of breath and the eyes of Gangroighydon fill with a blazing, vengeful madness.~ */
  IF ~~ THEN REPLY #31559 /* ~"Greetings..."~ */ GOTO 7
  IF ~~ THEN REPLY #31560 /* ~Cover your ears.~ */ GOTO 7
  IF ~~ THEN REPLY #31561 /* ~Run like mad.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #31562 /* ~Before you can do a thing, a blazing torrent of words flies from the sorcerer's lips. As he speaks, you feel an agonizing sensation, like a sudden wave of raging heat, pour over you and settle into your skin like a blistering wound. Blindness strikes you as your eyes burst, running from their sockets like shattered eggs... you hear someone screaming, and realize it is you...~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #31563 /* ~Wait for the horror to end.~ */ DO ~AddexperienceParty(4000)
IncrementGlobal("Morte_Taunt","GLOBAL",2)
~ GOTO 8
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #31564 /* ~Fall into darkness, a victim of Gangroighydon's Awful Curse.~ */ DO ~AddexperienceParty(4000)
OpenDoor("Statue")
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31565 /* ~The last things you hear, even over your own cries, is Morte shouting...~ */
  IF ~~ THEN EXTERN ~DMORTE~ 298
END

IF ~  Global("CW_Statue_Cursed","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY #66515 /* ~The 'statue' - in truth the once-petrified sorcerer Gangroighydon - is simply gone, presumably having walked off without leaving so much as a note of apology.~ */
  IF ~~ THEN REPLY #66516 /* ~Leave.~ */ EXIT
END
