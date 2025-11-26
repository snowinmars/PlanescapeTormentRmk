// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_RA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_RA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51466 /* ~This sickly green stone is securely fastened to the pedestal it rests upon. The inscription beneath it reads, "The Messenger."~ */
  IF ~  Global("Ravel","GLOBAL",0)
~ THEN REPLY #51467 /* ~Begin the sensation.~ */ GOTO 2
  IF ~  GlobalGT("Ravel","GLOBAL",0)
~ THEN REPLY #53012 /* ~Begin the sensation.~ */ GOTO 1
  IF ~~ THEN REPLY #53013 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #53014 /* ~You touch the stone, but there is no stirring in your mind... it's as if the stone is inert... dead, somehow.~ */
  IF ~~ THEN REPLY #53015 /* ~Leave the stone alone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #53016 /* ~As you touch the stone, its green exterior sharpens, clashing, its brightness becoming more than you can bear, so much so you close your eyes to shut it out...~ */
  IF ~~ THEN REPLY #53017 /* ~Close your eyes, submerge into the experience...~ */ GOTO 4
  IF ~~ THEN REPLY #53018 /* ~Shake off the experience, let go of the stone.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 4.1 5.3 6.1 7.2 8.1 9.2 10.1 19.1 21.0
  SAY #53019 /* ~Your vision clears, until you are standing once again before the hideously green stone... it looks different than before, more... horrid, somehow.~ */
  IF ~~ THEN REPLY #53020 /* ~Try and shake off the experience, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #53021 /* ~As you close your eyes, you feel the skin along your arms become numb, as if all sensation is being bled from them. Tired... so tired. You try and blink, yet the darkness remains; your lids feel soft and sluggish, unresponsive. You are sitting on what feels to be a dirt floor, and around you, is the smell of coppery blood and... herbs? Why are you here? You came here to - what? Your memory fails you, but you feel a growing panic beginning to well up within you...~ */
  IF ~~ THEN REPLY #53022 /* ~Try and get your bearings...~ */ GOTO 5
  IF ~~ THEN REPLY #53023 /* ~Stir yourself from the experience.~ */ GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #53024 /* ~"Ah... awake now, are you? A-questioning all-a-done?" The voice is an old woman's, thick and scratchy, as if it is trying to force its way past a thick layer of dust. Try as you might, you cannot open your eyes and see the woman, but you feel a shiver of fear. Something is wrong, terribly wrong. You try to respond, but all you can manage is a ragged *croak.* You can't feel your tongue... and your eyes? What's wrong with your eyes?~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53025 /* ~"Ravel? Ravel, it is I!"~ */ GOTO 9
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53026 /* ~"Ravel? I have returned."~ */ GOTO 9
  IF ~~ THEN REPLY #53027 /* ~Listen...~ */ GOTO 6
  IF ~~ THEN REPLY #53028 /* ~Stir yourself from the experience.~ */ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.2
  SAY #53029 /* ~"Now, a-see me you did, a-spoke you did and *poorly,* so the price have you paid, hmnnn?" The crone sounds amused, then her tone drops sharply. "No more of your questions; now you will LISTEN, and you will a-member my words, for in minding me, you shall *live.*" She hisses. "Nod if you hear me, or ANOTHER bit shall I a-take."~ */
  IF ~~ THEN REPLY #53030 /* ~Nod.~ */ GOTO 7
  IF ~~ THEN REPLY #53031 /* ~Stir yourself from the experience.~ */ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #53032 /* ~"A-member me, traveler. A-member me to a stone, one of the pretty glimmers in your Festive hall - use it like a cup, pour what you *feel* into it, and know this: A-member me to a man who wears a skin of scars n' tattoos, who seeks memories but has miss-placed them; if smart he is, he will know the knowing of ME. Tell him to find me - or if I am not to be found, tell him to come to the glimmer-stone, and we shall speak, my precious man and I." The woman pauses, then hisses again. "NOD if you a-hear me, ragged thing!"~ */
  IF ~  GlobalLT("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53033 /* ~Nod.~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",1)
~ GOTO 8
  IF ~  GlobalGT("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53030 /* ~Nod.~ */ GOTO 8
  IF ~~ THEN REPLY #53034 /* ~Stir yourself from the experience.~ */ GOTO 3
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1
  SAY #53035 /* ~"Ah... pretty, polite to a-listen so long... when he comes to the glimmer-stone, tell the man to speak my *name,* and your pain shall not have been in vain..." The crone's voice trails off, as if distracted. You try to speak again, but there is only a sick gurgling noise. What happened? Who is this person? Why are you... and you begin to feel yourself slip into unconsciousness...~ */
  IF ~  GlobalGT("Know_Ravel","GLOBAL",0)
~ THEN REPLY #53036 /* ~"Ravel! Ravel, it is I!"~ */ JOURNAL #53038 /* ~I encountered a horrid stone in the Private Sensorium in the Festhall. It was a ghastly green stone that held an experience of someone at Ravel's mercy, being tortured so that he would carry the experience back to the Festhall... and eventually, to me. In it, Ravel said that I should speak her name if I found the stone, so I did... ~ */ GOTO 9
  IF ~~ THEN REPLY #53037 /* ~Stir yourself from the experience.~ */ JOURNAL #53039 /* ~I encountered a horrid stone in the Private Sensorium in the Festhall. It was a ghastly green stone that held an experience of someone being tortured so that he would carry the experience back to the Festhall... and eventually, to me. The evil old woman in the experience said that should I find this stone, I should speak her name. The maddening thing is I have no idea who the woman is. If I can find her name, I will return.~ */ GOTO 3
END

IF ~~ THEN BEGIN 9 // from: 5.0 5.1 8.0
  SAY #53040 /* ~There is silence. ~ */
  IF ~  Global("Know_Ravel_Stone","AR0604",1)
~ THEN REPLY #53041 /* ~"Ravel..?"~ */ DO ~SetGlobal("Know_Ravel_Stone","AR0604",2)
GiveExperience(Protagonist,6000)
~ GOTO 10
  IF ~  Global("Know_Ravel_Stone","AR0604",2)
~ THEN REPLY #53042 /* ~"Ravel...? It is I, again."~ */ GOTO 10
  IF ~~ THEN REPLY #53043 /* ~Stir yourself from the experience.~ */ GOTO 3
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #53044 /* ~"Ahhh... my precious man." There is the slow shuffling of feet, and you *feel* a sharp pinprick in your left eye; you gasp, and suddenly, barely, you can SEE - with your one and only eye. You lie in a gray hut, upon a dirty floor, where blood, your bright-red blood has seeped into the surrounding gray dust. Your arms are gone, your legs have been hacked off at the knees. Yet... you feel numbed, and there is no pain... only fear. There is someone above you, someone looking down on you...~ */
  IF ~~ THEN REPLY #53045 /* ~Look up.~ */ GOTO 11
  IF ~~ THEN REPLY #53046 /* ~Stir yourself from the experience.~ */ GOTO 3
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #53047 /* ~As you look up through your bloody, blurred vision, you see a horrid bluish gray face, grinning with yellowed tusks. "Ravel is *pleased* - a-wondering I was if this messenger would make it, for *weak* he was when his bits were placed on my plate..." She holds up a talon in front of you, and impaled on the tip of it is an eyeball - the right one. "Yet to the Festive hall he returned it a-seems, and our time two-together has he shared. And now you have come... success!"~ */
  IF ~~ THEN REPLY #53048 /* ~"Ravel... I have many questions for you."~ */ GOTO 12
  IF ~~ THEN REPLY #53049 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #53050 /* ~The crone shakes her head, your blurred vision seeing three images at once; her grayish hair is like brambles, drifting down her shoulders. "No, only time for answers does Ravel have, and she has no time to a-waste with your guess-questions. Know this, and in the knowing grow strong: you must FIND me, my precious man."~ */
  IF ~~ THEN REPLY #53051 /* ~"But how? I do not know-"~ */ JOURNAL #53053 /* ~That sensory stone in the Private Sensorium held an experience with Ravel inside it, and I was actually able to speak to her through it, though I don't know how. She told me that I needed to find her, and to find her I would need to "find a door, know the key, and unlock the key." I'm hazy on what she said about each, but I have a suspicion I can return to the stone if I need any more clues.~ */ GOTO 13
  IF ~~ THEN REPLY #53052 /* ~"I cannot stay, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #53054 /* ~"Tchhh! I am beyond knowing, in a Lady's place. Now shhh-and-a-listen to Ravel, for there is much you must do - to find me, a-three things must you do: find the door, know the key, then *unlock* the key."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53055 /* ~"Door?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53056 /* ~"Door?"~ */ GOTO 15
  IF ~~ THEN REPLY #53057 /* ~"Key?"~ */ GOTO 16
  IF ~~ THEN REPLY #53058 /* ~"Unlock the key?"~ */ GOTO 18
  IF ~~ THEN REPLY #53059 /* ~"Ravel... how am I talking to you, if this is someone else's experience?"~ */ GOTO 22
  IF ~~ THEN REPLY #53060 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 14 // from: 13.0 16.1 17.0 18.0 22.0
  SAY #53061 /* ~"The door is not a finished thing... at least, when I last gazed upon it, hmnnn? But in the passing of time, perhaps now well-wrought it is. Go to the place of forges and steel; perhaps there you will find the door that takes one to me..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53062 /* ~"Ravel, I know that the key is a piece of you, but I don't know how to find it- "~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53063 /* ~"What is the key you speak of?"~ */ GOTO 16
  IF ~~ THEN REPLY #53064 /* ~"Unlock the key? What do you mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #53065 /* ~"Ravel... how am I talking to you, if this is someone else's experience?"~ */ GOTO 22
  IF ~~ THEN REPLY #53066 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.2 17.1 18.1 22.1
  SAY #53067 /* ~"The door is a finished thing, and you carry it with you now... very good, very *clever,* my precious man... one part of the finding Ravel do you have..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53068 /* ~"Ravel, I know that the key is a piece of you, but I don't know how to find it- "~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53069 /* ~"What is the key you speak of?"~ */ GOTO 16
  IF ~~ THEN REPLY #53070 /* ~"Unlock the key? What do you mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #53071 /* ~"Ravel... how am I talking to you, if this is someone else's experience?"~ */ GOTO 22
  IF ~~ THEN REPLY #53072 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 16 // from: 13.2 14.1 15.1 18.3 22.3
  SAY #53073 /* ~"To KNOW of the key, speak to one of the knowing ones - many there are in the Festive Hall, *many* - yet only ONE there who knows the knowing of what the key is that you need. Loosen his tongue, and many secrets shall a-spill forth..."~ */
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53074 /* ~"Ravel, I know that the key is a piece of you, but I don't know how to find it- "~ */ GOTO 17
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53075 /* ~"What door do you speak of?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53076 /* ~"What door do you speak of?"~ */ GOTO 15
  IF ~~ THEN REPLY #53077 /* ~"When you say unlock the key, what do you mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #53078 /* ~"Ravel... how am I talking to you, if this is someone else's experience?"~ */ GOTO 22
  IF ~~ THEN REPLY #53079 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 17 // from: 14.0 15.0 16.0 18.2 22.2
  SAY #53080 /* ~"The key is OF me, is it not... knot? Eh..." The crone hisses, as if trying to gather her thoughts, and your vision blurs again. "No picture is it, no tale, no stone, but the key is something of ME, a labor of my own flesh and blood. Seek it! *Lives* it does..."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53081 /* ~"What door do you speak of?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53082 /* ~"What door do you speak of?"~ */ GOTO 15
  IF ~~ THEN REPLY #53083 /* ~"When you say unlock the key, what do you mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #53084 /* ~"Ravel... how am I talking to you, if this is someone else's experience?"~ */ GOTO 22
  IF ~~ THEN REPLY #53085 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 13.3 14.2 15.2 16.3 17.2 22.4
  SAY #53086 /* ~"A-knowing the key is NOT enough, so Ravel thinks. Knowing it and unlocking it, two tasks that must be joined... for at times, a thing knows not its nature... but you are no stranger to that..." Ravel cackles, a long, hideous cry that fills your ears with pain...~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53087 /* ~"What door do you speak of?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53088 /* ~"What door do you speak of?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53089 /* ~"Ravel, I know that the key is a piece of you, but I don't know how to find it- "~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53090 /* ~"What is the key you speak of?"~ */ GOTO 16
  IF ~~ THEN REPLY #53091 /* ~"Ravel... how am I talking to you, if this is someone else's experience?"~ */ GOTO 22
  IF ~~ THEN REPLY #53092 /* ~"Farewell, Ravel..."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 11.1 12.1 13.5 14.4 15.4 16.5 17.4 18.5 22.5
  SAY #53093 /* ~"Return - I will give what help I can..." Ravel gives a final smile, a horrible, yellow fanged grin; a blackish tongue darts from her lips and lingers at the edge, teasing. "But in the end, only the one question remains..."~ */
  IF ~~ THEN REPLY #53094 /* ~"What do you mean, Ravel?"~ */ GOTO 20
  IF ~~ THEN REPLY #53095 /* ~Let the experience go...~ */ GOTO 3
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #53096 /* ~"Only one question, this I ask..." Ravel's eyes blaze like fires, the red light turning her face blood-red. "What can change the nature of a man?"~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #53098 /* ~At the question, you feel a tremor pass through, like thunder, and you feel yourself *burn*...~ */
  IF ~~ THEN REPLY #53099 /* ~Let the experience go...~ */ GOTO 3
END

IF ~~ THEN BEGIN 22 // from: 13.4 14.3 15.3 16.4 17.3 18.4
  SAY #53100 /* ~"Of stones and experiences and telling will Ravel do, but not the telling of how she speaks to you now." She speaks soothingly. "Many are the branchings and twistings of Ravel, and many are her *secrets.* I need you, and I need you knowing of this."~ */
  IF ~  !PartyHasItem("Uportal")
~ THEN REPLY #53101 /* ~"What door do you speak of?"~ */ GOTO 14
  IF ~  PartyHasItem("Uportal")
~ THEN REPLY #53102 /* ~"What door do you speak of?"~ */ GOTO 15
  IF ~  GlobalGT("Know_Ravel_Key","GLOBAL",0)
GlobalLT("Know_Ravel_Key","GLOBAL",2)
~ THEN REPLY #53103 /* ~"Ravel, I know that the key is a piece of you, but I don't know how to find it- "~ */ GOTO 17
  IF ~  Global("Know_Ravel_Key","GLOBAL",0)
~ THEN REPLY #53104 /* ~"What is the key you speak of?"~ */ GOTO 16
  IF ~~ THEN REPLY #53105 /* ~"When you say unlock the key, what do you mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #53106 /* ~"Farewell, Ravel..."~ */ GOTO 19
END
