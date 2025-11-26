// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DILQUIXT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DILQUIXT~

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 0 // from:
  SAY #3069 /* ~You see a broad-shouldered, hulking, dog-headed thing with four arms. One set of its heavily-muscled arms terminate in horrific, jagged pincers that look as though they could tear the very spirit from an unwilling victim. It speaks in an unexpectedly gentle voice. "Ah, traveler! I see you bring companions of worth and," it pauses to sniff the air, "a *delectable* scent. Annah, I knew your father - he toils deep in the Abyss even now. And Mistress Grace, your mother Red Shroud will surely be glad for news of your well-being."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 1 // from:
  SAY #11201 /* ~You see a broad-shouldered, hulking, dog-headed thing with four arms. One set of its heavily-muscled arms terminate in horrific, jagged pincers that look as though they could tear the very spirit from an unwilling victim. It speaks in an unexpectedly gentle voice. "Ah, traveler! I see you bring companions of worth and," it pauses to sniff the air, "a *delectable* scent. Annah, I knew your father - he toils deep in the Abyss even now."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DANNAH~ 79
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 2 // from:
  SAY #11203 /* ~You see a broad-shouldered, hulking, dog-headed thing with four arms. One set of its heavily-muscled arms terminate in horrific, jagged pincers that look as though they could tear the very spirit from an unwilling victim. It speaks in an unexpectedly gentle voice. "Ah, traveler! I see you bring companions of worth and," it pauses to sniff the air, "a *delectable* scent. Mistress Grace, your mother Red Shroud will surely be glad for news of your well-being."~ */
  IF ~~ THEN DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXTERN ~DGRACE~ 11
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",0)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 3 // from:
  SAY #11204 /* ~You see a broad-shouldered, hulking, dog-headed thing with four arms. One set of its heavily-muscled arms terminate in horrific, jagged pincers that look as though they could tear the very spirit from an unwilling victim. It speaks in an unexpectedly gentle voice. "To rend the names of those abishai into their component syllables was most, most satisfying. I thank you for the opportunity to do so."~ */
  IF ~~ THEN REPLY #3367 /* ~"My pleasure. I would ask some questions of you..."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ GOTO 5
  IF ~~ THEN REPLY #11202 /* ~"It was my pleasure. Farewell."~ */ DO ~SetGlobal("Ilquix_TalkedToAsDemon","AR0402",1)
~ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 4 // from:
  SAY #11205 /* ~The glabrezu turns to you eagerly, as if it were an old friend. "Ah, traveler! You have returned! May I aid you in any way?" It bows to Fall-from-Grace and Annah mockingly and incidentally.~ */
  IF ~~ THEN REPLY #11206 /* ~"I would like to ask some more questions of you..."~ */ GOTO 5
  IF ~~ THEN REPLY #11207 /* ~"Not at the moment. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0 6.0 7.0 8.0 9.2 10.1 11.0 12.2 13.1 14.1 15.2 16.0 17.0 18.0 18.2 19.0
  SAY #11208 /* ~"But of course! I am only too happy to aid someone who could be a most valuable friend and ally!"~ */
  IF ~~ THEN REPLY #11209 /* ~"Tell me of yourself."~ */ GOTO 9
  IF ~~ THEN REPLY #11210 /* ~"Why were you in disguise before?"~ */ GOTO 10
  IF ~~ THEN REPLY #11211 /* ~"Tell of this tavern and its patrons."~ */ GOTO 11
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #11212 /* ~"Barkis wants me to get a resolution for this bar tab from Mochai."~ */ GOTO 12
  IF ~~ THEN REPLY #11213 /* ~"I need nothing more. Farewell."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 6 // from:
  SAY #11214 /* ~The glabrezu turns to you eagerly, as if it were an old friend. "Ah, traveler! You have returned! May I aid you in any way?" It bows to Annah mockingly and incidentally.~ */
  IF ~~ THEN REPLY #11215 /* ~"I would like to ask some more questions of you..."~ */ GOTO 5
  IF ~~ THEN REPLY #11216 /* ~"Not at the moment. Farewell."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN BEGIN 7 // from:
  SAY #11217 /* ~The glabrezu turns to you eagerly, as if it were an old friend. "Ah, traveler! You have returned! May I aid you in any way?" It bows to Fall-from-Grace mockingly and incidentally.~ */
  IF ~~ THEN REPLY #11218 /* ~"I would like to ask some more questions of you..."~ */ GOTO 5
  IF ~~ THEN REPLY #11219 /* ~"Not at the moment. Farewell."~ */ EXIT
END

IF ~  Global("Ilquix_TalkedToAsDemon","AR0402",1)
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN BEGIN 8 // from:
  SAY #11220 /* ~The glabrezu turns to you eagerly, as if it were an old friend. "Ah, traveler! You have returned! May I aid you in any way?"~ */
  IF ~~ THEN REPLY #11221 /* ~"I would like to ask some more questions of you..."~ */ GOTO 5
  IF ~~ THEN REPLY #11222 /* ~"Not at the moment. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #11223 /* ~"I? I am but a simple glabrezu, a tanar'ri - a 'demon' to the ignorant - here to walk among mortals and learn more of their ways. Some, those who I think deserving of such honor, I will offer more power for a mere pittance. For you, I would make such an offer, but the scent of order is upon your flesh, and your spirit is bound up in it. Its strength is beyond my breaking at the moment, but if you would care to assay its power at some later date," it smiles toothily, exposing a mouth of sharp, rending teeth, "perhaps we can come to some agreement."~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #11224 /* ~"Perhaps we can. Tell me more of the tanar'ri."~ */ GOTO 13
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #11225 /* ~"Perhaps we can. Tell me more of the tanar'ri."~ */ GOTO 14
  IF ~~ THEN REPLY #11226 /* ~"Perhaps. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11227 /* ~"Perhaps. But not now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.1
  SAY #11228 /* ~"I wore that disguise because it both allowed me to spy upon the abishai - who now lie dead - and because the more faint-hearted generally cower to see one of my power. Now, though, the time has come to stand forth in my true form."~ */
  IF ~~ THEN REPLY #11229 /* ~"Why now?"~ */ GOTO 17
  IF ~~ THEN REPLY #11230 /* ~"I see. I had some other questions."~ */ GOTO 5
  IF ~~ THEN REPLY #11231 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.2
  SAY #11232 /* ~"With the removal of those loathsome baatezu, this place has become even more agreeable. The scent of roasting flesh, the small power struggles, and the minor dramas combine to make this a most pleasant environment. I'd hear more screams, but then, this isn't the Abyss. The patrons here - in the main - are small thinkers and small dreamers. O is a mystery to me - I cannot understand its power, but I will. As for the others - they hold no real fascination for me. I have seen their like across countless millennia."~ */
  IF ~~ THEN REPLY #11233 /* ~"Very well. Answer some other questions, then..."~ */ GOTO 5
  IF ~~ THEN REPLY #11234 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3
  SAY #11235 /* ~"A simple resolution is certainly in order. You could slaughter her, but that might draw unwanted attentions to you. I suggest poisoning."~ */
  IF ~~ THEN REPLY #11236 /* ~"What if I just wanted to pay her tab and help her through this time?"~ */ GOTO 18
  IF ~~ THEN REPLY #11237 /* ~"I don't actually have any poison."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11238 /* ~"Thanks for the suggestion. Answer some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11239 /* ~"Thanks for the suggestion. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #11240 /* ~Ilquix nods toward Grace. "Your companion should be able to tell you much." It leers slightly, and continues, "We are proudly chaotic - we believe in the power of the individual. Of course I speak only for myself in this case." It smiles again at its irony. "Some call us evil, and perhaps we are. Yet I believe that the individual is responsible only to itself. Caring too much for others' needs is weakness. Finally, remember this: Each tanar'ri - or demon, as you mortals may call us from time to time - represents a way of thinking, a particular expression of the mind's will to power. Now count the limitless numbers of the Abyss. Truly, we demonstrate the strength of our cause in the minds of mortals."~ */
  IF ~~ THEN REPLY #11241 /* ~"So you're not actually physical beings?"~ */ GOTO 15
  IF ~~ THEN REPLY #11242 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11243 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.1
  SAY #11244 /* ~"We are proudly chaotic - we believe in the power of the individual. Of course I speak only for myself in this case." It smiles again at its irony. "Some call us evil, and perhaps we are. Yet I believe that the individual is responsible only to itself. Caring too much for others' needs is weakness. Finally, remember this: Each tanar'ri - or demon, as you mortals may call us from time to time - represents a way of thinking, a particular expression of the mind's will to power. Now count the limitless numbers of the Abyss. Truly, we demonstrate the strength of our cause in the minds of mortals."~ */
  IF ~~ THEN REPLY #11245 /* ~"So you're not actually physical beings?"~ */ GOTO 15
  IF ~~ THEN REPLY #11246 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11247 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.0 14.0
  SAY #11248 /* ~"Of course we are physical - as long as we remain here, in the Outer Planes. Yet this is the place where all thoughts are made corporeal. What we truly are is a representation. Our strength grows as the belief in our cause grows on the Prime Material. This is the reason we recruit among mortals who do not even suspect our presence in their hearts and minds."~ */
  IF ~~ THEN REPLY #11249 /* ~"That's disgusting. They should be allowed their own free will and their own choices."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_IlquixT_One","GLOBALGood",1)
~ GOTO 16
  IF ~~ THEN REPLY #11250 /* ~"If they're too weak to resist you, or if they invite you, then they deserve whatever they get."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_IlquixT_One","GLOBALGood",-1)
~ GOTO 16
  IF ~~ THEN REPLY #11251 /* ~"I see. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11252 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #11253 /* ~"They do have free will, scarred flesh. We could have no foothold if they would just resist us. It is their weakness that dooms them. If they would only strengthen themselves, we could achieve nothing. As it is, they do not, and so we grow stronger. It is the way of existence." It smiles. "And if it were not, we would make it our way."~ */
  IF ~~ THEN REPLY #11254 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11255 /* ~"Thank you for the education. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0
  SAY #11256 /* ~"Because now is the time I have chosen. I have my reasons, little immortal, and I shall not reveal them simply because of your curiosity. Unless, of course, you can *make* me..."~ */
  IF ~~ THEN REPLY #11257 /* ~"I'd rather ask some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11258 /* ~"If you insist. Prepare to die."~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0
  SAY #11259 /* ~"If you really wanted to do that, then why did you ask a fiend for advice? Come now. Surely poison is the best answer to this problem."~ */
  IF ~~ THEN REPLY #11260 /* ~"No, I think I'll try some other method. Answer some other questions for me..."~ */ GOTO 5
  IF ~  !PartyHasItem("Embalm")
~ THEN REPLY #11261 /* ~"Part of the problem is that I don't actually have any poison."~ */ DO ~GiveItemCreate("Embalm",Protagonist,1,0,0)
~ GOTO 19
  IF ~~ THEN REPLY #11262 /* ~"I'll think about it. Answer some other questions for me..."~ */ GOTO 5
  IF ~~ THEN REPLY #11263 /* ~"Perhaps. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 12.1 18.1
  SAY #11264 /* ~"You have no poison? Then allow me to provide you with some!" It concentrates for a moment, and a jar of fluid appears in its claw. "You may recognize this as the embalming fluid the Dustmen use," it purrs. "It should be a relatively painless death, should you have any qualms about that." The fiend thrusts the poison into your hands.~ */
  IF ~~ THEN REPLY #11265 /* ~"My thanks. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #11266 /* ~"My thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #2072 /* ~The fiend looks amused, and turns to you. "Have you not yet taught her manners, traveler?"~ */
  IF ~~ THEN REPLY #2073 /* ~"Annah, still yourself."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ EXTERN ~DANNAH~ 80
  IF ~~ THEN REPLY #2077 /* ~"No. She's her own person, and speaks her own mind."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)
~ EXTERN ~DANNAH~ 81
END
