// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSCPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSCPAT1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3072 /* ~You see a scruffy, ill-kempt man. He smells strongly of alcohol. "Yeah? Whaddya want, eh?" He leans in close and looks you up and down. "Looks like you could use a HEALER!" He laughs loudly at his own poor humor, and the nauseating stench of liquor and poorly-chewed food washes over you.~ */
  IF ~~ THEN REPLY #3372 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10782 /* ~"I'm looking for a journal. Have you seen one?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10783 /* ~"I'm looking for a Collector by the name of Pharod. Do you know anything about him?"~ */ GOTO 7
  IF ~~ THEN REPLY #10784 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10785 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10786 /* ~"Obviously, you can't help me. Good day."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #10787 /* ~"If it ain't my old friend, Sir Scar!" He chortles under his breath, or at least makes a valiant attempt. In his inebriated condition, he has trouble doing anything quietly. "What can ol' Slappy do for you, scarman?"~ */
  IF ~~ THEN REPLY #10788 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10789 /* ~"I'm looking for a journal. I seem to have misplaced it."~ */ GOTO 3
  IF ~~ THEN REPLY #10790 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10791 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10792 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 6.0
  SAY #10793 /* ~"Me? I'm ANDOR!" He weaves on his feet. "Usedta be a helluva fight man, too, but that'uz before the bub took a hold of me. Friends called me Slappy cause I was so good at doin' it to people, but now they call me Slappy cause so many women do it t'me when I talk to'm."~ */
  IF ~~ THEN REPLY #10794 /* ~"That's great. Can you answer some questions for me?"~ */ GOTO 6
  IF ~~ THEN REPLY #10795 /* ~"That's great... umm... Andor. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1 6.1
  SAY #10796 /* ~He pauses for a moment. "Well, if you lost it in the hive, issa good chance some Collector somewhere has it. Check out in the Hive s'more. They find all sorts of stuff out there. Maybe they can help you."~ */
  IF ~~ THEN REPLY #10797 /* ~"All right. I require a few more answers, please."~ */ GOTO 6
  IF ~~ THEN REPLY #10798 /* ~"Thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.2 6.3
  SAY #10799 /* ~"This place? Smold'ring Corpse. Best place in town for a drink. Leastways, long's you don't mind drinkin' near a fiend or two. Nor if you don't mind Red Death pokin' their heads in on occasion. Lots of people here. Lots of interesting things. Lots."~ */
  IF ~~ THEN REPLY #10800 /* ~"I assume you're one of the attractions, then. Answer some more questions for me."~ */ GOTO 6
  IF ~~ THEN REPLY #10801 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.4 1.3 6.4
  SAY #10802 /* ~"That? That's Ignus. He's some crazy ol' coot mage who got the bright idea t'burn down the Hive. You see the Alley of Dangerous Angles? He done that. Group o' wizards got together'n did some magicks on him and now he's a tavern theme thing... umm... mascot. My cousin was one o' the wizards. No great shakes as a mage, but he sure got this berk!"~ */
  IF ~~ THEN REPLY #10803 /* ~"That's great, Slappy. Answer some other questions for me."~ */ GOTO 6
  IF ~~ THEN REPLY #10804 /* ~"Thanks, Slappy. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0 3.0 4.0 5.0 7.0
  SAY #10805 /* ~"Whaddya need to know?"~ */
  IF ~~ THEN REPLY #10806 /* ~"Who are you?"~ */ GOTO 2
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #10807 /* ~"I'm looking for a journal. Have you seen one recently?"~ */ GOTO 3
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #10808 /* ~"I'm looking for a Collector by the name of Pharod. Do you know anything about him?"~ */ GOTO 7
  IF ~~ THEN REPLY #10809 /* ~"What can you tell me about this place?"~ */ GOTO 4
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10810 /* ~"Who is that burning by the entryway?"~ */ GOTO 5
  IF ~~ THEN REPLY #10811 /* ~"Nothing. Good day."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.2 6.2
  SAY #10812 /* ~"Pharod? The name sounds familiar, but... ah, you know how it is when you done pickled your head wi' bub, I'm sure. I just can't remember. You got my apologies, scar."~ */
  IF ~~ THEN REPLY #10813 /* ~"Very well. Then answer some other questions for me, will you?"~ */ GOTO 6
  IF ~~ THEN REPLY #10814 /* ~"Very well. Good day."~ */ EXIT
END
