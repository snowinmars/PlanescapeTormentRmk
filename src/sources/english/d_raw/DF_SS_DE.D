// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_DE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_DE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51731 /* ~The base of this aquatic blue stone has been sculpted so it appears to have melted into the pedestal it rests upon. A stream of perfect azure tears drip down the sides, framing the inscription beneath the pedestal: "Longing."~ */
  IF ~~ THEN REPLY #51732 /* ~Begin the sensation.~ */ GOTO 1
  IF ~~ THEN REPLY #52857 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52858 /* ~As you place your hands upon the stone, its surface ripples beneath your touch. A chill washes over your arms, like plunging your hands into a mountain stream.~ */
  IF ~~ THEN REPLY #52859 /* ~Close your eyes, submerge into the experience...~ */ GOTO 2
  IF ~~ THEN REPLY #52860 /* ~Shake off the experience, let go of the stone.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #52861 /* ~As you close your eyes, you blink and re-open them - your eyes are brimming with tears, and you are overcome with a terrible sensation of *drowning.* As the sensation rolls through you, there is a stirring in your breast, a *hunger,* poisonous like a serpent, BITING into your heart, until you feel as if your breast will *explode.* You want desperately to steady yourself, focus, but all that comes to your eye is tears...~ */
  IF ~~ THEN REPLY #52862 /* ~Wipe away your tears...~ */ GOTO 3
  IF ~~ THEN REPLY #52863 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #52864 /* ~You raise your hand to wipe away your tears - your hands are soft, delicate woman's hands; they brush the stray tears from your cheek, and you cup them in your hands, each of the tears like jewels shimmering in the lights...~ */
  IF ~~ THEN REPLY #52865 /* ~Turn to examine the lights...~ */ GOTO 4
  IF ~~ THEN REPLY #52866 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #52867 /* ~The lights are cast by candle-globes that drift through your sanctuary. You have come to this place to gather your thoughts, to reflect on the past with an eye toward the future, to cleanse the mind before the coming journey. Yet... you cannot *concentrate!* Your thoughts remain in the present, trapped there by the terrible feeling that writhes in your breast. What did he MEAN...?!~ */
  IF ~~ THEN REPLY #52868 /* ~Close your eyes, sigh...~ */ GOTO 5
  IF ~~ THEN REPLY #52869 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #52870 /* ~You close your eyes, but his words echo in your mind, a hundred, a THOUSAND times. Will he EVER return?! The sound is a whisper, an echo: "Only you. ONLY you." Yet you HESITATED, at the brink of time's door, and he must have thought you AFRAID to go, but you were not, you were AFRAID to stay, and the fear... the serpent writhes in your breast again, its fangs biting into your heart, filling it to bursting with its *poison.* The tears come again, running down your cheeks in streams, his words echoing...~ */
  IF ~~ THEN REPLY #52871 /* ~Echo: "Only you. ONLY you."~ */ DO ~SetGlobal("Sensory_Deionarra","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #52872 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #52873 /* ~Your eyes snap open - it is HIS voice! You whirl, and you gasp; he stands, powerful, in the shadows, and he strides into the light of the drifting candled globes, and you feel the serpent writhing and DYING... he returned! His face, stern, but somewhere, in those features, you can almost see his pleasure at seeing you. After all, he returned for y-~ */
  IF ~~ THEN REPLY #52874 /* ~Echo: "Only you can help me, Deionarra. But it was wrong for me to ask you for your help..."~ */ GOTO 7
  IF ~~ THEN REPLY #52875 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52876 /* ~You speak... Deionarra... yet you, it is YOU, gray-skinned like a statue, striding from the light - are you that *scarred?!* Your body looks like it has been bathed in knife blades, the wounds, the tattoos, horrible - yet, you see through DEIONARRA'S EYES, and she sees... how can she SEE you in such a way, she puts a CLOAK over your features, she sees you in such *light,* such terrible longing, *light*... for she... how... can she FEEL such...?~ */
  IF ~~ THEN REPLY #52877 /* ~Try to re-focus, brace yourself, hold onto the experience...~ */ GOTO 8
  IF ~~ THEN REPLY #52878 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #52879 /* ~You feel your vision tearing, doubling until you are that man striding from the light, it IS you, but NOT you... you feel yourself being TORN; it is Deionarra's experience, but at the same time, it is also *yours,* and you... what...~ */
  IF ~~ THEN REPLY #52880 /* ~Echo: "I asked too much of you to accompany me, Deionarra. I have no right to place you in such danger for my sake..."~ */ GOTO 9
  IF ~~ THEN REPLY #52881 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #52882 /* ~It is your words, but they are a surgeon's words, chosen with cold skill, without a TRACE of emotion. With every word, you feel yourself SNEERING inside, knowing what the (stricken) girl will see next through her (longing-stained) eyes, and who - are you THAT person, that man TWISTING her with your words, not KNOWING how powerful they are to her, like bolts from a ballista, piercing her breast, her... yet, she SEES only RELIEF at your return. How... how can she FEEL... and not know you mean to...?~ */
  IF ~~ THEN REPLY #52883 /* ~Echo: "I have come to ask your forgiveness, Deionarra. I shall return to you as soon as I am able -"~ */ GOTO 10
  IF ~~ THEN REPLY #52884 /* ~Stir yourself from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #52885 /* ~Your vision tears again, doubling and bleeding, until you are facing yourself again, trying desperately to speak, to WARN Deionarra that this is not a man, but a creature that kills for his own needs, he doesn't CARE about you, Deionarra, you are a TOOL to him, a TOOL he needs to - but Deionarra speaks, and you can't STOP her...~ */
  IF ~~ THEN REPLY #52886 /* ~Echo: "I would place myself in a *thousand* dangers, embrace eternity for you, my Love! I am *not* afraid! Listen to me - I will accompany you, though the planes themselves should bar-"~ */ GOTO 11
  IF ~~ THEN REPLY #52887 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52888 /* ~"...though the planes themselves should bar the way..." You feel yourself shattering, relief and satisfaction - his SATISFACTION at her words, KNOWING she would say them, always KNOWING, and her admission of love is like the slamming of a portcullis across your heart. Trapped. She is yours, but you must be *certain,* so you drive the nail home.~ */
  IF ~~ THEN REPLY #52889 /* ~Echo: "The way is dangerous. You will have to be strong... *far* stronger than you are now."~ */ GOTO 12
  IF ~~ THEN REPLY #52890 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52891 /* ~Swimming through her mind, relief, the wave of relief, the end of longing, yet LONGING for him more at his words, not noticing his manipulations... all you need to be is strong, and his path shall be as one with yours! Your thoughts are like fires... for you can be strong, stronger than he knows, you know no fear, you would DIE for him...!~ */
  IF ~~ THEN REPLY #52892 /* ~Echo: "I can be strong, my Love. I will -"~ */ GOTO 13
  IF ~~ THEN REPLY #52893 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #52894 /* ~Her words slide off of him like water. The serpent in her breast, the one piercing her heart with its poison has been replaced by this serpent in the flesh. She sees nothing of this, and his next words are planned, carefully, so carefully... ~ */
  IF ~~ THEN REPLY #52895 /* ~Echo: "I can't say if we'll succeed, Deionarra, but I'll do my best to protect you. And I will expect nothing less of the same from you. You..."~ */ GOTO 14
  IF ~~ THEN REPLY #52896 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #52897 /* ~"...you may be required to make some *sacrifices.*" At that final, terrible, word, you feel yourself being TORN apart; he means her harm... he means YOU harm, for you are HER, and he means to HURT her, yet you NEED her to be harmed, and - you want to SCREAM, SCREAM AT HER THAT SHE IS IN DANGER, RUN, RUN, DEIONARRA, FOR HIS EYES UNMAKE ALL THINGS AND -~ */
  IF ~~ THEN REPLY #52898 /* ~Echo: "Of course, my Love. Life is sacrifice. This I have learned."~ */ GOTO 15
  IF ~~ THEN REPLY #52899 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #52909 /* ~You... she... her... you speak the words, and in it, you feel yourself dying inside. You are a spectator, and you have watched a woman die, for the words are a death sentence. Yet, still, still she speaks, unheeding, uncaring...~ */
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52910 /* ~Echo: "I... left a legacy in my father's keeping, my Love; ask for the sixth, the third, the Kay and the 'S.' In it, I bequeath everything to you; it's not much, but with it, I left..."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52913 /* ~I saw Deionarra's final days within one of the sensory stones in the Festhall's Private Sensorium. In it, she told me... the one in the experience... that she had left a legacy for me. It may prove useful...~ */ GOTO 16
  IF ~  GlobalGT("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52911 /* ~Echo: "I... left a legacy in my father's keeping, my Love; ask for the sixth, the third, the Kay and the 'S.' In it, I bequeath everything to you; it's not much, but with it, I left..."~ */ GOTO 16
  IF ~~ THEN REPLY #52912 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #52914 /* ~You... him... a wave of *irritation* washes over you; you clench your teeth to prevent the irritation from crossing your features. Must she *always* continue to prattle, even when you do not *prompt* her?! Must she - but no - no, keep the irritation inside, only a trace slips out...~ */
  IF ~~ THEN REPLY #52915 /* ~Echo: "Come now, I cannot DIE, Deionarra. There is no NEED for such foolishness..."~ */ GOTO 17
  IF ~~ THEN REPLY #52916 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #52917 /* ~Her... you... she is overcome with FEAR, fear that revolts you, and the fear wells up inside her... you, you as you watch him frown, and you hasten to correct him! He must know the reasons and know the wisdom behind them so he is impressed with your planning! Speak! Speak, before he turns away... ~ */
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52918 /* ~Echo: "I know I often act foolishly, my Love... but you said yourself that you CAN forget things if you are badly hurt. There are things in the legacy that could help you remember should you forget yourself."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52922 /* ~In that experience of Deionarra's in the sensory stone in the Festhall... I know that when she suggested I leave a legacy, it struck a chord with my previous incarnation. He may have been motivated to leave a legacy for himself, just as a precaution. If I could only find the number for it, I might be able reclaim it. ~ */ GOTO 18
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
GlobalGT("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52919 /* ~Echo: "I know I often act foolishly, my Love... but you said yourself that you CAN forget things if you are badly hurt. There are things in the legacy that could help you remember should you forget yourself."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52923 /* ~In that experience of Deionarra's in the sensory stone in the Festhall... I know that when she suggested I leave a legacy, it struck a chord with my previous incarnation. This is what motivated him to leave that legacy for himself, just as a precaution. ~ */ GOTO 18
  IF ~  GlobalGT("Memory_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52920 /* ~Echo: "I know I often act foolishly, my Love... but you said yourself that you CAN forget things if you are badly hurt. There are things in the legacy that could help you remember should you forget yourself."~ */ GOTO 18
  IF ~~ THEN REPLY #52921 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1 17.2
  SAY #52924 /* ~She... you coldly regard her through your eyes, tracing your gaze along her furrowed brow, wrinkled with worry, desperation. She has acted as you *expected*... yet there is something in what she says...~ */
  IF ~~ THEN REPLY #52925 /* ~Echo: "Perhaps... yet I hope nothing in this legacy is of *value*... I do not want you to leave any things here in some safe that could be of some use on our journey."~ */ GOTO 19
  IF ~~ THEN REPLY #52926 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #52927 /* ~Her illusion is shattered, just for a moment - you watch, silent, as the emotion falls to the ground, splintering like silvered glass. "...of some use..." such a casual statement, yet even Deionarra SEES, and you hope, just for a moment, you HOPE that she SEES him for what he is... the serpent, the SERPENT...~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #52928 /* ~...and your hope dies, as in Deionnara's eyes, the emotion is rebuilt, the slivers being drawn from the ground, the illusion rebuilt, but the slight sliver of pain remains. He thinks you have done something foolish! Yet, you did it for HIM! You must... must make amends, but how?! You must convince him the legacy is unimportant, but it ISN'T, it ISN'T. It's EVERYTHING...~ */
  IF ~~ THEN REPLY #52929 /* ~Echo: "The legacy, my Love, it... it just has a few things to help you remem-"~ */ GOTO 21
  IF ~~ THEN REPLY #52930 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #52931 /* ~The scythe of words falls on Deionarra, so quick, so sharp, you cannot follow its arcing path. ~ */
  IF ~~ THEN REPLY #52932 /* ~Echo: "A legacy? The things you do, Deionarra... such... *romantic* gestures. No matter..."~ */ GOTO 22
  IF ~~ THEN REPLY #52933 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #52934 /* ~No! She... you... Deionarra... you have driven him away again, like you did the night before! You feel the serpent stirring again, reborn, curling around your heart. There is the softest of hisses, yet he does not hear...~ */
  IF ~~ THEN REPLY #52935 /* ~Echo: "Would... would you wish to leave a legacy, my Love? For yourself... or for anyone you would want to. It might help you remember if you left something for yourself... or for the ones you loved..." ~ */ GOTO 23
  IF ~~ THEN REPLY #52936 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #52937 /* ~The word scythe falls again, terrible and swift. Yet this time, the illusion holds, and the serpent is cloaked. The serpent is cunning, and it shall not reveal itself until it strikes. ~ */
  IF ~~ THEN REPLY #52938 /* ~Echo: "A legacy for myself? Not likely... the things I would leave for myself would not be safe in some advocate's office, Deionarra. But enough of this... I must leave." ~ */ GOTO 24
  IF ~~ THEN REPLY #52939 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #52940 /* ~He is leaving! You must make him remain... and the experience SWIRLS around you, terrible, the spiraling toward the final scene... the QUESTION you... she... wants to ask, don't ask it, Deionarra! Don't ASK IT BE SILENT BE SILENT~ */
  IF ~~ THEN REPLY #52941 /* ~Echo: "My Love, before you go..." ~ */ GOTO 25
  IF ~~ THEN REPLY #52942 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52943 /* ~HIS ANGER HIS IRRITATION WHAT *NOW* GIRL WHAT *NOW* YOU MEWLING BANSHEE~ */
  IF ~~ THEN REPLY #52944 /* ~Echo: "'Before I go'? It looks like I am in no danger of that. Come, Deionarra, can't these questions wait for the morn? There is much-" ~ */ GOTO 26
  IF ~~ THEN REPLY #52945 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #52946 /* ~SHE... YOU... SHE IS DESPERATE DROWNING SAY IT SAY IT SAY IT AND SHE... YOU... SPEAK IT~ */
  IF ~~ THEN REPLY #52947 /* ~Echo: "Do you *want* me to come with you, my Love?" ~ */ GOTO 27
  IF ~~ THEN REPLY #52948 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #52949 /* ~The rush of emotion dies in your mind. This is the end. The words he... you... are about speak are true, but the truth is not the truth she sees. There are no lies, only cold calculations. Of *course* he wants you to come with him, Deionarra. You understand it clearly, too clearly: He has invested too much in the poor girl to let her go. ~ */
  IF ~~ THEN REPLY #52950 /* ~Echo: "Of course, Deionarra. I would not have asked you to come with me if I did not want your company. You *know* how I feel about you..."~ */ GOTO 28
  IF ~~ THEN REPLY #52951 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #52952 /* ~There is a cold silence in his mind, then a hissing of a thought, a response sharp and deadly, like a dagger blade. The lie comes swiftly, unburdened by emotion. ~ */
  IF ~~ THEN REPLY #52953 /* ~Echo: "I love you, Deionarra."~ */ GOTO 29
  IF ~~ THEN REPLY #52954 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #52955 /* ~And you want to SCREAM as you feel the lie wash over her like a RADIANCE, but it is a SHADOW of TRUTH, A SERPENT'S KISS, AND HE MEANS YOU HARM AND SHE CAN'T *SEE* YOU WANT TO CALL OUT BUT SHE IS CRYING WITH JOY EVEN AS - EVEN AS -~ */
  IF ~~ THEN REPLY #52956 /* ~Cry with joy... with frustration... with joy... with despair...~ */ GOTO 30
  IF ~~ THEN REPLY #52957 /* ~Tear yourself away from the experience.~ */ GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #52958 /* ~The emotion washes over you, like you are drowning, DROWNING, and you need to speak, you LONG to speak, but you cannot... and...~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #52959 /* ~Tear yourself away from the experience.~ */ GOTO 32
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52960 /* ~Tear yourself away from the experience.~ */ GOTO 31
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52961 /* ~Tear yourself away from the experience.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #52962 /* ~...and you scream, scream as you tear your hands from the stone, bloody tears rushing from your eyes, running in streams down your arms, your hands, to coat the stone. Blood! Her blood! And... you can't WARN her... and you can't stop CRYING...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 260
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52963 /* ~...and you scream, scream as you tear your hands from the stone, bloody tears rushing from your eyes, running in streams down your arms, your hands, to coat the stone. Blood! Her blood! And... you can't WARN her... and you can't stop CRYING...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 165
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #52964 /* ~...and you scream, scream as you tear your hands from the stone, bloody tears rushing from your eyes, running in streams down your arms, your hands, to coat the stone. Blood! Her blood! And... you can't WARN her... and you can't stop CRYING...~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52965 /* ~Try and gather your thoughts...~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52966 /* ~Try and gather your thoughts...~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #52967 /* ~As much as you want to hurl the memory of the experience from you, you hold it fast, because you know it's important to remember it. It was *you* in that experience... it was Deionarra's experience, but because it was you, your memories flooded you, and you could FEEL both sides at once. Who WERE you? Who was that... that *shade* of you? ~ */
  IF ~~ THEN REPLY #52968 /* ~Turn from the stone, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.1 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.2 16.1 17.3 18.1 20.1 21.1 22.1 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #52969 /* ~You tear yourself from the experience, but you do with effort - you feel like you are swimming up through an ocean, struggling, *fighting* to reach the surface. You take a deep breath, and your head clears, and you are once again facing the azure blue stone, its surface still and cold. ~ */
  IF ~~ THEN REPLY #52970 /* ~Turn from the stone, leave.~ */ EXIT
END
