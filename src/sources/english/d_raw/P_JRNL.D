// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : P_JRNL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~P_JRNL~

IF ~  Global("P_Journal","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #45746 /* ~This heavy dodecahedron - about the size of both your fists balled together - seems inexplicably familiar to you. Its texture is cold and smooth, but whether it's metal or stone, you cannot tell. A certain, almost intangible 'tension' runs over the object, as if it were ready to spring into the air at any moment.~ */
  IF ~~ THEN REPLY #45747 /* ~Examine the dodecahedron closely.~ */ GOTO 1
  IF ~~ THEN REPLY #46207 /* ~Put it away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46208 /* ~Upon closer examination, you realize that each side of the dodecahedron is a plate that can be twisted clockwise or counter-clockwise... it appears to be a puzzle-box or combination lock. As each of the pentagonal plates has five possible positions, the dodecahedron has no less than two hundred forty-four million, one hundred forty thousand, six hundred twenty-five 'settings.' It would take every second of the next seventy-seven-odd years to hit all the combinations - but then, you *might* just get lucky and stumble onto a solution in minutes...~ */
  IF ~~ THEN REPLY #46209 /* ~Fiddle with it for a bit.~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 2
  IF ~~ THEN REPLY #46210 /* ~Just put it away.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46211 /* ~As you methodically twist the cold, gray facets of the dodecahedron, a strange sensation forms at the base of your skull. Your hands seem to move of their own accord, turning the object and spinning its facets with mechanical precision. You've done this before... you knew the combinations, once... and you also become aware that there's a certain *danger* within the object. Whether it's from simple traps or something less mundane, though, you cannot recall.~ */
  IF ~  CheckStatGT(Protagonist,8,INT)
~ THEN REPLY #46212 /* ~Keep working at the dodecahedron.~ */ DO ~SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatLT(Protagonist,9,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46213 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,9,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46214 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46215 /* ~In moments, you have what might be the first four sides locked into their proper places. As you begin to twist the fifth side of the dodecahedron, you recall a cunning blade-trap that would snap out to lash at a meddler's hands, slashing their wrists and severing fingers. You avoid the trap with the proper number of rotations, certain that you've made progress in the unraveling of the object's secret.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46216 /* ~Keep working at the dodecahedron.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46217 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46218 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46219 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 13.0
  SAY #46220 /* ~After avoiding the dodecahedron's springing blades, you slowly puzzle out the next series of facet positions. As you start to turn the ninth side of the dodecahedron, you suddenly remember a second trap - jets of toxic gas that would form a billowing cloud of lethal, corrosive vapor around a curious meddler. You circumvent the trap with the correct amount of twists, positive that you've nearly unlocked the dodecahedron.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46221 /* ~Keep working at the dodecahedron.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46222 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46223 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46224 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #46225 /* ~You circumvent the dodecahedron's poisonous gas trap, and begin your work on the final facet positions. Just as you're locking the twelfth pentagon into place, you recollect sorcerous runes hidden within the dodecahedron that would blast the unwitting holder with bolts of magical lightning. After disarming the trap with the correct number of facet rotations, the dodecahedron *clicks* and begins to open in your hands...~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #46226 /* ~In moments, you have what might be the first four sides locked into their proper places. As you begin to twist the fifth side of the dodecahedron, razor-sharp blades snap out of the crevices between the spinning facets and the dodecahedron itself, slashing at your wrists and almost severing several fingers. Gritting your teeth in pain, you reach down to pick the dodecahedron up from where you dropped it... and suddenly recall how to circumvent that particular trap.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46227 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46228 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46229 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.2
  SAY #46230 /* ~In moments, you have what might be the first four sides locked into their proper places. As you begin to twist the fifth side of the dodecahedron, razor-sharp blades snap out of the crevices between the spinning facets and the dodecahedron itself, slashing at your wrists and severing several fingers. You drop the blood-spattered dodecahedron, collapsing to the ground as your life-blood flows from the rents in your wrists... and suddenly, as your world fades to black, you recall how to circumvent that particular trap.~ */
  IF ~~ THEN REPLY #46231 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.0 13.1
  SAY #46232 /* ~After avoiding the dodecahedron's springing blades, you slowly puzzle out the next series of facet positions. As you start to turn the ninth side of the dodecahedron, jets of toxic gas spurt a billowing cloud of corrosive vapor into your face. Half blind, dizzy and vomiting painfully, you - a bit too late - remember how to avoid that trap as well.~ */
  IF ~  HPGT(Protagonist,25)
~ THEN REPLY #46233 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 10
  IF ~  HPLT(Protagonist,26)
~ THEN REPLY #46234 /* ~Keep working at the dodecahedron.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #46235 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 3.2 6.1 13.2
  SAY #46236 /* ~After avoiding the dodecahedron's springing blades, you slowly puzzle out the next series of facet positions. As you start to turn the ninth side of the dodecahedron, jets of toxic gas spurt a billowing cloud of corrosive vapor into your face. You reel about for a moment - half blind, dizzy and vomiting painfully as you approach death - before remembering how to avoid that trap. You expire in a tangled heap, body twisted in agony but still clutching the dodecahedron to your scarred chest.~ */
  IF ~~ THEN REPLY #46321 /* ~Fall into darkness...~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 4.1 8.0 14.1
  SAY #46237 /* ~You circumvent the dodecahedron's poisonous gas trap, and begin your work on the final facet positions. Just as you're locking the twelfth pentagon into place, sorcerous runes hidden within the dodecahedron unleash a tiny storm of magical lightning - arcs of crackling blue light run up your arms, leaving smoking trails of black, ruined flesh in their wake.

After allowing your muscles to cease their spasms and picking yourself back up, you recall how to avoid that trap. After making a final adjustment to the twelfth facet, the dodecahedron *clicks* and begins to open in your hands...~ */
  IF ~~ THEN REPLY #16191 /* ~Continue...~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 4.2 8.1 14.2
  SAY #46238 /* ~You circumvent the dodecahedron's poisonous gas trap, and begin your work on the final facet positions. Just as you're locking the twelfth pentagon into place, sorcerous runes hidden within the dodecahedron unleash a tiny storm of magical lightning - arcs of crackling blue light run up your arms, leaving smoking trails of black, ruined flesh in their wake. As you collapse twitching to the ground, you remember how to avoid the trap - but the damage has been done, and you begin to die from massive shock and nerve damage...~ */
  IF ~~ THEN REPLY #46615 /* ~"How could... such a... *guh*"~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 10.0 15.0
  SAY #46239 /* ~The dodecahedron splits once, twice, and eventually unfolds itself impossibly into a perfectly rectangular tablet the size of a large book. Etched into its surface are a series of bizarre symbols. It looks to be a code or language that you feel should be familiar to you... but it's not. Further examination of the tablet reveals that, by twisting the pentagonal facets that are now upon the underside of the tablet, different 'pages' may be displayed across the tablet's face. You finally realize that the dodecahedron is a tome or journal of some sort.~ */
  IF ~~ THEN REPLY #46240 /* ~"Hmm... until I learn to read this language, I might as well just put it away."~ */ JOURNAL #56754 /* ~I was able to open the trapped dodecahedron I found, and it appears to be some sort of tome or journal. I cannot decipher the strange language it's written in, however... perhaps there's a scholar or linguist in the Festhall that can help me.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",1)
~ THEN BEGIN 13 // from:
  SAY #46241 /* ~You heft the cold, gray dodecahedron up to examine it carefully, now aware of the springing blade trap it holds for the incautious user.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46242 /* ~Work at the dodecahedron some more.~ */ DO ~SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,13,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46243 /* ~Work at the dodecahedron some more.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,13,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46244 /* ~Work at the dodecahedron some more.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",2)
~ GOTO 9
  IF ~~ THEN REPLY #46245 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",2)
~ THEN BEGIN 14 // from:
  SAY #46246 /* ~You heft the cold, gray dodecahedron up to examine it carefully, now aware of the springing blade and poisonous gas traps it holds for the incautious user.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #46247 /* ~Work at the dodecahedron some more.~ */ DO ~SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 5
  IF ~  CheckStatLT(Protagonist,16,INT)
HPGT(Protagonist,25)
~ THEN REPLY #46248 /* ~Work at the dodecahedron some more.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 10
  IF ~  CheckStatLT(Protagonist,16,INT)
HPLT(Protagonist,26)
~ THEN REPLY #46249 /* ~Work at the dodecahedron some more.~ */ DO ~Damage(Protagonist,LOWER,25)
SetGlobal("P_Journal","GLOBAL",3)
GiveExperience(Protagonist,5000)
~ GOTO 11
  IF ~~ THEN REPLY #46250 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",3)
~ THEN BEGIN 15 // from:
  SAY #46251 /* ~You heft the cold, gray dodecahedron up to examine it carefully, now aware of the various deadly traps it holds for the incautious user and how to avoid them entirely.~ */
  IF ~~ THEN REPLY #46252 /* ~Unfold it.~ */ GOTO 12
  IF ~~ THEN REPLY #46253 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #46254 /* ~You heft the cold, gray dodecahedron up to examine it carefully, now aware of the various deadly traps it holds for the incautious user and how to avoid them entirely. Having learned the dead language of the Uyo, you'll at last be able to decipher its contents...~ */
  IF ~~ THEN REPLY #46255 /* ~Unfold the dodecahedron and read it.~ */ DO ~GiveExperience(Protagonist,10000)
SetGlobal("P_Journal","GLOBAL",5)
SetGlobal("Journal","GLOBAL",1)
~ JOURNAL #66194 /* ~I've at last managed to unlock the last of the dodecahedron puzzle-box's secrets - it turns out it's a journal, penned by one of my less-than-sane earlier incarnations.~ */ GOTO 17
  IF ~~ THEN REPLY #46256 /* ~Put the dodecahedron away.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #46257 /* ~The tablet turns out to be a journal of sorts... one kept by some prior incarnation of yourself, it would seem - and not an altogether sane one, either. There are only a handful of completely coherent sections.~ */
  IF ~~ THEN REPLY #46258 /* ~Browse through it.~ */ GOTO 19
  IF ~~ THEN REPLY #46259 /* ~Put the journal away.~ */ EXIT
END

IF ~  Global("P_Journal","GLOBAL",5)
~ THEN BEGIN 18 // from:
  SAY #46260 /* ~You heft up the cold, gray dodecahedron - a previous incarnation's encrypted and thrice-trapped journal.~ */
  IF ~~ THEN REPLY #46261 /* ~Unfold the journal and read through it.~ */ GOTO 19
  IF ~~ THEN REPLY #46262 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 18.0 20.0 21.0 22.0 23.0 24.0 25.1 26.0 27.0 28.0 29.1 30.1 31.1 32.0 33.0 34.0
  SAY #46263 /* ~What do you wish to read about?~ */
  IF ~~ THEN REPLY #46264 /* ~Read about 'whispering shadows.'~ */ GOTO 20
  IF ~~ THEN REPLY #46265 /* ~Read about a female ghost.~ */ GOTO 21
  IF ~~ THEN REPLY #46266 /* ~Read about hiding something within your own body.~ */ GOTO 22
  IF ~~ THEN REPLY #46267 /* ~Read some paranoid ranting.~ */ GOTO 23
  IF ~~ THEN REPLY #46268 /* ~Read about the 'accursed' tattoos.~ */ GOTO 24
  IF ~~ THEN REPLY #46269 /* ~Read about dreams and Ravel.~ */ GOTO 25
  IF ~~ THEN REPLY #46270 /* ~Read about the danger of names.~ */ GOTO 26
  IF ~~ THEN REPLY #46271 /* ~Read about the killing in the Festhall.~ */ GOTO 27
  IF ~~ THEN REPLY #46272 /* ~Read about the murder of one who tried to help you.~ */ GOTO 28
  IF ~~ THEN REPLY #46273 /* ~Read a cryptic answer from an unknown source.~ */ GOTO 29
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #46274 /* ~Read something about a legacy.~ */ DO ~SetGlobal("Know_Iannis_Fire_Responsible","GLOBAL",1)
SetGlobal("Know_Nameless_Legacy","GLOBAL",1)
~ GOTO 34
  IF ~  Global("Know_Nameless_Legacy","GLOBAL",1)
~ THEN REPLY #53673 /* ~Read something about a legacy.~ */ GOTO 34
  IF ~~ THEN REPLY #47074 /* ~Nothing; put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #46275 /* ~"The whispers are not the shadows MOVING. They are SPEAKING PLOTTING TALKING to each other. I can understand some of what they say."~ */
  IF ~~ THEN REPLY #46276 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46277 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #46278 /* ~"The book tells me things, whispers things. It tells me to avoid the ghost girl, avoid her. I DONT KNOW HER and she TORMENTS me."~ */
  IF ~~ THEN REPLY #46279 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46280 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 19.2
  SAY #46281 /* ~"And so I SWALLOWED it, hoping it'd CATCH in my BOWELS. I can make someone REMOVE it when I need to."~ */
  IF ~~ THEN REPLY #46282 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46284 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 19.3
  SAY #46283 /* ~"I have learned that MY LIFE IS NOT MY OWN. I will NOT allow you to have my life..."

"YOU will have to pull my life from my BROKEN BODY if you want it..."

"It's YOU who will DIE, if I cannot have it NEITHER will YOU."

"YOU ARE RESPONSIBLE FOR THIS TREASON OF FLESH, YOU WILL NOT LIVE TO LIVE MY LIFE."~ */
  IF ~~ THEN REPLY #46285 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46286 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 19.4
  SAY #46287 /* ~"The accursed TATTOOS will not leave my SKIN! I have tried to burn them off of my skin - FAILED, failed! I try and CLOAK myself, but I always feel that people are READING my FLESH, reading me like a BOOK. Whenever they LOOK at me I WANT TO TEAR THEIR EYES OUT pluck them from their sockets and CRUSH THEM BENEATH MY HEEL."~ */
  IF ~~ THEN REPLY #46288 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46289 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.5
  SAY #46290 /* ~"WHY CAN'T I DREAM?!"

"I used the Goblet of Semir to force a WAKING DREAM. I saw a HAG. She TEMPTED me, THREATENED me with SHADOWS! I have never SEEN her, but she came when I DREAMT. I must NOT dream again. I must always be AWARE. I DESTROYED THE GOBLET."

"She says she is someone of POWER, and that she will HAVE me, will FIND ME. Get away, HAG! Stay FAR from me! Leave me in PEACE! I want NOTHING to do with you!"~ */
  IF ~~ THEN REPLY #46291 /* ~Continue reading this portion of the journal.~ */ GOTO 33
  IF ~~ THEN REPLY #46292 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46293 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.6
  SAY #46294 /* ~"Fear NAMES. NAMES have power in identity. NAMES can be used as WEAPONS by OTHERS. They are a HOOK that can be used to TRACK YOU FIND YOU HUNT YOU across the planes. Remain NAMELESS, and you shall be SAFE."~ */
  IF ~~ THEN REPLY #46295 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46296 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 19.7
  SAY #46297 /* ~"I went to the Festhall, looking for the path of my FALSE SELF in its halls. So GLARING was it, that those I did not KNOW, the FALSE ones, WELCOMED me into their confidence, treated me as a FRIEND, showed me MY ROOM, attended to my NEEDS. I had to restrain myself from launching out against them. That would have been premature. First, I needed to PROTECT my IDENTITY. I found one who knew the exclusive language of the Uyo, learned it as I could, then KILLED him. Then I went to the sensorium and prepared to END the matter. Soon, soon..."~ */
  IF ~~ THEN REPLY #46298 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46299 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 19.8
  SAY #46300 /* ~"There is NOTHING he can do. Memories are GONE, he says, NEVER to return. He says/lies and tells me this is what he told me! LIES! He says my mind is WEAKENING from every death! LIES! He sat there, BETRAYING my CONFIDENCE with every turn.

He says that only after THREE MORE DEATHS, THREE MORE LIVES will I gain the benefit of keeping my memories, but that I, MYSELF, I will DIE when I die. DIE! How can one be immortal and still DIE?! He could not answer, so he was of NO USE. I BUTCHERED him so that no other incarnation will ever benefit from his USELESSNESS."~ */
  IF ~~ THEN REPLY #46302 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46303 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 19.9
  SAY #46301 /* ~"So the GHASTLY HEADS said:"

"YOU have been DIVIDED. YOU are ONE of MANY men. (One in MANY MEN?) You bear many NAMES; each has left their scars on your flesh..."~ */
  IF ~~ THEN REPLY #46304 /* ~Continue reading this portion of the journal.~ */ GOTO 30
  IF ~~ THEN REPLY #46305 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46306 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #46307 /* ~LOST ONE
IMMORTAL ONE
INCARNATION'S END
MAN OF A THOUSAND DEATHS
THE ONE DOOMED TO LIFE
RESTLESS ONE
ONE OF MANY
THE ONE WHOM LIFE HOLDS PRISONER
THE BRINGER OF SHADOWS
THE WOUNDED ONE
MISERY-BRINGER
YEMETH~ */
  IF ~~ THEN REPLY #46308 /* ~Continue reading this portion of the journal.~ */ GOTO 31
  IF ~~ THEN REPLY #46309 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46310 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #46311 /* ~"YOU are silvered glass that has CRACKED and the pieces scattered across history"

"ONLY ONE PIECE is of import. Regain that, and your LIFE will be yours again. There will be a price. This price will buy you a chance. Without the chance, you are DOOMED..."~ */
  IF ~~ THEN REPLY #46312 /* ~Continue reading this portion of the journal.~ */ GOTO 32
  IF ~~ THEN REPLY #46313 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46314 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #46315 /* ~"YOU HAVE LOST THAT WHICH IS NEVER MEANT TO BE SEPARATED FROM MAN. YOUR MORTALITY HAS BEEN STRIPPED FROM YOU. LOST. IT EXISTS, BUT YOU MUST FIND IT BEFORE YOUR MIND IS LOST TO YOU AS WELL."~ */
  IF ~~ THEN REPLY #46316 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46317 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.0
  SAY #46318 /* ~"Her voice reeked of evil's TALONS, talons like SPIDERS, they BURROWED into my gray matter, and I needed her OUT of my MIND. OUT! OUT, hag!"

"She was a MYTH, a FAIRY TALE who alone CHALLENGED the LADY OF PAIN! How can one FIGHT someone who is a MYTH? I don't have the WEAPONS. I need weapons that will KILL her should she FIND ME. I need a STRATEGY so she cannot defeat me when she COMES FOR ME. I must DEVISE, and THINK - I shall BEAT her."~ */
  IF ~~ THEN REPLY #46319 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #46320 /* ~Put the journal away.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 19.10 19.11
  SAY #47071 /* ~"A LEGACY, the note read, 'FORGET NOT TO COLLECT YOUR LEGACY,' and a small CODE scratched beside it: 51-AA..."

"A TRAP, no doubt, set by yet another of my FALSE SELVES. I'll see it DESTROYED, I will."~ */
  IF ~~ THEN REPLY #47079 /* ~Read something else.~ */ GOTO 19
  IF ~~ THEN REPLY #47081 /* ~Put the journal away.~ */ EXIT
END
