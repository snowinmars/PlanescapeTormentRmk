// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHIVERM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHIVERM~

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 0 // from:
  SAY #33152 /* ~The man steps back, a mixture of fear and revulsion upon his face. "Get... get back! Leave me be!"~ */
  IF ~~ THEN REPLY #33153 /* ~Let him go.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 1 // from:
  SAY #33154 /* ~The man's eyes widen as you approach him, and he draws away from you. "I've nothin' of use to ye, cutter, I swears it - now leave a man alone!"~ */
  IF ~~ THEN REPLY #33155 /* ~Let him go.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 2 // from:
  SAY #33156 /* ~"Pike off! I don't want nothin' ta do with ye!"~ */
  IF ~~ THEN REPLY #33157 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 3 // from:
  SAY #33158 /* ~The man takes great pains to ignore you. The more you try and get his attention, the more obvious he makes it that he won't speak with you.~ */
  IF ~~ THEN REPLY #33159 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
RandomNum(5,1)
~ THEN BEGIN 4 // from:
  SAY #33160 /* ~"Looks like ye've lived in the Hive - or worse - all yer life, cutter. Now sod off an' leaves me alone!"~ */
  IF ~~ THEN REPLY #33161 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 5 // from:
  SAY #33162 /* ~"Ye look a wreck, berk. Call kip in the Flophouse if ye needs to rest... 'tis right in the center o' this area. Now leave me be! I'll not have ye wastin' me time with yer questions."~ */
  IF ~~ THEN REPLY #33163 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 6 // from:
  SAY #33164 /* ~"Have ye been ta the Gatherin' Dust bar yet, berk? Ye sort o' remind me o' one of the workers, there..." He laughs bitterly.~ */
  IF ~~ THEN REPLY #33165 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 7 // from:
  SAY #33166 /* ~The man is chewing on what looks to be a rat on a stick. "What, berk? Ain't ye ever seen cooked rat before? Good fer ye and quite tasty, it is! Talk ta Creeden if ye're hungry... he stands right outside the Office fer Vermin an' Disease Control."~ */
  IF ~~ THEN REPLY #33167 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatLT(Protagonist,9,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 8 // from:
  SAY #33168 /* ~"Have ye run across any o' that Starved Dog lot lately? I'd avoid those howlin', caperin' sods if I was ye... bloody barmy, they are!"~ */
  IF ~~ THEN REPLY #33169 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
NumTimesTalkedTo(0)
RandomNum(5,1)
~ THEN BEGIN 9 // from:
  SAY #33170 /* ~"Don't know nothin' o' use to ye, berk... leave me be."~ */
  IF ~~ THEN REPLY #33171 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 10 // from:
  SAY #33172 /* ~The man looks you over and draws a semi-circle over his heart. "I tend to me own affairs, blood, an' only ask that ye do the same. Farewell."~ */
  IF ~~ THEN REPLY #33173 /* ~Let him go.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 11 // from:
  SAY #33174 /* ~The man frowns as you approach. "I've no time ta be rattlin' me bone-box with strangers, cutter. 'Sides, not generally safe ta do so in the Hive. Fare ye well."~ */
  IF ~~ THEN REPLY #33175 /* ~"Farewell, then."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
NumTimesTalkedTo(0)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
~ THEN BEGIN 12 // from:
  SAY #33176 /* ~"Life in the Hive is a wretched mess, I tell ye."~ */
  IF ~~ THEN REPLY #33177 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0100")
~ THEN BEGIN 13 // from:
  SAY #33178 /* ~"Ye look a wreck, berk. Call kip in the Flophouse if ye needs to rest... 'tis right in the center o' this area. Now leave me be! I'll not have ye wastin' me time with yer questions."~ */
  IF ~~ THEN REPLY #33179 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0200")
~ THEN BEGIN 14 // from:
  SAY #33180 /* ~"Have ye been ta the Gatherin' Dust bar yet, berk? Ye sort o' remind me o' one of the workers, there..." He laughs bitterly.~ */
  IF ~~ THEN REPLY #33181 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0300")
~ THEN BEGIN 15 // from:
  SAY #33182 /* ~The man is chewing on what looks to be a rat on a stick. "What, berk? Ain't ye ever seen cooked rat before? Good fer ye and quite tasty, it is! Talk ta Creeden if ye're hungry... he stands right outside the Office fer Vermin an' Disease Control."~ */
  IF ~~ THEN REPLY #339 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
RandomNum(5,1)
CreatureInArea("AR0400")
~ THEN BEGIN 16 // from:
  SAY #340 /* ~"Have ye run across any o' that Starved Dog lot lately? I'd avoid those howlin', caperin' sods if I was ye... bloody barmy, they are!"~ */
  IF ~~ THEN REPLY #341 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 17 // from:
  SAY #3921 /* ~"I done heard o' ye, berk... ye were askin' 'round about old Pharod, aye? If ye've yet ta find him, try lookin' north o' here, in Ragpicker's Square."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33184 /* ~"I'll try there, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33188 /* ~"I found him already, but thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 18 // from:
  SAY #33192 /* ~"Hear o' the Alley o' Dangerous Angles? Whole neighborhood once stood there, but got burned ta the ground. Nothin' but packs o' rovin' thugs there, now."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33193 /* ~"Yes, I've been there."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33194 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 19 // from:
  SAY #33195 /* ~"If ye can stand the bugger's stench, there's a fellow named Reekwind 'round here who ought ta have some interestin' tales ta tell ye."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33196 /* ~"Maybe I'll go find him. Farewell."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33197 /* ~"Yes, I've met him. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,8,CHR)
CheckStatLT(Protagonist,13,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 20 // from:
  SAY #33198 /* ~"The Smolderin' Corpse is me favorite tavern in the Hive... gets pikin' hot in there at times, though, what with the smolderin' corpse an' all."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33199 /* ~"There's no corpse there, now. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33200 /* ~"Yes, I've been there myself. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33201 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 21 // from:
  SAY #33202 /* ~The man nods to you. "Greetin's, cutter. I'd help ye if I could... but I just don't know nothin' o' use to ye."~ */
  IF ~~ THEN REPLY #33203 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 22 // from:
  SAY #33205 /* ~"I hates it here... wish I made enough jink ta leave the Hive fer good. Take me advice, cutter, an' get out when an' if ye can."~ */
  IF ~~ THEN REPLY #33206 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
~ THEN BEGIN 23 // from:
  SAY #33207 /* ~"Watch yerself 'round here, berk... violence is a way o' life in the Hive."~ */
  IF ~~ THEN REPLY #33208 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 24 // from:
  SAY #33209 /* ~"Ye look a wreck, berk. Call kip in the Flophouse if ye needs to rest... 'tis right in the center o' this area. Now leave me be! I'll not have ye wastin' me time with yer questions."~ */
  IF ~~ THEN REPLY #33210 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 25 // from:
  SAY #33211 /* ~"I done heard o' ye, berk... ye were askin' 'round about old Pharod, aye? If ye've yet ta find him, try lookin' north o' here, in Ragpicker's Square."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #33212 /* ~"I'll try there, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Pharod","GLOBAL",0)
~ THEN REPLY #33213 /* ~"I found him already, but thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0100")
~ THEN BEGIN 26 // from:
  SAY #33214 /* ~"There's a blood I met near here, once; Porphiron... could teach a man ta fight, he could."~ */
  IF ~  Global("Porphiron ","GLOBAL",0)
~ THEN REPLY #33215 /* ~"Perhaps I'll go find him, then. Farewell."~ */ EXIT
  IF ~  GlobalGT("Porphiron ","GLOBAL",0)
~ THEN REPLY #33216 /* ~"Yes, I've met him. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 27 // from:
  SAY #33217 /* ~"Go see the Post if ye're tryin' ta find yer way around. It's standing outside the Gatherin' Dust bar."~ */
  IF ~~ THEN REPLY #33218 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 28 // from:
  SAY #33219 /* ~"Hear o' the Alley o' Dangerous Angles? Whole neighborhood once stood there, but got burned ta the ground. Nothin' but packs o' rovin' thugs there, now."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33220 /* ~"Yes, I've been there. Farewell."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33221 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 29 // from:
  SAY #33222 /* ~"Lot o' people come 'round here ta mourn their dead... there's a right-strange Dustman at the Dustman Memorial who can tell ye if someone ye're lookin' for has died, or bury their name for 'em if ye'd like 'em remembered."~ */
  IF ~  Global("Death_of_Names","GLOBAL",1)
~ THEN REPLY #1252 /* ~"Yes, he's called 'Death-of-Names.' Farewell."~ */ EXIT
  IF ~  Global("Death_of_Names","GLOBAL",0)
~ THEN REPLY #1254 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0200")
~ THEN BEGIN 30 // from:
  SAY #33223 /* ~"Practically every Dustman in Sigil passes some o' their time at the Gatherin' Dust bar. If ye're ever lookin' fer one o' 'em in particular, it's as good a place as any ta start."~ */
  IF ~~ THEN REPLY #33225 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 31 // from:
  SAY #33228 /* ~The man is chewing on what looks to be a rat on a stick. "What, berk? Ain't ye ever seen cooked rat before? Good fer ye and quite tasty, it is! Talk ta Creeden if ye're hungry... he stands right outside the Office fer Vermin an' Disease Control."~ */
  IF ~~ THEN REPLY #33230 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 32 // from:
  SAY #33232 /* ~"If ye can stand the bugger's stench, there's a fellow named Reekwind 'round here who ought ta have some interestin' tales ta tell ye."~ */
  IF ~  Global("Reekwind","GLOBAL",0)
~ THEN REPLY #33233 /* ~"Maybe I'll go find him. Farewell."~ */ EXIT
  IF ~  GlobalGT("Reekwind","GLOBAL",0)
~ THEN REPLY #33234 /* ~"Yes, I've met him. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 33 // from:
  SAY #33235 /* ~"Ye ought ta be able ta find just about anythin' ye needs at the Market here."~ */
  IF ~~ THEN REPLY #33236 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 34 // from:
  SAY #33237 /* ~"Ever stop an' listen ta Prophyra at the Market? Goin' ta be a whole mess o' chaos in Sigil if she's right - an' not just barmy, like most folk say."~ */
  IF ~~ THEN REPLY #33238 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0300")
~ THEN BEGIN 35 // from:
  SAY #33239 /* ~"Hear o' the Alley o' Dangerous Angles? Whole neighborhood once stood there, but got burned ta the ground. Nothin' but packs o' rovin' thugs there, now."~ */
  IF ~  Global("AR0301_Visited","GLOBAL",1)
~ THEN REPLY #33240 /* ~"Yes, I've been there."~ */ EXIT
  IF ~  Global("AR0301_Visited","GLOBAL",0)
~ THEN REPLY #33241 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 36 // from:
  SAY #33242 /* ~"Have ye run across any o' that Starved Dog lot lately? I'd avoid those howlin', caperin' sods if I was ye... bloody barmy, they are!"~ */
  IF ~~ THEN REPLY #33243 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 37 // from:
  SAY #33244 /* ~"The Smolderin' Corpse is me favorite tavern in the Hive... gets pikin' hot in there at times, though, what with the smolderin' corpse an' all."~ */
  IF ~  GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #33246 /* ~"There's no corpse there, now. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",1)
~ THEN REPLY #33247 /* ~"Yes, I've been there myself. Farewell."~ */ EXIT
  IF ~  Global("AR0402_Visited","GLOBAL",0)
~ THEN REPLY #33248 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
RandomNum(7,1)
CreatureInArea("AR0400")
~ THEN BEGIN 38 // from:
  SAY #33249 /* ~"Met that addle-coved 'Mourns' sod? What an arse... like anyone gives a pikin' folly 'bout the trees, here. What sort o' leatherhead brought 'em here in the first place, is what I'd like ta know!"~ */
  IF ~~ THEN REPLY #33250 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0100")
~ THEN BEGIN 39 // from:
  SAY #33251 /* ~"I can only say ta watch yer purse 'round here, cutter... there oft-times pickpockets in this area, methinks."~ */
  IF ~~ THEN REPLY #33252 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0200")
~ THEN BEGIN 40 // from:
  SAY #33253 /* ~"There's a mad-woman runnin' 'round here at times... heard she's a Clueless who went barmy tryin' ta find her way home."~ */
  IF ~  GlobalGT("Ingress","GLOBAL",5)
~ THEN REPLY #33254 /* ~"Yes... she should be home or on her way there, shortly. Farewell."~ */ EXIT
  IF ~  GlobalGT("Ingress","GLOBAL",0)
~ THEN REPLY #33255 /* ~"I've met her; her name is Ingress. Farewell."~ */ EXIT
  IF ~  Global("Ingress","GLOBAL",0)
~ THEN REPLY #33256 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0300")
~ THEN BEGIN 41 // from:
  SAY #33257 /* ~"If ye've got some time on yer hands an' bit o' jink besides, go talk ta Gaoha at the Market."~ */
  IF ~~ THEN REPLY #33258 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,CHR)
CreatureInArea("AR0400")
~ THEN BEGIN 42 // from:
  SAY #33259 /* ~"Some interesting tattoos ye gots there, cutter. There's a parlor 'round here, ye know... run by a dabus o' all things!"~ */
  IF ~  GlobalGT("Fell","GLOBAL",0)
~ THEN REPLY #33260 /* ~"I know; his name is Fell. Farewell."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",1)
~ THEN REPLY #33261 /* ~"Yes, I've been there. Farewell."~ */ EXIT
  IF ~  Global("AR0404_Visited","GLOBAL",0)
~ THEN REPLY #33262 /* ~"Perhaps I'll go there, then. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_A","GLOBAL",0)
~ THEN BEGIN 43 // from:
  SAY #33263 /* ~"Thlium! I thought I'd never see ye again. It's been, wot? Four years? Ye looks... well, no matter. Say, 'ere's that hundred copper I owed ye. I woulda' returned it to ye sooner, but it was as if ye'd disappeared off the face o' Sigil! I gots to be 'eadin' away now, Thlium... fare ye well!"~ */
  IF ~~ THEN REPLY #33264 /* ~"Uh..."~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33265 /* ~Let him go.~ */ DO ~SetGlobal("Hive_OT_A","GLOBAL",1)
GiveGoldForce(100)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_B","GLOBAL",0)
~ THEN BEGIN 44 // from:
  SAY #33266 /* ~The man's eyes go wide and the blood drains from his face. "P-p-powers above an' below... they said ye'd come back, b-b-but I didn't believes 'em!" He suddenly turns to flee.~ */
  IF ~~ THEN REPLY #33267 /* ~Try and grab him.~ */ DO ~Enemy()
EscapeArea()
SetGlobal("Hive_OT_B","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #33268 /* ~Let him go.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_C","GLOBAL",0)
~ THEN BEGIN 45 // from:
  SAY #33269 /* ~The man squints at you. "Morric? Is that ye?"~ */
  IF ~~ THEN REPLY #33270 /* ~Lie: "Yes... I'm Morric."~ */ GOTO 47
  IF ~~ THEN REPLY #33271 /* ~"Perhaps..."~ */ GOTO 47
  IF ~~ THEN REPLY #33272 /* ~"No, sorry."~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.2
  SAY #33273 /* ~"Me apologies then, cutter. Fare ye well."~ */
  IF ~~ THEN REPLY #33274 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.0 45.1
  SAY #33275 /* ~"I thought ye said ye'd never return ta Sigil...? If Amatael finds out ye've returned, ye're a dead man! In any case, I still have that scroll ye lent me. Here... take it, an' leave me before we're seen together."~ */
  IF ~~ THEN REPLY #33276 /* ~"But..."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #33277 /* ~"Thanks... farewell."~ */ DO ~GiveItemCreate("SPWI107",Protagonist,0,0,0)
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Morte","GLOBAL",0)
InParty("Morte")
~ THEN BEGIN 48 // from:
  SAY #33278 /* ~The man gasps and points at Morte. "Oye, look! A floatin' skull!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 321
END

IF ~~ THEN BEGIN 49 // from:
  SAY #33279 /* ~"Wot?! Lookin' ta get a few teeth knocked out, ye jabberin' bone-box?" The man steps towards Morte menacingly.~ */
  IF ~~ THEN REPLY #33280 /* ~Stop the man.~ */ GOTO 50
  IF ~~ THEN REPLY #33281 /* ~Let Morte handle it.~ */ EXTERN ~DMORTE~ 322
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #33282 /* ~You move between Morte and the man; he scowls at you, then backs away. "Waste o' me time!" He turns to walk away.~ */
  IF ~~ THEN REPLY #33283 /* ~Let him go.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #33284 /* ~The man scowls at Morte, then you, then shakes his head. "Waste o' me time!" He turns to walk away.~ */
  IF ~~ THEN REPLY #33285 /* ~Let him go.~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
RandomNum(20,1)
Global("Hive_OT_Annah","GLOBAL",0)
InParty("Annah")
~ THEN BEGIN 52 // from:
  SAY #33286 /* ~"Annah! Wot're ye doin' with *this* steamin' pile o' sod? I thought ye was gonna be *my* girl..." The man guffaws loudly, slapping his thigh.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 180
END

IF ~~ THEN BEGIN 53 // from:
  SAY #33287 /* ~"Ah, ye're all talk, Annah... *all* talk... ye'd *never* gut the one man who could *truly* satisfy ye! C'mere and gives me long wet kiss, me dirty lil' tiefling princess!" He reaches out to grope at Annah.~ */
  IF ~~ THEN DO ~Enemy()
Attack("Annah")
~ EXTERN ~DANNAH~ 181
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 54 // from:
  SAY #33288 /* ~This person has nothing more to tell you.~ */
  IF ~~ THEN REPLY #33289 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 55 // from:
  SAY #33290 /* ~This person has nothing of import to say to you.~ */
  IF ~~ THEN REPLY #33291 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
RandomNum(3,1)
~ THEN BEGIN 56 // from:
  SAY #33292 /* ~This person has nothing more of interest to say.~ */
  IF ~~ THEN REPLY #33293 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 57 // from:
  SAY #33294 /* ~This person has nothing more to say to you.~ */
  IF ~~ THEN REPLY #33295 /* ~Leave.~ */ EXIT
END
