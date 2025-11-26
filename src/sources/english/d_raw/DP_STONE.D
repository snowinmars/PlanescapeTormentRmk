// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DP_STONE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DP_STONE~

IF ~  Global("PStone","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49785 /* ~The inscription around the base of this sensory stone indicates that it holds the experience "Week-long hunting trek across the forests of Arborea."~ */
  IF ~~ THEN REPLY #49786 /* ~Begin the sensation.~ */ DO ~SetGlobal("Pstone","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49787 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49788 /* ~You're standing in a circle of white tents deep in the woods, somewhere. The trees around you are, by far, the largest you've ever seen. Suddenly, though, there's an odd prickling sensation at the back of your skull...~ */
  IF ~~ THEN REPLY #49789 /* ~Continue experience.~ */ GOTO 3
  IF ~~ THEN REPLY #49790 /* ~Interrupt the experience, leave.~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #49791 /* ~Try as you might, you realize you cannot end the sensation. It continues unbidden, drawing your mind ever further into the experience...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #49792 /* ~Your surroundings melt into a colorless smear, then slowly resolve into what looks like the interior of a large, gray sphere. Across from you stands a figure almost identical to yourself. His eyes flash in the half-darkness; a mad smile splits his features. "I KNEW you would come..."~ */
  IF ~~ THEN REPLY #49793 /* ~"Greetings..."~ */ GOTO 4
  IF ~~ THEN REPLY #49794 /* ~"Who are you?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #49795 /* ~"Oh, 'greetings, greetings, so good to see you.'" He sneers. "I bid your MURDEROUS tongue to be silent! That's right: murderous. Your pretend innocence is LAUGHABLE!"~ */
  IF ~~ THEN REPLY #49796 /* ~"Who are you?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #49797 /* ~"Oh, don't you KNOW? Didn't all those FILTHY, LYING, THRICE-BE-DAMNED JOURNALS tell you who I am? Those journals that were so conveniently 'left' for me when I awoke... those journals that called me an INCARNATION! Hah! Burned them ALL, I did, all that I FOUND..."~ */
  IF ~~ THEN REPLY #49798 /* ~"What did they say, exactly?"~ */ GOTO 6
  IF ~~ THEN REPLY #49799 /* ~"So... you're one of my earlier incarnations?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0 7.0
  SAY #49800 /* ~"They spoke LIES, LIES, LIES and nothing more! Filth about a man who forgets himself, other incarnations, of preserving their experiences in writing so later lives could benefit... THIEVES! It's MY life; MINE! YOU ALL WANT TO STEAL MY BODY, AND YOU WON'T HAVE IT!"~ */
  IF ~~ THEN REPLY #49801 /* ~"So... you're one of my earlier incarnations?"~ */ GOTO 7
  IF ~~ THEN REPLY #49802 /* ~"Where am I?"~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #49803 /* ~He crosses his arms and looks away. "If you'd put STOCK in such TRASH, yes."~ */
  IF ~~ THEN REPLY #49804 /* ~"What did those 'lying' journals say?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #49805 /* ~"Oh, THIS?" He gestures around him, snickering. "Just a little TRAP, is all. I realized that KILLING you BODY THIEVES might not be enough... I might have to TRAP you, ENSNARE you for eternity. You may have realized, by now, that there's no way out of this sensory stone... your mind is locked here. You'll note the rather SPARSE surroundings I've left for you... all to help the MADNESS set in good and QUICK while your flesh rots away." He chuckles evilly.~ */
  IF ~~ THEN REPLY #49806 /* ~"I have some questions, then..."~ */ GOTO 10
  IF ~~ THEN REPLY #49807 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 10.3 11.3 12.3 15.4 16.1 19.4 20.3 21.3 22.3
  SAY #49808 /* ~You try and escape the experience, but nothing comes of it. Your earlier incarnation doubles over with mocking laughter. "Surrender! You'll NEVER escape! You may as well lay down and wait to fade away to NOTHING. I am the only one who can release you, and that I will not do."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49809 /* ~"Wait... but I *am* you. That means I *can* release myself..."~ */ GOTO 14
  IF ~~ THEN REPLY #49810 /* ~"I have some questions for you, then..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.1
  SAY #49811 /* ~Your earlier incarnation crosses his arms and looks away indignantly. Save for a few more tufts of hair on his head, he's identical to you - even his arms have most of the tattoos yours do.~ */
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49812 /* ~"Did you create that trapped dodecahedron?"~ */ GOTO 11
  IF ~~ THEN REPLY #49813 /* ~"How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49814 /* ~"Did you put those tattoos on?"~ */ GOTO 19
  IF ~~ THEN REPLY #49815 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 11 // from: 10.0 15.2 19.2 20.1 21.1 22.1
  SAY #49816 /* ~"I don't know what you're babbling about. Heh. Heh-heh. All right, it WAS me. BRILLIANT, wasn't it? Did you PLAY with it a bit? Lose a FINGER or an EYE, I hope?" He chortles merrily.~ */
  IF ~  Global("P_Journal","GLOBAL",5)
~ THEN REPLY #49817 /* ~"Clever, but I opened and read the thing just the same."~ */ GOTO 12
  IF ~~ THEN REPLY #49818 /* ~"How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49819 /* ~"Did you put those tattoos on?"~ */ GOTO 19
  IF ~~ THEN REPLY #49820 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49821 /* ~Your earlier incarnation looks horrified. "NO! NO! NO! IMPOSSIBLE! No one reads the language it was a written in; I slew the ONE man who understood it after he had TAUGHT me. DEAD language, DEAD linguist... a match made in Death's halls."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49822 /* ~Lie: "I could read it because I'm *you.* I'm not one of the false selves; you've trapped yourself here. I've trapped myself. Don't you see?"~ */ GOTO 13
  IF ~~ THEN REPLY #49823 /* ~"How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49824 /* ~"Did you put those tattoos on?"~ */ GOTO 19
  IF ~~ THEN REPLY #49825 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0 15.0
  SAY #49826 /* ~"But... that's not... you're one of the... I thought I put in SAFEGUARDS! How could YOU... I... be so FOOLISH!" He wrings his hands together, biting his lower lip. "How to get OUT? HOW? I've forgotten... wait: 'I am the only one who can release you, and that I will not do.' If you are I, then you CAN release yourself..."~ */
  IF ~~ THEN REPLY #49827 /* ~Try to release yourself by 'willing' the trap open.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.0
  SAY #49828 /* ~"No! No... that can't... STOP!"~ */
  IF ~~ THEN REPLY #49829 /* ~Try to release yourself by 'willing' the trap open.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 10.1 11.1 12.1 19.3 20.2 21.2 22.2
  SAY #49830 /* ~"Can't tell you that... it'll never be REPLICATED, the magicks used in its creation were LOST, even to me. CLEVER it is, though... one experience HIDDEN beneath the other, so that no FLESH but my OWN would set it off..."~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #49831 /* ~"But... if your flesh sets it off, wouldn't that mean I'm *you?* You've trapped yourself. *I've* trapped myself. Don't you see?"~ */ GOTO 13
  IF ~~ THEN REPLY #49832 /* ~"So there are actually two sensations within this stone?"~ */ GOTO 16
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49833 /* ~"Did you create that trapped dodecahedron, also?"~ */ GOTO 11
  IF ~~ THEN REPLY #49834 /* ~"Did you put those tattoos on?"~ */ GOTO 19
  IF ~~ THEN REPLY #49835 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #49836 /* ~"Yes; that of the Arborean hunting trip and that of this TRAP." He looks suddenly wary of you. "WHY?"~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #49837 /* ~Try and force your way into the other sensation through sheer willpower.~ */ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #49838 /* ~Try and force your way into the other sensation through sheer willpower.~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #49839 /* ~"What... what are you DOING? STOP THAT!"~ */
  IF ~~ THEN REPLY #49840 /* ~Continue to force your way into the other sensation.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #49841 /* ~You at last push yourself into the 'surface' experience - the Arborean hunt - and end the sensation before being pulled back into the trap.~ */
  IF ~~ THEN REPLY #49842 /* ~Leave.~ */ DO ~GiveExperience(Protagonist,500)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.2 11.2 12.2 15.3
  SAY #49843 /* ~"No!" He looks distraught. "That one incarnation, that 'PRACTICAL' one, did. I've tried to burn them off, but the skin REGENERATES with the tattoos still on them! I have tried to TEAR them off, stain them with ACID... I HATE them..."~ */
  IF ~~ THEN REPLY #49844 /* ~"But... why?"~ */ GOTO 20
  IF ~~ THEN REPLY #49845 /* ~Read the tattoos.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49846 /* ~"Did you create that trapped dodecahedron?"~ */ GOTO 11
  IF ~~ THEN REPLY #49847 /* ~"How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49848 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #49849 /* ~His eyes flicker uncomfortably. "It is maddening to feel the EYES upon you, reading your BODY like a BOOK..."~ */
  IF ~~ THEN REPLY #49850 /* ~Read the tattoos.~ */ GOTO 21
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49851 /* ~"Did you create that trapped dodecahedron?"~ */ GOTO 11
  IF ~~ THEN REPLY #49852 /* ~"How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49853 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 19.1 20.0
  SAY #49854 /* ~His eyes grow wild. "Stop that! STOP READING ME!" He tries to cover himself with his arms, turning away from you.~ */
  IF ~~ THEN REPLY #49855 /* ~Keep reading them.~ */ DO ~SetGlobal("Morte_Warning","GLOBAL",1)
~ GOTO 22
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49856 /* ~"All right. Did you create that trapped dodecahedron?"~ */ GOTO 11
  IF ~~ THEN REPLY #49857 /* ~"Fine. How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49858 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #49859 /* ~The figure's eyes grow even wilder. "STOP! Stop NOW! I'm warning you!" He turns away from huddling up to cover more of his body. You see, on his back, the list of tattooed warnings that Morte once read to you at the Mortuary. There is, however, one line at the bottom that Morte had neglected to read aloud: 'DON'T TRUST THE SKULL.' Your previous incarnation grows more and more frantic as you keep peering at him. "I'm WARNING you for the LAST TIME! STOP!"~ */
  IF ~~ THEN REPLY #49860 /* ~"You can't threaten me... you're a recorded memory, an apparition. I'll just keep reading them until you let me out of here."~ */ GOTO 23
  IF ~  GlobalGT("P_Journal","GLOBAL",0)
~ THEN REPLY #49861 /* ~"All right. Did you create that trapped dodecahedron?"~ */ GOTO 11
  IF ~~ THEN REPLY #49862 /* ~"Fine. How did you make this trap?"~ */ GOTO 15
  IF ~~ THEN REPLY #49863 /* ~Try and end the experience.~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #49864 /* ~He howls like a madman, thrashing wildly, clawing at his arms and frothing at the mouth. "OUT! OUT! OUT! OUT! OUT! OUT! OUT!" And like that, everything *ends*... you find yourself standing in the sensorium once more, slightly befuddled but quite unharmed.~ */
  IF ~~ THEN REPLY #49865 /* ~Leave.~ */ EXIT
END

IF ~  Global("PStone","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #49866 /* ~The inscription around the base of this sensory stone indicates that it holds the experience "Week-long hunting trek across the forests of Arborea." Should you touch, it, though, you'll be drawn back into that insane, early incarnation's trap.~ */
  IF ~~ THEN REPLY #49867 /* ~Leave the thing alone.~ */ EXIT
END
