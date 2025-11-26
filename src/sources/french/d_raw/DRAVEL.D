// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAVEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAVEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  Global("Ravel_Cut_Scene","AR0610",0)
~ THEN BEGIN 0 // from:
  SAY #2976 /* ~La vieille femme ratatinée, grassouillette et affublée d'un nez crochu qui se tient devant toi n'a pas grand-chose d'un mythe ; elle est vêtue d'une chemise et de hauts-de-chausse simples de couleur marron (mais sales), auxquels s'ajoutent un certain nombre de bourses qui pendent de sa ceinture effilochée. Elle ignore ta présence, plus préoccupée par les racines noires enchevêtrées qui constituent le plancher du dédale que par ce qui se passe autour d'elle.~ */
  IF ~~ THEN REPLY #2977 /* ~Examine-la un moment.~ */ GOTO 1
  IF ~~ THEN REPLY #51564 /* ~Laisse la femme à son jardin.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51566 /* ~Une masse de cheveux gris emmêlés dépasse du capuchon de la vieille femme, se répandant sur ses épaules comme un amas de racines grises enchevêtrées. D'écœurants lambeaux de chair bleu gris pendent de son visage ; son menton étroit, long et pointu, part exagérément en avant, et les deux canines jaunies de sa mâchoire inférieure ressortent, telles des petites défenses.~ */
  IF ~~ THEN REPLY #51567 /* ~"Ravel ?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #51568 /* ~Attaque-la avant qu'elle ne te remarque.~ */ GOTO 2
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #51569 /* ~Attaque-la avant qu'elle ne te remarque.~ */ GOTO 3
  IF ~~ THEN REPLY #51570 /* ~Laisse la femme à son jardin.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #51571 /* ~Alors que tu commences à observer la vieille femme pour découvrir ses éventuels points faibles, tu es pris d'une sensation de vertige et de nausée. Ton instinct te conseille d'attaquer immédiatement, mais tu SAIS que tu dois d'abord découvrir ce que cette vieille femme… cette créature… sait sur toi.~ */
  IF ~~ THEN REPLY #51572 /* ~Attaque-la quand même.~ */ GOTO 3
  IF ~~ THEN REPLY #51573 /* ~"Ravel…?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0
  SAY #51574 /* ~Alors que l'idée de l'attaquer te traverse l'esprit, la vieille femme lève la tête, comme si elle venait d'avoir une étrange pensée. Elle cligne des yeux et émet un sifflement grinçant, comme un soupir.~ */
  IF ~~ THEN REPLY #51575 /* ~"Ravel ?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",1)
StartCutSceneMode()
StartCutSceneEx("0610Cut4",FALSE)
~ EXIT
END

IF WEIGHT #1 ~  Global("Ravel_Cut_Scene","AR0610",1)
~ THEN BEGIN 4 // from:
  SAY #51576 /* ~"Ah… des visiteurs." La voix de la vieille femme est étouffée et éraillée, comme si elle tentait de se frayer un chemin à travers une épaisse couche de poussière. Ses yeux rouges et ternes sont traversés de veines noires semblables aux branches d'un arbre. Alors qu'elle te regarde, tu es pris d'une étrange sensation, comme si des serpents rampaient sous ta peau.~ [RAV005] */
  IF ~~ THEN REPLY #51577 /* ~"Bonjour… Ravel."~ */ DO ~SetGlobal("Ravel","GLOBAL",1)
AddexperienceParty(90000)
~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #51578 /* ~"Et bien, mon mignon, te revoilà enfin ?" Le visage de Ravel se fend d'un sourire grotesque, laissant apparaître un alignement de crocs jaunis et écaillés. "Tu es parti si longtemps, je craignais que tu aies fini par oublier la pauvre Ravel qui se sent si seule."~ [RAV002] */
  IF ~~ THEN REPLY #51579 /* ~"Pendant un temps, je t'avais oubliée. Mais maintenant, je suis de retour."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #51580 /* ~"Comment aurais-je pu t'oublier, Ravel ? Tu m'as manqué, mais tu t'étais cachée dans un endroit qu'il m'était difficile d'atteindre. Viens maintenant… ne souhaitais-tu pas être en ma compagnie ? "~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #51581 /* ~"Ahhh…." Le sourire jaunâtre de Ravel s'accentue, faisant remonter les plis que forment sa peau, et elle laisse échapper un petit rire saccadé. "Quelles *douces* paroles… tu connais déjà la réponse à ta question, mon précieux. Je n'ai cessé de semer les indices pour te guider vers mon jardin. Je craignais que ce soit TOI qui m'aies oubliée."~ */
  IF ~~ THEN REPLY #51582 /* ~"Je t'assure que non, je ne t'avais pas oubliée. Et me voilà enfin revenu."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #51583 /* ~"Vraiment ? Mais QU'EST-CE qui est revenu ?" Ses yeux traversés de veines noires te regardent furtivement et elle siffle doucement. "Permets à Ravel de voir comment tu t'en es sorti dans cette vie." Elle tend la main, comme pour te caresser, et tu remarques soudain que ses doigts sont prolongés de griffes incroyablement pointues.~ */
  IF ~~ THEN REPLY #51584 /* ~Laisse-la te toucher.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #51585 /* ~"Ne me touche pas, Ravel. Je veux juste échanger quelques mots avec toi, rien de plus."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
  IF ~~ THEN REPLY #51586 /* ~Attaque-la au moment où elle tend la main pour te toucher.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #51587 /* ~Alors que l'idée de l'attaquer te traverse l'esprit, les yeux de Ravel *s'embrasent* et sa voix devient soudain menaçante. "Ne fais PAS ça. Si tu accordes un tant soit peu de valeur au *peu* que tu possèdes encore, ne le fais PAS."~ */
  IF ~~ THEN REPLY #51588 /* ~"Je ne vois pas comment tu pourrais m'arrêter, Ravel. Mais essaie quand même, si tu veux."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
  IF ~~ THEN REPLY #51589 /* ~"Alors, ne me touche pas, Ravel. Je veux juste échanger quelques mots avec toi, rien de plus."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 18
END

IF ~~ THEN BEGIN 9 // from: 8.0 49.1 50.0 86.0
  SAY #51590 /* ~"Tu as oublié ta PLACE, DEMI-homme. L'humilité est de rigueur."~ [RAV065] */
  IF ~~ THEN REPLY #51591 /* ~"On verra, espèce d'immonde sorcière…"~ */ DO ~Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0
  SAY #51592 /* ~Alors que ses griffes se promènent sur ta peau, tu as la même étrange sensation de picotement que la première fois que Ravel a posé le regard sur toi. Ses yeux s'obscurcissent un peu et ses griffes glissent doucement sur les contours de ton visage, s'attardant sur tes cicatrices.~ */
  IF ~~ THEN REPLY #51594 /* ~Attends…~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51595 /* ~Tends la main pour la toucher et suivre les traits de son visage.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51596 /* ~Tends la main pour la toucher et suivre les traits de son visage.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51597 /* ~Tends la main pour la toucher et suivre les traits de son visage.~ */ DO ~SetGlobal("Ravel_Touch","GLOBAL",2)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #51598 /* ~Ta main se pose sur la joue de Ravel pendant que ses griffes caressent ton visage, et instinctivement, tu reproduis les mêmes gestes qu'elle : alors que ses griffes glissent le long de ta joue gauche, tes doigts en font de même le long de la sienne. Comme elle, tu fermes les yeux. Une sensation étrangement familière t'envahit, mais aucun souvenir ne remonte à la surface. Au bout d'un moment, ses yeux ensanglantés se rouvrent, et elle émet un sifflement grinçant.~ */
  IF ~~ THEN REPLY #51599 /* ~Attends.~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 17
END

IF ~~ THEN BEGIN 12 // from: 10.2 10.3
  SAY #51600 /* ~Ta main touche la joue de Ravel pendant que ses griffes caressent ton visage, et instinctivement, tu reproduis les mêmes gestes qu'elle : alors que ses griffes glissent le long de ta joue gauche, tes doigts en font de même le long de la sienne. Comme elle, tu fermes les yeux. Une sensation étrangement familière t'envahit…~ */
  IF ~~ THEN REPLY #51601 /* ~Ferme les yeux et laisse le souvenir te revenir.~ */ DO ~FadeToColor([20.0],0)
FadeFromColor([20.0],0)
SetGlobal("Ravel_Memory","GLOBAL",1)
PlaySound("SPTR_01")
~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51602 /* ~Lorsque tu rouvres les yeux, tu as l'impression que les arbres et le dédale se sont vidés de leurs couleurs ; *tout* est insipide, poussiéreux, grisâtre. Ravel a toujours les yeux fermés, mais alors que tu l'observes, elle les rouvre lentement et esquisse un sourire triste et terne. Tu sens des mots se former sur tes lèvres, se faisant l'écho de paroles que tu as prononcées par le passé, en un autre lieu, sur un autre plan…~ */
  IF ~~ THEN REPLY #51603 /* ~Écho de ta mémoire : "On dit que tu es la plus grande des Sœurs Grises, Ravel. J'ai parcouru un long chemin pour arriver jusqu'à toi."~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #51604 /* ~Elle acquiesce, mais lentement, trop lentement, comme dans un rêve. Alors qu'elle commence à parler, ses paroles semblent étouffées, comme prononcées sous l'eau. "Mais *pourquoi* as-tu parcouru un si long chemin ? Tu dois avoir grand besoin de moi… et pourtant, tu ne sembles avoir *rien* rapporté qui m'intéresse. Tu dois PAYER pour mes services…"~ */
  IF ~~ THEN REPLY #51605 /* ~Écho de ta mémoire : "Mes besoins sont grands. Voici ma monnaie d'échange : un défi. Peut-être un défi impossible… un défi, je le crains, qui dépasse *tes* compétences…"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #51606 /* ~Tu répètes ces mots en écho, et tu sens la MANIPULATION, la subtile façon avec laquelle Ravel tire les ficelles. Ses yeux s'embrasent d'un gris ardent dans le rêve-souvenir, et la grisaille qui dévore le paysage semble prendre naissance sur ses traits. "RIEN ne peut dépasser mes compétences, espèce de fou ! RIEN ! Quel est ton défi ? Je t'écoute !"~ */
  IF ~~ THEN REPLY #51607 /* ~Écho de ta mémoire : "La mort finit toujours par rattraper les hommes. Je ne veux pas qu'elle me rattrape… peux-tu faire cela, belle Ravel ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #51608 /* ~Tout s'éclaircit, la grisaille s'estompe du dédale et les couleurs reviennent, alors que ta main est toujours posée sur la joue de Ravel. Les yeux fermés, elle soupire. Tu retires lentement ta main, et Ravel finit par ouvrir les yeux en émettant un sifflement grinçant. "Ouiiiii…"~ */
  IF ~~ THEN REPLY #51609 /* ~"Ravel ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #51610 /* ~Quand j'ai vu Ravel dans le dédale de noirépine, je me suis rappelé ce que je crois être notre première rencontre. C'était en un lieu où tout était gris, comme si les couleurs avaient fui. Je l'ai défiée de pouvoir me rendre immortel et, si je me souviens bien, elle a accepté.~ */ GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 10.0 11.0 16.0
  SAY #51611 /* ~Ravel ôte son doigt et te regarde tristement. "Oh, comme c'est triste, si triste, demi-chose brisée en mille morceaux." Elle te regarde de nouveau furtivement. "Tu ne te souviens pas de Ravel. Es-tu… es-tu toujours brisé, après tout ce temps ?"~ */
  IF ~~ THEN REPLY #51612 /* ~"Brisé ? Qu'est-ce que tu veux dire ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 7.1 8.1
  SAY #51613 /* ~"Ah… toujours aussi prudent, mon amateur d'énigmes préféré ?" Elle ôte son doigt et le laisse retomber sur son flanc. "Alors, je t'ai marqué la *première* fois que tu es venu sur les Gastes avec ton défi pour Ravel."~ */
  IF ~~ THEN REPLY #51614 /* ~"Je… ne me souviens pas de cette rencontre. J'ai oublié beaucoup de choses."~ */ GOTO 19
  IF ~~ THEN REPLY #51615 /* ~"De quoi tu parles ?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #51616 /* ~Ravel soupire en t'examinant. "Oh, comme c'est triste, si triste, demi-chose brisée en mille morceaux. Tu ne te souviens pas de Ravel… Es-tu… es-tu toujours brisé, après tout ce temps ?"~ */
  IF ~~ THEN REPLY #51617 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 20
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51618 /* ~"Ravel, ton rituel était défectueux… il a échoué. Chaque fois que je meurs… ou en tout cas, chaque fois que je *mourrais*, j'oubliais qui j'étais et je devenais quelqu'un d'autre. Je suis un homme brisé, oui. Peux-tu arranger ça, m'aider à retrouver la mémoire ?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 17.0 19.0 19.1
  SAY #51619 /* ~"Tu possèdes un corps, mais pas de savoir ?" Elle pointe sa griffe sur ta poitrine, sur tes cicatrices. "Tu as beaucoup de cicatrices comme celles-là. Ta peau a beaucoup d'histoires à raconter."~ */
  IF ~~ THEN REPLY #51620 /* ~"De quoi parles-tu ?"~ */ GOTO 21
  IF ~~ THEN REPLY #51621 /* ~"Quelles histoires mon épiderme raconte-t-il ?"~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0 20.1
  SAY #51622 /* ~"Tes cicatrices et tes tatouages me hurlent : 'voici un homme opposé au monde entier'." Ravel émet un son semblable à celui d'un oiseau mourant. "Oui, des histoires qui feraient même frémir les oreilles d'une *guenaude noire*…"~ */
  IF ~~ THEN REPLY #51623 /* ~"Raconte-moi ces… histoires. Je voudrais les connaître."~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 24.0 26.0 27.0 29.0
  SAY #51624 /* ~"Ces histoires sont nombreuses. Elles se font l'écho de l'équilibre déséquilibré, des épreuves de la guerre, de combats contre les fiélons, d'une créature qui dévore les autres de très loin pour se sustenter… et de tourments. Des *tourments* que la chair n'a jamais connu…"~ */
  IF ~~ THEN REPLY #51625 /* ~"L'équilibre déséquilibré ?"~ */ DO ~SetGlobal("Ravel_Tale_1","AR0610",1)
~ GOTO 23
  IF ~~ THEN REPLY #51626 /* ~"Les épreuves de la guerre ?"~ */ DO ~SetGlobal("Ravel_Tale_2","AR0610",1)
~ GOTO 25
  IF ~~ THEN REPLY #51627 /* ~"Des combats contre les fiélons ?"~ */ DO ~SetGlobal("Ravel_Tale_3","AR0610",1)
~ GOTO 27
  IF ~~ THEN REPLY #51628 /* ~"Une créature qui dévore les autres de loin ?"~ */ DO ~SetGlobal("Ravel_Tale_4","AR0610",1)
~ GOTO 28
  IF ~  NumInParty(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51629 /* ~"Et ces tourments… de quels tourments tu parles ?"~ */ JOURNAL #51631 /* ~Ravel m'a dit que j'étais un être 'brisé'. Elle a fait d'étranges commentaires au sujet de mes cicatrices et tatouages, disant qu'ils exprimaient clairement un 'équilibre déséquilibré', des 'épreuves de la guerre' et des 'batailles contre les fiélons', en ajoutant que j'étais 'une créature qui dévore les autres de très loin'. Elle a reconnu qu'elle m'avait volé ma mortalité, précisant que j'étais tel un aimant pour les âmes tourmentées et que je les attirais toutes à moi.~ */ GOTO 30
  IF ~  NumInPartyGT(1)
Global("Ravel_Tale_1","AR0610",1)
Global("Ravel_Tale_2","AR0610",1)
Global("Ravel_Tale_3","AR0610",1)
Global("Ravel_Tale_4","AR0610",1)
~ THEN REPLY #51630 /* ~"Et ces tourments… de quels tourments tu parles ?"~ */ JOURNAL #51631 /* ~Ravel m'a dit que j'étais un être 'brisé'. Elle a fait d'étranges commentaires au sujet de mes cicatrices et tatouages, disant qu'ils exprimaient clairement un 'équilibre déséquilibré', des 'épreuves de la guerre' et des 'batailles contre les fiélons', en ajoutant que j'étais 'une créature qui dévore les autres de très loin'. Elle a reconnu qu'elle m'avait volé ma mortalité, précisant que j'étais tel un aimant pour les âmes tourmentées et que je les attirais toutes à moi.~ */ GOTO 31
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #51632 /* ~"Tu étais divisé en deux lorsque tu as perdu ta mortalité. Tu n'étais plus équilibré, tu étais brisé par la séparation… ce fut à la fois une bénédiction et une erreur… mais plus une erreur qu'une bénédiction, selon Ravel."~ */
  IF ~~ THEN REPLY #51633 /* ~"Tu m'as *pris* ma mortalité ? Comment ça ?"~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #51634 /* ~"Comment ? Je l'ai oublié… l'ai-je oublié ?" Le regard de Ravel s'obscurcit un moment tandis que les veines noires qui traversent ses yeux se déplacent. "Et même si je m'en souvenais, je ne recommencerais jamais. Je n'ai pas oublié le moment, après la *rupture*, où j'ai vu la douleur refluer de tes veines, tandis que tu criais comme un enfant et que chaque parcelle de ton être s'emplissait de *vide*. Ce fut terrible, même pour mes vieux yeux."~ */
  IF ~~ THEN REPLY #51635 /* ~"Alors… c'est pour ça que je me sens vide à l'intérieur ? Parce que j'ai perdu ma mortalité ? Très bien… quelles sont les autres histoires que raconte ma peau ?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 25 // from: 22.1
  SAY #51636 /* ~"De terribles épreuves à cause de la guerre… bien trop terribles pour un mortel."~ */
  IF ~~ THEN REPLY #51637 /* ~"Quelle guerre ? Où ça ?"~ */ GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #51638 /* ~"Cette guerre affecte TOUT, mon précieux demi-homme. Aucun lieu n'est à l'abri de sa caresse… t'a-t-elle affecté, toi aussi ?" Ravel baisse la voix et poursuit d'un ton presque âpre, "À cette question, Ravel répond 'oui'."~ */
  IF ~~ THEN REPLY #51639 /* ~"Ça expliquerait les cicatrices… quelles sont les autres histoires que raconte ma peau ?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 22.2
  SAY #51640 /* ~"Deux fiélons s'affrontent…" Ravel renifle d'un air un peu méprisant. "Leur cerveau lilliputien est empli d'idées sur la façon dont les plans *devraient* être. Mais elles sont toutes *irréalisables*, sans quoi les plans ne seraient plus les plans. Quelle ineptie !"~ */
  IF ~~ THEN REPLY #51641 /* ~"Je ne suis pas sûr de comprendre… quelles sont les autres histoires que raconte ma peau ?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 28 // from: 22.3
  SAY #51642 /* ~"Tu n'es pas soumis aux désirs les plus vils, mais ceux qui bouillonnent en toi sont bien plus terribles encore. Et le prix à payer est *si* élevé…"~ */
  IF ~~ THEN REPLY #51643 /* ~"Des désirs ? Qu'est-ce que tu veux dire ?"~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #51644 /* ~"Je ne connais… nez ?… connais ni la nature, ni la cause de ces désirs. Mais écoute bien ceci : les événements à venir projettent leurs *ombres* devant eux, mon précieux demi-homme… rien ne permet de savoir ce que seront, ces événements, même avec les yeux de *Ravel*."~ */
  IF ~~ THEN REPLY #51645 /* ~"Euh, très bien… quelles sont les autres histoires que raconte ma peau ?"~ */ GOTO 22
END

IF ~~ THEN BEGIN 30 // from: 22.4
  SAY #51646 /* ~"L'aimant attire le fer… un peu comme toi, mon précieux demi-homme ; ce n'est pas le fer que tu attires, mais les âmes tourmentées. Ceux qui souffrent sont attirés vers toi et ton chemin devient le leur."~ */
  IF ~~ THEN REPLY #51647 /* ~"Pourquoi ?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 31 // from: 22.5
  SAY #51648 /* ~"L'aimant attire le fer… un peu comme toi, mon précieux demi-homme ; ce n'est pas le fer que tu attires, mais les âmes tourmentées. Ceux qui souffrent sont attirés vers toi et ton chemin devient le leur." Elle fait mine de chasser quelque chose de la main. "Ne le lis-tu pas dans les yeux de ceux qui t'ont accompagné jusqu'ici ?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51649 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",1)
~ GOTO 32
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51650 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",1)
~ GOTO 33
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51651 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51652 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51653 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51654 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51655 /* ~"Mes compagnons ? Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 239
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #51656 /* ~"Veux-tu le lui expliquer toi-même, gith ?" Ravel lance à Dak'kon un regard courroucé, adouci par un sourire qui dévoile ses crocs. "Les serments peuvent s'avérer plus solides que des chaînes, non ? Les menottes d'une race jadis réduite à l'esclavage et aujourd'hui redevenue esclave ?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 170
END

IF ~~ THEN BEGIN 33 // from: 31.1
  SAY #51657 /* ~"L'engrenage…" Le regard de Ravel se pose sur Nordom. "Jadis, il ne connaissait de la *souffrance* que sa définition, mais aujourd'hui, il sent son aiguillon. Il n'y a pas de place pour les '2' dans un monde de 1 et de 0, pas de place pour les 'peut-être' dans la demeure du vrai et du faux, et il est impossible d'être 'rouge de colère' dans un monde en noir et blanc. Quand il comprendra comment les plans fonctionnent, quand il découvrira la VÉRITÉ qui se cache derrière la loyauté et l'illogisme, il connaîtra davantage de tourments…"~ */
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #51658 /* ~"Ravel, laisse mes compagnons tranquilles. J'ai des q…"~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",1)
~ GOTO 34
  IF ~  !NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51659 /* ~"Ravel, laisse mes compagnons tranquilles. J'ai des q…"~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",1)
~ GOTO 35
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51660 /* ~"Ravel, laisse mes compagnons tranquilles. J'ai des q…"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51661 /* ~"Ravel, laisse mes compagnons tranquilles. J'ai des q…"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51662 /* ~"Ravel, laisse mes compagnons tranquilles. J'ai des q…"~ */ GOTO 40
END

IF ~~ THEN BEGIN 34 // from: 31.2 33.0
  SAY #51663 /* ~"Le sorcier crépitant, caquetant…" Les yeux de Ravel semblent capter le feu d'Ignus et réverbérer son éclat infernal. "Il porte en lui les braises de l'ancienne passion de Ravel, car il se moque de ce qu'il fait, mais… peut-être… qu'au cœur des lieux sans lumière, il est tourmenté par ce qu'il était JADIS, avant que les passions ne le contrôlent… mes paroles sonnent-elles juste, ô cadavre fumant… ?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 17
END

IF ~~ THEN BEGIN 35 // from: 31.3 33.1
  SAY #51667 /* ~"Le crâne bavard…" Ravel ne prend même pas la peine de regarder Morte, comme s'il était insignifiant. "Les sarcasmes suffisent-ils à protéger ce qui est enfoui au cœur de ta boîte grise, hmmm ? Pourquoi dire la vérité lorsque les mensonges font l'affaire ?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #51671 /* ~"Morte ? Qu'est-ce que tu veux dire, Ravel ?"~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",1)
~ GOTO 36
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51672 /* ~"Morte ? Qu'est-ce que tu veux dire, Ravel ?"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51673 /* ~"Morte ? Qu'est-ce que tu veux dire, Ravel ?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 31.4 33.2 35.0
  SAY #51668 /* ~"La tentatrice des Abysses…" Ravel ricane, ses crocs jaunis transperçant ses lèvres violacées alors qu'elle regarde Tombée-en-Disgrâce de travers. "Une peau si blanche, des lèvres si pulpeuses, des yeux qui pourraient même te faire oublier Ravel… et pourtant, elle souffre, plus que tout autre. Car nombreux sont les tourments que l'on éprouve lorsque l'on se détourne de sa véritable nature."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 158
END

IF ~~ THEN BEGIN 37 // from:
  SAY #51674 /* ~"Tu MENS, succube !" Les lèvres de Ravel s'entrouvrent en un horrible rictus. "Tu MENS ! Tu OSES me mentir alors que je lis dans ton cœur comme dans un LIVRE ouvert ! Chaque mot que tu CRACHES *hurle* tes tourments !"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51675 /* ~"Fais attention à ce que tu dis, Ravel ! Ça suffit !"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",1)
~ GOTO 38
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51676 /* ~"Fais attention à ce que tu dis, Ravel ! Ça suffit !"~ */ GOTO 40
END

IF ~~ THEN BEGIN 38 // from: 31.5 33.3 35.1 37.0
  SAY #51677 /* ~"Ah…" Ravel fait signe à Annah, comme pour la vendre aux enchères. "Regarde cette tieffeline pleine d'entrain… avec ses cheveux et sa voix si *ardents*…" Ravel sourit, dévoilant ses dents jaunies. "Puis-je parler de *tes* tourments, tieffeline ?"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 252
END

IF ~~ THEN BEGIN 39 // from:
  SAY #51678 /* ~"Non… non, je n'en parlerai pas." Ravel baisse la voix, comme épuisée, et son sourire s'estompe. "Ravel est lasse de la cruauté et des tourments… le monde est déjà suffisamment tourmenté ainsi…" Elle se tourne vers toi, ses yeux ensanglantés s'obscurcissent et elle soupire.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 33.4 35.2 37.1 39.0
  SAY #51679 /* ~"Et *toi*, mon précieux, précieux demi-homme… tu portes en toi le plus terrible de tous les tourments… la vie éternelle. Se peut-il que la vie tienne autant à toi que Ravel ?" Elle grince des dents dans un horrible *claquement*. "Quelqu'un d'aussi courageux, d'aussi passionné, et pourtant si perdu ! Comme c'est triste, si triste."~ */
  IF ~~ THEN REPLY #51680 /* ~"Ravel, *pourquoi* m'as-tu rendu immortel ? Je dois le sav…"~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0 238.0
  SAY #51681 /* ~"Tu étais une énigme en chair et en os, toujours mystérieux, et le plus aimé de tous ceux qui sont venus à moi, demandant, sollicitant, suppliant… pliant ?… priant pour obtenir de l'aide." Alors que Ravel te regarde, ses yeux de braise traversés de veines noires se plissent. "C'est si *dur* de voir à travers les cicatrices, de retrouver l'homme qui était jadis en dessous…"~ */
  IF ~~ THEN REPLY #51682 /* ~"Ravel, tu peux me dire qui j'étais autrefois ?"~ */ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #51683 /* ~"Une ombre douée de substance qui cherche la source de lumière. Je te connais mieux - vieux ? - que les autres hommes…" Ravel marque une pause et ses yeux s'obscurcissent. "… et pourtant je les connais tout autant que toi. Nos passés se sont croisés… un homme souillé par la non-mort, toujours tourmenté par la séparation, et une vieille femme desséchée, à présent emprisonnée."~ */
  IF ~~ THEN REPLY #51684 /* ~"Nos passés se sont croisés ?"~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #51685 /* ~"C'est comme si nous nous rencontrions pour la première fois ? Non, non, non, non… non ?" Ravel semble troublée un moment, puis frissonne, comme si elle se soulageait d'un poids. "Pas du tout. C'est l'écho d'une future rencontre… ou d'une rencontre passée, cela dépend dans quel sens le temps s'écoule."~ */
  IF ~~ THEN REPLY #51686 /* ~"Alors cette… cette rencontre est l'écho d'une rencontre passée ?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #51687 /* ~"Le passé et le présent - si… similaires ? - le passé et le présent s'entremêlent, se reflètent l'un dans l'autre… encore et encore, tu viens me trouver avec un problème, pour me défier de trouver une solution IMPOSSIBLE." Ravel siffle et ses yeux s'embrasent. "Bel homme *ingrat* et tant aimé !"~ */
  IF ~~ THEN REPLY #51688 /* ~"Quelle est cette énigme impossible que je t'ai demandé de résoudre ?"~ */ GOTO 45
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #51689 /* ~Apparemment, Ravel ne t'a pas entendu. Elle semble encore plongée dans le passé, car ses yeux s'obscurcissent, comme si elle regardait au loin. "Il y a un tel feu dans tes yeux ; cela suffit à émouvoir le cœur d'une Dame Grise… la passion doit être libérée, mais une fois qu'elle le sera, le feu quittera tes yeux. Avec la séparation, ta vie a perdu tout sens, je le crains." Ravel sourit en montrant ses crocs jaunis, puis les fait *claquer*, comme si elle riait. "Tu devrais peut-être t'asseoir par terre et relâcher tes bras. Ravel te donnera peut-être un autre échantillon de savoir."~ */
  IF ~~ THEN REPLY #51690 /* ~"Si, pour obtenir des réponses, je dois te supplier, alors je te supplie, Ravel : dis-moi ce que tu sais. J'ai besoin de ton aide pour me souvenir du passé."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 46
  IF ~~ THEN REPLY #51691 /* ~"Je ne te *supplierai* pas de m'aider, Ravel. Je t'interrogerai et tu répondras, rien de plus."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #51692 /* ~"Ah… un cœur doux, maintenant ?" Les yeux traversés de veines noires de Ravel étincellent, et sa bouche se tord, comme un serpent. "La vie t'a-t-elle adouci… ah, l'espoir est toujours permis…"~ */
  IF ~~ THEN REPLY #51693 /* ~"Ravel, il y a beaucoup de questions que je voudrais te poser…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #51694 /* ~"Comme toujours, tu refuses de t'agenouiller devant moi, mon précieux demi-homme."~ */
  IF ~~ THEN REPLY #51695 /* ~"Ravel, il y a beaucoup de questions que je voudrais te poser…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 46.0 47.0
  SAY #51696 /* ~"Oh, tu as ENCORE des questions ?" Ravel fredonne doucement, mais d'un ton tranchant, comme si elle te réprimandait. "Tchhh-tcchhh. Mais tu m'en as déjà *tant* posé." Une étrange lueur apparaît dans les yeux traversés de veines noires de Ravel. "Le moment est venu pour moi de poser MES questions, demi-homme."~ */
  IF ~~ THEN REPLY #51697 /* ~"Très bien, Ravel… pose tes questions."~ */ GOTO 51
  IF ~~ THEN REPLY #51698 /* ~"Ravel, il me faut d'abord un peu plus d'informations…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #51699 /* ~"Tu n'obtiendras RIEN d'autre de moi tant que MA curiosité n'aura pas été *satisfaite*. Ne me mets pas à l'ÉPREUVE sur ce terrain ; tu m'es précieux, c'est vrai, mais il y a des *limites*."~ */
  IF ~~ THEN REPLY #51700 /* ~"Très bien…"~ */ GOTO 51
  IF ~~ THEN REPLY #51701 /* ~"Je poserai mes questions et tu y répondras, Ravel. Je n'ai ni le temps, ni la patience d'écouter tes questions…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 52.17 52.18 58.2 58.3 68.12 68.13 69.11 69.12 70.10 70.11 92.2 98.15 99.15
  SAY #51702 /* ~"Tu dis que tu refuses de répondre à mes questions… que tu n'OSES pas le faire ?" À ta grande surprise, ses crocs jaunis s'agrandissent pour se mettre à étinceler, et tu vois ses griffes *pousser*. "Je t'avais PRÉVENU que mon châtiment serait TERRIBLE… si tu ne répondais pas à mes questions…"~ */
  IF ~~ THEN REPLY #51703 /* ~"Ravel, je…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.0 49.0
  SAY #51704 /* ~"Écoute bien ceci et apprends à respecter la loi de Ravel : si tu ne réponds pas à mes questions, je ne répondrai à aucune des *tiennes*, mon précieux homme. Réponds ou mon châtiment sera TERRIBLE…"~ */
  IF ~  NumInParty(1)
~ THEN REPLY #51705 /* ~"Compris. Pose tes questions, Ravel."~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51706 /* ~"Compris. Pose tes questions, Ravel."~ */ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51707 /* ~"Tes règles sont équitables. Pose tes questions, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51708 /* ~"Tes règles sont équitables. Pose tes questions, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_3","GLOBALLaw",1)
~ GOTO 58
  IF ~  NumInParty(1)
~ THEN REPLY #51709 /* ~"Ne me *menace* pas, Ravel… pose tes questions et qu'on en finisse…"~ */ GOTO 52
  IF ~  NumInPartyGT(1)
~ THEN REPLY #51710 /* ~"Ne me *menace* pas, Ravel… pose tes questions et qu'on en finisse…"~ */ GOTO 58
END

IF ~~ THEN BEGIN 52 // from: 51.0 51.2 51.4
  SAY #51735 /* ~"Je voudrais savoir pourquoi tu es venu me voir seul… pour quelle raison n'es-tu pas accompagné ?"~ */
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51736 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51737 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51738 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51739 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51740 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51741 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 54
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51742 /* ~"Je n'ai pas besoin de compagnons. Je voyage seul et n'ai aucune envie d'être accompagné."~ */ GOTO 54
  IF ~~ THEN REPLY #51743 /* ~"Je n'ai rencontré personne avec qui j'ai eu envie de voyager."~ */ GOTO 53
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
!InMyArea("Ignus")
~ THEN REPLY #51744 /* ~"Pas question d'emmener qui que ce soit ici, Ravel, surtout quand on ne sait pas comment ressortir. J'ai pensé qu'il valait mieux que je fasse ce voyage seul."~ */ GOTO 53
  IF ~  InMyArea("Morte")
~ THEN REPLY #51745 /* ~Vérité : "Les autres sont là. Je leur ai demandé d'attendre un peu plus loin… parce que j'ai pensé qu'il valait mieux qu'on se voit seuls."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
InMyArea("Dakkon")
~ THEN REPLY #51746 /* ~Vérité : "Les autres sont là. Je leur ai demandé d'attendre un peu plus loin… parce que j'ai pensé qu'il valait mieux qu'on se voit seuls."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
InMyArea("Annah")
~ THEN REPLY #51747 /* ~Vérité : "Les autres sont là. Je leur ai demandé d'attendre un peu plus loin… parce que j'ai pensé qu'il valait mieux qu'on se voit seuls."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
InMyArea("Grace")
~ THEN REPLY #51748 /* ~Vérité : "Les autres sont là. Je leur ai demandé d'attendre un peu plus loin… parce que j'ai pensé qu'il valait mieux qu'on se voit seuls."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
InMyArea("Nordom")
~ THEN REPLY #51749 /* ~Vérité : "Les autres sont là. Je leur ai demandé d'attendre un peu plus loin… parce que j'ai pensé qu'il valait mieux qu'on se voit seuls."~ */ GOTO 58
  IF ~  !InMyArea("Morte")
!InMyArea("Dakkon")
!InMyArea("Annah")
!InMyArea("Grace")
!InMyArea("Nordom")
InMyArea("Ignus")
~ THEN REPLY #51750 /* ~Vérité : "Les autres sont là. Je leur ai demandé d'attendre un peu plus loin… parce que j'ai pensé qu'il valait mieux qu'on se voit seuls."~ */ GOTO 58
  IF ~~ THEN REPLY #51751 /* ~"Je voulais te voir seule à seul, Ravel."~ */ GOTO 56
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51752 /* ~"Je me suis dit qu'on pourrait se retrouver en tête à tête, belle Ravel, pour parler du bon vieux temps, toi et moi…"~ */ GOTO 57
  IF ~~ THEN REPLY #51753 /* ~"Je ne répondrai pas à cette question, Ravel… pose-m'en une autre."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51754 /* ~"J'en ai assez de tes questions, Ravel. À mon tour, maintenant."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 53 // from: 52.0 52.7 52.8
  SAY #51755 /* ~"Ahhh… c'était déjà ainsi autrefois… rien n'a changé. J'ai une autre question…"~ */
  IF ~~ THEN REPLY #51756 /* ~"Vas-y…"~ */ GOTO 92
END

IF ~~ THEN BEGIN 54 // from: 52.1 52.2 52.3 52.4 52.5 52.6
  SAY #51757 /* ~"Est-ce pour cette raison que tu leur as demandé d'attendre un peu plus loin dans mon dédale de noirépine, mon précieux ? Tu ne voyages seul qu'en parole, car tu as emmené tes *compagnons* avec toi. Pourtant, tu dis peut-être la vérité… mais Ravel n'est pas disposée à croire tes paroles mielleuses." Elle renifle. "Maintenant, une autre question…"~ */
  IF ~~ THEN REPLY #51758 /* ~"Vas-y…"~ */ GOTO 92
END

IF ~~ THEN BEGIN 55 // from: 141.4
  SAY #51759 /* ~"J'ai essayé d'aider une dame, mais elle ne l'a pas bien pris."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 162
END

IF ~~ THEN BEGIN 56 // from: 52.15
  SAY #51760 /* ~"Ahhh… très bien. Nous échangerons donc nos questions et nos réponses… ce sera notre *secret* à tous deux. En voici une autre pour toi…"~ */
  IF ~~ THEN REPLY #51761 /* ~"Vas-y…"~ */ GOTO 92
END

IF ~~ THEN BEGIN 57 // from: 52.16
  SAY #51762 /* ~"Tchhhh ! Flatteur !" Le visage de Ravel se fend d'un horrible sourire, puis elle rit doucement. "Tes attentions sont les bienvenues… peut-être que la flatterie te servira. Alors… nous échangerons donc nos questions et nos réponses… ce sera notre *secret* à tous deux." Son sourire disparaît. "Maintenant, j'ai une autre question…"~ */
  IF ~~ THEN REPLY #51763 /* ~"Vas-y…"~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
~ GOTO 92
END

IF ~~ THEN BEGIN 58 // from: 51.1 51.3 51.5 52.9 52.10 52.11 52.12 52.13 52.14
  SAY #51764 /* ~"Je voudrais savoir *pourquoi* tu es venu jusqu'ici avec tes compagnons… ignoraient-ils où ils se rendaient ?"~ */
  IF ~~ THEN REPLY #51765 /* ~"Ils ont choisi de m'accompagner."~ */ GOTO 61
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51766 /* ~"Bien sûr qu'ils le savaient. Comment *refuser* de te rencontrer, belle Ravel ? Dans la vie, des rencontres comme celles-là sont rares. Ils voulaient voir si ce qu'on dit sur tes pouvoirs et ta beauté était vrai… alors que moi, je savais que c'était le cas."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",2)
~ GOTO 59
  IF ~~ THEN REPLY #51767 /* ~"Je ne répondrai pas à cette question, Ravel… pose-m'en une autre."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51768 /* ~"J'en ai assez de tes questions, Ravel. À mon tour, maintenant."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 59 // from: 58.1
  SAY #51769 /* ~Ravel te regarde un instant en silence, puis son visage se fend d'un horrible sourire, ses crocs jaunis scintillant sous la faible lumière émanant de ses yeux. "Ahhhh… mon précieux, ce ne sont *que* des mots…" Sa langue noirâtre humecte ses lèvres violacées et fait le tour de sa bouche, comme si elle s'apprêtait à manger. "… Mais tu es BIEN armé…"~ */
  IF ~~ THEN REPLY #51770 /* ~Vérité : "Je ne dis que la vérité, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_4","GLOBALLaw",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
  IF ~~ THEN REPLY #51771 /* ~Mensonge : "Je ne dis que la vérité, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_3","GLOBALLaw",-1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 60
END

IF ~~ THEN BEGIN 60 // from: 59.0 59.1
  SAY #51772 /* ~Elle acquiesce lentement et son sourire disparaît. "Et ils voyagent avec toi de leur plein gré ?"~ */
  IF ~~ THEN REPLY #51773 /* ~"Ils ont choisi de m'accompagner. Comme je te l'ai dit, comment refuser d…"~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 58.0 60.0
  SAY #51774 /* ~"*Choisi* ? Ahh… quel mot dangereux. Tu crois ça ?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN REPLY #51775 /* ~"Oui."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",2)
~ GOTO 62
  IF ~  !NearbyDialog("Ddakkon")
NearbyDialog("DNordom")
~ THEN REPLY #51776 /* ~"Oui."~ */ DO ~SetGlobal("Ravel_Nordom","GLOBAL",2)
~ GOTO 63
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
NearbyDialog("DIgnus")
~ THEN REPLY #51777 /* ~"Oui."~ */ DO ~SetGlobal("Ravel_Ignus","GLOBAL",2)
~ GOTO 64
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
NearbyDialog("DMorte")
~ THEN REPLY #51778 /* ~"Oui."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",2)
~ GOTO 65
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("DNordom")
!NearbyDialog("DIgnus")
!NearbyDialog("DMorte")
NearbyDialog("Dgrace")
~ THEN REPLY #51779 /* ~"Oui."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",2)
~ GOTO 66
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51780 /* ~"Oui."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("Ddakkon")
!NearbyDialog("Dnordom")
!NearbyDialog("Dignus")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51781 /* ~"Oui. Écoute, Ravel, je n'ai pas le temps de…"~ */ GOTO 68
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #51782 /* ~"Oui ?" Les yeux traversés de veines noires de Ravel regardent Dak'kon, puis d'une voix aussi cinglante qu'une flèche, elle dit : "Est-ce un *choix*, gith ? Est-ce un choix ? Ou est-ce en rapport avec les Deux Cieux ?"~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 171
END

IF ~~ THEN BEGIN 63 // from: 61.1
  SAY #51783 /* ~"Et l'engrenage ?" Ravel se tourne vers Nordom en ricanant. "Comment peut-il savoir ce qu'est un *choix* ?" Elle claque des doigts en produisant un bruit semblable à celui d'un os qui craque. "Existe-t-il autre chose que l'obéissance, pour lui ?"~ */
  IF ~~ THEN EXTERN ~DNORDOM~ 15
END

IF ~~ THEN BEGIN 64 // from: 61.2
  SAY #51785 /* ~"Tu crois que l'enflammé a le *choix* ? Brûler ou ne pas brûler, voilà ses deux seules options… et, au bout du compte, c'est toujours la même qui l'emporte. Car que peut faire le feu sinon brûler ?"~ */
  IF ~~ THEN EXTERN ~DIGNUS~ 18
END

IF ~~ THEN BEGIN 65 // from: 61.3
  SAY #51786 /* ~"Crâne, crâne, crâne…" Ravel fait claquer sa langue après chaque mot, et son sourire s'accentue. "Il est difficile de lire ton expression sans l'enveloppe de la peau, mais je sens ta PEUR d'ici. Tu n'as *pas* choisi de venir ici."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 508
END

IF ~~ THEN BEGIN 66 // from: 61.4
  SAY #51787 /* ~"La succube…" Ravel regarde de travers. "Avait-elle le choix ? Peut-être dans son esprit à peau lisse fait de douces soieries et de certitudes, PEUT-ÊTRE y avait-il un choix… tchhh. Mais non. Un Sensat DOIT tout expérimenter, et si tu avais refusé de venir, tu ne serais PAS une Sensate. Toi non plus, tu n'avais pas le choix !"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #51788 /* ~"Ravel. Ça suffit…"~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",2)
~ GOTO 67
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51789 /* ~"Ravel. Ça suffit…"~ */ GOTO 68
END

IF ~~ THEN BEGIN 67 // from: 61.5 66.0
  SAY #51790 /* ~"La *tieffeline*. L'ARDENTE." Ravel rit doucement et ses yeux s'embrasent, comme amusés. "Pas le choix. Du tout. Lorsque l'on *ressent* au lieu de *penser*, il ne reste plus beaucoup de place pour le choix."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 251
END

IF ~~ THEN BEGIN 68 // from: 61.6 66.1
  SAY #51791 /* ~"Chhhhhh… tu auras bien le temps de parler, mon précieux." Ravel donne un petit coup de griffe sur l'une de ses défenses jaunies. "Ma question suivante est : que ressens-tu pour tes compagnons ? Ont-ils une PLACE dans ton cœur ?" Elle sourit tandis que les veines noires de ses yeux dansent. "Ou ne sont-ils que les INSTRUMENTS de ta volonté ?"~ */
  IF ~~ THEN REPLY #51792 /* ~"Pourquoi tu veux savoir ça ?"~ */ GOTO 69
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51793 /* ~Vérité : "Ils *comptent* pour moi, et le reste ne te regarde pas. Pose ta question suivante."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51794 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51795 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51796 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51797 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51798 /* ~Vérité : "Ce ne sont que des instruments. C'est tout. Je ne t'en dirai pas plus ; pose ta question suivante."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51799 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51800 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51801 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51802 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51803 /* ~"Ce que je ressens pour mes compagnons ne regarde qu'eux et moi, Ravel. Pose-moi une autre question si tu veux, mais je ne répondrai pas à celle-là."~ */ GOTO 70
  IF ~~ THEN REPLY #51804 /* ~"Je ne répondrai pas à cette question, Ravel…"~ */ GOTO 50
  IF ~~ THEN REPLY #51805 /* ~"J'en ai assez de tes questions, Ravel. À mon tour, maintenant."~ */ GOTO 50
END

IF ~~ THEN BEGIN 69 // from: 68.0
  SAY #51806 /* ~"Tchhhh… aussi entêté et obstiné qu'un githzeraï ! Tu réponds par une AUTRE question, mais cela ne te coûtera rien ; ma réponse est : parce que je VEUX le savoir, c'est tout. Maintenant, laisse ton cœur sceptique me livrer ta réponse."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51807 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51808 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51809 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51810 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51811 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51812 /* ~Vérité : "Ce ne sont que des instruments. C'est tout. Je ne t'en dirai pas plus ; pose ta question suivante."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51813 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51814 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51815 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51816 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51817 /* ~"Ce que je ressens pour mes compagnons ne regarde qu'eux et moi, Ravel. Pose-moi une autre question si tu veux, mais je ne répondrai pas à celle-là."~ */ GOTO 70
  IF ~~ THEN REPLY #51818 /* ~"Je ne répondrai pas à cette question, Ravel…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51819 /* ~"J'en ai assez de tes questions, Ravel. À mon tour, maintenant."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 70 // from: 68.11 69.10
  SAY #51820 /* ~"Ici, tu ne peux avoir aucun secret pour moi, demi-homme !" Ravel siffle. "Tu VAS répondre à mes questions, ou tu souffriras au sein de ces murs de ronces."~ */
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51821 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51822 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 71
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51823 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 75
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51824 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51825 /* ~Vérité : "Ils *comptent* pour moi."~ */ GOTO 87
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51826 /* ~Vérité : "Ce ne sont que des instruments. C'est tout. Je ne t'en dirai pas plus ; pose ta question suivante."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
~ GOTO 92
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #51827 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ GOTO 72
  IF ~  !NearbyDialog("DDakkon")
NearbyDialog("DMorte")
~ THEN REPLY #51828 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51829 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DDakkon")
!NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51830 /* ~Vérité : "Ce ne sont que des instruments. Rien de plus. Ils ont tous leurs raisons pour m'accompagner et j'utilise leurs différents talents."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_4","GLOBALGood",-2)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~~ THEN REPLY #51831 /* ~"Je ne répondrai pas à cette question, Ravel…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
  IF ~~ THEN REPLY #51832 /* ~"J'en ai assez de tes questions, Ravel. À mon tour, maintenant."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 71 // from: 68.2 69.1 70.1
  SAY #51833 /* ~"Même le gith ?" Le regard de braise de Ravel se pose sur Dak'kon, puis de nouveau sur toi. "Dis-moi ce qu'il représente pour toi, et ne me mens pas, ou il servira *d'engrais* pour mon jardin."~ */
  IF ~~ THEN REPLY #51834 /* ~Vérité : "C'est mon allié. Je le *connais*. C'est mon ami."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",3)
~ GOTO 73
  IF ~~ THEN REPLY #51835 /* ~Vérité : "Le gith ? Je me moque pas mal de lui."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
SetGlobal("Ravel_Dakkon","GLOBAL",4)
~ GOTO 73
  IF ~~ THEN REPLY #51836 /* ~Vérité : "Souvent, il m'énerve. Je le déteste."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",5)
~ GOTO 73
  IF ~~ THEN REPLY #51837 /* ~Vérité : "Il reste silencieux sur bien des sujets. Je n'ai pas confiance en lui."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",6)
~ GOTO 73
  IF ~~ THEN REPLY #51838 /* ~Vérité : "Il m'est utile… rien de plus."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
SetGlobal("Ravel_Dakkon","GLOBAL",7)
~ GOTO 73
  IF ~~ THEN REPLY #51839 /* ~Vérité : "Il me paraît digne de confiance. Il est loyal et a courageusement combattu à mes côtés."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
SetGlobal("Ravel_Dakkon","GLOBAL",8)
~ GOTO 73
  IF ~~ THEN REPLY #51840 /* ~Vérité : "Je n'en sais pas encore assez sur Dak'kon pour pouvoir te répondre."~ */ DO ~SetGlobal("Ravel_Dakkon","GLOBAL",9)
~ GOTO 74
END

IF ~~ THEN BEGIN 72 // from: 68.7 69.6 70.6
  SAY #51841 /* ~"Même le gith ?" Le regard de braise de Ravel se pose sur Dak'kon, puis de nouveau sur toi. "Il ne représente rien pour toi ? Ne mens pas ; n'est-il qu'un instrument ?"~ */
  IF ~~ THEN REPLY #51842 /* ~Vérité : "Je me moque pas mal de lui. Il me suit, il obéit à mes ordres. C'est tout."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",10)
~ GOTO 73
  IF ~~ THEN REPLY #51843 /* ~Vérité : "Je le déteste."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 73
  IF ~~ THEN REPLY #51844 /* ~Vérité : "Oui, et il ne sera toujours qu'un instrument, parce qu'on ne se fait pas confiance."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 73
  IF ~~ THEN REPLY #51845 /* ~Vérité : "Je ne le connais peut-être pas encore assez bien et, pour le moment, il ne représente rien pour moi."~ */ DO ~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 71.0 71.1 71.2 71.3 71.4 71.5 72.0 72.1 72.2 72.3
  SAY #51846 /* ~"Ah…" Ravel incline la tête… puis elle recommence à sourire, en tapotant ses griffes les unes contre les autres.~ */
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51847 /* ~"Ça te surprend ?"~ */ GOTO 75
  IF ~  NearbyDialog("DMorte")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51848 /* ~"Ça te surprend ?"~ */ DO ~MoraleDec("Morte",2)
~ GOTO 76
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51849 /* ~"Ça te surprend ?"~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("Dannah")
~ THEN REPLY #51850 /* ~"Ça te surprend ?"~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51851 /* ~"Ça te surprend ?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 74 // from: 71.6
  SAY #51852 /* ~Ravel grogne, puis fait claquer ses défenses. "Une réponse confuse, mais simple. Peu importe."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #51853 /* ~"C'est la vérité, Ravel."~ */ GOTO 75
  IF ~  !NearbyDialog("DMorte")
NearbyDialog("DGrace")
~ THEN REPLY #51854 /* ~"C'est la vérité, Ravel."~ */ GOTO 78
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #51855 /* ~"C'est la vérité, Ravel."~ */ GOTO 87
  IF ~  !NearbyDialog("DMorte")
!NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51856 /* ~"C'est la vérité, Ravel."~ */ GOTO 92
END

IF ~~ THEN BEGIN 75 // from: 68.3 69.2 70.2 73.0 74.0
  SAY #51857 /* ~"Et le crâne ?" Ravel ne daigne même pas regarder Morte. "Il ne compte sûrement *pas* pour quelqu'un comme toi ! À moins que…"~ */
  IF ~~ THEN REPLY #51858 /* ~Vérité : "Je l'aime bien… c'est mon ami."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",3)
~ GOTO 77
  IF ~~ THEN REPLY #51859 /* ~Vérité : "Le crâne ? Je me moque pas mal de lui."~ */ DO ~MoraleDec("Morte",2)
SetGlobal("Ravel_Morte","GLOBAL",4)
~ GOTO 77
  IF ~~ THEN REPLY #51860 /* ~Vérité : "Souvent, il m'énerve, et il ne sert à rien au combat ; je le déteste."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",5)
~ GOTO 77
  IF ~~ THEN REPLY #51861 /* ~Vérité : "Pour être honnête, je n'ai pas encore confiance en lui. Il a l'air de connaître beaucoup de choses, mais il a du mal à partager."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",6)
~ GOTO 77
  IF ~~ THEN REPLY #51862 /* ~Vérité : "Il est parfois ennuyeux… mais il m'est utile."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",7)
~ GOTO 77
  IF ~~ THEN REPLY #51863 /* ~Vérité : "Il m'est utile… rien de plus."~ */ DO ~MoraleDec("Morte",1)
SetGlobal("Ravel_Morte","GLOBAL",8)
~ GOTO 77
  IF ~~ THEN REPLY #51864 /* ~Vérité : "Je ne connais pas encore assez bien Morte pour te répondre."~ */ DO ~SetGlobal("Ravel_Morte","GLOBAL",9)
~ GOTO 77
  IF ~~ THEN REPLY #51865 /* ~Vérité : "Il me semble digne de confiance. Il est loyal et m'a aidé à m'en sortir à la Morgue."~ */ DO ~IncrementGlobal("BD_MORTE_MORALE","GLOBAL",2)
SetGlobal("Ravel_Morte","GLOBAL",10)
~ GOTO 77
END

IF ~~ THEN BEGIN 76 // from: 68.8 69.7 70.7 73.1
  SAY #51866 /* ~"Et le crâne ?" Ravel ne daigne même pas regarder Morte. "Pas étonnant qu'il ne compte *pas* pour quelqu'un comme toi ! À moins que…"~ */
  IF ~~ THEN REPLY #51867 /* ~Vérité : "Non, je me moque pas mal de lui. Il me suit, il obéit à mes ordres. C'est tout."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",11)
~ GOTO 77
  IF ~~ THEN REPLY #51868 /* ~Vérité : "Je le déteste."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",12)
~ GOTO 77
  IF ~~ THEN REPLY #51869 /* ~Vérité : "Oui, et il ne sera toujours qu'un instrument, parce qu'on ne se fait pas confiance."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",13)
~ GOTO 77
  IF ~~ THEN REPLY #51870 /* ~Vérité : "Je ne le connais peut-être pas encore assez bien et, pour le moment, il ne représente rien pour moi."~ */ DO ~MoraleDec("Morte",3)
SetGlobal("Ravel_Dakkon","GLOBAL",14)
~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.1 75.2 75.3 75.4 75.5 75.6 75.7 76.0 76.1 76.2 76.3
  SAY #51871 /* ~"Curieux, curieux, curieux…" Ravel sourit. "Quel casse-tête ! Que caches-tu d'autre dans les sombres recoins de ton esprit ?"~ */
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51872 /* ~"Je ne cache rien."~ */ GOTO 78
  IF ~  NearbyDialog("DGrace")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51873 /* ~"Je ne cache rien."~ */ DO ~MoraleDec("Grace",2)
~ GOTO 78
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51874 /* ~"Je ne cache rien."~ */ GOTO 87
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51875 /* ~"Je ne cache rien."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 87
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #51876 /* ~"Je ne cache rien."~ */ GOTO 92
END

IF ~~ THEN BEGIN 78 // from: 68.4 68.9 69.3 69.8 70.3 70.8 73.2 74.1 77.0 77.1
  SAY #51877 /* ~"Ah…" En se tournant vers Tombée-en-Disgrâce, la voix de Ravel se fait menaçante et ses yeux rouges s'embrasent. "Et voici le nœud du problème - la tentatrice des Abysses… la places-tu au-dessus des plaisirs charnels ou représente-t-elle *autre* chose à tes yeux, hmnnn ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 163
END

IF ~~ THEN BEGIN 79 // from:
  SAY #51878 /* ~Ravel se retourne vers toi, en faisant claquer ses défenses jaunies, comme par anticipation. "*Parle*, mon précieux, mais attention à ce que tu vas dire."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51879 /* ~Mensonge : "Qu'est-ce qu'elle représente pour toi, belle Ravel ? Elle n'est rien comparée à ton allure, ton intelligence, ton pouvoir."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",3)
~ GOTO 81
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51880 /* ~Vérité : "Qu'est-ce qu'elle représente pour toi, belle Ravel ? Elle ne t'arrive pas à la cheville pour ce qui est de la beauté, de l'intellect ou de la puissance."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Grace","GLOBAL",4)
~ GOTO 81
  IF ~~ THEN REPLY #51881 /* ~Vérité : "Je pourrais tomber amoureux d'elle."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",5)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51882 /* ~Vérité : "Je l'aime bien. Elle a beaucoup de qualités ; je la considère comme une amie."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",6)
MoraleInc("Grace",2)
~ GOTO 80
  IF ~~ THEN REPLY #51883 /* ~Vérité : "La succube ? Elle n'a aucune importance pour moi."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",7)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51884 /* ~Vérité : "Sa supériorité est souvent dure à supporter. Je la déteste."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",8)
MoraleDec("Grace",2)
~ GOTO 81
  IF ~~ THEN REPLY #51885 /* ~Vérité : "Pour une fiélonne qui a vécu pendant des siècles, elle n'a pas grand-chose à raconter sur son passé. Je ne lui fais pas confiance."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",9)
MoraleDec("Grace",1)
~ GOTO 80
  IF ~~ THEN REPLY #51886 /* ~Vérité : "Elle m'est utile… rien de plus."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",10)
MoraleDec("Grace",1)
~ GOTO 81
  IF ~~ THEN REPLY #51887 /* ~Vérité : "Je ne la connais pas assez."~ */ DO ~SetGlobal("Ravel_Grace","GLOBAL",11)
~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from: 79.2 79.3 79.6 79.8 82.0
  SAY #51888 /* ~Ravel détourne le regard de toi et le pose sur Grâce. "Hmmmmnnn…"~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51889 /* ~"J'en ai assez de ce petit jeu, Ravel. Écoute…"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51890 /* ~"J'en ai assez de ce petit jeu, Ravel. Écoute…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51891 /* ~"D'autres questions ?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 81 // from: 79.0 79.1 79.4 79.5 79.7
  SAY #51892 /* ~Ravel détourne le regard de toi et le pose sur Grâce. "Hmmmmnnn… Alors, si je venais à la tuer, à arrêter les battements de son cœur infernal, tu ne bougerais pas ? Attention à ce que tu vas dire…"~ */
  IF ~~ THEN REPLY #51893 /* ~"Je… retire ce que j'ai dit. Je ne lui veux aucun mal."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 82
  IF ~~ THEN REPLY #51894 /* ~"Tue-la, Ravel - ça m'est complètement égal. Elle fait partie des meubles, c'est tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_4","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_5","GLOBALGood",-3)
MoraleDec("Grace",5)
SetAnimState("Grace",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Grace",ANIM_MIMESTANCE)
~ EXTERN ~DGRACE~ 164
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #51895 /* ~"Pouah ! Esprit de contradiction !" Les yeux de Ravel s'enflamment, et alors qu'elle se retourne vers toi, tu vois que les veines qui traversent ses yeux se sont *affilées*. "Quelles pensées se bousculent dans ton crâne à présent ?"~ */
  IF ~~ THEN REPLY #51896 /* ~"Je me suis mal exprimé - je ne savais pas ce que je disais, mais j'en ai eu plus que ma dose de mort - de la mienne comme de celle des autres."~ */ GOTO 80
END

IF ~~ THEN BEGIN 83 // from:
  SAY #51897 /* ~Ravel observe Tombée-en-Disgrâce, puis se met à rire. "Toute défense est *vaine*, tanar'ri… mais tes efforts sont louables. Accroche-toi bien à ta peur ; je vais bientôt m'occuper de toi…"~ */
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",0)
~ THEN REPLY #51898 /* ~"J'en ai assez de ce petit jeu, Ravel. Écoute…"~ */ GOTO 84
  IF ~  NearbyDialog("DAnnah")
Global("Evil_Ravel_4","GLOBAL",1)
~ THEN REPLY #51899 /* ~"J'en ai assez de ce petit jeu, Ravel. Écoute…"~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 84
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #51900 /* ~"D'autres questions ?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 84 // from: 80.0 80.1 83.0 83.1
  SAY #51901 /* ~"Hmnnnn…" Ravel se tourne, fait claquer ses défenses, puis pose son regard sur Annah en ricanant. "Et CETTE fillette… la fiélonne, la tieffeline à la chevelure cramoisie et au tempérament fougueux. Qu'est-ce qu'ELLE représente pour toi, mon précieux homme ?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51902 /* ~Mensonge : "Rien, belle Ravel. Tu es la seule à représenter quelque chose pour moi… il n'y a personne d'autre."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51903 /* ~Vérité : "Rien, belle Ravel. Tu es la seule à représenter quelque chose pour moi… il n'y a personne d'autre."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~  Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51904 /* ~Vérité : "Je pourrais tomber amoureux d'elle."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",5)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleDec("Grace",3)
~ GOTO 85
  IF ~  !Global("Ravel_Grace","GLOBAL",5)
~ THEN REPLY #51905 /* ~Vérité : "Je pourrais tomber amoureux d'elle."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51906 /* ~Vérité : "J'aime sa compagnie… je la considère comme une amie."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51907 /* ~Vérité : "La fiélonne ? Je me moque pas mal d'elle."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51908 /* ~Vérité : "Son impudence est souvent dure à supporter. Je la déteste."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51909 /* ~Vérité : "Je crois qu'elle a récupéré tous les mauvais côtés des fiélons ; je ne lui fais pas confiance."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51910 /* ~Vérité : "Elle m'est utile… rien de plus."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51911 /* ~Vérité : "Je ne la connais pas encore très bien."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 88
END

IF ~~ THEN BEGIN 85 // from: 84.2
  SAY #51912 /* ~Les yeux de Ravel S'EMBRASENT, et elle lève ses griffes devant elle comme un éventail ; involontairement, tu fais un pas en arrière. "Tu ne sais rien de l'AMOUR, mon précieux, pour penser que tu peux ainsi le PARTAGER entre ces deux putains fiélonnes et Ravel… je n'écouterai pas un mot de plus ; tu as RÉPONDU à mes questions…"~ */
  IF ~~ THEN REPLY #51913 /* ~"Ravel, je me suis mal exprimé ! Je ne savais pas ce que je disais - tu sais bien que je ne voulais pas…"~ */ GOTO 86
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #51914 /* ~Les lèvres de Ravel s'entrouvrent et sa voix devient stridente, comme un vent furieux. "Que peux-tu bien SAVOIR, demi-homme ? ÉCOUTE-moi bien : SACHE que tu resteras ici jusqu'à la FIN DES TEMPS, dans mon jardin de ronces ; jamais tu n'en partiras, et tu m'AIMERAS, comme tu le DOIS, comme tu l'as PROMIS !"~ */
  IF ~~ THEN REPLY #51915 /* ~"S'il faut nous battre, soit. Prépare-toi, Ravel…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 9
END

IF ~~ THEN BEGIN 87 // from: 68.5 68.10 69.4 69.9 70.4 70.9 73.3 74.2 77.2 77.3
  SAY #51916 /* ~"Ah… et voici la question non pas à double tranchant, mais à centuple tranchant, chaque lame étant plus AIGUISÉE que la précédente…" Ravel désigne Annah d'une de ses griffes. "La fiélonne, la tieffeline à la chevelure cramoisie et au tempérament fougueux. Qu'est-ce qu'elle représente pour toi, mon précieux ?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51917 /* ~Mensonge : "Rien, belle Ravel. Tu es la seule à représenter quelque chose pour moi… il n'y a personne d'autre."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",3)
~ GOTO 89
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51918 /* ~Vérité : "Rien, belle Ravel. Tu es la seule à représenter quelque chose pour moi… il n'y a personne d'autre."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetGlobal("Ravel_Annah","GLOBAL",4)
~ GOTO 89
  IF ~~ THEN REPLY #51919 /* ~Vérité : "Je pourrais tomber amoureux d'elle."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",6)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
~ GOTO 88
  IF ~~ THEN REPLY #51920 /* ~Vérité : "J'aime sa compagnie… je la considère comme une amie."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",7)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",2)
~ GOTO 88
  IF ~~ THEN REPLY #51921 /* ~Vérité : "La fiélonne ? Je me moque pas mal d'elle."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",8)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 88
  IF ~~ THEN REPLY #51922 /* ~Vérité : "Son impudence est souvent dure à supporter. Je la déteste."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",9)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2)
~ GOTO 89
  IF ~~ THEN REPLY #51923 /* ~Vérité : "Je crois qu'elle a récupéré tous les mauvais côtés des fiélons ; je ne lui fais pas confiance."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",10)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51924 /* ~Vérité : "Elle m'est utile… rien de plus."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",11)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)
~ GOTO 89
  IF ~~ THEN REPLY #51925 /* ~Vérité : "Je ne la connais pas encore très bien."~ */ DO ~SetGlobal("Ravel_Annah","GLOBAL",12)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 84.3 84.4 84.9 87.2 87.3 87.4 90.0
  SAY #51926 /* ~Ravel jette un coup d'œil à Annah, puis renifle, tandis que ses yeux traversés de veines noires étincellent. "Hmmmmnnn… qu'il en soit ainsi."~ */
  IF ~~ THEN REPLY #51927 /* ~"J'en ai assez de ce petit jeu, Ravel. Écoute…"~ */ GOTO 92
END

IF ~~ THEN BEGIN 89 // from: 84.0 84.1 84.5 84.6 84.7 84.8 87.0 87.1 87.5 87.6 87.7 87.8
  SAY #51928 /* ~Ravel jette un coup d'œil à Annah, puis renifle, tandis que ses yeux traversés de veines noires étincellent. "Hmmmmnnn… alors, elle ne te manquerait pas ? Son sang fougueux serait un breuvage bienvenu pour les Trigits… cela fait bien longtemps qu'ils n'ont pas bu de sang de fiélon." Sans quitter Annah des yeux, Ravel continue de te parler. "Attention à ce que tu vas répondre, mon précieux. Ceci n'est PAS un jeu."~ */
  IF ~~ THEN REPLY #51929 /* ~"Je… retire ce que j'ai dit. Je ne lui veux aucun mal."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 90
  IF ~~ THEN REPLY #51930 /* ~"Tue-la, Ravel - ça m'est complètement égal. Ce n'est rien d'autre qu'un rebut de la Ruche."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_6","GLOBALGood",-3)
IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-5)
~ EXTERN ~DANNAH~ 255
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #51931 /* ~"Pouah ! Esprit de contradiction !" Les yeux de Ravel s'enflamment, et alors qu'elle se retourne vers toi, tu vois que les veines qui traversent ses yeux se sont *affilées*. "Quelles pensées se bousculent dans ton crâne à présent ?"~ */
  IF ~~ THEN REPLY #51932 /* ~"Je me suis mal exprimé - je ne savais pas ce que je disais, mais j'en ai eu plus que ma dose de mort - de la mienne comme de celle des autres."~ */ GOTO 88
END

IF ~~ THEN BEGIN 91 // from:
  SAY #51933 /* ~"Je ne vais pas la tuer… pas encore. Mais elle ne survivra pas longtemps dans ce dédale de noirépine… tu m'entends, jeune fille ? Les ombres que tu aimes tant ne te seront ici d'aucun SECOURS." Ravel s'adresse à Annah en riant. "Prie pour que ta fureur te donne la force ; quelques précieuses secondes peuvent faire toute la différence entre la vie et la mort…"~ */
  IF ~~ THEN REPLY #51934 /* ~"J'en ai assez de ce petit jeu, Ravel. Tu n'as plus de questions?"~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 53.0 54.0 56.0 57.0 68.1 68.6 69.0 69.5 70.0 70.5 73.4 74.3 77.4 80.2 83.2 88.0 91.0
  SAY #51935 /* ~"Voici ma question SUIVANTE…" Ravel baisse la voix, chuchotant presque. Et soudain, tu as l'étrange impression qu'elle ne veut pas entendre la réponse. "Pourquoi as-tu attendu si longtemps pour *revenir* me voir ? Ravel se sentait seule sans toi, mon précieux."~ */
  IF ~~ THEN REPLY #51936 /* ~"Cet endroit est… difficile d'accès, Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 93
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51937 /* ~"Cet endroit est difficile d'accès, belle Ravel. Tout est mis en œuvre pour t'empêcher d'avoir de la compagnie, et j'ai dû surmonter bien des épreuves pour parvenir jusqu'à toi. Mais je suis ravi de te revoir enfin, Ravel. Et je constate que le temps n'a pas altéré ta beauté."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 94
  IF ~~ THEN REPLY #51938 /* ~"Je ne répondrai pas à cette question, Ravel…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 50
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #51939 /* ~"Le chemin est-il si difficile ?" Un rictus se dessine au coin de sa bouche. "Alors, ta visite est précieuse, et je t'en remercie."~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51940 /* ~"Tu as une autre question à me poser ?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51941 /* ~"Tu as une autre question à me poser ?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51942 /* ~"Tu as une autre question à me poser ?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 94 // from: 92.1
  SAY #51943 /* ~"Tes réponses…" Les yeux de Ravel étincellent, et ses lèvres s'entrouvrent pour esquisser un sourire grotesque. "Tes paroles sont *apaisantes* et je les ai attendues si longtemps… elles parviennent même à émouvoir mon cœur de noirépine. Où que soient tes souvenirs, ton charme demeure, adorable chose…"~ */
  IF ~~ THEN REPLY #51944 /* ~"Non, c'est *ton* charme qui persiste, belle Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 95
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51945 /* ~"Peut-être. Tu as une autre question à me poser ?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51946 /* ~"Peut-être. Tu as une autre question à me poser ?"~ */ GOTO 97
  IF ~  CheckStatGT(Protagonist,15,INT)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #51947 /* ~"Peut-être. Tu as une autre question à me poser ?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #51948 /* ~"Charmes, enchantements, sortilèges… Ravel maîtrise tout cela… mais il semblerait que tu peux encore *m'enseigner* beaucoup de choses…"~ */
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #51949 /* ~"Peut-être. Tu as une autre question à me poser ?"~ */ GOTO 96
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #51950 /* ~"Peut-être. Tu as une autre question à me poser ?"~ */ GOTO 97
  IF ~  CheckStatLT(Protagonist,16,WIS)
CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #51952 /* ~"Peut-être. Tu as une autre question à me poser ?"~ */ GOTO 97
END

IF ~~ THEN BEGIN 96 // from: 93.0 94.1 95.0
  SAY #51953 /* ~"Ahhhh, ouiiii. Ma troisième et dernière questions est très simple ; réponds-y et TU pourras à ton tour me poser les tiennes. Ravel y répondra… ma dernière question est la *suivante*…"~ */
  IF ~~ THEN REPLY #51954 /* ~"Oui… ?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",7)
StartCutSceneMode()
StartCutSceneEx("0610Cut9",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 97 // from: 93.1 93.2 94.2 94.3 95.1 95.2
  SAY #51959 /* ~"Ahhhh, ouiiii. Ma troisième et dernière question… est la *suivante*…" Au moment où Ravel ouvre la bouche pour poser sa dernière question, tu réalises soudain que cette même question a tué nombre de ceux à qui elle a été posée. Tu la connais, et tu la sens monter en toi, conscient que tu ne pourras y échapper.~ */
  IF ~~ THEN REPLY #51962 /* ~Écho : "Qu'est-ce qui peut changer la nature d'un homme ?"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",8)
StartCutSceneMode()
StartCutSceneEx("0610CutC",FALSE)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",7)
~ THEN BEGIN 98 // from:
  SAY #51963 /* ~"Qu'est-ce qui peut changer la nature d'un homme ?"~ [RAV079B] */
  IF ~~ THEN REPLY #51964 /* ~Vérité : "Je.. ne sais pas."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51965 /* ~Vérité : "L'amour."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51966 /* ~Vérité : "La haine."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51967 /* ~Vérité : "Le pouvoir."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51968 /* ~Vérité : "La cupidité."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51969 /* ~Vérité : "La trahison."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51970 /* ~Vérité : "La mort."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51971 /* ~Vérité : "Les regrets."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51972 /* ~Vérité : "La vieillesse."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51973 /* ~Vérité : "La souffrance."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51974 /* ~Vérité : "Le succès."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51975 /* ~Vérité : "Les plans."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51976 /* ~Vérité : "Toi, Ravel. Comme tu as à jamais changé ma nature."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51977 /* ~Mensonge : "Une belle femme, Ravel. Comme tu m'as changé."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51978 /* ~Vérité : "Rien ne peut changer la nature d'un homme, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51979 /* ~Vérité : "Je ne peux répondre à cette question…"~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF WEIGHT #8 /* Triggers after states #: 162 161 158 151 117 even though they appear after this state */
~  Global("Ravel_Cut_Scene","AR0610",8)
~ THEN BEGIN 99 // from:
  SAY #51980 /* ~"Je vois que tu n'as pas oublié…" Ravel sourit et ses crocs jaunis étincellent. "Quelle est ta réponse ?"~ */
  IF ~~ THEN REPLY #51981 /* ~Vérité : "Je.. ne sais pas."~ */ DO ~SetGlobal("Nature","GLOBAL",1)
~ GOTO 100
  IF ~~ THEN REPLY #51982 /* ~Vérité : "L'amour."~ */ DO ~SetGlobal("Nature","GLOBAL",2)
~ GOTO 100
  IF ~~ THEN REPLY #51983 /* ~Vérité : "La haine."~ */ DO ~SetGlobal("Nature","GLOBAL",3)
~ GOTO 100
  IF ~~ THEN REPLY #51984 /* ~Vérité : "Le pouvoir."~ */ DO ~SetGlobal("Nature","GLOBAL",4)
~ GOTO 100
  IF ~~ THEN REPLY #51985 /* ~Vérité : "La cupidité."~ */ DO ~SetGlobal("Nature","GLOBAL",5)
~ GOTO 100
  IF ~~ THEN REPLY #51986 /* ~Vérité : "La trahison."~ */ DO ~SetGlobal("Nature","GLOBAL",6)
~ GOTO 100
  IF ~~ THEN REPLY #51987 /* ~Vérité : "La mort."~ */ DO ~SetGlobal("Nature","GLOBAL",7)
~ GOTO 100
  IF ~~ THEN REPLY #51988 /* ~Vérité : "Les regrets."~ */ DO ~SetGlobal("Nature","GLOBAL",8)
~ GOTO 100
  IF ~~ THEN REPLY #51989 /* ~Vérité : "La vieillesse."~ */ DO ~SetGlobal("Nature","GLOBAL",9)
~ GOTO 100
  IF ~~ THEN REPLY #51990 /* ~Vérité : "La souffrance."~ */ DO ~SetGlobal("Nature","GLOBAL",10)
~ GOTO 100
  IF ~~ THEN REPLY #51991 /* ~Vérité : "Le succès."~ */ DO ~SetGlobal("Nature","GLOBAL",11)
~ GOTO 100
  IF ~~ THEN REPLY #51992 /* ~Vérité : "Les plans."~ */ DO ~SetGlobal("Nature","GLOBAL",12)
~ GOTO 100
  IF ~~ THEN REPLY #51993 /* ~Vérité : "Toi, Ravel. Comme tu as à jamais changé ma nature."~ */ DO ~SetGlobal("Nature","GLOBAL",13)
~ GOTO 100
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #51994 /* ~Mensonge : "Une belle femme, Ravel. Comme tu m'as changé."~ */ DO ~SetGlobal("Nature","GLOBAL",14)
~ GOTO 100
  IF ~~ THEN REPLY #51995 /* ~Vérité : "Rien ne peut changer la nature d'un homme, Ravel."~ */ DO ~SetGlobal("Nature","GLOBAL",15)
~ GOTO 100
  IF ~~ THEN REPLY #51996 /* ~Vérité : "Je ne peux répondre à cette question…"~ */ DO ~SetGlobal("Nature","GLOBAL",16)
~ GOTO 50
END

IF ~~ THEN BEGIN 100 // from: 98.0 98.1 98.2 98.3 98.4 98.5 98.6 98.7 98.8 98.9 98.10 98.11 98.12 98.13 98.14 99.0 99.1 99.2 99.3 99.4 99.5 99.6 99.7 99.8 99.9 99.10 99.11 99.12 99.13 99.14
  SAY #51997 /* ~"C'est ta réponse ?" Les veines qui traversent les yeux de Ravel commencent à bouger légèrement, et elle sourit d'un air diabolique. "Réfléchis bien avant d'arrêter ton choix…"~ */
  IF ~~ THEN REPLY #51998 /* ~"Ce n'est peut-être pas *ta* réponse, mais c'est la *mienne*."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 101 // from:
  SAY #51999 /* ~"Ah !" Ravel éclate de rire, puis se tait pour te fixer avec une telle intensité que ta peau te fait presque mal, comme si on te poignardait. Les veines qui traversent les yeux de Ravel commencent à bouger légèrement, et elle sourit d'un air diabolique. "Voilà une réponse intéressante… mais est-ce la bonne ? Réfléchis bien avant d'arrêter ton choix…"~ */
  IF ~~ THEN REPLY #52000 /* ~"Ce n'est peut-être pas *ta* réponse, mais c'est la *mienne*."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 100.0 101.0
  SAY #52001 /* ~"Et c'est tout ce que je voulais, mon précieux." Le sourire de Ravel s'estompe. "Une réponse toute simple et, au bout du compte, nombreux sont les hommes que j'ai tués alors qu'ils cherchaient MA réponse."~ */
  IF ~~ THEN REPLY #52002 /* ~"C'est tout ? Je croyais que…"~ */ GOTO 103
  IF ~~ THEN REPLY #52003 /* ~"Ah ! Les imbéciles… mais n'en est-il pas ainsi avec les mortels ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_7","GLOBALGood",-1)
~ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #52004 /* ~Ravel éclate de rire. "Cette question a été posée si souvent, mais pas UNE seule fois les êtres pathétiques qui sont venus me trouver n'ont donné LEUR réponse, préférant toujours chercher à lire en moi pour y voir ce que *je* pensais… tchhh ! Il n'y a aucune vérité là-dedans."~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52005 /* ~"Je… ne te crois pas. En fait, je pense qu'ils n'auraient jamais pu te donner la bonne réponse, même s'ils étaient persuadés de dire la vérité."~ */ GOTO 104
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52006 /* ~"Oh, allez, inutile de me mentir, Ravel. Nous savons tous les deux qu'ils n'auraient jamais pu te donner la bonne réponse, même s'ils étaient persuadés de dire la vérité."~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0 103.1
  SAY #52007 /* ~D'un seul coup, Ravel se mure dans le silence. Elle t'observe prudemment.~ */
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #52008 /* ~"La seule réponse que tu attendais, c'était la MIENNE. Par conséquent, personne n'aurait JAMAIS pu répondre à ta question. La pile de cadavres doit être impressionnante, au bout du compte, hein ?"~ */ JOURNAL #52010 /* ~Cette maudite sorcière de Ravel m'a posé trois questions stupides, et je suis certain d'avoir déjà entendu la dernière : 'Qu'est-ce qui peut changer la nature d'un homme ?' Je lui ai répondu, et elle a accepté ma réponse, car je crois qu'elle n'attendait que cela depuis bien longtemps. Au fil des siècles, nombre de fous ont perdu la vie en essayant de résoudre l'énigme de Ravel, alors que tout ce qu'elle attendait, c'était MA réponse. Peut-être est-ce la stupidité qui permet aux plans de continuer à tourner…~ */ GOTO 105
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #52009 /* ~"Aucune autre réponse que la mienne ne t'a *jamais* intéressée. Jamais. Je me trompe ? Mais tu continuais à poser cette question, sachant pertinemment que quelle que soit la réponse qu'ils te donnaient, tu les tuerais."~ */ JOURNAL #52011 /* ~Cette maudite sorcière de Ravel m'a posé trois questions stupides, et je suis certain d'avoir déjà entendu la dernière : 'Qu'est-ce qui peut changer la nature d'un homme ?' Je lui ai répondu, et elle a accepté ma réponse, car je crois qu'elle n'attendait que cela depuis bien longtemps. Nombreux sont ceux qui sont morts pour avoir tenté de résoudre l'énigme de Ravel, alors que cette dernière attendait juste que ce soit moi qui lui réponde.~ */ GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0 104.1
  SAY #52012 /* ~Ravel siffle. "BIEN SÛR, ta réponse était la seule que je cherchais, car tu étais pour moi la SEULE raison de poser cette question ! Crois-tu que je m'intéressais à eux ? Tchhh ! Crois-tu que j'aie pu avoir un *soupçon* d'intérêt pour eux comparé à *toi*, mon précieux ? Réponds-moi !"~ */
  IF ~~ THEN REPLY #52013 /* ~"J'ai répondu à *toutes* tes questions, Ravel. Maintenant, à mon tour de t'en poser."~ */ GOTO 106
END

IF ~~ THEN BEGIN 106 // from: 105.0 107.1 108.2 109.1 110.1 111.1 112.1 113.1 114.1 115.4 116.2 117.1 118.1 119.1 120.1 121.1 125.1 126.2 127.1 128.3 129.2 131.1 136.1 137.1 138.2 139.0 140.0 141.8
  SAY #52014 /* ~"Bien sûr… encore des questions, toujours des questions…"~ */
  IF ~  Global("Ravel_Ritual_4","AR0610",0)
~ THEN REPLY #52015 /* ~"Pourquoi m'as-tu rendu immortel, Ravel ?"~ */ GOTO 107
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52016 /* ~"Redis-le-moi, Ravel : pourquoi m'as-tu rendu immortel ?"~ */ GOTO 107
  IF ~  NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52017 /* ~"Alors, tu m'as pris ma mortalité, Ravel… est-ce qu'elle est toujours intacte ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52018 /* ~"Alors, tu m'as pris ma mortalité, Ravel… est-ce qu'elle est toujours intacte ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
Global("Ravel_Ritual_4","AR0610",1)
Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52019 /* ~"Alors, tu m'as pris ma mortalité, Ravel… est-ce qu'elle est toujours intacte ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52020 /* ~"Est-ce que ma mortalité est toujours intacte, Ravel ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52021 /* ~"Qui est celui qui sait où se trouve ma mortalité, déjà ?"~ */ GOTO 135
  IF ~~ THEN REPLY #52022 /* ~"J'ai quelques questions à te poser sur TOI, Ravel…"~ */ GOTO 141
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52023 /* ~"Merci de m'avoir donné ces renseignements, Ravel ; je dois partir, maintenant." ~ */ GOTO 213
END

IF ~~ THEN BEGIN 107 // from: 106.0 106.1
  SAY #52024 /* ~"C'est ce que tu *voulais*, petit être, et tu me l'as demandé si gentiment… comment Ravel aurait-elle pu te dire non ? L'immortalité était *ta* solution et le défi que tu m'imposais."~ */
  IF ~~ THEN REPLY #52025 /* ~"*Ma* solution ? Mais pourquoi ?"~ */ GOTO 108
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52026 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 108 // from: 107.0
  SAY #52027 /* ~"Je l'ignore, petit être. Le temps a aussi effacé mes souvenirs, on dirait… dix raies ? Si tu t'en souviens, dis-le-moi… ça m'intéresse, moi aussi. C'était sûrement important… n'est-ce pas dans la nature de l'homme de vouloir vivre éternellement ?"~ */
  IF ~  NearbyDialog("Ddakkon")
~ THEN EXTERN ~DDAKKON~ 169
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #52028 /* ~"Ravel… c'est TRÈS important : est-ce que tu sais pourquoi je t'ai demandé de faire ça ?"~ */ GOTO 109
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52029 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 109 // from: 108.1
  SAY #52030 /* ~"La mort était quelque chose que tu devais esquiver. Facile à dire, peut-être, mais à FAIRE, loin de là ! L'immortalité, même avec ses défauts, est la meilleure solution que mon esprit flétri ait pu concevoir…"~ */
  IF ~~ THEN REPLY #52031 /* ~"Mais…"~ */ GOTO 110
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52032 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 110 // from: 109.0
  SAY #52033 /* ~"Il est difficile, mais pas impossible, de changer le plomb en or, pensait l'imprudente - lin prude antre ? - Ravel. Si on pouvait transformer le sang en eau, la mortalité pourrait être ôtée aux mortels, retirée comme une bande collante…."~ */
  IF ~~ THEN REPLY #52034 /* ~"Alors, tu me l'as enlevée ?"~ */ GOTO 111
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52035 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #52036 /* ~"L'abîme existant entre l'homme et le non-homme est immense. Tu l'as franchi. Je t'en ai donné les moyens, mais cette traversée, tu l'as effectuée seul." Ravel se tapote la tête et se passe la main dans les cheveux. "Méchante Ravel ! Les mortels sont trop imparfaits pour durer. Ils finissent toujours par se casser, et il faut alors les traîner, sans qu'ils cessent un instant de hurler ou de se débattre, dans un nouveau moule malsain."~ */
  IF ~~ THEN REPLY #52037 /* ~"Malsain ? Alors, le rituel n'a pas fonctionné ?"~ */ GOTO 112
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52038 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #52039 /* ~"Certains raccourcis peuvent leur permettre de *briser* le moule… mais il arrive alors que ce ne soit pas le moule qui cède, mais la substance qu'il renferme. Il suffit de forcer quelque chose à prendre une forme qui ne lui était pas destinée et elle se casse ! Je pensais que tu étais solide, mais tu t'es brisé, toi aussi."~ */
  IF ~~ THEN REPLY #52040 /* ~"Mais je *suis* immortel - ça a forcément été une réussite, non ?"~ */ GOTO 113
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52041 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #52042 /* ~"Tu as longtemps survécu, immortel, mais tu es devenu la proie de cette créature qu'est la vie." Elle forme une coupe de ses mains, puis la renverse pour donner naissance à un toit incliné. "Le corps n'est que la résidence de l'âme. Mais à présent, plus personne ne réside chez toi."~ */
  IF ~~ THEN REPLY #52043 /* ~"Qu'est-ce qui s'est passé avec le rituel ?"~ */ GOTO 114
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52044 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #52045 /* ~"L'énigme de chair a échoué, beau mortel, le rituel n'était pas - papa ? - pas terminé." Le front plissé, Ravel passe ses griffes dans sa chevelure et tire sur un cheveu. "Le rituel t'a donné ce que tu voulais, mais…"~ */
  IF ~~ THEN REPLY #52046 /* ~"Mais…"~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52047 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 115 // from: 114.0 117.0 118.0 119.0
  SAY #52048 /* ~"Le rituel t'a donné ce que tu voulais, mais à *quel* prix ? La projection des ombres, les morts silencieuses mais violentes de l'esprit, et le vide voleur de douleurs… tout cela est dangereux pour un récipient aussi fragile, quelle que soit la robustesse du mortel. Je le déplore, tout comme je regrette le rituel."~ */
  IF ~~ THEN REPLY #52049 /* ~"La projection des ombres ?"~ */ DO ~SetGlobal("Ravel_Ritual_1","AR0610",1)
~ GOTO 116
  IF ~~ THEN REPLY #52050 /* ~"Les morts silencieuses mais violentes de l'esprit ?"~ */ DO ~SetGlobal("Ravel_Ritual_2","AR0610",1)
~ GOTO 118
  IF ~~ THEN REPLY #52051 /* ~"Le vide voleur de douleur ?"~ */ DO ~SetGlobal("Ravel_Ritual_3","AR0610",1)
~ GOTO 119
  IF ~  Global("Ravel_Ritual_1","AR0610",1)
Global("Ravel_Ritual_2","AR0610",1)
Global("Ravel_Ritual_3","AR0610",1)
~ THEN REPLY #52052 /* ~"Malgré ces problèmes, le rituel semble avoir fonctionné…"~ */ JOURNAL #52054 /* ~Ravel m'a dit que je lui avais demandé de me rendre immortel, mais qu'elle ne se souvenait pas pourquoi. Par contre, elle m'a longuement parlé du rituel utilisé, disant que j'avais 'projeté des ombres' sur le multivers. Chaque fois que je meurs, l'une d'elles naît et me traque afin d'essayer de me tuer. Ravel m'a également appris que, même si mon corps se régénère systématiquement, il n'en va pas de même de mon esprit. Plus je meurs, plus je perds de moi-même. Cela explique-t-il mes pertes de mémoire ? Je l'ignore. Enfin, Ravel m'a dit que ce vide que je ressens en moi n'est autre que l'absence de ma mortalité.~ */ GOTO 120
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52053 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #52055 /* ~"Les ombres sont ingrates… mais pourquoi ? Les ombres… elles te détestent, Sans-nom, car c'est toi qui les as engendrées ; ce sont tes enfants. Tu les as jadis abandonnées, et elles ne te le pardonneront jamais. Elles feront tout ce qu'elles peuvent pour détruire leur parent… telle est la façon d'être des enfants."~ */
  IF ~  !Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52056 /* ~"Comment est-ce que j'engendre ces… ombres ?"~ */ DO ~StartCutSceneMode()
StartCutSceneEx("0610Cut1",FALSE)
SetGlobal("Ravel_Cut_Scene","AR0610",2)
~ EXIT
  IF ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN REPLY #52057 /* ~"Comment est-ce que j'engendre ces… ombres ?"~ */ GOTO 117
  IF ~~ THEN REPLY #52058 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF WEIGHT #2 ~  Global("Ravel_Cut_Scene","AR0610",2)
~ THEN BEGIN 117 // from: 116.1
  SAY #52059 /* ~"Tu projettes des ombres sur le multivers, Sans-nom. Chaque fois que tu meurs, une ombre naît de ta chair. Elles errent quelque temps, mais reviennent toujours, cherchant à assassiner leur parent. Telle est la façon d'être de nombreux descendants…" Ravel a un pincement de lèvres de désapprobation, puis elle te donne soudain un petit coup de griffe sur la poitrine. "… et des jeunes ingrats tels que toi."~ */
  IF ~~ THEN REPLY #52060 /* ~"Parle-moi encore de ce rituel…"~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52061 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 118 // from: 115.1
  SAY #52062 /* ~"Tu es mort un bon millier de fois, et chaque fois, tu en reviens. Mais il n'en est pas ainsi pour l'esprit, car lui est bien plus fragile. Ses cicatrices sont profondes et ne guérissent pas. Le cerveau est enfermé dans une robuste carapace en os, difficile à percer, mais sans défense contre ce qui le ronge de l'intérieur."~ */
  IF ~~ THEN REPLY #52063 /* ~"Parle-moi encore de ce rituel…"~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52064 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 119 // from: 115.2
  SAY #52065 /* ~"Tu formais jadis une unité où - houx ? - où ta mortalité trouvait refuge." Elle serre le poing et le secoue. "*Gling-gling* fait l'homme creux, un jouet de bébé, sans rien d'autre qu'un minuscule caillou qui résonne à l'intérieur de ton être."~ */
  IF ~~ THEN REPLY #52066 /* ~"Parle-moi encore de ce rituel…"~ */ GOTO 115
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52067 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 120 // from: 115.3
  SAY #52071 /* ~"Doutes-tu de Ravel ? Évidemment que je t'ai offert ce que j'avais promis ! Peu après avoir lancé le sort, je t'ai tué pour voir s'il fonctionnait. Tu as lutté, mais je n'ai pas lâché prise et j'ai observé la première de tes nombreuses morts." Ravel fait *claquer* ses dents. "C'est ainsi que j'ai vu ses défauts…"~ */
  IF ~~ THEN REPLY #52072 /* ~"Quels défauts ?"~ */ GOTO 121
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52073 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 121 // from: 120.0
  SAY #52074 /* ~"L'ego nous enserre comme une prison. J'avais oublié qu'il sert souvent de bouclier." Ravel claque la langue. "Mon adorable, adorable chose, il y a plus de sagesse et d'entendement dans la vérité qui dit que la vie n'est qu'une préparation au but ultime : la mort. Notre existence nous permet d'apprendre *comment* mourir. Si nous l'OUBLIONS…"~ */
  IF ~~ THEN REPLY #52075 /* ~"Alors, c'est là que tu as découvert qu'en mourant je perdais la mémoire…"~ */ DO ~SetGlobal("Ravel_Ritual_4","AR0610",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 122
  IF ~  Global("Ravel_Ritual_4","AR0610",1)
~ THEN REPLY #52076 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 122 // from: 121.0
  SAY #52077 /* ~"Oui…" Ravel acquiesce. "Hélas… sans la mortalité qui conserve ses souvenirs, la carapace que forme le corps est…"~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52078 /* ~"Alors, tu m'as pris ma mortalité… est-ce qu'elle est toujours intacte ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 123
  IF ~  NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52079 /* ~"Alors, tu m'as pris ma mortalité… est-ce qu'elle est toujours intacte ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 124
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("Dmorte")
~ THEN REPLY #52080 /* ~"Alors, tu m'as pris ma mortalité… est-ce qu'elle est toujours intacte ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 125
END

IF ~~ THEN BEGIN 123 // from: 106.2 122.0
  SAY #52081 /* ~Ravel semble surprise, puis effrayée. "Oui, oui, *oui* ! Ne crains rien, ta mortalité n'a pas été détruite… si tu es là - lala ? - là en train de me parler, c'est qu'elle doit être intacte. Une telle chose ne peut pas - papa - pas être détruite tant que tu existes. Tu es *l'ancre* de ton âme mortelle. Tant que *tu* es intact, il en sera ainsi. Tu es fait pour durer…" Ravel sourit et se met à rire en sifflant. "La vie t'a avalé et recraché !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 506
END

IF ~~ THEN BEGIN 124 // from: 106.3 122.1
  SAY #52082 /* ~Ravel semble surprise, puis effrayée. "Oui, oui, *oui* ! Ne crains rien, ta mortalité n'a pas été détruite… si tu es là - lala ? - là en train de me parler, c'est qu'elle doit être intacte. Une telle chose ne peut pas - papa - pas être détruite tant que tu existes. Tu es *l'ancre* de ton âme mortelle. Tant que *tu* es intact, il en sera ainsi. Tu es fait pour durer…" Ravel sourit et se met à rire en sifflant. "La vie t'a avalé et recraché !"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 253
END

IF ~~ THEN BEGIN 125 // from: 106.4 106.5 122.2
  SAY #52083 /* ~Ravel semble surprise, puis effrayée. "Oui, oui, *oui* ! Ne crains rien, ta mortalité n'a pas été détruite… si tu es là… lala ?… là en train de me parler, c'est qu'elle doit être intacte. Une telle chose ne peut pas - papa - pas être détruite tant que tu existes. Tu es *l'ancre* de ton âme mortelle. Tant que *tu* es intact, il en sera ainsi. Ta mortalité n'est pas plus détruite que tu ne l'es."~ */
  IF ~  Global("Ravel_Ritual_5","AR0610",0)
~ THEN REPLY #52084 /* ~"Ça suffit, Ravel. Tu m'a pris ma mortalité et cela a causé plus de mal que de bien. Je voudrais la récupérer, maintenant - tu l'as gardée trop longtemps, je trouve."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 126
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52085 /* ~"Très bien. J'avais d'autres questions à te poser, Ravel…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #52086 /* ~"Ah… tu as des exigences ?" Les yeux traversés de veines noires de Ravel deviennent plus perçants et s'emplissent d'une *conscience* inquiétante, tandis qu'elle dévoile ses crocs jaunis. "Non, non, non. Ravel ne fera *pas* ça. Ce qui est défait ne peut être refait."~ */
  IF ~~ THEN REPLY #52087 /* ~"J'en ai assez de ces jeux de mots, Ravel. Je ne veux plus jouer avec toi. Rends-moi ma mortalité ou je te tue."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 127
  IF ~~ THEN REPLY #52088 /* ~"Pourquoi pas ?"~ */ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52089 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #52090 /* ~"Si tu veux me tuer, et bien tue-moi, cela n'a pas d'importance. Je peux difficilement dire laquelle des nombreuses directions du temps j'emprunte. Les mortels vont dans la direction opposée, ils sont tournés vers le futur, et moi je suis tournée vers le passé, car je n'aime pas ce que je vois dans le futur."~ */
  IF ~~ THEN REPLY #52091 /* ~"Arrête tes bêtises, Ravel. J'en ai assez de ces chamailleries. Rends-moi ma mortalité… *tout de suite*."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 128
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52092 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 128 // from: 126.1 127.0
  SAY #52093 /* ~"Ravel *ne peut* te la donner, mon précieux, car elle n'a *rien* à donner… ni *toi*, ni ta mortalité ne m'avez jamais appartenus… je voulais juste vous garder tous les deux dans mon jardin, égoïstement, comme des souvenirs ou des vestiges… mais Ravel n'a pas pu se résoudre à faire ça…"~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52094 /* ~"Pourquoi pas ?"~ */ EXTERN ~DANNAH~ 254
  IF ~  !NearbyDialog("Dannah")
NearbyDialog("DGrace")
~ THEN REPLY #52095 /* ~"Pourquoi pas ?"~ */ EXTERN ~DGRACE~ 159
  IF ~  !NearbyDialog("Dannah")
!NearbyDialog("DGrace")
~ THEN REPLY #52096 /* ~"Si tu n'as pas ma mortalité… où se trouve-t-elle, Ravel ?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52097 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52098 /* ~Ravel sourit. "Est-ce si difficile à croire pour toi, fiélonne ?" Elle rit doucement en elle-même. "Est-ce que Ravel, le mythe qu'est Ravel, ne *mérite* pas d'éprouver un tel sentiment en son cœur de noirépine ?"~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 160
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #52099 /* ~"Alors, si tu n'as pas ma mortalité… où se trouve-t-elle, Ravel ?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52100 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 130 // from:
  SAY #52101 /* ~Ravel sourit. "Est-ce si difficile à croire pour toi, succube ?" Elle rit doucement en elle-même. "Est-ce que Ravel, le mythe qu'est Ravel, ne *mérite* pas d'éprouver un tel sentiment en son cœur de noirépine ?"~ */
  IF ~~ THEN EXTERN ~DGRACE~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #52102 /* ~"Tchhh ! Le passé est le passé, et les histoires se moquent bien de la vérité…" Ravel fronce les sourcils, puis baisse légèrement la voix pour adopter un ton menaçant, alors qu'elle observe Grâce. "Ce sentiment m'a *effleurée*, oui… et maintenant, *tiens* ta langue argentée, fille des Abysses. Je n'ai pas besoin de tes douces paroles pour troubler l'atmosphère - l'homme et moi allons parler et tu vas tirer ta révérence. Je vais bientôt m'occuper de toi."~ */
  IF ~~ THEN REPLY #52103 /* ~"Ça suffit, Ravel : si tu n'as pas ma mortalité… où est-elle ?"~ */ GOTO 132
  IF ~  Global("Ravel_Ritual_5","AR0610",1)
~ THEN REPLY #52104 /* ~"J'en ai assez entendu. J'avais d'autres questions…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 132 // from: 128.2 129.1 131.0
  SAY #52105 /* ~"*Je* l'ignore, douce chose. Mais si j'étais toi, je la récupérerais au plus vite. Inutile d'imaginer les horreurs qui pourraient t'arriver si quelqu'un voulait échanger ta mortalité contre RANÇON." Ravel fait *claquer* ses griffes les unes contre les autres. "Ce serait comme de conserver la douce et succulente âme de quelqu'un… tu ne serais plus qu'une marionnette entre les mains de quelqu'un d'autre, une marionnette bien triste… mais je ne sais pas où elle est."~ */
  IF ~~ THEN REPLY #52106 /* ~"Et bien, ç'aurait été trop FACILE si tu l'avais su… je crois qu'il va falloir que je me remette en chasse."~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 133
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #52107 /* ~"Attends un peu… tu dis que TU ne sais pas où est ma mortalité. Je vais reformuler ma question : est-ce que tu connais quelqu'un qui SAIT où elle est ?"~ */ DO ~SetGlobal("Ravel_Ritual_5","AR0610",1)
~ GOTO 134
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #52108 /* ~"Ahhh… ne sois pas si pressé." Ravel esquisse un horrible sourire tandis que ses défenses étincellent. "*Moi*, je ne sais pas où se trouve ta mortalité, mon précieux… mais il existe peut-être *quelqu'un* qui le sait…"~ */
  IF ~~ THEN REPLY #52109 /* ~"'Il existe peut-être quelqu'un qui le sait' ? Qui ça ?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 134 // from: 132.1
  SAY #52110 /* ~Ravel dévoile un horrible sourire tandis que ses défenses étincellent. "Tu es malin, malin, *malin*… oui, quelqu'un d'AUTRE sait peut-être ce que Ravel ignore…"~ */
  IF ~~ THEN REPLY #52111 /* ~"'Quelqu'un d'autre sait peut-être' ? Qui ça ?"~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 106.6 133.0 134.0
  SAY #52112 /* ~Les yeux de Ravel s'obscurcissent, comme si elle fixait quelque chose au loin, et sa voix se fait plus posée. "Tu dois le demander à… quelqu'un qui a… la peau blanche. Un ange, un deva, quelqu'un qui s'envole sur les ailes du matin et dont les mains sont les architectes des horizons. Il se trouve au-delà de mon observation, dans une autre cage, une autre prison… et dans son savoir, tu trouveras ce que tu cherches. Pose-lui tes questions, écoute ses réponses, utilise-les pour te guider."~ */
  IF ~  Global("Ravel_Trias","GLOBAL",0)
~ THEN REPLY #52113 /* ~"Où est-ce que je peux trouver cet ange ?"~ */ DO ~SetGlobal("Ravel_Trias","GLOBAL",1)
AddexperienceParty(180000)
~ JOURNAL #52115 /* ~Ravel m'a dit que ma mortalité existait toujours quelque part, mais elle ignore où. Par contre, elle connaît quelqu'un qui est *peut-être* au courant. Elle m'a dit de traverser son dédale et d'aller jusqu'à une autre prison. Là, je trouverai un ange, ou 'deva', qui me dira où chercher ma mortalité. Mais s'il est aussi dur à trouver que Ravel, je commence à penser que je ne la récupérerai jamais. Et pourtant, elle est encore plus importante que je le pensais. Ravel m'a en effet averti que je devais retrouver ma mortalité avant que quelqu'un d'autre ne s'en empare, car quiconque le ferait pourrait ensuite me contrôler comme un pantin.~ */ GOTO 136
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52114 /* ~"Où est-ce que je peux trouver cet ange ?"~ */ GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0 135.1
  SAY #52116 /* ~"En quittant cette prison, tu arriveras dans une *autre* prison maudite… mais elle ne t'apparaîtra peut-être pas tout de suite sous cette forme. Prends ton temps et trouve le maillon doré de la chaîne qui se raccourcit sans cesse. La lumière révélera le côté obscur de la chose, et de nouvelles voies s'offriront à toi."~ */
  IF ~~ THEN REPLY #52117 /* ~"Délicieusement énigmatique… mais ça n'a rien de surprenant. Merci."~ */ GOTO 137
  IF ~~ THEN REPLY #52118 /* ~"J'avais d'autres questions à te poser, Ravel…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 137 // from: 136.0
  SAY #52119 /* ~Ravel rit. "Je ne suis pas attachée aux détails du passé… tu as de la chance de recevoir *quelque chose*, ô être caustique !"~ */
  IF ~~ THEN REPLY #52120 /* ~"Oh, vraiment ? C'est juste qu'il y a toujours des ratés entre les maillons de la chaîne que constituent ceux qui savent quelque chose à mon sujet."~ */ GOTO 138
  IF ~~ THEN REPLY #52121 /* ~"Peut-être. Quoi qu'il en soit, j'avais d'autres questions à te poser, Ravel…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #52122 /* ~"Ahhh…" Ravel sourit en levant une de ses griffes. "Et c'est pour cela que tu dois garder chaque maillon à l'abri, car s'ils ne sont pas encore unis, imagine à quoi ressemblera la chaîne quand d'AUTRES maillons se briseront… le temps et la mort ne sont pas aussi *patients* avec les autres qu'avec toi."~ */
  IF ~~ THEN REPLY #52123 /* ~"Qu'est-ce que tu racontes ?"~ */ GOTO 139
  IF ~~ THEN REPLY #52124 /* ~"J'espère que ce n'est pas une menace."~ */ GOTO 140
  IF ~~ THEN REPLY #52125 /* ~"Peut-être. Quoi qu'il en soit, j'avais d'autres questions à te poser, Ravel…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #52126 /* ~"Et si l'un de tes précieux maillons devait *mourir* ? Et si tu perdais encore la mémoire ? Que ferais-tu alors ? Où serait ta mortalité volée ? Elle serait à jamais PERDUE, car il n'y aurait plus personne pour t'EXPLIQUER comment la retrouver. Tu aurais encore plus de mal à trouver ton chemin… ce serait peut-être même IMPOSSIBLE…"~ */
  IF ~~ THEN REPLY #52127 /* ~"C'est vrai. Quoi qu'il en soit, j'avais d'autres questions à te poser, Ravel…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 140 // from: 138.1
  SAY #52128 /* ~"La menace ne provient pas de moi, même si elle existe *bel et bien*. Et si l'un de tes précieux maillons devait *mourir* ? Et si tu perdais encore la mémoire ? Que ferais-tu alors ? Où serait ta mortalité volée ? Elle serait à jamais PERDUE, car il n'y aurait plus personne pour t'EXPLIQUER comment la retrouver. Tu aurais encore plus de mal à trouver ton chemin… ce serait peut-être même IMPOSSIBLE…"~ */
  IF ~~ THEN REPLY #52129 /* ~"C'est vrai. Quoi qu'il en soit, j'avais d'autres questions à te poser, Ravel…"~ */ GOTO 106
END

IF ~~ THEN BEGIN 141 // from: 106.7 142.1 144.0 149.0 162.1 163.6 164.4 165.1 167.1 169.1 171.1 175.1 182.1 183.1 184.1 185.2 188.1 189.1 190.1 192.1 193.4 194.2 195.0 199.0 200.0 201.2 202.5 203.1 206.0 207.0 207.1 211.0 241.1
  SAY #52130 /* ~"Oui ? Pose tes questions au sujet de Ravel, mon précieux."~ */
  IF ~~ THEN REPLY #52131 /* ~"Ravel… qui es-tu ? D'où viens-tu ?"~ */ GOTO 142
  IF ~  GlobalGT("Ravel_Shape","GLOBAL",0)
~ THEN REPLY #52132 /* ~"Quelles autres formes as-tu prises dans ta vie, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52133 /* ~"C'est quoi, cet endroit ?"~ */ GOTO 200
  IF ~  NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52134 /* ~"Pourquoi as-tu été emprisonnée, Ravel ?"~ */ GOTO 186
  IF ~  NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52135 /* ~"Pourquoi as-tu été emprisonnée, Ravel ?"~ */ GOTO 55
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dmorte")
~ THEN REPLY #52136 /* ~"Pourquoi as-tu été emprisonnée, Ravel ?"~ */ GOTO 185
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dmorte")
~ THEN REPLY #52137 /* ~"Pourquoi as-tu été emprisonnée, Ravel ?"~ */ GOTO 185
  IF ~  Global("Ravel_Teach","GLOBAL",0)
~ THEN REPLY #52138 /* ~"D'après les légendes, tu serais une puissante magicienne, Ravel. Est-ce que tu pourrais m'enseigner l'Art ?"~ */ GOTO 201
  IF ~~ THEN REPLY #52139 /* ~"J'avais d'autres questions au sujet de mon immortalité…"~ */ GOTO 106
  IF ~  Global("Ravel_Trias","GLOBAL",1)
~ THEN REPLY #52140 /* ~"Merci de m'avoir donné ces renseignements, Ravel ; je dois partir, maintenant." ~ */ GOTO 213
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #52141 /* ~"Moi ? Je suis Ravel, je crée et dissous des énigmes, je résous *l'insoluble*, je fais et défais les esprits jusqu'à ce que les fils de la pensée soient emmêlés comme des nœuds dans la chevelure d'un homme ivre." Ravel prend une mèche de ses cheveux gris et l'enroule autour de son doigt. "Ça suffit, ça suffit."~ */
  IF ~~ THEN REPLY #52142 /* ~"Mais *qu'est-ce* que tu es ? Certains disent que tu es une 'guenaude noire'."~ */ GOTO 143
  IF ~~ THEN REPLY #52143 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 143 // from: 142.0
  SAY #52144 /* ~"Une guenaude noire ?" Ravel esquisse un horrible sourire, ses dents jaunies semblables à des aiguilles. "Je ne suis qu'une *femme* à qui sa bien-aimée création a beaucoup - coucou ? - manqué. Certains me surnomment la mégère, la femme grise, la sœur Yaga, la guenaude noire. MOI, je me suis baptisée Ravel, Ravel qui puise les rébus, je fournis des énigmes à résoudre et je terrasse l'impossibilité. Mais…"~ */
  IF ~  Global("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52145 /* ~"Mais… ?"~ */ GOTO 145
  IF ~  GlobalGT("Ravel_Self_Answer","GLOBAL",0)
~ THEN REPLY #52146 /* ~"Mais… ?"~ */ GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.1
  SAY #52147 /* ~"Mais ça n'a pas d'importance. Nous avons déjà emprunté cette route." Ravel te fait comprendre qu'elle veut changer de sujet. "Tu as d'autres questions ?"~ */
  IF ~~ THEN REPLY #52148 /* ~"Oui…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 145 // from: 143.0
  SAY #52149 /* ~"On dit BEAUCOUP de choses sur nous, les femmes grises. J'appartiens à la race des guenaudes noires, mais je suis un *être à part entière*. On nous appelle parfois les vieilles malfaisantes, les chasseuses de rêves, les bienveillantes, ou on dit que nous sommes laides et hideuses et que nous vivons dans les sombres recoins de l'esprit humain." Des étincelles rougeâtres s'échappent des yeux plissés de Ravel. "Mais cela ne signifie RIEN pour moi… comment me décrirais-tu, TOI, mon mignon ?"~ */
  IF ~~ THEN REPLY #52150 /* ~Mensonge : "Je dirais que tu es belle, Ravel."~ */ DO ~IncrementGlobal("Ravel_Flatter","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Ravel_2","GLOBALLaw",-2)
SetGlobal("Ravel_Self_Answer","GLOBAL",1)
~ GOTO 146
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52151 /* ~Vérité : "Je te trouve belle, Ravel. Ça ne se voit peut-être pas avec les yeux, mais ton esprit me semble fin et rempli d'émotions."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_1","GLOBALLaw",2)
SetGlobal("Ravel_Self_Answer","GLOBAL",2)
~ GOTO 148
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52152 /* ~Vérité : "Je dirais que tu es laide."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52153 /* ~Vérité : "Je dirais que tu es laide."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52154 /* ~Vérité : "Je dirais que tu es laide."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ravel_2","GLOBALLaw",3)
SetGlobal("Ravel_Self_Answer","GLOBAL",3)
~ GOTO 160
  IF ~~ THEN REPLY #52155 /* ~"Je dirais que toutes ces descriptions sont correctes."~ */ DO ~SetGlobal("Ravel_Self_Answer","GLOBAL",4)
~ GOTO 149
END

IF ~~ THEN BEGIN 146 // from: 145.0
  SAY #52156 /* ~Ravel reste un moment silencieuse, puis se met à rire. "Oh, tu es un vrai *diamant*, mon précieux oiseau chanteur. En t'entendant, je me dis que tous ces siècles d'attente en valaient la peine ! Comme ton chant est doux à ces oreilles lasses tant habituées au silence et à la lente pousse des noirépines…" Ravel sourit. "Mais tu me MENS…"~ */
  IF ~~ THEN REPLY #52157 /* ~"Non, Ravel, je ne te mens pas…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #52158 /* ~"Tchhh ! Tu crois que la vérité m'importe ? La *beauté* n'est pour moi qu'une supercherie, oiseau chanteur, et Ravel adore t'entendre dire ces choses. Je suis peut-être très laide…"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52159 /* ~"Ravel, tu n'es *pas* laide…"~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52160 /* ~"Ravel, tu n'es *pas* laide…"~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52161 /* ~"Ravel, tu n'es *pas* laide…"~ */ GOTO 160
END

IF ~~ THEN BEGIN 148 // from: 145.1
  SAY #52162 /* ~"Tchhh ! Tu crois que la vérité m'importe ? Seule la beauté intérieure compte, peu importe combien de temps dure la chair. Me trouves-tu laide ?"~ */
  IF ~  NearbyDialog("Dgrace")
~ THEN REPLY #52163 /* ~"Ravel, tu n'es *pas* laide…"~ */ GOTO 150
  IF ~  !NearbyDialog("Dgrace")
NearbyDialog("Dannah")
~ THEN REPLY #52164 /* ~"Ravel, tu n'es *pas* laide…"~ */ GOTO 157
  IF ~  !NearbyDialog("Dgrace")
!NearbyDialog("Dannah")
~ THEN REPLY #52165 /* ~"Ravel, tu n'es *pas* laide…"~ */ GOTO 160
END

IF ~~ THEN BEGIN 149 // from: 145.5
  SAY #52166 /* ~"Alors, elles le sont, mais ce n'est pas TA réponse. Tchhhh ! Je retire la question, ô être discret. N'en parlons plus."~ */
  IF ~~ THEN REPLY #52167 /* ~"Oh… euh, j'avais d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 150 // from: 145.2 147.0 148.0
  SAY #52168 /* ~"Qu'est-ce pour moi que la laideur, adorable chose ? Mon apparence ne dépend que de ma volonté, et je peux en retisser les fibres pour créer une tapisserie plus agréable…" Ravel jette un coup d'œil à Tombée-en-Disgrâce, puis sourit et s'humecte les lèvres. "Oui…"~ */
  IF ~~ THEN REPLY #52169 /* ~"Ravel, qu'est-ce que…"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",3)
StartCutSceneMode()
StartCutSceneEx("0610Cut5",FALSE)
~ EXIT
END

IF WEIGHT #3 ~  Global("Ravel_Cut_Scene","AR0610",3)
~ THEN BEGIN 151 // from:
  SAY #52170 /* ~Ravel a… pris l'apparence de Tombée-en-Disgrâce, adoptant son attitude, ses traits, ses vêtements… "Cette apparence est-elle plus agréable ?" Ravel sourit ; ses dents sont maintenant brillantes et d'une blancheur immaculée, et ses lèvres teintées d'une pointe de rouge. "Est-ce si incroyable ?" Elle te fait signe d'approcher. "Viens, mon précieux, *mes* lèvres ne brûlent pas des tourments abyssaux, elles. Pose tes lèvres sur les miennes."~ */
  IF ~~ THEN REPLY #52171 /* ~"Très bien…"~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",1)
~ GOTO 152
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52172 /* ~"Non, Ravel."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52173 /* ~"Non, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #52174 /* ~"Ravel, arrête ce petit jeu… je n'ai ni le temps, ni la patience pour ça. Reprends ton aspect normal."~ */ GOTO 159
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #52175 /* ~"Ravel, arrête ce petit jeu… je n'ai ni le temps, ni la patience pour ça. Reprends ton aspect normal."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 152 // from: 151.0 158.0 161.0
  SAY #52176 /* ~Tu poses tes lèvres sur celles de Ravel. Malgré son apparence, ses lèvres sont aussi sèches que du sable et, alors que ta bouche effleure la sienne, tu ressens une vive piqûre, comme si tu embrassais des épines. Tu recules, léchant le sang qui vient d'apparaître sur ses lèvres. Ravel imite ton geste, ce qui la rend d'autant plus effrayante compte tenu de sa nouvelle apparence. Alors qu'il reste une goutte de sang à la commissure de ses lèvres, elle sourit avec méchanceté.~ */
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
NearbyDialog("Dannah")
~ THEN REPLY #52177 /* ~"Tu m'as… mordu."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",4)
~ GOTO 155
  IF ~  Global("Ravel_Kiss","GLOBAL",1)
!NearbyDialog("Dannah")
~ THEN REPLY #52178 /* ~"Tu m'as… mordu."~ */ GOTO 153
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
NearbyDialog("Dgrace")
~ THEN REPLY #52179 /* ~"Tu m'as… mordu."~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",5)
~ GOTO 156
  IF ~  Global("Ravel_Kiss","GLOBAL",2)
!NearbyDialog("DGrace")
~ THEN REPLY #52180 /* ~"Tu m'as… mordu."~ */ GOTO 154
  IF ~  Global("Ravel_Kiss","GLOBAL",3)
~ THEN REPLY #52181 /* ~"Tu m'as… mordu."~ */ GOTO 240
END

IF ~~ THEN BEGIN 153 // from: 152.1
  SAY #52182 /* ~"Comme toi tu m'as mordu, il y a longtemps ; ce n'était alors pas un baiser, mais une morsure en plein cœur…" Ravel sourit. "Ne sois pas surpris, mon précieux. Il n'y a pas de mal… sauf, peut-être, pour celles qui voyagent avec toi." Elle rit tout bas, et tu réalises soudain que Grâce te regarde ; en apparence, elle semble calme, mais tu as l'étrange impression que quelque chose a *changé* entre vous.~ */
  IF ~~ THEN REPLY #52183 /* ~"Reprends ton aspect normal, Ravel."~ */ DO ~MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 154 // from: 152.3
  SAY #52184 /* ~"Comme toi tu m'as mordu, il y a longtemps ; ce n'était alors pas un baiser, mais une morsure en plein cœur…" Ravel sourit. "Ne sois pas surpris, mon précieux. Il n'y a pas de mal… sauf, peut-être, pour celles qui voyagent avec toi." Elle rit tout bas, et tu réalises soudain qu'Annah te regarde - ses yeux sont écarquillés et son cœur bat la chamade.~ */
  IF ~~ THEN REPLY #52185 /* ~"Reprends ton aspect normal, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 155 // from: 152.0
  SAY #52186 /* ~"Comme toi tu m'as mordu, il y a longtemps ; ce n'était alors pas un baiser, mais une morsure en plein cœur…" Ravel sourit. "Ne sois pas surpris, mon précieux. Il n'y a pas de mal… sauf, peut-être, pour celles qui voyagent avec toi." Elle rit tout bas, et tu réalises soudain que Grâce et Annah te regardent ; en apparence, Grâce semble calme, mais tu as l'étrange impression que quelque chose a *changé* entre vous. Les yeux d'Annah ne sont plus que deux fines fentes et elle remue dangereusement la queue.~ */
  IF ~~ THEN REPLY #52187 /* ~"Reprends ton aspect normal, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-3)
MoraleInc("Grace",1)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 156 // from: 152.2
  SAY #52188 /* ~"Comme toi tu m'as mordu, il y a longtemps ; ce n'était alors pas un baiser, mais une morsure en plein cœur…" Ravel sourit. "Ne sois pas surpris, mon précieux. Il n'y a pas de mal… sauf, peut-être, pour celles qui voyagent avec toi." Elle rit tout bas, et tu réalises soudain qu'Annah te regarde ; ses yeux sont écarquillés et son cœur bat la chamade. Grâce, quant à elle, observe curieusement Annah.~ */
  IF ~~ THEN REPLY #52189 /* ~"Reprends ton aspect normal, Ravel."~ */ DO ~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",3)
SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 157 // from: 145.3 147.1 148.1
  SAY #52191 /* ~"Qu'est-ce pour moi que la laideur, adorable chose ? Mon apparence ne dépend que de ma volonté, et je peux en retisser les fibres pour créer une tapisserie plus agréable…" Ravel jette un coup d'œil à Annah, qui se raidit alors que le regard de Ravel se pose sur elle. En s'apercevant qu'Annah a peur, Ravel sourit, puis s'humecte les lèvres. "Oui…"~ */
  IF ~~ THEN REPLY #52192 /* ~"Ravel, qu'est-ce que…"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF WEIGHT #4 ~  Global("Ravel_Cut_Scene","AR0610",4)
~ THEN BEGIN 158 // from:
  SAY #52193 /* ~Ravel a… pris l'apparence d'Annah, adoptant son attitude, ses traits, sa veste de cuir… "Est-ce cette femme vulgaire que tu désires, celle dont l'âge n'a pas encore adouci les passions ?" La queue d'Annah… de Ravel… remue, comme par anticipation. "Viens, pose tes lèvres sur les miennes et je te ferai plaisir."~ */
  IF ~~ THEN REPLY #52194 /* ~"Très bien…"~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",2)
~ GOTO 152
  IF ~~ THEN REPLY #52195 /* ~"Non, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52196 /* ~"Ravel, arrête ce petit jeu… je n'ai ni le temps, ni la patience pour ça. Reprends ton aspect normal."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 159 // from: 151.1 151.3
  SAY #52197 /* ~"Peut-être… est-ce cette femme vulgaire que tu désires, celle qui brûle de passion ?" Ravel regarde Annah, qui se raidit alors que Ravel pose son regard sur elle. "C'est peut-être ELLE qui éveille ton désir…"~ */
  IF ~~ THEN REPLY #52198 /* ~"Ravel, arrête ça. Je n'ai pas de temps à perdre avec tes d…"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52199 /* ~Attends de voir ce qui va se passer…~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",4)
StartCutSceneMode()
StartCutSceneEx("0610Cut6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from: 145.4 147.2 148.2
  SAY #52200 /* ~"Qu'est-ce pour moi que la laideur, adorable chose ? Mon apparence ne dépend que de ma volonté, et je peux en retisser les fibres pour créer une tapisserie plus agréable." Ravel te sourit, et elle commence à reprendre sa forme normale…~ */
  IF ~~ THEN REPLY #52201 /* ~"Qu'est-ce que tu v…"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",5)
StartCutSceneMode()
StartCutSceneEx("0610Cut7",FALSE)
~ EXIT
END

IF WEIGHT #5 ~  Global("Ravel_Cut_Scene","AR0610",5)
~ THEN BEGIN 161 // from:
  SAY #52202 /* ~Ravel a… pris l'apparence d'une belle jeune femme - TOUT chez elle a changé : son attitude, ses traits, ses vêtements… "Est-ce une femme plus douce, plus jeune que tu désires, une femme sur laquelle l'âge n'a pas encore laissé de marques ?" Elle sourit, ses lèvres sont d'une teinte rouge rubis… appétissantes. "Viens, pose tes lèvres sur les miennes et je te ferai plaisir."~ */
  IF ~~ THEN REPLY #52203 /* ~"Très bien…"~ */ DO ~SetGlobal("Ravel_Kiss","GLOBAL",3)
~ GOTO 152
  IF ~~ THEN REPLY #52204 /* ~"Non, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
  IF ~~ THEN REPLY #52205 /* ~"Ravel, arrête ce petit jeu… je n'ai ni le temps, ni la patience pour ça. Reprends ton aspect normal."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF WEIGHT #6 ~  Global("Ravel_Cut_Scene","AR0610",6)
~ THEN BEGIN 162 // from:
  SAY #52206 /* ~Tu clignes des yeux et, déjà, Ravel a *repris* sa forme d'origine. "Tu es un homme difficile à satisfaire ! Pouah ! Et on se demande pourquoi il n'y a pas de mâles dans notre race !"~ */
  IF ~~ THEN REPLY #52207 /* ~"Quelles sont les autres apparences que tu peux… que tu *as* prises ?"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",2)
~ GOTO 163
  IF ~~ THEN REPLY #52208 /* ~"Ça suffit… j'avais d'autres questions…"~ */ DO ~SetGlobal("Ravel_Shape","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 163 // from: 141.1 162.0 165.0 167.0 169.0 171.0 175.0 176.1 182.0 183.0 184.0 241.0
  SAY #52209 /* ~"Quelques-unes peut-être, pas de Mebbeth." Ravel semble troublée par la question. "Je ne me souviens pas de celle-là, aïe naine, ail-veine, Ei-Vene, peut-être ? Ni smarta, ni Marta… il y a tant de fils et de branches, tant de Ravel… mes formes sont toujours à coudre, raccommoder, reprendre."~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52210 /* ~"Mebbeth ? Mebbeth, c'était toi ?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Dead("Mebbeth")
~ THEN REPLY #52211 /* ~"Mebbeth ? Mebbeth, c'était toi ? Mais… elle est morte."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("EiVene","GLOBAL",0)
!Dead("EiVene")
~ THEN REPLY #52212 /* ~"Ei-Vene, c'était toi ? À la Morgue ?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Dead("EiVene")
~ THEN REPLY #52213 /* ~"Ei-Vene, c'était toi ? À la Morgue ? Mais… elle est morte."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~  GlobalGT("Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52214 /* ~"C'était toi la couturière complètement azimutée du Village Enseveli ? Marta ?"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 164
  IF ~  GlobalGT("Marta","GLOBAL",0)
Dead("Marta")
~ THEN REPLY #52215 /* ~"C'était toi la couturière complètement azimutée du Village Enseveli ? Marta ? Mais… elle est morte."~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 165
  IF ~~ THEN REPLY #52216 /* ~"Euh… Je vois. J'avais d'autres questions…"~ */ DO ~SetGlobal("bd_met_ravel_shapes","global",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 164 // from: 163.0 163.2 163.4
  SAY #52217 /* ~"C'est peut-être l'un de mes anciens noms… oui ?" Ravel semble encore plus troublée et ses yeux traversés de veines noires s'embuent. "Les noms sont *difficiles* à retenir…" Sa voix faiblit. "C'est comme de crier dans le vide…"~ */
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
Global("Ravel_Mebbeth","GLOBAL",0)
GlobalGT("Mebbeth_Art_Answer","GLOBAL",0)
!Dead("Mebbeth")
~ THEN REPLY #52218 /* ~"Mebbeth a été gentille avec moi, elle m'a aidé, Ravel. Ce qui veut dire que c'est TOI qui m'a aidé. Je te remercie."~ */ GOTO 176
  IF ~  GlobalGT("EiVene","GLOBAL",0)
Global("Ravel_EiVene","GLOBAL",1)
!Dead("EiVene")
~ THEN REPLY #52219 /* ~"À sa façon, Ei-Vene m'a aidé, Ravel. Ce qui veut dire que c'est TOI qui m'a aidé. Je te remercie."~ */ GOTO 166
  IF ~  GlobalGT("Marta","GLOBAL",0)
Global("Ravel_Marta","GLOBAL",0)
!Dead("Marta")
~ THEN REPLY #52220 /* ~"Marta était complètement azimutée, Ravel, mais elle était plutôt gentille et serviable. Si c'était toi, alors tu ne me veux aucun mal. Je te remercie."~ */ GOTO 170
  IF ~~ THEN REPLY #52221 /* ~"Pourquoi est-ce que tu m'as aidé, Ravel ?"~ */ GOTO 184
  IF ~~ THEN REPLY #52222 /* ~"Je… vois. J'avais d'autres questions à te poser…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 165 // from: 163.1 163.3 163.5
  SAY #52223 /* ~Ravel cligne des yeux… "Oui… celle-là est dans le livre des morts. Je ne pouvais plus rien puiser en elle…"~ */
  IF ~~ THEN REPLY #52224 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52225 /* ~"J'ai d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 166 // from: 164.1
  SAY #52226 /* ~Presque inconsciemment, Ravel tend la main vers toi et, l'espace d'un instant, tu jurerais qu'il s'agit des griffes d'Ei-Vene…~ */
  IF ~~ THEN REPLY #52227 /* ~Recule.~ */ GOTO 167
  IF ~~ THEN REPLY #52228 /* ~Tiens bon…~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 168
END

IF ~~ THEN BEGIN 167 // from: 166.0
  SAY #52229 /* ~Tu recules et Ravel cligne des yeux, puis marmonne. "Zomfie idiot… zomfie idiot…"~ */
  IF ~~ THEN REPLY #52230 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52231 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 168 // from: 166.1
  SAY #52232 /* ~De sa main gauche, Ravel s'arrache un cheveu, l'accroche autour de ses griffes, et en un éclair, elle t'enfonce une autre griffe dans la peau, près d'une de tes cicatrices. Ce n'est rien de plus qu'une piqûre d'aiguille, mais tu as l'impression qu'elle a l'intention de te faire des points de suture.~ */
  IF ~~ THEN REPLY #52233 /* ~Laisse-la travailler.~ */ DO ~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,3)
FullHeal(Protagonist)
SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
SetGlobal("Ravel_EiVene","GLOBAL",2)
~ JOURNAL #52234 /* ~Il apparaît que Ravel était également Ei-Vene, l'étrange tieffelin que j'ai rencontré à la Morgue. Quand je le lui ai dit, Ravel s'est brièvement transformée en Ei-Vene et en a profité pour 'recoudre' mes blessures, ce qui m'a rendu plus fort.~ */ GOTO 169
END

IF ~~ THEN BEGIN 169 // from: 168.0
  SAY #52235 /* ~Comme avec Ei-Vene, curieusement, tu ne ressens rien, mais le fil et l'aiguille semblent aller plus profond, presque à l'INTÉRIEUR de toi, sans pour autant s'enfoncer sous ta peau. Au bout d'un moment, Ravel retire ses griffes, et tu te sens… mieux, plus fort. Ravel murmure avec la voix d'Ei-Vene : "Zomfie idiot…"~ */
  IF ~~ THEN REPLY #52236 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52237 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 170 // from: 164.2
  SAY #52238 /* ~Alors que tu prononces ce nom, le visage de Ravel semble *changer*… sa peau bleue se relâche jusqu'à prendre la même expression aigre que Marta. "Allez, maintenant… fais pas le difficile avec Marta…" Elle lève la griffe de son index comme un scalpel et s'avance vers toi. "Mauvais cadavre, perfide…"~ */
  IF ~~ THEN REPLY #52239 /* ~Recule.~ */ GOTO 171
  IF ~~ THEN REPLY #52240 /* ~Tiens bon…~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 172
END

IF ~~ THEN BEGIN 171 // from: 170.0
  SAY #52241 /* ~Tu recules et Ravel cligne des yeux, puis marmonne quelque chose ; elle reprend son apparence normale… mais son expression est toujours abasourdie, comme si elle avait du mal à s'orienter. "Mauvais cadavre, hein Marta ? Oui, Marta, très mauvais…"~ */
  IF ~~ THEN REPLY #52242 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52243 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 172 // from: 170.1
  SAY #52245 /* ~L'immonde griffe de Ravel s'enfonce dans ton abdomen, puis décrit brutalement un mouvement semblable à celui d'une scie… pourtant, tu ne ressens aucune douleur. Tu l'observes te peler lentement la peau - la blessure ne saigne pas. "Regarde ça, Marta… regarde ça…"~ */
  IF ~~ THEN REPLY #52246 /* ~Laisse-la travailler.~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 173
END

IF ~~ THEN BEGIN 173 // from: 172.0
  SAY #52247 /* ~La main libre de Ravel plonge dans ta poitrine, où elle enroule tes intestins comme du fil, puis te les *arrache* du ventre… aussitôt, la plaie se referme, comme si tu remontais le temps. Marta… Ravel… soulève tes intestins tel un trophée. "Joli, joli, hein, Marta ? Faut pas avaler de telles choses, non, non…"~ */
  IF ~~ THEN REPLY #52248 /* ~"Euh… tu peux me les rendre, s'il te plaît ? Je pourrais encore en avoir besoin."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
GiveItemCreate("Intest2",Protagonist,3,0,0)
~ GOTO 174
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #52249 /* ~Elle te tend la masse dégoûtante… malgré leur fraîcheur, les sécrétions entourant tes intestins ont séché comme de la résine. On dirait des… cordages vernis.~ */
  IF ~~ THEN REPLY #52250 /* ~"Euh… merci. Je les garderai précieusement."~ */ DO ~SetGlobal("Ravel_Marta","GLOBAL",1)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ JOURNAL #52251 /* ~Il apparaît que Ravel était également Martha, la couturière azimutée que j'ai rencontrée dans le Village Enterré. Quand je lui ai dit que j'étais au courant, Ravel s'est brièvement transformée en Martha et en a profité pour m'arracher les intestins, disant qu'ils me serviraient de puissant talisman. Mais tout ce que je sais, moi, c'est qu'il y a des tas de gens qui n'arrêtent pas de m'arracher des parties du corps, et que je n'arrive pas à les en empêcher.~ */ GOTO 175
END

IF ~~ THEN BEGIN 175 // from: 174.0
  SAY #52252 /* ~Marta… Ravel… acquiesce lentement. "Il le doit, n'est-ce pas Marta ? Oui… oui, il le doit, Marta. Les intestins d'un immortel ont de grands pouvoirs magiques, oui… c'est pas comme les dents… ou les yeux…"~ */
  IF ~~ THEN REPLY #52253 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52254 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 176 // from: 164.0
  SAY #52255 /* ~Au moment où tu prononces le nom de Mebbeth, le visage de Ravel blêmit et semble se vider de son sang jusqu'à devenir gris et pâle comme la mort - littéralement. C'est comme si la couleur de son épiderme s'était… envolée. "Et qui es-tu, hmmmnnn ? Ton chemin te ramène ici, hein, mon enfant, devant la porte de la vieille Mebbeth ?"~ */
  IF ~~ THEN REPLY #52256 /* ~"Oui… Mebbeth… je, euh, suis là pour en apprendre davantage sur l'Art. Tu peux me rendre ce service ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 177
  IF ~~ THEN REPLY #52257 /* ~"Pas cette fois… quelles autres formes as-tu prises, Ravel ?"~ */ GOTO 163
END

IF ~~ THEN BEGIN 177 // from: 176.0
  SAY #52258 /* ~"Pouah ! Je ne suis qu'une sage-femme, mon enfant, le pouvoir de l'Art n'est pas à ma portée…"~ */
  IF ~~ THEN REPLY #52259 /* ~"Je… ne crois pas. Contrairement à ce que tu penses, je crois que tu as encore beaucoup de choses à m'enseigner. Beaucoup."~ */ GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #52260 /* ~La question résonne alors comme un écho : "Tu veux apprendre l'Art, vraiment ? *Pourquoi* ?"~ */
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",1)
~ THEN REPLY #52261 /* ~Écho : "Parce que je veux savoir, c'est tout."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 179
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",2)
~ THEN REPLY #52262 /* ~Écho : "Parce que je pourrais en avoir besoin pour résoudre le mystère de mon identité."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 180
  IF ~  Global("Mebbeth_Art_Answer","GLOBAL",3)
~ THEN REPLY #52263 /* ~Écho : "Parce que j'ai besoin du pouvoir."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 181
  IF ~~ THEN REPLY #52264 /* ~"Mes raisons ne regardent que moi."~ */ GOTO 183
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #52265 /* ~Ravel… Mebbeth… se moque. "C'est pas un bouquin de grammaire pour enfants, pas un livre de loi… c'est l'*Art*, mon enfant. Je t'apprendrai, mais il faut que tu gardes la tête froide…" Elle se penche vers toi. "Écoute…"~ */
  IF ~~ THEN REPLY #52266 /* ~Écoute…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Il apparaît que Ravel était également Mebbeth, l'aimable sage-femme que j'ai rencontrée dans le Square du Chiffonnier. Quand je lui ai dit que j'étais au courant, Ravel s'est brièvement transformée en Mebbeth et en a profité pour me dire quelque chose. Je n'arrive pas à me souvenir de quoi il s'agissait, mais j'ai l'impression qu'elle m'a remis sur la même longueur d'onde que les plans, me permettant ainsi d'avoir davantage conscience du monde qui m'entoure.~ */ GOTO 182
  IF ~~ THEN REPLY #52267 /* ~"Non, je ne veux pas savoir ce que tu as à me dire… peut-être une autre fois."~ */ GOTO 241
END

IF ~~ THEN BEGIN 180 // from: 178.1
  SAY #52269 /* ~Au bout d'un moment, Ravel… Mebbeth… acquiesce. "L'Art peut t'aider, ou peut-être que non, et il ne faut pas compter dessus pour résoudre tous ses problèmes." Elle soupire. "Mon enfant, il y a de fortes chances que cela ne fasse qu'ajouter une nouvelle brique à ta pile de questions…" Elle se penche vers toi. "Mais si tu veux savoir, alors écoute…"~ */
  IF ~~ THEN REPLY #52270 /* ~Écoute…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ JOURNAL #52268 /* ~Il apparaît que Ravel était également Mebbeth, l'aimable sage-femme que j'ai rencontrée dans le Square du Chiffonnier. Quand je lui ai dit que j'étais au courant, Ravel s'est brièvement transformée en Mebbeth et en a profité pour me dire quelque chose. Je n'arrive pas à me souvenir de quoi il s'agissait, mais j'ai l'impression qu'elle m'a remis sur la même longueur d'onde que les plans, me permettant ainsi d'avoir davantage conscience du monde qui m'entoure.~ */ GOTO 182
  IF ~~ THEN REPLY #52271 /* ~"Non, je ne veux pas savoir ce que tu as à me dire… peut-être une autre fois."~ */ GOTO 241
END

IF ~~ THEN BEGIN 181 // from: 178.2
  SAY #52272 /* ~"Pouah ! Un désir malsain, car l'échelle de l'Art te rappellera toujours qu'il y a un barreau au-dessus, et qu'il y a aussi des choses et des gens dessus. Y'a toujours quelqu'un de meilleur, et tu l'apprendras *à tes dépens* si t'es trop avide." Elle se penche vers toi. "Mais si tu veux savoir, alors écoute…"~ */
  IF ~~ THEN REPLY #52273 /* ~Écoute…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
PermanentStatChange(Protagonist,INT,RAISE,1)
GiveExperience(Protagonist,120000)
~ JOURNAL #52268 /* ~Il apparaît que Ravel était également Mebbeth, l'aimable sage-femme que j'ai rencontrée dans le Square du Chiffonnier. Quand je lui ai dit que j'étais au courant, Ravel s'est brièvement transformée en Mebbeth et en a profité pour me dire quelque chose. Je n'arrive pas à me souvenir de quoi il s'agissait, mais j'ai l'impression qu'elle m'a remis sur la même longueur d'onde que les plans, me permettant ainsi d'avoir davantage conscience du monde qui m'entoure.~ */ GOTO 182
  IF ~~ THEN REPLY #52274 /* ~"Non, je ne veux pas savoir ce que tu as à me dire… peut-être une autre fois."~ */ GOTO 241
END

IF ~~ THEN BEGIN 182 // from: 179.0 180.0 181.0
  SAY #52275 /* ~Mebbeth… Ravel… t'a murmuré quelque chose et tu te sens *différent*, sans pouvoir t'expliquer en quoi. Elle t'a dit quelque chose d'horrible sur le fonctionnement des Plans, mais ton esprit a chassé ses paroles et tu ne parviens pas à t'en souvenir. Le simple fait d'y penser fait battre ton cœur… Ravel t'a dit une chose que, selon toi, *personne* n'était jamais censé savoir. Elle te regarde, t'observe.~ */
  IF ~~ THEN REPLY #52276 /* ~"Q-Quelles… quelles autres formes as-tu prises, Ravel ?"~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 163
  IF ~~ THEN REPLY #52277 /* ~"Je… je… j'ai d'autres questions à te poser, Ravel."~ */ DO ~SetGlobal("Ravel_Mebbeth","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 183 // from: 178.3
  SAY #52278 /* ~"Ah bon ? Ben, si tes raisons regardent que toi, mes *connaissances* regardent que moi. J'apprendrai pas à celui qui se cache de son maître… seul le mal peut sortir d'une telle voie." Mebbeth… Ravel… cligne des yeux, comme si elle essayait de se réorienter.~ */
  IF ~~ THEN REPLY #52279 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52280 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 184 // from: 164.3
  SAY #52281 /* ~"Je ne peux PAS m'empêcher de t'aider, mon précieux… et ce sera toujours vrai, peu importe le nombre de Ravel qui existent… sur ce point, toutes se rejoignent."~ */
  IF ~~ THEN REPLY #52282 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52283 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 185 // from: 141.5 141.6
  SAY #52284 /* ~"J'ai essayé d'aider une dame, mais elle ne l'a pas bien pris."~ */
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #52285 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 188
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #52286 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 187
  IF ~~ THEN REPLY #52287 /* ~"Peu importe. J'avais d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 186 // from: 141.3
  SAY #52288 /* ~"J'ai essayé d'aider une dame, mais elle ne l'a pas bien pris."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 161
END

IF ~~ THEN BEGIN 187 // from: 185.1
  SAY #52289 /* ~"J'ai offert mon aide, mais en vain. J'ai *essayé* de la LIBÉRER ; Sigil est une CAGE, une Cité de Portes et de Verrous, une prison pour elle. N'est-ce pas ? Sinon, pourquoi la cité de Sigil serait-elle surnommée 'la Cage' ? Et qui est en cage ? La Dame ! C'est une prison si petite pour une si grande figure. Quelle injustice, quelle erreur intolérable que de tourmenter une femme ainsi !"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 507
END

IF ~~ THEN BEGIN 188 // from: 185.0
  SAY #52290 /* ~"J'ai offert mon aide, mais en vain. J'ai *essayé* de la LIBÉRER ; Sigil est une CAGE, une Cité de Portes et de Verrous, une prison pour elle. N'est-ce pas ? Sinon, pourquoi la cité de Sigil serait-elle surnommée 'la Cage' ? Et qui est en cage ? La Dame ! C'est une prison si petite pour une si grande figure. Quelle injustice, quelle erreur intolérable que de tourmenter une femme ainsi !"~ */
  IF ~~ THEN REPLY #52291 /* ~"Je… je vois."~ */ GOTO 189
  IF ~~ THEN REPLY #52292 /* ~"Peu importe. J'avais d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #52293 /* ~"J'ai essayé de briser la Cage, de délivrer la Dame." Elle fait mine de chasser quelque chose et la tristesse se lit sur son visage alors qu'elle disperse des oiseaux invisibles. "Shhh ! Shhh ! O femme peinée, que l'anneau de Sigil soit brisé pour te permettre de t'envoler loin de ces rues immondes et des stupides dabus qui n'osent pas s'exprimer avec des mots de peur que l'on découvre leurs pensées !" Ravel arrête peu à peu ses gesticulations et soupire.~ */
  IF ~~ THEN REPLY #52294 /* ~"Continue…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 190
  IF ~~ THEN REPLY #52295 /* ~"Je vois. J'ai d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 190 // from: 189.0
  SAY #52296 /* ~"Avant d'avoir pu finir, je me suis retrouvée ici, sans aucun souvenir de mon voyage… tout s'était envolé, j'avais tout oublié, oui, c'est ça… ça ? C'était ça ?" Ravel sourit en montrant ses dents jaunies. "La perte de mémoire est devenue un réconfort pour mes vieux os. J'ai presque tout oublié… c'est une chance que je me souvienne encore de toi."~ */
  IF ~~ THEN REPLY #52297 /* ~"Ravel, mais… POURQUOI est-ce que tu essayé de délivrer la *Dame des Douleurs* de Sigil ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52299 /* ~Apparemment, Ravel aurait été enfermée dans le dédale pour avoir essayé de libérer la Dame de Sigil. En quoi cela constitue-t-il un crime, même si je sais que les meilleures intentions du monde… bref, Ravel m'a dit qu'elle ne supportait pas de voir quelqu'un en cage.~ */ GOTO 191
  IF ~~ THEN REPLY #52298 /* ~"Je vois. J'avais d'autres questions à te poser…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #52300 /* ~Ravel baisse la voix, comme pour te réprimander. "J'éprouve de l'amertume à l'égard de tout, même des Puissances, à l'idée d'être emprisonnée et de penser que tout, tout le monde… qu'il s'agisse des pierres, des rivages ou des dames ailées et silencieuses… devrait être LIBRE. Certains m'ont traitée de folle. Pourquoi avoir pris un tel risque, disaient-ils."~ */
  IF ~~ THEN REPLY #52301 /* ~"Je suis d'accord. J'aurais laissé la Dame dans sa cage."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_2","GLOBALGood",-2)
~ GOTO 192
  IF ~~ THEN REPLY #52302 /* ~"Je crois que tu as bien fait d'essayer de la délivrer, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_2","GLOBALGood",2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~~ THEN REPLY #52303 /* ~Mensonge : "Je… crois que tu as bien fait d'essayer de la délivrer, Ravel."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ravel_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Ravel_3","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALRavel_Flatter_1","GLOBALRavel_Flatter",1)
~ GOTO 193
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52304 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52305 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #52306 /* ~"Il y a des choses qui me sont insupportables, et je ne présenterai aucune excuse, mon précieux demi-homme. Mais… je ne peux m'empêcher de penser à certaines choses… nombres de vies et de rêves ont été brisés. Si je t'avais laissé tranquille, peut-être que ta vie aurait été meilleure…"~ */
  IF ~  Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52307 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52308 /* ~"Peut-être. J'ai d'autres questions à te poser, Ravel…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 193 // from: 191.1 191.2
  SAY #52309 /* ~"Je suis contente que nous partagions le même point de vue sur cette affaire. Mais… je ne peux m'empêcher de penser à certaines choses… il me semble que nombres de vies et de rêves ont été brisés."~ */
  IF ~~ THEN REPLY #52310 /* ~"Au moins, tu as essayé, Ravel, et je ne vois aucune faute dans tes intentions."~ */ GOTO 194
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52311 /* ~"Et c'est pour ça que tu serais coupable, Ravel ? Au moins, tu as *essayé* là où d'autres n'en auraient pas eu le courage. Je ne vois aucune faute dans tes intentions - en fait, je n'y vois que de la force de caractère."~ */ DO ~IncrementGlobalOnceEx("GLOBALRavel_Flatter_2","GLOBALRavel_Flatter",2)
SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 195
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52312 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52313 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52314 /* ~"J'ai d'autres questions à te poser, Ravel…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 194 // from: 193.0
  SAY #52315 /* ~"Tchhh. Alors, il y a au moins *quelqu'un*."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
CheckStatLT(Protagonist,16,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52316 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Ravel_Hair","GLOBAL",0)
~ THEN REPLY #52317 /* ~"C'est ce que tu essayais de faire quand je t'ai rencontrée il y a si longtemps ? Tu essayais de me délivrer ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 196
  IF ~~ THEN REPLY #52318 /* ~"J'ai d'autres questions à te poser, Ravel…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 195 // from: 193.1
  SAY #52319 /* ~Ravel te regarde en silence un moment, puis marmonne. "Quelles douces paroles ! Comme tu m'as MANQUÉ, mon précieux demi-homme ! Ton chant est si harmonieux que les pierres elles-mêmes donneraient son sang pour toi !"~ */
  IF ~~ THEN REPLY #52320 /* ~"Il n'y a aucun mal à dire la vérité. J'ai d'autres questions à te poser, Ravel…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 196 // from: 191.3 191.4 192.0 193.2 193.3 194.0 194.1
  SAY #52321 /* ~"Probablement, probablement. Les chaînes de la vie et la peur de la mort se sont peut-être trop accrochées à l'homme que je connaissais - naissais ? - connaissais alors, hmmmm-hmmmm ?" Ravel arrache l'un de ses cheveux gris et l'enroule autour de son doigt. "Ravel n'aime pas les chaînes ni les cages…"~ */
  IF ~~ THEN REPLY #52322 /* ~"Alors, comme ça, j'étais en cage ? Ou enchaîné ? On dirait bien que la mémoire est en train de te revenir, hein, Ravel ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 197
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #52323 /* ~"Oui…" Ravel cligne des paupières un moment, et ses yeux aux veines noires deviennent plus ternes, comme si elle avait été frappée par une arme lourde. Sa griffe serre le cheveux gris si fort qu'elle semble sur le point de se l'arracher du crâne. "Peut-être… tu étais pris au piège ? Mais tu ne te trouvais pas dans une cage normale…"~ */
  IF ~~ THEN REPLY #52324 /* ~"Tu sais *ce qui* me retenait ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ JOURNAL #52325 /* ~Ravel pense que j'avais peut-être été emprisonné quand je suis venu la voir, il y a bien longtemps, mais elle n'en est pas sûre. Elle m'a parlé d'une sorte de promesse, puis s'est arraché un cheveu et m'a dit de le prendre en guise de réponse.~ */ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #52326 /* ~Ravel semble troublée et son visage *change*, comme si elle luttait contre une pensée désagréable. "J'ai oublié… peut-être une promesse ? Non, non…" Son doigt serre le cheveu gris, et à ta grande surprise, tu entends un *craquement*, comme une baguette qui se casse, et Ravel s'arrache le cheveu de la tête. Un filet de sang noir coule sur son crâne et elle siffle de colère.~ */
  IF ~~ THEN REPLY #52327 /* ~"Ravel… ? Ça va ?"~ */ DO ~GiveItemCreate("RavelHai",Protagonist,1,0,0)
SetGlobal("Ravel_Hair","GLOBAL",1)
AddexperienceParty(90000)
SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #52328 /* ~"Je ne dirai RIEN de plus…" Le visage de Ravel se plisse de douleur, la griffe couverte par le cheveu gris à la pointe tachée de sang - même arraché de sa tête, il semble desséché et raide. "Je ne sais pas, et je ne révélerai rien de ce que je sais !" Elle baisse les yeux vers le cheveu gris enroulé autour de sa griffe, siffle, et te le tend. "Prends ça et cesse de ressasser le passé, demi-homme !"~ */
  IF ~~ THEN REPLY #52329 /* ~"Très bien, Ravel ; alors, il n'y a rien d'autre à dire sur ce sujet. J'avais d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 200 // from: 141.2
  SAY #52330 /* ~Ravel se met à gesticuler. "C'était autrefois un dédale rocailleux sans vie, sans caractère, mais j'avais une petite graine noire enroulée dans les cheveux lorsque je suis arrivée ici, et elle a donné un plant qui a poussé, poussé et poussé encore jusqu'à envahir tout le dédale comme la chevelure défaite d'une vieille femme… et c'est ainsi que le dédale d'une autre est devenu MON jardin."~ */
  IF ~~ THEN REPLY #52331 /* ~"J'avais d'autres questions à te poser, Ravel…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 201 // from: 141.7
  SAY #52404 /* ~Ravel fronce les sourcils d'un air de désapprobation, sa peau bleuâtre tordue comme un chiffon. "Si Ravel connaît l'*Art* ?! Ton esprit a-t-il quitté ton corps de mortel ?! J'ai oublié plus de choses dans l'art que *tu* n'en…" Elle te pique de l'une de ses griffes. "sauras." Elle te pique à nouveau. "jamais."~ */
  IF ~  !Class(Protagonist,MAGE)
~ THEN REPLY #52405 /* ~"Tu peux m'enseigner des choses sur l'Art, alors ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 203
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #52406 /* ~"Tu peux m'enseigner des choses sur l'Art, alors ?"~ */ GOTO 202
  IF ~~ THEN REPLY #52407 /* ~"Bon, peu importe. J'ai d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 202 // from: 201.1
  SAY #52408 /* ~Ravel plisse ses yeux aux veines noires, et t'observe. "Peut-être que tu arriverais à me persuader… mais aucun autre n'aurait une telle chance et l'aubaine que je te propose. Es-tu novice dans les arts ou suis-je devant un véritable maître… un maîtrisé ? Un maître attitré ?"~ */
  IF ~~ THEN REPLY #52409 /* ~"Je suis loin d'être un étudiant débutant."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52410 /* ~"Je suis loin d'être un étudiant débutant, ma belle Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52411 /* ~"Un maître des arts."~ */ GOTO 205
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52412 /* ~"Un maître des arts, belle Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52413 /* ~"Je ne saurais dire… Je suis tantôt félicité, tantôt ridiculisé pour mes efforts."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 212
  IF ~~ THEN REPLY #52414 /* ~"Je pourrais peut-être recevoir mon enseignement une autre fois. J'ai d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 203 // from: 201.0
  SAY #52415 /* ~Ravel grogne. "Ha ! Je ne partagerai mes connaissances qu'avec un VÉRITABLE praticien et personne d'autre, et rien ne me fera changer d'avis, pas même toi."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #52416 /* ~"Belle Ravel, Je ne demande qu'à connaître quelques-uns de tes secrets… Je ne demande qu'une goutte du puits de savoir que tu possèdes."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 204
  IF ~~ THEN REPLY #52417 /* ~"Bon, d'accord. J'ai d'autres questions…"~ */ GOTO 141
END

IF ~~ THEN BEGIN 204 // from: 202.1 202.3 203.0
  SAY #52418 /* ~"Flatteur… et pourtant tes propos me réchauffent le cœur." Le ton de la voix de Ravel ondule, comme le bruit de quelqu'un grattant sur un instrument à cordes. "J'ai appris beaucoup en entretenant ce jardin. Des charmes et des incantations, la distillation d'épines…" Elle commence à murmurer pour elle-même. "… Les rimes, les mouvements alternés et les rythmes des consonnes qui appellent les bruyères à l'aide… écoute, les branches vont en parler."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52419 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,30000)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52420 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,60000)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52421 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52422 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,90000)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52423 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
GiveExperience(Protagonist,120000)
~ GOTO 208
END

IF ~~ THEN BEGIN 205 // from: 202.0 202.2
  SAY #52424 /* ~"D'accord…" Le ton de la voix de Ravel ondule, comme quelqu'un grattant sur un instrument à cordes. "J'ai appris beaucoup en entretenant ce jardin. Des charmes et des incantations, la distillation d'épines…" Elle commence à murmurer pour elle-même. "… les rimes, les mouvements alternés et les rythmes des consonnes qui appellent les bruyères à l'aide… écoute, les branches vont en parler."~ */
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatLT(Protagonist,12,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52425 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,17,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52426 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 207
  IF ~  !Global("Specialist","GLOBAL",6)
CheckStatGT(Protagonist,16,INT)
!Global("Specialist","GLOBAL",3)
!Global("Specialist","GLOBAL",3)
~ THEN REPLY #52427 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",3)
~ THEN REPLY #52428 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
  IF ~  Global("Specialist","GLOBAL",6)
~ THEN REPLY #52429 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 208
END

IF ~~ THEN BEGIN 206 // from: 204.0 205.0 212.0
  SAY #52430 /* ~Tandis que tu fermes les yeux et écoutes, un frisson te parcourt, comme si des serpents venimeux se terraient sous ta peau. Lorsque tu ouvres les yeux, tu trouves dans ta main une étrange graine de Noirépine. Tu n'as aucune idée de la manière dont elle est arrivée là. Ravel te regarde attentivement. "Prends la graine. Qu'elle t'instruise."~ */
  IF ~~ THEN REPLY #52431 /* ~"Très bien… J'ai d'autres questions, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 207 // from: 204.1 205.1
  SAY #52432 /* ~Tandis que tu fermes les yeux et écoutes, un frisson te parcourt, comme si des dizaines de serpents venimeux se terraient sous ta peau. Lorsque tu ouvres les yeux, tu trouves dans ta main d'étranges graines de Noirépine. Tu n'as aucune idée de la manière dont elles sont arrivées là. Ravel te regarde attentivement. "Prends les graines. Qu'elles t'instruisent."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52433 /* ~"Très bien… J'ai d'autres questions, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52434 /* ~"Très bien… J'ai d'autres questions, Ravel."~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
SetGlobal("Ravel_Teach","GLOBAL",1)
~ GOTO 141
END

IF ~~ THEN BEGIN 208 // from: 204.2 204.3 204.4 205.2 205.3 205.4
  SAY #52435 /* ~Tandis que tu fermes les yeux et écoutes, un frisson te parcourt, comme si des dizaines de serpents venimeux se terraient sous ta peau. Au moment où la douleur te semble insupportable, tu te mets instinctivement à fredonner le même air que Ravel… et la douleur diminue. Au loin dans le dédale, tu entends le cliquetis des créatures des arbres, comme en réponse à ton appel.~ */
  IF ~~ THEN REPLY #52436 /* ~Continue à fredonner.~ */ DO ~SetGlobal("Ravel_Teach","GLOBAL",2)
~ GOTO 209
END

IF ~~ THEN BEGIN 209 // from: 208.0
  SAY #52437 /* ~Ravel te regarde avec une lueur curieuse dans ses yeux striés de veines noires. "Un tel *pouvoir*…" Elle siffle légèrement, comme émerveillée et ses lèvres se retroussent pour former un sourire. "Il touche tous ceux qui l'entendent. Tu es puissant, mon précieux homme, si puissant… un jour les plans eux-mêmes se plieront à ta volonté…"~ */
  IF ~~ THEN REPLY #52438 /* ~"Ce n'est pas ce que je veux, Ravel. Nombreux sont ceux qui choisiraient ce chemin, mais je ne suis pas de ceux-là."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ravel_1","GLOBALGood",2)
~ GOTO 210
  IF ~~ THEN REPLY #52439 /* ~"Le jour où les plans se plieront à ma volonté n'est pas loin, Ravel. Plus mes souvenirs reviendront et plus mon pouvoir grandira ; jusqu'à ce que personne ne puisse plus m'arrêter."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ravel_1","GLOBALGood",-2)
~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from: 209.0 209.1
  SAY #52440 /* ~Ravel fait un signe de tête, puis indique ta main qui à ta grande surprise contient plusieurs graines de Noirépine. "Prends ces graines. Utilise-les comme tu voudras… et pour ça, je t'accorde un supplément." Elle s'arrache un cheveu et prend une poignée de graines, puis les écrase dans sa main. Une faible traînée de sang s'écoule de sa main, mais lorsqu'elle l'ouvre, tu ne vois aucune blessure… juste un collier de graines de Noirépine, liées autour d'un cheveu gris de Ravel. "Prends ceci ; c'est de *moi* et ça te sera très utile."~ */
  IF ~~ THEN REPLY #52441 /* ~Prends les graines et l'étrange charme épineux.~ */ DO ~GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBSeed",Protagonist,1,0,0)
GiveItemCreate("BBChrm",Protagonist,1,0,0)
~ JOURNAL #52442 /* ~Ravel m'a enseigné quelques bribes de son art et, ce faisant, j'ai absorbé une partie de l'énergie de son dédale de noirépine. Les créatures végétales que sont les Trigits ont répondu à mon appel. Favorablement impressionnée, Ravel m'a donné un autre charme, en ajoutant qu'il existait dans le dédale un lieu secret que je pourrais atteindre si je ne me séparais pas des graines de noirépine.~ */ GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #52444 /* ~"Garde ces graines, précieux homme… Ne les utilise pas toutes car elles peuvent s'avérer plus utiles dans *d'autres* endroits de ce dédale… mais si tu es puissant, tu trouveras ces endroits."~ */
  IF ~~ THEN REPLY #52445 /* ~"Très bien… J'ai d'autres questions, Ravel."~ */ GOTO 141
END

IF ~~ THEN BEGIN 212 // from: 202.4
  SAY #52446 /* ~"Tu es de ceux qui hésitent entre deux voies lorsqu'ils parlent. Quel manque de conviction…" Ravel plisse les yeux en t'observant. "J'imagine que tu es un mage débutant, mais ton potentiel doit encore se développer. Je vais te donner ceci… Chut… ferme les yeux, écoute…"~ */
  IF ~~ THEN REPLY #52447 /* ~Ferme les yeux, écoute.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 206
END

IF ~~ THEN BEGIN 213 // from: 106.8 141.9
  SAY #52448 /* ~"Attends…" La voix de Ravel devient un faible sifflement semblable à celui d'un serpent. "Tu dois ENCORE poser la question la plus importante, mon précieux homme. Tu y as pensé ?"~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #52449 /* ~"Non… de quelle question parles-tu ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 214
  IF ~  CheckStatLT(Protagonist,14,INT)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #52450 /* ~"Oui… J'ai besoin de savoir comment quitter cet endroit. As-tu la réponse à cette question ?"~ */ GOTO 215
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #52451 /* ~"Oui… J'ai besoin de savoir comment quitter cet endroit. As-tu la réponse à cette question ?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 214 // from: 213.0
  SAY #52452 /* ~"'Ravel, sais-tu comment quitter ton magnifique jardin', voilà ce que tu dois me demander, demande-le-moi." Elle t'ordonne de le faire, les yeux injectés de sang et luisants. "Allez, allez."~ */
  IF ~~ THEN REPLY #52453 /* ~"Ravel… comment puis-je quitter ton merveilleux jardin ?"~ */ GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 213.1 213.2 214.0
  SAY #52454 /* ~"Je connais les bifurcations de cet endroit, les coins et recoins. Même s'il n'y a pas de feuilles ici, on peut s'envoler au loin selon son désir."~ */
  IF ~~ THEN REPLY #52455 /* ~"Alors tu SAIS comment partir ?"~ */ DO ~SetGlobal("Ravel_Curst_Portal","GLOBAL",1)
~ GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #52456 /* ~"Enroule tes bras autour de toi comme des branches, qu'elles encerclent ta poitrine comme une cage. Saute dans l'obscurité au bord du dédale, et ton corps se retrouvera dans une autre cage - partir, c'est simple, mais il n'y a PAS de retour possible, alors PRENDS bien garde et PRENDS ce dont tu as besoin avant de partir."~ */
  IF ~~ THEN REPLY #52457 /* ~"De quel côté du dédale dois-je partir ?"~ */ GOTO 217
END

IF ~~ THEN BEGIN 217 // from: 216.0
  SAY #52458 /* ~"Lequel, oui, des bords lequel choisir… lequel ? L'un des bords le sait, mais pas moi. Le souvenir m'échappe et les bords du dédale n'ont pas grand-chose à dire à ce sujet."~ */
  IF ~~ THEN REPLY #52459 /* ~"Tu savais comment partir ? Tout ce temps ? Alors… pourquoi ne pars-tu pas ?"~ */ GOTO 218
END

IF ~~ THEN BEGIN 218 // from: 217.0
  SAY #52460 /* ~"Pourquoi rester quand il est possible de partir, est-ce ta question ?" Ravel t'adresse un sourire contraint, découvrant une rangée de crocs. "Je te retourne la question. La réponse ne se trouve pas dans le départ ou le séjour. La réponse se trouve dans les causes et raisons, mon précieux demi-homme."~ */
  IF ~~ THEN REPLY #52461 /* ~"Tu ne *veux* pas partir ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 219
END

IF ~~ THEN BEGIN 219 // from: 218.0
  SAY #52462 /* ~"C'est *une* volonté, une volonté unique, mais pas une volonté immédiate et de plus en plus inexistante et dépendante. Ai-je besoin de quoi que ce soit qui se trouve au-delà de mes murs de ronces ? Le monde est cruel, épineux, au-delà des bords de ce dédale et Ravel a retiré *assez* d'échardes de sa peau."~ */
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",3)
~ THEN REPLY #52463 /* ~"Tu m'as rendu un grand service, belle Ravel. Merci d'avoir entendu ma requête et d'avoir partagé ton savoir avec moi."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK3)
~ GOTO 220
  IF ~  CheckStatGT(Protagonist,15,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52464 /* ~"Très bien… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
GlobalLT("Ravel_Flatter","GLOBAL",4)
~ THEN REPLY #52465 /* ~"Très bien… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 230
END

IF ~~ THEN BEGIN 220 // from: 219.0
  SAY #52466 /* ~Ravel t'adresse un sourire contraint, toutes défenses dehors, puis glousse légèrement. "Ah… C'est *moi* qui te remercie, mon précieux homme. Il y a longtemps que ce dédale n'a connu de telles flatteries… Je souhaite t'accorder une gratification, mon gazouilleur."~ */
  IF ~~ THEN REPLY #52467 /* ~"Aucune gratification n'est nécessaire, belle Ravel."~ */ GOTO 221
  IF ~~ THEN REPLY #52468 /* ~"Une gratification ? J'accepterai volontiers tout cadeau que tu me feras."~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 223
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #52469 /* ~"Tes protestations n'ont ici pas lieu d'être, gazouilleur. Chut… Je vais te confier un secret…"~ */
  IF ~~ THEN REPLY #52470 /* ~"Au risque de me répéter, je t'assure qu'aucune gratification n'est nécessaire, belle Ravel."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 222
  IF ~~ THEN REPLY #52471 /* ~"Très bien…"~ */ GOTO 223
END

IF ~~ THEN BEGIN 222 // from: 221.0
  SAY #52472 /* ~"Très bien…" Ravel siffle légèrement, comme si elle était déçue. "Aucun cadeau pour aujourd'hui…"~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52473 /* ~"Très bien… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52474 /* ~"Très bien… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 230
END

IF ~~ THEN BEGIN 223 // from: 220.1 221.1
  SAY #52475 /* ~"Alors écoute-moi… ferme les yeux, et je te laisserai observer la nature du multivers…"~ */
  IF ~  GlobalLT("Ravel_Flatter","GLOBAL",7)
~ THEN REPLY #52476 /* ~Ferme les yeux et écoute…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,90000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",6)
GlobalLT("Ravel_Flatter","GLOBAL",11)
~ THEN REPLY #52477 /* ~Ferme les yeux et écoute…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,1)
GiveExperience(Protagonist,120000)
~ GOTO 224
  IF ~  GlobalGT("Ravel_Flatter","GLOBAL",10)
~ THEN REPLY #52478 /* ~Ferme les yeux et écoute…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
PermanentStatChange(Protagonist,WIS,RAISE,2)
GiveExperience(Protagonist,180000)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0 223.1 223.2
  SAY #52479 /* ~Tu fermes les yeux et, ce faisant, tu ressens une douleur perçante, aiguë, dans ton œil droit. Ton œil… *l'un* de tes yeux… s'ouvre… et tu vois Ravel devant toi, ses yeux rouge sanglant luisant de satisfaction. L'une des ses griffes est tendue, avec au bout, ton sang… et un œil. Le tien.~ */
  IF ~~ THEN REPLY #52480 /* ~"Qu'est-ce… que… tu… as fait…?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 225
END

IF ~~ THEN BEGIN 225 // from: 224.0
  SAY #52481 /* ~"Je t'ai offert un cadeau, gazouilleur. Tu as bénéficié d'une ouverture de ta perception, une source dans les méandres de l'esprit, une source dans les racines du savoir de Ravel… une partie de moi…" Elle prend l'œil et tu la regardes avec dégoût prendre une graine noire et les placer tous deux dans sa paume gauche. Avec un sourire grotesque, elle les écrase tous deux dans un *crac* dégoûtant. "Ahh…"~ */
  IF ~~ THEN REPLY #52482 /* ~"Rends-le… moi…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ GOTO 226
END

IF ~~ THEN BEGIN 226 // from: 225.0
  SAY #52483 /* ~"Bien sûr, précieux homme…" Ravel ouvre la paume de sa main et tu y vois ton œil, apparemment intact, qui te fixe du regard. Elle le place entre son pouce et son index et avant que tu ne puisses réagir, elle le plante à nouveau dans ton orbite vide.~ */
  IF ~~ THEN REPLY #52484 /* ~"Eurhhkkkk…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDFIDGET1)
~ JOURNAL #52485 /* ~En réponse à ma flatterie, Ravel m'a arraché l'œil droit puis me l'a remis dans mon orbite après y avoir inséré une graine de noirépine. Désormais, je vois les choses un peu différemment, comme si je bénéficiais également de la perspective de Ravel. Cette expérience m'a également enseigné à me montrer extrêmement prudent avant de flatter qui que ce soit, surtout de près…~ */ GOTO 227
END

IF ~~ THEN BEGIN 227 // from: 226.0
  SAY #52486 /* ~"Un morceau de moi se cache dans ton bon œil, précieux homme. Quand tu apercevras les plans au travers de cet œil, tu comprendras PLUS de choses que tu n'as jamais compris… tu seras plus sage et tu seras plus à même de comprendre les Plans et leurs intrications… et c'est tout."~ */
  IF ~  CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #52487 /* ~"Très bien… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 228
  IF ~  CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #52488 /* ~"Très bien… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from: 219.1 222.0 227.0
  SAY #52489 /* ~Alors que tu t'apprêtes à faire tes adieux, tu ressens soudain une sensation rampante dans ton crâne - et tu remarques que les yeux striés de veines noires de Ravel ont pris une étrange teinte vorace.~ */
  IF ~~ THEN REPLY #52490 /* ~"Tu ne vas pas me laisser partir, n'est-ce pas Ravel ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 229
  IF ~~ THEN REPLY #52491 /* ~"Euh… merci, Ravel. Je dois te dire au revoir."~ */ GOTO 230
END

IF ~~ THEN BEGIN 229 // from: 228.0
  SAY #52492 /* ~"Question perspicace - mais ce n'est pas la vraie question." La voix de Ravel se mue en un étrange, triste murmure qui fait écho dans ton esprit. "La question est de savoir si tu *veux* me quitter, demi-homme ?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52493 /* ~"Douce Ravel, tu m'as aidé lorsque je suis venu à toi il y a longtemps déjà, et tu l'as fait une nouvelle fois. Je n'oublierai pas ce que tu as fait. Mais je dois maintenant partir - il faut que j'en apprenne plus sur moi-même."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52494 /* ~"Il le faut. Il est important que j'en apprenne le plus possible sur moi et il y a encore beaucoup à découvrir."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52495 /* ~"Je ne souhaite pas être coincé dans cet endroit, Ravel. C'est ta demeure, pas la mienne."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52496 /* ~"Je ne souhaite pas être coincé dans ce dédale. Est-ce que je veux partir ? Oui."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 230 // from: 219.2 222.1 227.1 228.1
  SAY #52497 /* ~"Ah… c'est ce que tu dis…" La voix de Ravel se mue en un étrange, triste murmure qui fait écho dans ton esprit. "Une dernière question pour toi : *veux-tu* me quitter, précieux demi-homme ?"~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52498 /* ~"Douce Ravel, tu m'as aidé lorsque je suis venu à toi il y a longtemps déjà, et tu l'as fait une nouvelle fois. Je n'oublierai pas ce que tu as fait. Mais je dois maintenant partir - il faut que j'en apprenne plus sur moi-même."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52499 /* ~"Il le faut. Il est important que j'en apprenne le plus possible sur moi et il y a encore beaucoup à découvrir."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
  IF ~~ THEN REPLY #52500 /* ~"Je ne tiens pas être piégé ici, Ravel. C'est ton foyer, pas le mien."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 231
  IF ~~ THEN REPLY #52501 /* ~"Je ne souhaite pas être coincé dans ce dédale. Est-ce que je veux partir ? Oui."~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 232
END

IF ~~ THEN BEGIN 231 // from: 229.2 230.2
  SAY #52502 /* ~"Non, sache… sache CECI…" Ravel lève un doigt griffu, comme pour t'avertir. "Sache que c'est NOTRE demeure, mon précieux demi-homme. Nous serons deux immortels dans ce jardin broussailleux, et je te protégerai des plans."~ */
  IF ~~ THEN REPLY #52503 /* ~"Je crois que tu n'es pas consciente de ce que tu dis, Ravel…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 232 // from: 229.3 230.3
  SAY #52504 /* ~"Le départ me semble une erreur et ta réponse est pleine de conviction, mais c'est la *mauvaise* réponse, mon précieux demi-homme." Elle *claque* ses dents jaunies, comme un piège à ours. "Non, non, je te *garderai* en ces lieux. Nous serons deux immortels dans ce jardin broussailleux, et je te protégerai des plans."~ */
  IF ~~ THEN REPLY #52505 /* ~"Je crois que tu n'es pas consciente de ce que tu dis, Ravel…"~ */ DO ~SetAnimState("Ravel",ANIM_MIMETALK2)
~ GOTO 233
END

IF ~~ THEN BEGIN 233 // from: 229.0 229.1 230.0 230.1 231.0 232.0
  SAY #52506 /* ~L'air *miroite* étrangement dans les airs autour de Ravel et on entend un bruit de craquement de brindilles et de branches, et le bruit horrible d'arbres qui se *plient* et se *cassent*…~ */
  IF ~~ THEN REPLY #52507 /* ~"Qu- ?"~ */ DO ~SetAnimState("Ravel",ANIM_MIMESTANDTOSTANCE)
SetAnimState("Ravel",ANIM_MIMESTANCE)
~ GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #52508 /* ~Les lèvres de Ravel s'entrouvrent et sa voix devient stridente, comme un vent furieux. "Que peux-tu bien SAVOIR, demi-homme ? ÉCOUTE-moi bien : SACHE que tu resteras ici jusqu'à la FIN DES TEMPS, dans mon jardin de ronces ; jamais tu n'en partiras, et tu m'AIMERAS, comme tu le DOIS, comme tu l'as PROMIS !"~ */
  IF ~~ THEN REPLY #52509 /* ~"Non, Ravel. Ne me menace pas… Je QUITTERAI cet endroit."~ */ GOTO 235
  IF ~~ THEN REPLY #52510 /* ~"Du calme, Ravel - il faut que je parte, mais je reviendrai. Ne -"~ */ GOTO 235
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #52511 /* ~"J'ai peur d'être de bien piètre compagnie, Ravel. Et je ne peux de toute façon pas rester. J'ai bien peur que tu ne sois obligée de me laisser passer."~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0 234.1 234.2
  SAY #52512 /* ~"Je ne te laisserai PAS partir. J'ai le pouvoir de te GARDER ici, et je l'UTILISERAI. Mon dédale de graines de Noirépine ne te permettra PAS de partir tant que je VIVRAI, mon précieux, *précieux* homme…"~ */
  IF ~~ THEN REPLY #52513 /* ~"Ravel, je ne veux pas te combattre… ne fais pas ça. Permets-moi de passer et je reviendrai te rendre visite. Il n'y a pas de raison que tu sois seule ici."~ */ GOTO 236
  IF ~~ THEN REPLY #52514 /* ~"Alors je ne pourrai partir que lorsque tu seras morte ? Très bien, peut-être que c'est TOI qui as fait une erreur en me sous-estimant, sorcière."~ */ GOTO 237
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #52515 /* ~"REVENIR ?! REVENIR, comme tu as JURÉ de le faire, il y a SI LONGTEMPS ?! Non… non, tu ne MENTIRAS pas DEUX fois à Ravel ! Plus de SIÈCLES à t'ATTENDRE…" Les lèvres de Ravel se retroussent et ses griffes semblent grandir, grandir pour devenir d'abominables serres. "Tu RESTERAS dans mon jardin, et tu n'erreras PLUS JAMAIS dans les plans… !"~ */
  IF ~~ THEN REPLY #52516 /* ~"Ravel, calme-toi, on n'a pas BESOIN d'en arriver là…"~ */ GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 235.1 236.0
  SAY #52517 /* ~"Tu as oublié ta PLACE, DEMI-homme. L'humilité est de rigueur."~ [RAV065] */
  IF ~~ THEN REPLY #52518 /* ~"Ravel, ne FAIS pas ça…"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ JOURNAL #52520 /* ~Ravel a répondu à mes questions, mais je ne pense pas qu'elle s'attendait à ce que je m'en aille. Quand je lui ai dit que je devais la quitter, elle s'est jetée sur moi en jurant que je ne pourrais partir tant qu'elle vivrait. J'ai été obligé de la combattre.~ */ EXIT
  IF ~~ THEN REPLY #52519 /* ~"On verra, sorcière…"~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",9)
SaveGame(0)
~ EXIT
END

IF ~~ THEN BEGIN 238 // from: 30.0 239.0
  SAY #52521 /* ~"Eh bien, mon précieux, précieux demi-homme, tu portes le plus grand fardeau… la vie à n'en plus finir. Tiens-tu à ta vie autant que Ravel ?" Elle grince de ses dents jaunies dans un horrible bruit de *craquement*. "Une vie si courageuse, si passionnée, si perdue, comme c'est triste."~ */
  IF ~~ THEN REPLY #52522 /* ~"Ravel, *pourquoi* m'as-tu rendu immortel ? Je dois le sav…"~ */ GOTO 41
END

IF ~~ THEN BEGIN 239 // from: 31.6
  SAY #52523 /* ~"Observe leurs yeux quand ils seront près… Tu *verras* leur tourment, car ils n'en parleront pas. Ravel n'en dira pas plus… peut-être que s'ils étaient plus près et que Ravel pouvait les voir, elle pourrait en dire plus… mais pas en ce jour."~ */
  IF ~~ THEN REPLY #52524 /* ~"Pourquoi sont-ils attirés vers moi ?"~ */ GOTO 238
END

IF ~~ THEN BEGIN 240 // from: 152.4
  SAY #52525 /* ~"Et tu m'as mordue, il y a si longtemps, ce n'était pas alors un baiser, mais une morsure au cœur…" Ravel sourit. "Ne sois pas surpris, mon précieux homme. Il n'y a pas de mal…"~ */
  IF ~~ THEN REPLY #52526 /* ~"Reprends ton aspect normal, Ravel."~ */ DO ~SetGlobal("Ravel_Cut_Scene","AR0610",6)
StartCutSceneMode()
StartCutSceneEx("0610Cut8",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 241 // from: 179.1 180.1 181.1
  SAY #52527 /* ~Le visage de Mebbeth… Ravel… se détend, et tu observes la teinte bleutée revenir sur sa peau, tandis que le rouge revient dans ses yeux. Elle cligne des yeux, doucement, comme pour se retrouver.~ */
  IF ~~ THEN REPLY #52528 /* ~"Quelles sont les autres formes que tu as prises, Ravel ?"~ */ GOTO 163
  IF ~~ THEN REPLY #52529 /* ~"J'ai d'autres questions à te poser, Ravel."~ */ GOTO 141
END
