// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGIANTSK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGIANTSK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #292 /* ~Devant toi se tient un squelette géant en armure de bronze ornée et boulonnée directement dans son ossature. Des symboles travaillés sont gravés sur le plastron. Tu te demandes d'où vient le squelette. Tu ignorais l'existence d'humains de cette taille. L'énorme lame dans sa main semble être aussi lourde qu'une charrette.~ */
  IF ~~ THEN REPLY #293 /* ~"Tu veux bien que je tienne cette lame une seconde ? Tu dois en avoir assez de la porter."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Giant_Skel_Mort_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #1165 /* ~"Bon, ça fait combien de temps que tu es ici ? Longtemps ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Giant_Skel_Mort_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #3996 /* ~Examine le squelette géant… attentivement.~ */ GOTO 4
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #3997 /* ~Voyons si tu réussis à lever les enchantements entrelacés dans le plastron du squelette.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #3998 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #3999 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4000 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4001 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4002 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #4003 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ GOTO 1
  IF ~~ THEN REPLY #4004 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 1 // from: 0.0 0.1 0.9
  SAY #1166 /* ~Le squelette a l'air mort depuis trop longtemps pour pouvoir répondre à tes questions. Ou bien sa tête est trop haute pour qu'il puisse t'entendre.~ */
  IF ~~ THEN REPLY #1167 /* ~Examine le squelette géant… attentivement.~ */ GOTO 4
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #4035 /* ~Voyons si tu réussis à lever les enchantements entrelacés dans le plastron du squelette.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4036 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4037 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4038 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4039 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4040 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4041 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
  SAY #4005 /* ~Au moment où tu touches le squelette, une cloche en fer résonne dans toute la Morgue… aussi vite que l'éclair, le squelette se réveille et lève sa lame, prêt à frapper !~ */
  IF ~~ THEN REPLY #4042 /* ~"Tu vas regretter de ne plus être mort, Os…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
  SAY #4006 /* ~Tu étais prêt à agir quand soudain tu t'arrêtes… Les symboles gravés sur le plastron de l'armure du squelette attirent ton regard. Si ces squelettes sont des gardes, alors tu risques de les déranger et… de les réveiller.~ */
  IF ~~ THEN REPLY #4043 /* ~"C'est un risque que je suis prêt à prendre…"~ */ GOTO 2
  IF ~~ THEN REPLY #4044 /* ~Examine le squelette géant… attentivement.~ */ GOTO 4
  IF ~~ THEN REPLY #4046 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.1 7.1 15.1 16.3
  SAY #4007 /* ~L'armure en bronze ornée est rivée dans la cage thoracique du squelette avec une série de boulons en fer. Les épaulières aussi. Tu observes la charpente derrière l'armure et tu remarques que des boulons en fer similaires sont placés dans les articulations de l'épaule, du coude, de la hanche et du genou. Des cordons épais en cuir et des cordes nouées descendent le long des bras et des jambes du squelette. Ils ressemblent à des muscles et des tendons.~ */
  IF ~~ THEN REPLY #4045 /* ~Examine l'armure.~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4048 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4049 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4050 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4051 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4052 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4053 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #4008 /* ~Malgré son ancienneté, l'armure a l'air bien conservée. Elle brille et les symboles gravés sur le plastron semblent vaciller à la lueur du feu, échappant à ton regard chaque fois que tu veux les observer.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4054 /* ~Étudie les symboles.~ */ GOTO 6
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4055 /* ~Étudie les symboles.~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,13,INT)
~ THEN REPLY #64293 /* ~Examine les symboles.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4056 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4057 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4058 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4059 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4060 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4061 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.1
  SAY #4009 /* ~Presque inconsciemment, tu poses les yeux sur les symboles. Après un instant, les symboles cessent de vaciller et se concentrent en un tracé de runes qui court des pieds à la tête du plastron. Bizarrement, l'enchevêtrement des runes te rappelle une chaîne… et tu te souviens que ces runes sont une sorte de protection contre l'enchantement.~ */
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #4062 /* ~Étudie les runes, essaie de te souvenir de l'enchantement.~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #4063 /* ~Étudie les runes, essaie de te souvenir de l'enchantement.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4064 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4065 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4066 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4067 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4068 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4069 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2 6.1 7.2
  SAY #4010 /* ~Tu observes les runes pendant un moment mais tu ne réussis pas à déchiffrer l'enchantement. Il a l'air compliqué. Tu as du mal à te concentrer.~ */
  IF ~  PartyHasItem("TomeBA")
~ THEN REPLY #64294 /* ~Compare les runes avec celles du Manuel des Ossements et des Cendres. ~ */ GOTO 15
  IF ~~ THEN REPLY #4070 /* ~Examine de nouveau le squelette.~ */ GOTO 4
  IF ~~ THEN REPLY #4071 /* ~Examine de nouveau les runes.~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4072 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4073 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4074 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4075 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4076 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4077 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #4011 /* ~Tu observes la trame des runes pendant qu'elles se tissent un chemin sur le plastron. Au niveau le plus simple, les runes sont un enchantement d'armure mineur ; mais plusieurs runes en forme de crâne et des dessins sphériques le long des bords de l'armure te font suspecter des enchantements nécromantiques et des protections majeures, tissés à l'intérieur. Si tu touchais le squelette, tu le réveillerais… et il se défendrait.~ */
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #4079 /* ~Essaie de trouver un moyen de lever les enchantements.~ */ DO ~SetGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
AddexperienceParty(500)
~ GOTO 9
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",0)
~ THEN REPLY #4080 /* ~Essaie de trouver un moyen de lever les enchantements.~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4081 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4082 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4083 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4084 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4085 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4078 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.3 1.1 8.0 8.1
  SAY #4012 /* ~Tu penses que le fait de casser la structure des runes sur le plastron permettrait de briser l'enchantement, mais ça a l'air difficile… la structure est compliquée, et le squelette pourrait se réveiller si tu éraflais la mauvaise partie.~ */
  IF ~  PartyHasItem("TomeBA")
~ THEN REPLY #64296 /* ~Compare les motifs avec les enchantements du Manuel des Ossements et des Cendres pour savoir si tu peux comprendre comment les briser.~ */ GOTO 16
  IF ~~ THEN REPLY #4086 /* ~Désactive les runes en commençant par l'enchantement d'armure, puis la nécromancie, et enfin l'enchantement de défense.~ */ GOTO 10
  IF ~  GlobalLT("Giant_Skeleton_Enchant","GLOBAL",2)
~ THEN REPLY #4087 /* ~Désactive les runes en commençant par l'enchantement de défense, puis reviens en arrière jusqu'au motif de runes, en annulant la nécromancie, puis l'enchantement d'armure.~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 11
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",1)
~ THEN REPLY #4088 /* ~Désactive les runes en commençant par l'enchantement de défense, puis reviens en arrière jusqu'au motif de runes, en annulant la nécromancie, puis l'enchantement d'armure.~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 13
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4089 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4090 /* ~Essaie de prendre la lame des mains du squelette.~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #4091 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #4092 /* ~Essaie d'enlever les boulons fixés sur l'armure du squelette.~ */ GOTO 3
  IF ~  NearbyDialog("DMorte")
Global("Morte_Skel_Mort_Quip","GLOBAL",1)
~ THEN REPLY #4093 /* ~"Hé, que penses-tu de CE squelette, Morte ? Est-ce qu'on pourra s'en servir de corps ?"~ */ EXTERN ~DMORTE~ 73
  IF ~~ THEN REPLY #4094 /* ~Laisse le squelette tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1 16.0
  SAY #4013 /* ~Tu commences à travailler sur les runes qui décorent le plastron. Soudain, une cloche résonne dans toute la Morgue… aussi vite que l'éclair, le squelette se réveille et lève sa lame, prêt à frapper !~ */
  IF ~~ THEN REPLY #4095 /* ~"Tu vas regretter de ne plus être mort, Os…"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("Mortuary_Alert","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.2 16.1
  SAY #4014 /* ~Le travail est difficile et nerveusement éprouvant. Lentement, ton esprit se concentre et les runes se brisent sous ton attaque. En quelques minutes, le squelette géant est libéré des enchantements qui l'emprisonnaient. Il s'effondre sur le sol dans un fracas d'ossements !~ */
  IF ~~ THEN REPLY #4096 /* ~"Fichu tas d'os… !"~ */ DO ~AddexperienceParty(800)
~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #4015 /* ~Tu attends un moment, mais personne ne répond à ce bruit. Rapidement, tu passes au crible les os du squelette sur le sol. La plupart sont trop lourds ou trop vieux pour être utilisés. Mais tu découvres un morceau du plastron portant la majorité des enchantements brisés. Tu as le sentiment qu'il pourra t'être utile.~ */
  IF ~~ THEN REPLY #4097 /* ~"Alors, je vais prendre ça…"~ */ DO ~GiveItemCreate("Breast1",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3 16.2
  SAY #4016 /* ~Cette fois, briser l'enchantement a été plus facile. Les runes se sont rapidement défaites sous ton attaque. En quelques minutes, le squelette géant est libéré des enchantements qui l'emprisonnaient. Fort de ton expérience, tu rattrapes le squelette avant qu'il ne tombe. Dans un grognement, tu le poses à terre.~ */
  IF ~~ THEN REPLY #4098 /* ~"Voyons ce que nous avons cette fois…"~ */ DO ~AddexperienceParty(800)
~ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #4017 /* ~Rapidement, tu fouilles dans les restes du squelette. À nouveau, tu trouves un morceau du plastron. Comme le premier, il porte un fragment de l'enchantement brisé. Cela pourra être utile.~ */
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",3)
~ THEN REPLY #4099 /* ~"Alors, je vais prendre ça…"~ */ DO ~GiveItemCreate("Breast2",Protagonist,1,1,0)
~ EXIT
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",4)
~ THEN REPLY #4100 /* ~"Alors, je vais prendre ça…"~ */ DO ~GiveItemCreate("Breast3",Protagonist,1,1,0)
~ EXIT
  IF ~  Global("Giant_Skeleton_Enchant","GLOBAL",5)
~ THEN REPLY #4101 /* ~"Alors, je vais prendre ça…"~ */ DO ~GiveItemCreate("Breast4",Protagonist,1,1,0)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.0
  SAY #64295 /* ~Tu consultes le livre et tu compares les diagrammes aux marques sur la cuirasse. Autant que tu puisses en juger, les runes sont un enchantement de protection mineur. Mais plusieurs runes en forme de crâne et des marques sphériques sur les côtés de l'armure laissent penser qu'on a utilisé aussi plusieurs enchantements de nécromancie et de vigilance très puissants. Toucher le squelette risque certainement de l'animer et il est probable qu'il… se défendra.~ */
  IF ~~ THEN REPLY #64298 /* ~Consulte le Manuel des Ossements et des Cendres pour savoir si tu peux comprendre comment les briser.~ */ GOTO 16
  IF ~~ THEN REPLY #64299 /* ~Ne touche pas aux runes et examine à nouveau le squelette.~ */ GOTO 4
END

IF ~~ THEN BEGIN 16 // from: 9.0 15.0
  SAY #64297 /* ~D'après ce que tu peux comprendre du manuel, il semble que l'enchantement de protection ne concerne que la cuirasse. La magie nécromantique doit permettre au squelette de s'animer ; quant à l'enchantement de vigilance, c'est lui qui permet au squelette d'avoir une perception limitée de son environnement. Tu supposes que si tu détruis les enchantements du squelette, il l'interprétera comme une attaque… sauf s'il ne peut pas détecter ta présence.~ */
  IF ~~ THEN REPLY #64300 /* ~Détruis les runes de protection d'abord, puis les runes de nécromancie et, enfin, celles de vigilance. ~ */ GOTO 10
  IF ~  GlobalLT("Giant_Skeleton_Enchant","GLOBAL",2)
~ THEN REPLY #64301 /* ~Détruis les runes de vigilance d'abord, puis les runes de nécromancie et, enfin, celles de protection.~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 11
  IF ~  GlobalGT("Giant_Skeleton_Enchant","GLOBAL",1)
~ THEN REPLY #64302 /* ~Détruis les runes de vigilance d'abord, puis les runes de nécromancie et, enfin, celles de protection.~ */ DO ~PlaySound("Armsk08")
IncrementGlobal("Giant_Skeleton_Enchant","GLOBAL",1)
Kill(Myself)
~ GOTO 13
  IF ~~ THEN REPLY #64303 /* ~Ne touche pas aux runes et examine à nouveau le squelette.~ */ GOTO 4
END
