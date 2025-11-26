// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOST.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOST~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #6229 /* ~This filthy-looking corpse is in sad shape; its shoulders are slumped, and one of its legs is broken, causing it to lean to one side. Stains cover it from head to toe... judging from the smell and the texture, the stains run from rotten fruit to mud and bird droppings. To add to the indignity, graffiti has been carved into its body, and several notices have been nailed into its chest, back, and head.~ */
  IF ~~ THEN REPLY #6230 /* ~"I thought *I* was in bad shape. Don't all those nails hurt?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6231 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6233 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6234 /* ~Examine the graffiti and notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6235 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6236 /* ~"It was great talking to you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Post_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #6237 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #6232 /* ~The corpse makes no response.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6238 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6239 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6240 /* ~Examine the graffiti and notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6241 /* ~Use your Stories-Bones-Tell ability on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6242 /* ~"It was great talking to you. Farewell."~ */ EXIT
  IF ~~ THEN REPLY #6243 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN BEGIN 2 // from: 0.4 1.3 3.1 4.1 5.7 6.4 7.6 8.3 9.5 10.5 11.3 12.3 13.2 18.4 19.3
  SAY #6244 /* ~This corpse makes no reply. It looks like it is too far gone to answer any of your questions.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6245 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6246 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6247 /* ~Examine the graffiti and notices.~ */ GOTO 5
  IF ~~ THEN REPLY #6248 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.0 2.0 5.0 6.1 7.3 8.0 9.2 10.0 11.0 12.0 18.1 19.0
  SAY #6249 /* ~Despite the many stitches, the corpse's rotting skin is peeling in several places, revealing long stretches of muscle and bone. You'd guess that this zombie is frequently used as target practice... the fruit and mud stains aside, some of the tears in the skin still have rocks and bits of glass lodged in them. One wicked-looking cobblestone is still embedded in the side of its head. ~ */
  IF ~~ THEN REPLY #6250 /* ~Examine the graffiti and notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6251 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6252 /* ~Pry out the cobblestone.~ */ DO ~AddexperienceParty(250)
GiveItem("Cobble",Protagonist)
~ GOTO 13
  IF ~~ THEN REPLY #6253 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.1 2.1 5.1 6.2 7.4 8.1 9.3 10.1 11.1 12.1 13.0 18.2 19.1
  SAY #6254 /* ~Despite the many stitches, the corpse's rotting skin is peeling in several places, revealing long stretches of muscle and bone. You'd guess that this zombie is frequently used as target practice... the fruit and mud stains aside, some of the tears in the skin still have rocks and bits of glass lodged in them. ~ */
  IF ~~ THEN REPLY #6255 /* ~Examine the graffiti and notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6256 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6257 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.3 1.2 2.2 3.0 4.0 6.3 7.5 8.2 9.4 10.2 10.3 10.4 11.2 12.2 13.1 18.3 19.2
  SAY #6258 /* ~A number of the leaflets have been ruined by rain, but some of them are still legible. One tacked to his back is from something called the 'Office of Vermin and Disease Control,' the one on his forehead looks like a bill of fare for a restaurant, one on his chest looks like an official notice, and another appears to be some sort of want ad.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6259 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6260 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6261 /* ~Ignore the notices, examine the graffiti.~ */ GOTO 9
  IF ~~ THEN REPLY #6262 /* ~Look at the post for 'Office of Vermin and Disease Control.'~ */ GOTO 6
  IF ~~ THEN REPLY #6263 /* ~Examine the Bill of Fare.~ */ GOTO 7
  IF ~~ THEN REPLY #6264 /* ~Examine the Official Notice.~ */ GOTO 8
  IF ~~ THEN REPLY #46493 /* ~Examine the Want Ad.~ */ GOTO 18
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46496 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #46497 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #6267 /* ~"To Those Hive Citizins Wishing Gainful Employ with the Most HONRIBLE and JENROUS Sigil Government: Inqwire Forthwith at Office of Vermin and Disease Control to help stem playge of brain ratz. BOUNTIEZ PAID! Copper Given for each rat tail brought. (Tails must be ginuine and from rat only. No cat, dog or fiend tail acceptd.) Office several streets SOUTH AND WEST of Mortuary Gate, in lower Hive. Ask for Official Inspecter-in-Charge, the RESPECTED PHINEAS T. LORT, XXXIX."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6268 /* ~"'Office of Vermin and Disease Control'?"~ */ GOTO 11
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6269 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6270 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6271 /* ~Examine the other notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6272 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6273 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.4
  SAY #6274 /* ~Someone has posted a bill of fare for the "Gathering Dust Bar," but the bill of fare cannot be read, as the words "SMOLDERING CORPSE BAR" have been scrawled in charcoal over the bill.~ */
  IF ~  !NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6275 /* ~"'Smoldering Corpse Bar'?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 10
  IF ~  NearbyDialog("DMorte")
Global("Post_Point","GLOBAL",0)
~ THEN REPLY #6276 /* ~"'Smoldering Corpse Bar'?"~ */ DO ~SetGlobal("Post_Point","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #6277 /* ~"'Smoldering Corpse Bar'?"~ */ GOTO 10
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6278 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6279 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6280 /* ~Examine the other notices...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6281 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6282 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.5
  SAY #6283 /* ~"PUBLIC NOTICE: By the Order of the Judiciary Council and in Accordance with the Citizenry of Sigil, Let it be Known those Defacing a Registered Servant of the Dustmen, either by Graffiti, Malicious Attack, or by Posting Notices, will constitute FELONIUS ASSAULT and the Perpetrator will be Answerable for the Vandalism of Said Servant." - By Order of The Hall of Speakers -~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6284 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6285 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6286 /* ~Examine the other notices...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6287 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6288 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.2
  SAY #6289 /* ~The graffiti runs from obscenities about the Dustmen to slogans glorifying what appear to be local gangs. One piece of graffiti catches your eye... someone has carved the name "Pharod" on the corpse's left arm, then slashed an "X" across it.~ */
  IF ~  Global("Post_Point","GLOBAL",1)
~ THEN REPLY #6290 /* ~"Pharod?"~ */ DO ~AddexperienceParty(500)
SetGlobal("Post_Point","GLOBAL",2)
~ JOURNAL #66757 /* ~By speaking Pharod's name out loud, I asked the "Post" to show me where he might be found... he pointed several blocks to the west of the Mortuary and, oddly enough, downwards. Is Pharod buried underground somewhere? ~ */ GOTO 12
  IF ~  Global("Post_Point","GLOBAL",2)
~ THEN REPLY #6291 /* ~"Pharod?"~ */ GOTO 12
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6292 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6293 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6294 /* ~Examine the other notices...~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6295 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6296 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 7.2
  SAY #6297 /* ~The zombie immediately jerks its left arm upwards and points far to the south. A moment later, the arm falls back to its side with a THUMP.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6298 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6299 /* ~Examine the corpse.~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6300 /* ~"Hmmm. I wonder if this would work with the other notices..."~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,WIS)
~ THEN REPLY #6301 /* ~"Hmmmm. I wonder if this would work with the other notices..."~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,INT)
CheckStatLT(Protagonist,12,WIS)
~ THEN REPLY #6302 /* ~Examine the other notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6303 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6304 /* ~"Uh... Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.0
  SAY #6305 /* ~The zombie immediately jerks its left arm upwards and points far to the southwest. A moment later, the arm falls back to its side with a THUMP.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6306 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6307 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6308 /* ~Examine the other notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6309 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6310 /* ~"Uh... Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.0 9.1
  SAY #6311 /* ~The zombie immediately jerks its left arm upwards and points far to the west... and downwards. A moment later, the arm falls back to its side with a THUMP.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #6312 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #6313 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6314 /* ~Examine the other notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6315 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6316 /* ~"Uh... thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2
  SAY #6317 /* ~You grab a hold of the cobblestone and pull it out of the corpse's head. Traces of brain matter and rotting flesh slowly drip from it... it looks like whatever was in its head turned to ooze long ago. ~ */
  IF ~~ THEN REPLY #6318 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #6319 /* ~Examine the other notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6320 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #6321 /* ~Leave the corpse in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #6322 /* ~The zombie immediately jerks its left arm upwards and points far to the southeast. A moment later, the arm falls back to its side with a THUMP.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 109
END

IF ~~ THEN BEGIN 15 // from:
  SAY #9749 /* ~The zombie stands motionless. You notice a clear spot on its shoulder where you could carve her name.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #9750 /* ~The zombie immediately jerks its arm (to point at wherever the hell Xixi will be).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #9751 /* ~The zombie remains motionless. ~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from: 5.6
  SAY #46498 /* ~"WANTED: Able-bodied person willing to investigate a matter of the utmost importance to the Dustman cause. Will offer suitable compensation upon successful completion of said task. Interested parties inquire with Initiate Norochj, Gathering Dust Bar."~ */
  IF ~  GlobalGT("Post_Point","GLOBAL",0)
~ THEN REPLY #46499 /* ~"'Gathering Dust Bar'?"~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 19
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46501 /* ~Examine the corpse.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46502 /* ~Examine the corpse.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #46503 /* ~Examine the other notices...~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46504 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #46505 /* ~Leave the corpse in peace.~ */ DO ~SetGlobal("Norochj_Ad","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #46500 /* ~The zombie immediately jerks its left arm upwards and points west to the building before you. A moment later, the arm falls back to its side with a THUMP.~ */
  IF ~  HasItem("Cobble","Post")
~ THEN REPLY #46506 /* ~Examine the corpse.~ */ GOTO 3
  IF ~  !HasItem("Cobble","Post")
~ THEN REPLY #46507 /* ~Examine the corpse.~ */ GOTO 4
  IF ~~ THEN REPLY #46508 /* ~Examine the other notices.~ */ GOTO 5
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #46509 /* ~Use your Stories-Bones-Tell power on the corpse.~ */ GOTO 2
  IF ~~ THEN REPLY #46510 /* ~"Uh... Thanks."~ */ EXIT
END
