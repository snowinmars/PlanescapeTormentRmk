// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLINGASH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLINGASH~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #46175 /* ~There is an urn atop this small cabinet, full of ashes and charred bits of bone. Etched into the base of the urn are the words 'Fin Andlye - Beloved Husband, Father, and Scholar of One Hundred Languages.'~ */
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46176 /* ~Use Stories-Bones-Tell on the remains.~ */ GOTO 1
  IF ~~ THEN REPLY #46177 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46178 /* ~The ashes seem to stir faintly as if moved by your breath. A far-away voice whispers up from within the urn. "Why, why have I been summoned to these ashes, cold and grey as the heart of a hag?"~ */
  IF ~~ THEN REPLY #46179 /* ~"To answer some questions, spirit..."~ */ GOTO 2
  IF ~~ THEN REPLY #46180 /* ~"No reason; farewell, spirit."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #46181 /* ~"Ask, then, so that I might return to my most quiet thoughts..."~ */
  IF ~~ THEN REPLY #46182 /* ~"Who were you?"~ */ GOTO 3
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46183 /* ~Describe to him the writing from the folding dodecahedron, ask if he knows the language.~ */ GOTO 4
  IF ~~ THEN REPLY #46184 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46185 /* ~"I was Fin, a linguist and scholar. I was murdered - murdered! - by a student of mine... murdered so that I could not teach another the language that I taught him. The tongue of the Uyo, it was, one of the rarest in the multiverse. I knew of none who spoke it, save myself and that one, damnable, murderous student..."~ */
  IF ~  PartyHasItem("P_Jrnl")
Global("P_Journal","GLOBAL",3)
~ THEN REPLY #46186 /* ~Describe to him the writing from the folding dodecahedron, ask if he knows the language.~ */ GOTO 5
  IF ~~ THEN REPLY #46187 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46188 /* ~"Yes, I know that tongue. I was a linguist and scholar, you see. I was murdered - murdered! - by a student of mine... murdered so that I could not teach another the language that I taught him. The tongue of the Uyo, it was, one of the rarest in the multiverse. I knew of none who spoke it, save myself and that one, damnable, murderous student..."~ */
  IF ~~ THEN REPLY #46189 /* ~"So can you help me learn this dead language?"~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #46190 /* ~"I could teach you this language, yes... it would please me to do so, in fact, if only to spite that bloody-handed student of long ago. First, tell me what languages you *do* speak..."~ */
  IF ~~ THEN REPLY #46191 /* ~Learn what you can from the spirit.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PlaySoundNotRanged("SPTR_01")
SetGlobal("P_Journal","GLOBAL",4)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #46193 /* ~As the spirit speaks to you of the lost language of the Uyo, there is a throbbing sensation in your temples as a memory begins to surface... memories of this language. You recall letters, words, phrases, until - like a Spire-wind blowing away the blanket of poisonous smog over the Great Foundry - the language is once more revealed to you in its entirety.~ */
  IF ~~ THEN REPLY #46194 /* ~Continue...~ */ DO ~GiveExperience(Protagonist,8000)
~ JOURNAL #39479 /* ~I spoke to the spirit of the linguist, Fin Andlye, and found that I already knew the language in which the dodecahedral puzzle-box's writings were penned. Now, at last, I'll be able to read the thing.~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #46195 /* ~There is another memory, though, bubbling to the surface... a darker one. Its presence troubles you somehow, fills you with unease and unexplained pangs of guilt...~ */
  IF ~~ THEN REPLY #46196 /* ~Repress the memory.~ */ GOTO 11
  IF ~~ THEN REPLY #46197 /* ~Allow the memory to surface.~ */ DO ~SetGlobal("Murdered_Fin","GLOBAL",1)
GiveExperience(Protagonist,4000)
PlaySoundNotRanged("SPTR_01")
~ JOURNAL #39480 /* ~While I spoke to the linguist, Fin Andlye, I recalled that I had actually murdered the man. I can only presume that it was in order to prevent him from teaching the tongue of the Uyo to anyone else, thereby keeping what I had written in the dodecahedral puzzle-box a secret.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #46198 /* ~At last, you recall Fin Andlye himself. You remember his gentle voice, his kind manner, his schooling you in the ancient language of the Uyo. You also remember your scarred, gnarled hand wrapped around his frail throat, crushing his larynx and thus ensuring that the secret contents of your journal - hidden and thrice-trapped in a dodecahedral puzzle-box and penned in the obscure language of the Uyo - would be forever safe from prying eyes...~ */
  IF ~~ THEN REPLY #46199 /* ~"Fin... I must tell you... it was me who murdered you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ashes_1","GLOBALGood",1)
~ JOURNAL #39506 /* ~I confessed to Fin Andlye that I had murdered him, and explained to him why. He forgave me, for which I am glad... and somehow, I feel as if some small burden - but a burden, nonetheless - has been lifted off of me.~ */ GOTO 9
  IF ~~ THEN REPLY #46200 /* ~"I think I understand enough of the language, now. Thanks, Fin, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #46201 /* ~The spirit is silent for a time, the ashes rustling softly within their urn. When it speaks once more, its voice is full of sorrow. "But... why... and why would you come to me once more? Did you *forget* what you had been taught?"~ */
  IF ~~ THEN REPLY #46202 /* ~"No... well, yes. It is difficult to explain, but it must have been a former 'self' of mine that murdered you. Each time I die, I reawaken, as if from long sleep... but having forgotten everything... who I was, or what I'd done..."~ */ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #46203 /* ~"I think I understand... I sense your regret, and would forgive you. May peace be with you, pupil of old, and may you prove kinder in this life than in the one which saw an end to mine..."~ */
  IF ~~ THEN REPLY #46204 /* ~"Thanks, Fin. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #46205 /* ~The spirit seems mildly confused at your apparent proficiency in the language of the Sidhi. "You seem to possess some grasp of the language already, student..."~ */
  IF ~~ THEN REPLY #46206 /* ~"Yes... I think I understand enough of the language, now. Thanks, Fin, and farewell."~ */ EXIT
END
