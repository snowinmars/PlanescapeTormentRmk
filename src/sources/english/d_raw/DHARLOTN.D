// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHARLOTN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DHARLOTN~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1809 /* ~You see a tired-looking woman dressed in a tight leather bodice and leggings. The odor of cheap perfume surrounds her like a cloud, and her face is covered with a mask of crude make-up. She smiles as she sees you. "Why doncha stay and chat wit' me a bit, love?"~ */
  IF ~~ THEN REPLY #7190 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #7191 /* ~Pass on by.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1810 /* ~The woman looks coyly at you. "Now ye look ta be a blood who's *lost* something. Mayhap I can help ye find it, cutter?" She smiles slightly.~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #7192 /* ~"Oh?"~ */ EXTERN ~DMORTE~ 37
  IF ~  Global("Journal","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7193 /* ~"I'm missing a journal."~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7194 /* ~"Maybe you can help me find what I'm missing."~ */ GOTO 3
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #7195 /* ~"Actually, I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #7196 /* ~"Not today, thanks."~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #1812 /* ~"Eh?" She seems confused. "What're ye about?"~ */
  IF ~~ THEN REPLY #7197 /* ~"Forget the journal. Maybe you can help me find what I'm *really* missing."~ */ GOTO 3
  IF ~~ THEN REPLY #7198 /* ~"I'm not missing anything, but I did have some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #7199 /* ~"Never mind. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #1813 /* ~Her tone becomes business-like. "Aye, love, now there's the matter of a finder's fee."~ */
  IF ~~ THEN REPLY #7200 /* ~"I see. How much?"~ */ GOTO 4
  IF ~~ THEN REPLY #7201 /* ~"Forget it, then. I had some questions..."~ */ GOTO 9
  IF ~~ THEN REPLY #7202 /* ~"Never mind. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #1814 /* ~"Some coppers fer a *glance* at what ye're missing, and ten coppers ta actually find what ye're missing."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7203 /* ~"Done."~ */ DO ~TakePartyGold(10)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 5
  IF ~~ THEN REPLY #7204 /* ~"Forget it. I had some questions, instead..."~ */ GOTO 9
  IF ~  PartyGoldGT(9)
!NearbyDialog("DMorte")
~ THEN REPLY #7205 /* ~"Never mind. I'll find what I'm looking for on my own, thanks."~ */ GOTO 11
  IF ~  PartyGoldLT(10)
~ THEN REPLY #7206 /* ~"Never mind. I'll find what I'm looking for on my own, thanks."~ */ GOTO 6
  IF ~  PartyGoldGT(9)
NearbyDialog("DMorte")
Global("Morte_Harlot_Quip_1","GLOBAL",0)
~ THEN REPLY #7207 /* ~"Never mind. I'll find what I'm looking for on my own, thanks."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",1)
~ EXTERN ~DMORTE~ 38
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #1815 /* ~"I think ye've found what ye're lookin' fer. Come along then, love."~ */
  IF ~  InParty("Annah")
NearbyDialog("DAnnah")
~ THEN REPLY #7208 /* ~Follow her...~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
SetGlobal("Harlot_Annah_Sex","GLOBAL",1)
~ EXTERN ~DANNAH~ 49
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
NearbyDialog("DGrace")
~ THEN REPLY #7211 /* ~Follow her...~ */ DO ~MoraleDec("Grace",1)
SetGlobal("Harlot_Grace_Sex","GLOBAL",1)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ EXTERN ~DGRACE~ 6
  IF ~  !InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7212 /* ~Follow her...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  !InParty("Annah")
NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Follow her...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
  IF ~  InParty("Annah")
!NearbyDialog("DAnnah")
!NearbyDialog("DGrace")
~ THEN REPLY #7208 /* ~Follow her...~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
IncrementGlobal("Banged_Harlot","GLOBAL",1)
~ GOTO 32
END

IF ~~ THEN BEGIN 6 // from: 4.3
  SAY #1816 /* ~The woman smiles. "Not enough jink, eh? Not ta worry, love... y'come back when ye're heavier in the purse."~ */
  IF ~~ THEN REPLY #7213 /* ~"Uh... farewell then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #1817 /* ~The woman breaks in. "It's twice the cost fer the mimir... or any other degenerate."~ */
  IF ~  Global("Know_Mimir","GLOBAL",0)
~ THEN REPLY #7214 /* ~"Uh... 'mimir'?"~ */ DO ~SetGlobal("Know_Mimir","GLOBAL",1)
~ EXTERN ~DMORTE~ 129
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7215 /* ~"Don't sweat it, Morte. From the looks of her, I'm probably saving you from dying twice."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Know_Mimir","GLOBAL",1)
~ THEN REPLY #7217 /* ~"Never mind then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #1823 /* ~"May a pox shrivel yer innards! Ye have the stink and fashion sense of a goatherd, and ye're twice as ugly!"~ */
  IF ~~ THEN REPLY #7218 /* ~"Uh..."~ */ EXTERN ~DMORTE~ 130
END

IF ~~ THEN BEGIN 9 // from: 1.3 2.1 3.1 4.1 32.0
  SAY #1824 /* ~The woman frowns. "I'm not a tout..." She frowns, then rubs two fingers together. "*Unless* ye've got some jink ta pay fer my time."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
~ THEN REPLY #7219 /* ~"I can pay you. How much?"~ */ GOTO 10
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #7223 /* ~"I can pay you. How much?"~ */ GOTO 33
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #7224 /* ~"I can pay you. How much?"~ */ GOTO 34
  IF ~~ THEN REPLY #7225 /* ~"Never mind then. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #1825 /* ~"Ten coppers. Other questions of a deeper chant'll cost ye more."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #7226 /* ~"Sounds fair. Here's ten commons."~ */ DO ~TakePartyGold(10)
~ GOTO 12
  IF ~~ THEN REPLY #7227 /* ~"Never mind."~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 1.4 2.2 3.2 4.2 9.3 10.1 13.7 33.1 34.1
  SAY #1826 /* ~"Yer loss. When ye get tired o' losin' things and need ta find some things, love, y'come see me."~ */
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7228 /* ~"I'll keep that in mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7229 /* ~"I'll keep that in mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7230 /* ~"I'll keep that in mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.0 33.0 34.0
  SAY #1827 /* ~"Aye, then." She slips the jink into her palm, where it promptly vanishes. "Now..."~ */
  IF ~~ THEN REPLY #7231 /* ~"There were some things I wanted to know..."~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.2 15.1 16.1 17.0 19.1 20.1 21.1 22.0 23.0 24.3 24.4 24.5 24.6 25.2 26.2 27.1 28.1 29.1 30.0 31.0
  SAY #1828 /* ~"Ask yer questions, love."~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7232 /* ~"Can you tell me about this city?"~ */ GOTO 14
  IF ~  Global("Know_Sigil","GLOBAL",1)
~ THEN REPLY #7233 /* ~"Can you tell me about Sigil?"~ */ GOTO 14
  IF ~~ THEN REPLY #7236 /* ~"Can you tell me what's of interest around here?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
~ THEN REPLY #7237 /* ~"Can you tell me about the factions?"~ */ GOTO 21
  IF ~  Global("Know_Lady","GLOBAL",1)
~ THEN REPLY #7238 /* ~"What can you tell me about the Lady of Pain?"~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #7239 /* ~"I'm looking for someone named Pharod."~ */ GOTO 24
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #7240 /* ~"I'm looking for a journal."~ */ GOTO 23
  IF ~~ THEN REPLY #7241 /* ~"Actually, never mind. Farewell."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #1829 /* ~Her eyes narrow suspiciously. "The city? What about it?"~ */
  IF ~  Global("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7242 /* ~"What is it?"~ */ DO ~SetGlobal("Know_Sigil","GLOBAL",1)
~ GOTO 15
  IF ~  GlobalGT("Know_Sigil","GLOBAL",0)
~ THEN REPLY #7243 /* ~"What is it?"~ */ GOTO 15
  IF ~~ THEN REPLY #7244 /* ~"Actually, I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7245 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7246 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7247 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1
  SAY #1830 /* ~"What's Sigil, y'mean?" She shrugs, looks around. "It's the city beneath yer feet n' risin' t'either side of ye." She smiles. "Makes visitors' stomachs gallop, it does."~ */
  IF ~~ THEN REPLY #7248 /* ~"Where exactly is Sigil?"~ */ GOTO 16
  IF ~~ THEN REPLY #7249 /* ~"Actually, I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7250 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7251 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7252 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #1831 /* ~"Center o' the planes, t'hear it told." She snorts. "If ye believe that wash."~ */
  IF ~~ THEN REPLY #7253 /* ~"Why is it 'wash'?"~ */ GOTO 17
  IF ~~ THEN REPLY #7254 /* ~"Actually, I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7255 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7256 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7257 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #1832 /* ~She smirks. "Well now, love, according ta the graybeards n' scholars n' Guvners and alla the rest o' them rattlin' their brain-boxes, they says the planes go on forever." She taps her head. "Who's ta say where the 'center' is?"~ */
  IF ~~ THEN REPLY #7258 /* ~"Hmmmm. I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7259 /* ~"Thanks for the information. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7260 /* ~"Thanks for the information. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7261 /* ~"Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 13.2 19.0 20.0
  SAY #1833 /* ~She puts her hands on her hips and pouts. "Depends on yer interest, cutter."~ */
  IF ~~ THEN REPLY #7379 /* ~"I'm looking for a good time."~ */ GOTO 19
  IF ~~ THEN REPLY #7381 /* ~"I'm looking for work."~ */ GOTO 20
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7385 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7389 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7393 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #1834 /* ~"I already made ye an offer, love, and it's not an unfair price. Don't know o' nowhere else ye might be enjoyin' the delights ye'd have with me."~ */
  IF ~~ THEN REPLY #7263 /* ~"What else is around here of interest?"~ */ GOTO 18
  IF ~~ THEN REPLY #7264 /* ~"Fine... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7265 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7266 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7267 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #1835 /* ~She laughs. "Ye're asking *me?* What, ye thinkin' o' becoming one o' the Sisterhood are ye?" She nearly buckles over in laughter... the screeching is similar to a drunken harpy's. Eventually, the gales of laughter subside, and she takes a deep breath. "Ye're... ye're a rich man, ye are."~ */
  IF ~~ THEN REPLY #7269 /* ~"What else is around here of interest?"~ */ GOTO 18
  IF ~~ THEN REPLY #7270 /* ~"Fine... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7272 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7273 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7274 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 13.3
  SAY #1837 /* ~She smiles knowingly. "I jest... 'serve'... the factions, love. I don't deal with them."~ */
  IF ~~ THEN REPLY #7275 /* ~"Not even the Dustmen?"~ */ GOTO 22
  IF ~~ THEN REPLY #7276 /* ~"Fine... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7277 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7278 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7279 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #1838 /* ~"The Dustmen don't behave like Dusties in my arms, love." She scoffs. "Those bashers speak so much 'bout death, yet they don't say much when they's with me, y'see?" ~ */
  IF ~~ THEN REPLY #7280 /* ~"I see... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7281 /* ~"Enlightening... farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7282 /* ~"Enlightening... farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7283 /* ~"Enlightening... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 13.6
  SAY #1839 /* ~"No idea where ye'd find such a thing, love. Ye might look... elsewhere." She smiles suggestively. "I know some places ye might start."~ */
  IF ~~ THEN REPLY #7284 /* ~"I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7285 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7286 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7287 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 13.5
  SAY #1840 /* ~"Pharod? Now *that's* one o' the greater darks, love. If ye be wantin' t'know about that blood, that'll be thrice the coppers of a normal asking."~ */
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldGT(29)
~ THEN REPLY #7318 /* ~"Fair enough. Here's thirty commons."~ */ DO ~TakePartyGold(30)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldGT(20)
~ THEN REPLY #7319 /* ~"Fair enough. Here's twenty-one commons."~ */ DO ~TakePartyGold(21)
~ GOTO 25
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldGT(8)
~ THEN REPLY #7320 /* ~"Fair enough. Here's nine commons."~ */ DO ~TakePartyGold(9)
~ GOTO 25
  IF ~  CheckStatLT(Protagonist,10,CHR)
PartyGoldLT(30)
~ THEN REPLY #7321 /* ~"Hmmm. Don't have enough. I did have some other questions, though..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,9,CHR)
CheckStatLT(Protagonist,13,CHR)
PartyGoldLT(21)
~ THEN REPLY #7322 /* ~"Hmmm. Don't have enough. I did have some other questions, though..."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,CHR)
PartyGoldLT(9)
~ THEN REPLY #7323 /* ~"Hmmm. Don't have enough. I did have some other questions, though..."~ */ GOTO 13
  IF ~~ THEN REPLY #7324 /* ~"Forget it, then... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7325 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7326 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7327 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1 24.2
  SAY #1841 /* ~She gives your coins a once over, then shrugs and pockets them. "What ye be wantin' t'know about ol' Pharod?"~ */
  IF ~~ THEN REPLY #7328 /* ~"At *that* price, anything you can tell me about him."~ */ GOTO 26
  IF ~~ THEN REPLY #7329 /* ~"What can you tell me about him?"~ */ GOTO 26
  IF ~~ THEN REPLY #7330 /* ~"Forget it, then... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7331 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7332 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7333 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #1842 /* ~She shrugs. "Chant is he's a Collector boss. Has a whole bunch o' bloods in his shadow."~ */
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",0)
~ THEN REPLY #7334 /* ~"Where can I find him?"~ */ DO ~SetGlobal("Harlot_Reveals_Pharod","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 27
  IF ~  Global("Harlot_Reveals_Pharod","GLOBAL",1)
~ THEN REPLY #7335 /* ~"Where can I find him?"~ */ GOTO 27
  IF ~~ THEN REPLY #7336 /* ~"Never mind about Pharod... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7337 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7338 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7339 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #1843 /* ~"Now, no one knows fer dead sure, but if *I* were ta suggest a place, love, I'd say Ragpicker's Square."~ */
  IF ~~ THEN REPLY #7340 /* ~"Ragpicker's Square?"~ */ GOTO 28
  IF ~~ THEN REPLY #7341 /* ~"I see... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7342 /* ~"Thanks for the information. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7343 /* ~"Thanks for the information. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7344 /* ~"Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #1848 /* ~"Aye, a big ol' heap o' rags and trash three blocks due west o' the Mortuary... all the Collectors stake their kip there. Chances are, Pharod's got his kip there, too."~ */
  IF ~~ THEN REPLY #7345 /* ~"What's a Collector?"~ */ GOTO 29
  IF ~~ THEN REPLY #7346 /* ~"I see... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7347 /* ~"Thanks for the information. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7348 /* ~"Thanks for the information. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7349 /* ~"Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #1849 /* ~"Y'know... them sods that pick up deaders fer jink. A sorry lot."~ */
  IF ~~ THEN REPLY #7262 /* ~"They gather bodies? Why?"~ */ GOTO 30
  IF ~~ THEN REPLY #7395 /* ~"I see... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7396 /* ~"Thanks for the information. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7397 /* ~"Thanks for the information. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7398 /* ~"Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #1850 /* ~"'Cause they don't got the looks ta do what I do."~ */
  IF ~~ THEN REPLY #7399 /* ~"I see... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7400 /* ~"Thanks for the information. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7401 /* ~"Thanks for the information. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7402 /* ~"Thanks for the information. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 13.4
  SAY #1851 /* ~She spits and makes a half-circle around her heart. "That bladed witch! All high and mighty, mistress of all this city, floating and silent, she kills anyone in her shadow. She tends the city, aye..." She hisses. "And leaves the living things in it ta *rot.*"~ */
  IF ~~ THEN REPLY #7457 /* ~"Fine... I had some other questions..."~ */ GOTO 13
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7458 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7459 /* ~"Never mind. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7460 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 5.2 5.3 5.4
  SAY #1852 /* ~"That's it, then, cutter."~ */
  IF ~~ THEN REPLY #7461 /* ~"I had some questions for you. Well... now that I can concentrate."~ */ GOTO 9
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
NearbyDialog("DMorte")
~ THEN REPLY #7462 /* ~"Thanks. Farewell."~ */ DO ~SetGlobal("Morte_Harlot_Quip_1","GLOBAL",0)
~ EXTERN ~DMORTE~ 38
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",0)
!NearbyDialog("DMorte")
~ THEN REPLY #7463 /* ~"Thanks. Farewell."~ */ EXIT
  IF ~  Global("Morte_Harlot_Quip_1","GLOBAL",1)
~ THEN REPLY #7464 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 9.1
  SAY #1853 /* ~"Fer ye..." She studies you critically. "Seven coppers, no more, no less. Other questions of a deeper chant'll cost ye more."~ */
  IF ~  PartyGoldGT(6)
~ THEN REPLY #7465 /* ~"Sounds fair. Here's seven commons."~ */ DO ~TakePartyGold(7)
~ GOTO 12
  IF ~~ THEN REPLY #7466 /* ~"Never mind."~ */ GOTO 11
END

IF ~~ THEN BEGIN 34 // from: 9.2
  SAY #1854 /* ~"Fer a handsome basher like yerself..." She gives a wide smile, revealing a row of dirty teeth. "Three coppers'll be enough t'loosen me tongue." She licks her lips, then frowns. "Other questions of a deeper chant'll cost ye more, though."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #7467 /* ~"Sounds fair. Here's three commons."~ */ DO ~TakePartyGold(3)
~ GOTO 12
  IF ~~ THEN REPLY #7468 /* ~"Never mind."~ */ GOTO 11
END

IF ~~ THEN BEGIN 35 // from:
  SAY #30536 /* ~The harlot takes the opportunity to flee the scene.~ */
  IF ~~ THEN REPLY #30537 /* ~"Dammit, Annah..."~ */ DO ~EscapeArea()
~ EXIT
END
