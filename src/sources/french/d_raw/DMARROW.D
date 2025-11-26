// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMARROW.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMARROW~

IF ~  Global("Marrow","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2792 /* ~Tu sens comme une odeur âcre de fumier et de chair en décomposition qui se dégage de cet homme, même de loin. Malgré une apparence faible et décrépite, ses doigts longs et minces et ses yeux enfoncés dans leurs orbites lui donnent un air sinistre tandis qu'il furète dans les immondices autour de lui. À la façon dont il fait rouler ses yeux, tu te demandes s'il est fou.~ */
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #17228 /* ~"Bonjour…"~ */ DO ~SetGlobal("Marrow","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #17229 /* ~"Bonjour…"~ */ EXTERN ~DANNAH~ 102
  IF ~~ THEN REPLY #17230 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2793 /* ~Il essaie de te fixer, mais son regard erre. Ses yeux sont des cavités profondes et sa peau est terriblement pâle et morbide, couverte d'éruptions et de tâches jaunies qui semblent prêtes à tomber à tout moment. La puanteur qui en émane est terrible. Alors que tu ouvres la bouche pour parler, il se lèche les lèvres et déglutit. "Toooi mor-rrr ?"~ */
  IF ~~ THEN REPLY #17231 /* ~"Qu'est-ce que tu as dit ?"~ */ GOTO 2
  IF ~~ THEN REPLY #17232 /* ~"Ça va ?"~ */ GOTO 2
  IF ~~ THEN REPLY #17233 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #17170 /* ~"Tooooi…" Il se lèche de nouveau les lèvres et il se gratte la peau de ses doigts longs et fuselés tout en te regardant. "Toooi mor-rrr ?" Il jette un coup d'œil à ta gauche, puis ses yeux te dardent de nouveau. "Mor ? Mor ? Faaa-immm." Il va pour te toucher, en léchant ses lèvres rugueuses.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17234 /* ~Laisse-le te toucher.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17235 /* ~Laisse-le te toucher.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17236 /* ~Ne le laisse pas te toucher.~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 21.1
  SAY #17171 /* ~Ses doigts farfouillent comme une araignée sur ton bras, comme s'il cherchait un morceau à déchirer. Il lèche de nouveau ses lèvres fendillées et tu vois une bave jaunâtre s'en écouler. Avec un gémissement rauque, ses doigts s'enfoncent dans la peau de ton bras et en tirent un petit bout. La blessure est petite, mais vu ton état actuel, elle s'avère fatale… tu t'effondres, mort.~ */
  IF ~~ THEN REPLY #17237 /* ~Terminé.~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 21.0
  SAY #17172 /* ~Ses doigts farfouillent comme une araignée sur ton bras, comme s'il cherchait un morceau à déchirer. Il lèche de nouveau ses lèvres fendillées et tu vois une bave jaunâtre s'en écouler. Avec un gémissement rauque, ses doigts s'enfoncent dans la peau de ton bras et en tirent un petit bout.~ */
  IF ~~ THEN REPLY #17239 /* ~Recule.~ */ GOTO 6
  IF ~~ THEN REPLY #339 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 21.2
  SAY #17173 /* ~Ses mains saisissent l'espace vide où tu te trouvais et il pousse une plainte faible, comme un chien peiné. "F-fffa-immm."~ */
  IF ~~ THEN REPLY #17242 /* ~Recule.~ */ GOTO 7
  IF ~~ THEN REPLY #17243 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0
  SAY #17174 /* ~Tu regardes et tu sens ton estomac se soulever lorsqu'il prend le morceau de chair et le fourre dans sa bouche. Il le mâche lentement, puis l'avale. "Tooii mor ?"~ */
  IF ~~ THEN REPLY #17245 /* ~"Non, je ne suis pas mort."~ */ GOTO 8
  IF ~~ THEN REPLY #17250 /* ~"Non, mais toi tu vas l'être dans peu de temps…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #17248 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0
  SAY #17176 /* ~Sa main se tend soudain pour attraper un gros ver blanc qui se tortillait dans un tas de détritus proche. Tu sens ton estomac se soulever lorsqu'il prend l'asticot et le met dans sa bouche. Il le mâche lentement, puis l'avale. "Toooi mor ?"~ */
  IF ~~ THEN REPLY #17249 /* ~"Non, je ne suis pas mort."~ */ GOTO 9
  IF ~~ THEN REPLY #17251 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #17177 /* ~"Toooi a le gooooût de mor." Il se gratte sous sa robe et tu t'aperçois soudain qu'un doigt est accroché sur un cordon à son cou. On dirait qu'il porte un anneau. "Encoor faimm."~ */
  IF ~~ THEN REPLY #17252 /* ~"Qu'est-ce que tu as l'habitude de manger ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17253 /* ~"C'est quoi cette phalange ?"~ */ GOTO 11
  IF ~~ THEN REPLY #17255 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #17178 /* ~"Toooi as l'aaaaiiir mor." Il se gratte sous sa robe et tu t'aperçois soudain qu'un doigt est accroché à son cou au bout d'un cordon. On dirait qu'il y a dessus un anneau. "Encooor faaaim."~ */
  IF ~~ THEN REPLY #17257 /* ~"Qu'est-ce que tu as l'habitude de manger ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17258 /* ~"C'est quoi cette phalange ?"~ */ GOTO 11
  IF ~~ THEN REPLY #17259 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #17179 /* ~Il renifle, comme un porc. "Mor".~ */
  IF ~~ THEN REPLY #17260 /* ~"C'est quoi cette phalange ?"~ */ GOTO 11
  IF ~~ THEN REPLY #17261 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0
  SAY #17180 /* ~Il abaisse son regard, ses traits infestés de lésions se tordant dans un semblant de grimace horrible avec ses dents saillantes. "Snnnak." Il semble prêt à le mâcher.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17262 /* ~Arrête-le.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17264 /* ~Arrête-le.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17266 /* ~"Ne mange pas ça. Sers-toi plutôt sur moi. Je suis plus frais."~ */ GOTO 14
  IF ~~ THEN REPLY #17269 /* ~Mensonge : "Ne mange pas ça. Je vais t'apporter un corps entier à manger à la place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17271 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 12 // from: 11.1 13.1
  SAY #17181 /* ~Tu attrapes sa main et il commence à se débattre. Ce faisant, il mord un gros morceau de ton bras et tu es forcé de le laisser partir… la blessure n'est pas terrible, mais vu ton état actuel, elle est fatale. Tu t'effondres, mort.~ */
  IF ~~ THEN REPLY #17273 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 13.0
  SAY #17182 /* ~Tu attrapes sa main et il commence à se débattre. Ce faisant, il mord un gros morceau de ton bras et tu es forcé de le laisser partir… non en raison de la douleur, mais parce que tu pourrais le casser en deux si tu poursuivais la lutte. Il mâche le morceau de ta chair pendant un moment puis regarde à nouveau sa phalange.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17274 /* ~Empêche-le de manger la phalange.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 13
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17276 /* ~Empêche-le de manger la phalange.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 12
  IF ~~ THEN REPLY #17277 /* ~"Ne mange pas ça. Sers-toi plutôt sur moi. Je suis plus frais."~ */ GOTO 14
  IF ~~ THEN REPLY #17278 /* ~Mensonge : "Ne mange pas ça. Je vais t'apporter un corps entier à manger à la place."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 20
  IF ~~ THEN REPLY #17280 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 14 // from: 11.2 13.2 31.1 32.1
  SAY #17183 /* ~Il sourit et s'apprête à prendre ta main tendue.~ */
  IF ~~ THEN REPLY #17281 /* ~"Donne-moi d'abord la phalange, 'Moelle-pote'."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17282 /* ~Laisse-le te mordre.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17283 /* ~Laisse-le te mordre.~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 15
  IF ~~ THEN REPLY #17285 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 14.2 17.1
  SAY #17184 /* ~Ses dents s'enfoncent dans la chair de ton avant-bras et en arrachent un morceau d'un simple mouvement du cou. Tu te rends compte trop tard que ton corps n'était pas en état de recevoir une telle blessure, et tu t'effondres par terre, mort.~ */
  IF ~~ THEN REPLY #17286 /* ~Tu sombres dans l'obscurité…~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.1 17.0
  SAY #17185 /* ~Ses dents s'enfoncent dans la chair de ton avant-bras et en arrachent un morceau d'un simple mouvement du cou. La douleur est atroce, mais Moelle-pote s'assied sur son arrière-train comme s'il ne s'était rien passé, mâchant bruyamment la bouchée de viande qu'il vient d'arracher.~ */
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17287 /* ~"Maintenant… Donne-moi ton doigt."~ */ GOTO 19
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17288 /* ~"Eh… Merci. Au revoir."~ */ EXIT
  IF ~  !Global("Marrow","GLOBAL",2)
~ THEN REPLY #17289 /* ~Laisse-le.~ */ GOTO 22
  IF ~  Global("Marrow","GLOBAL",2)
~ THEN REPLY #17290 /* ~Laisse-le.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.0 19.0
  SAY #17186 /* ~Il acquiesce avec gourmandise et te laisse prendre la phalange.~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17291 /* ~Laisse-le te mordre.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17292 /* ~Laisse-le te mordre.~ */ DO ~Damage(Protagonist,LOWER,3)
IncrementGlobalOnceEx("GLOBALLawful_Marrow_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #17293 /* ~Ne le laisse pas te mordre, pars.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_1","GLOBALGood",-1)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2 29.2
  SAY #17187 /* ~Il gémit pitoyablement, comme un chien botté par son maître…~ */
  IF ~~ THEN REPLY #17294 /* ~Pars.~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.0
  SAY #17188 /* ~Il serre la phalange contre sa poitrine, te regarde pitoyablement et secoue sa tête. "N-nooon. Fai-mmmm !"~ */
  IF ~~ THEN REPLY #17295 /* ~"Si tu me donnes cette phalange, je te donnerai l'une des miennes."~ */ DO ~GiveItemCreate("Finger",Protagonist,1,0,0)
SetGlobal("Marrow","GLOBAL",2)
~ GOTO 17
  IF ~~ THEN REPLY #17297 /* ~Laisse-le.~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 11.3 13.3
  SAY #17189 /* ~Ses yeux luisent et il oublie la phalange. "Oh-ké."~ */
  IF ~~ THEN REPLY #17298 /* ~"Je vais aller chercher de la… viande… pour toi. Ne mange *pas* cette phalange ou tu n'auras pas de viande. Au revoir."~ */ DO ~SetGlobal("Marrow","GLOBAL",4)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #17190 /* ~Il gémit lamentablement : "F-aaa-imm. Toooi mo-rrr ?" Il se penche en avant, fixant tes bras du regard. "Mor ? Fa-imm." Il essaie de te toucher, une bave jaunâtre suintant le long de son menton.~ */
  IF ~  HPGT(Protagonist,1)
~ THEN REPLY #17299 /* ~Laisse-le te toucher.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 4
  IF ~  HPLT(Protagonist,2)
~ THEN REPLY #17300 /* ~Laisse-le te toucher.~ */ DO ~Damage(Protagonist,LOWER,1)
~ GOTO 3
  IF ~~ THEN REPLY #17301 /* ~Ne le laisse pas te toucher.~ */ GOTO 5
END

IF ~~ THEN BEGIN 22 // from: 8.2 9.2 10.1 11.4 13.4 14.3 16.2 19.1
  SAY #17191 /* ~Tandis que tu t'en vas, il détache la phalange du cordon et l'avale en entier, anneau compris.~ */
  IF ~~ THEN REPLY #17307 /* ~Pars.~ */ DO ~SetGlobal("Marrow","GLOBAL",3)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",0)
~ THEN BEGIN 23 // from:
  SAY #17193 /* ~Il gémit misérablement : "F-aa-immm."~ */
  IF ~~ THEN REPLY #17308 /* ~"Tiens… Prends un morceau de moi."~ */ GOTO 29
  IF ~~ THEN REPLY #17312 /* ~"C'est dommage. Au revoir."~ */ EXIT
END

IF ~  Global("Marrow","GLOBAL",2)
Global("Marrow_Follow","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #17194 /* ~Il s'approche de toi, gémissant lamentablement. "F-aaa-immm."~ */
  IF ~~ THEN REPLY #17313 /* ~"Pourquoi est-ce que tu me suis ?"~ */ GOTO 25
  IF ~~ THEN REPLY #17314 /* ~Vérité : "Arrête de me suivre ou je te tue. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17315 /* ~Bluff : "Arrête de me suivre ou je te tue. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17321 /* ~"Arrête de me suivre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17195 /* ~Il désigne tes mains, tout en bavant. "Doi-gggt… faimmm !"~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17322 /* ~"D'accord. Tiens, mords dans mon bras."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 27
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17323 /* ~"D'accord. Tiens, mords dans mon bras."~ */ DO ~Damage(Protagonist,LOWER,3)
~ GOTO 26
  IF ~~ THEN REPLY #17325 /* ~Vérité : "Arrête de me suivre ou je te tue. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Marrow_2","GLOBALGood",-1)
~ EXIT
  IF ~~ THEN REPLY #17326 /* ~Bluff : "Arrête de me suivre ou je te tue. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_1","GLOBALLaw",-1)
~ EXIT
  IF ~~ THEN REPLY #17328 /* ~"Arrête de me suivre. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.1
  SAY #17196 /* ~Ses dents s'enfoncent dans la chair de ton avant-bras et en arrachent un morceau d'un simple mouvement du cou. Tu te rends compte trop tard que ton corps n'était pas en état de recevoir une telle blessure, et tu t'effondres par terre, mort.~ */
  IF ~~ THEN REPLY #17329 /* ~Tout devient noir…~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0
  SAY #17197 /* ~Ses dents s'enfoncent dans la chair de ton avant-bras et en arrachent un morceau d'un simple mouvement du cou. La douleur est atroce, mais Moelle-pote s'assied sur son arrière-train comme s'il ne s'était rien passé, mâchant bruyamment la bouchée de viande qu'il vient d'arracher.~ */
  IF ~~ THEN REPLY #17330 /* ~"Arrête de me suivre. Au revoir."~ */ DO ~SetGlobal("Marrow_Follow","GLOBAL",0)
~ EXIT
END

IF ~  Global("Marrow","GLOBAL",3)
~ THEN BEGIN 28 // from:
  SAY #17198 /* ~Il gémit misérablement : "F-aa-immm."~ */
  IF ~~ THEN REPLY #17331 /* ~"Tiens… Prends un morceau de moi."~ */ GOTO 29
  IF ~~ THEN REPLY #17334 /* ~"C'est dommage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 23.0 28.0
  SAY #17199 /* ~"Mmm… viaaande. Plus faaimmm.. ?" L'homme tend la main vers ton bras, de la bave suintant du sourire dérangé qu'il esquisse…~ */
  IF ~  HPGT(Protagonist,3)
~ THEN REPLY #17335 /* ~Laisse-le te mordre.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 34
  IF ~  HPLT(Protagonist,4)
~ THEN REPLY #17336 /* ~Laisse-le te mordre.~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Marrow_1","GLOBALGood",1)
Damage(Protagonist,LOWER,3)
~ GOTO 33
  IF ~~ THEN REPLY #17337 /* ~Retire ton bras et pars.~ */ GOTO 18
END

IF ~  Global("Marrow","GLOBAL",4)
~ THEN BEGIN 30 // from:
  SAY #17200 /* ~Il bat des mains joyeusement. "Faaa-immm ! Ttttt'amènes viaaande ?" De la salive jaune s'écoule de ses lèvres fissurées.~ */
  IF ~~ THEN REPLY #17338 /* ~Mensonge : "Oui, mais donne-moi d'abord la phalange."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Marrow_2","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #17339 /* ~"Non, pas encore."~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17201 /* ~Il acquiesce avec gourmandise, puis s'arrête, reniflant l'air qui t'entoure. "Tuuu as pas de vvvviiiande ! Tuuuu mmmens… mmmens !"~ */
  IF ~~ THEN REPLY #17340 /* ~Mensonge : "Je… l'ai sûrement oubliée quelque part. Je reviens tout de suite."~ */ EXIT
  IF ~~ THEN REPLY #17341 /* ~"Tiens… mords-moi, plutôt."~ */ GOTO 14
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #17202 /* ~"Nooon ? Si… f-faimm…" Il regarde la phalange, léchant ses lèvres croûtées d'une langue jaune.~ */
  IF ~~ THEN REPLY #17343 /* ~"Ne mange pas ça… Je reviens tout de suite."~ */ EXIT
  IF ~~ THEN REPLY #17344 /* ~"Tiens… mords-moi, plutôt."~ */ GOTO 14
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #17205 /* ~Ses dents s'enfoncent dans la chair de ton avant-bras et en arrachent un morceau d'un simple mouvement du cou. Tu te rends compte trop tard que ton corps n'était pas en état de recevoir une telle blessure, et tu t'effondres par terre, mort.~ */
  IF ~~ THEN REPLY #17346 /* ~Tout devient noir…~ */ DO ~Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 29.0
  SAY #17206 /* ~Ses dents s'enfoncent dans la chair de ton avant-bras et en arrachent un morceau d'un simple mouvement du cou. La douleur est atroce, mais Moelle-pote s'assied sur son arrière-train comme s'il ne s'était rien passé, mâchant bruyamment la bouchée de viande qu'il vient d'arracher.~ */
  IF ~~ THEN REPLY #17347 /* ~"Je… J'espère que ça te suffira. Au revoir."~ */ EXIT
END
