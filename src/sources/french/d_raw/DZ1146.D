// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZ1146.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DZ1146~

IF ~  Global("Crispy","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #6518 /* ~Le numéro '1146' est gravé sur le front de ce cadavre errant ; ses lèvres ont été cousues à l'aide d'un fil noir grossier. Tout le corps est recouvert d'horribles cicatrices, pires encore que les tiennes, comme s'il avait été brûlé vif. Le nez, les oreilles et plusieurs doigts manquent, sans doute à la suite d'une très vieille conflagration. Lorsque tu lui barres le chemin pour attirer son 'attention', il s'arrête et te regarde d'un air hagard.~ */
  IF ~  Global("Zombie_Chaotic","GLOBAL",0)
~ THEN REPLY #6521 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ DO ~IncrementGlobal("Law","GLOBAL",-1)
SetGlobal("Zombie_Chaotic","GLOBAL",1)
~ GOTO 1
  IF ~  Global("Zombie_Chaotic","GLOBAL",1)
~ THEN REPLY #6522 /* ~"Alors… Tu as vu quelque chose d'intéressant ?"~ */ GOTO 1
  IF ~  Global("Vaxis_Exposed","GLOBAL",1)
~ THEN REPLY #6523 /* ~"Je sais que tu n'es pas un zombi, tu sais. Personne n'est dupe."~ */ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #6524 /* ~Utilise Histoires-Os-Conter sur le cadavre.~ */ DO ~SetGlobal("Crispy","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #6525 /* ~"C'était super de parler avec toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #6526 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #6519 /* ~Le cadavre continue à te fixer.~ */
  IF ~~ THEN REPLY #6527 /* ~Laisse le cadavre tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.3
  SAY #6520 /* ~Les odeurs de soufre fumant, de cheveux brûlés et de sang roussi te prennent à la gorge tandis que l'esprit retourne dans son ancienne demeure. Le cadavre s'effondre presque immédiatement sur le sol avec un choc violent, en poussant un râle. Tu peux presque voir de fines volutes de fumée nauséabonde dégouliner de ses membres.~ */
  IF ~~ THEN REPLY #6528 /* ~"Est-ce que… ça va ?"~ */ GOTO 3
  IF ~~ THEN REPLY #9413 /* ~"J'ai des questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #9414 /* ~Laisse l'esprit enflammé.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #9398 /* ~L'esprit soulève une paupière ; le globe oculaire, tout blanc, se détache dans son nid de chair grise. Il lève lentement la tête pour te toiser, la chair brûlée et scarifiée de son visage s'étire sur ses os et sa gorge détruite forme quelques mots : "Non. Non, pas du tout… espèce de… pauvre… enfumé."~ */
  IF ~~ THEN REPLY #9415 /* ~"Je peux faire quelque chose pour toi ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Crispy_1","GLOBALGood",1)
~ GOTO 4
  IF ~~ THEN REPLY #9416 /* ~"J'ai une question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9417 /* ~"C'est aussi bien, espèce de déchet puant et fumant ; tu mérites sûrement ton sort. Au revoir."~ */ GOTO 6
  IF ~~ THEN REPLY #9418 /* ~Laisse l'esprit torturé.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #9399 /* ~"Hé-hé-HEURK !" Un spasme d'une rare violence secoue l'esprit, qui s'était mis à rire, et il vomit un torrent de pourriture noire et de lotion d'embaumement. Tordu de douleur, il ne s'arrête de tousser que pour cracher des glaires jaunâtres et des bouts de fil de suture.~ */
  IF ~~ THEN REPLY #9419 /* ~Attends patiemment la fin de la crise.~ */ GOTO 5
  IF ~~ THEN REPLY #9421 /* ~"J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9422 /* ~Laisse l'esprit torturé à sa souffrance.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #9400 /* ~L'horrible quinte de toux se calme enfin. "Non, bige… tu… peux pas. À moins… à moins que tu viennes à Baator histoire de me… secourir, j'ai… plus rien à espérer. L'heure de… de l'expiation a sonné." Il ferme les yeux et sa tête retombe par terre.~ */
  IF ~~ THEN REPLY #9423 /* ~"Je vois. J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9424 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.2 17.0
  SAY #9401 /* ~Dans un ricanement glaireux, ses lèvres craquelées et noircies découvrent des dents jaunies, toutes de guingois. "Attends… attends un peu que je me… sorte de cette Fosse… tu… tu seras le premier sur ma liste, bige…"~ */
  IF ~~ THEN REPLY #9425 /* ~"C'est ça. Je n'ai pas peur de toi, ni de tes semblables."~ */ GOTO 7
  IF ~~ THEN REPLY #9426 /* ~Frappe-le.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Crispy_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Crispy_1","GLOBALLaw",-1)
~ GOTO 8
  IF ~~ THEN REPLY #9427 /* ~Ignore ce misérable, détourne-toi et pars.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #9402 /* ~Il s'arrache un grognement guttural et crache vers toi - la glaire puante rate tes pieds de vingt bons centimètres. Épuisé, il laisse alors retomber sa tête et la vie, ou ce qui lui en tient lieu, se retire une fois de plus de son corps.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1
  SAY #9403 /* ~Tu lui décoches un coup de pied dans les reins, en vain ; il n'a pas l'air de s'en porter plus mal. "Hé ! hé ! hé !" ricane l'esprit, avant de se retirer de son corps une bonne fois pour toutes. Tu en restes un peu frustré.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.1 3.1 4.1 5.0 10.0 11.0 12.1 13.1 14.1 15.0 16.0 17.1 18.1 19.0 20.0
  SAY #9404 /* ~"Que… Qu'est-ce que tu veux *encore*, bige ?" L'esprit se tortille et se tapote pour éteindre les petits foyers qui brûlent en divers endroits de son corps.~ */
  IF ~~ THEN REPLY #9428 /* ~"Qui es-tu ?"~ */ GOTO 10
  IF ~~ THEN REPLY #9429 /* ~"D'où viens-tu ?"~ */ GOTO 11
  IF ~~ THEN REPLY #9430 /* ~"Comment es-tu arrivé ici ? En tant que zombi, je veux dire ?"~ */ GOTO 12
  IF ~~ THEN REPLY #9431 /* ~"Où es-tu… Où réside ton esprit… en ce moment ?"~ */ GOTO 13
  IF ~~ THEN REPLY #9432 /* ~"Qu'as-tu fait pour mériter un tel supplice ?"~ */ GOTO 14
  IF ~~ THEN REPLY #9433 /* ~"Que sais-tu sur cet endroit ?"~ */ GOTO 15
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #9434 /* ~"Connais-tu un certain Pharod ?"~ */ GOTO 16
  IF ~~ THEN REPLY #9435 /* ~"Rien, peu importe."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #9405 /* ~"C'est pas tes oignons… Fous-moi… la paix…~ */
  IF ~~ THEN REPLY #9436 /* ~"Non. J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9437 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #9406 /* ~"Hein ? Par les puissances… qu'est-c'qu'on en a… à fiche ? De Sigil, pauvre… idiot."~ */
  IF ~~ THEN REPLY #9438 /* ~"J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9439 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #9407 /* ~"À ton avis, béjaune ?" Il est de nouveau secoué par une violente quinte de toux. "J'ai vendu ma viande… pour un peu de jonc… à ces fichus Hommes-Poussière, et de suite après - DE SUITE APRÈS, t'imagines ? - un foutu magicien complètement azimuté décide de faire flamber la Ruche, avec moi coincé au milieu !" L'esprit part à marmonner d'un air mauvais. Un liquide fumant coule à gros bouillons des commissures de ses lèvres déchiquetées.~ */
  IF ~~ THEN REPLY #9440 /* ~"Un magicien a brûlé la Ruche ?"~ */ GOTO 18
  IF ~~ THEN REPLY #9441 /* ~"J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9465 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.3
  SAY #9408 /* ~"Où c'que tu crois… quoqueret de lascar ? Sur Baator, dans ce trou à rats appelé Phlegetos. Nom de nom, brûler… brûler… je fais qu'ça. J'crève en brûlant, pis j'brûle dans l'au-d'là." De rage, il grince des dents. "Vrai de vrai, l'ironie du truc, c'est à s'tordre ! Quand j'sortirai de là, j'en balancerai, des bougres, au fond de c'trou d'malheur, crois-moi. Hé ! hé ! hé ! *glup*."~ */
  IF ~~ THEN REPLY #9442 /* ~"Pourquoi voudrais-tu infliger ton destin aux autres ?"~ */ GOTO 17
  IF ~~ THEN REPLY #9443 /* ~"J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9444 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.4
  SAY #9409 /* ~"Mériter ? MÉRI ? Rien ! Je… j'ai rien fait. J'essayais de m'en sortir… comme tout l'monde… et puis… ffchchch !… ce fils de bouc, voilà qu'y fiche le feu à la Ruche, mage de mes deux !"~ */
  IF ~~ THEN REPLY #9445 /* ~"Un mage… a brûlé… la Ruche ?"~ */ GOTO 18
  IF ~~ THEN REPLY #9446 /* ~"Je vois. J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9745 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 9.5
  SAY #9410 /* ~"Rien. Rien du tout, j'te l'dis, bige. Laisse-moi… laisse-moi brûler en paix…"~ */
  IF ~~ THEN REPLY #9447 /* ~"Très bien. Alors, j'aurais une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9448 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.6
  SAY #9411 /* ~"Qui ? Quoi ? Non ! Qu'est-ce qui t'fait croire que j'te l'dirais si j'le connaissais, hein… bougre de bige ? Pff…"~ */
  IF ~~ THEN REPLY #9449 /* ~"Très bien. J'ai une autre question…"~ */ GOTO 9
  IF ~~ THEN REPLY #9450 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0
  SAY #9412 /* ~"La vengeance, enfumé ! J'les… j'les aurai tous, ceux qui m'ont refait. Surtout c'magicien ! J'lui arracherai ses parties intimes et j'les lui fourrerai dans la gorge ! Puis j'le jetterai dans ce fichu trou, et ses parties intimes avec ! Lui et tout plein d'autres… pour faire bon poids ! Hé ! hé ! hé !"~ */
  IF ~~ THEN REPLY #9420 /* ~"Tu es un petit homme méchant et insignifiant. Apparemment, tu as mérité ton sort."~ */ GOTO 6
  IF ~~ THEN REPLY #9451 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #9452 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.0 14.0
  SAY #9458 /* ~"Ouais, la Ruche… le pire coin d'Sigil. Jamais vu autant d'feu de toute ma vie… J'ai couru partout, je voulais m'tirer, mais tout brûlait ! Les baraques, les rues, les gens et leurs mômes… Et ce foutu magicien qui riait et qui riait ! J'ai tourné un coin de rue et j'ai cru qu'j'en étais sorti, mais non ! Voilà-t-y pas que ma foutue tête prend feu ?! À partir de là, ç'a été… de mal en pis…" Ses yeux flamboient d'un éclat mauvais.~ */
  IF ~~ THEN REPLY #9459 /* ~"Qui était ce magicien ?"~ */ GOTO 19
  IF ~~ THEN REPLY #9464 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #9746 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #9744 /* ~"J'sais pas. Le temps qu'on l'arrête, si on l'a fait, j'étais cuit et recuit, de toute façon. J'crois m'rappeler qu'y'en a qui l'ont poursuivi au début en criant son nom… heu… oh ! Ignis, je crois bien qu'c'était. Ignis. Ou un truc dans c'genre-là. C'que j'espère, c'est que c'cagueur s'r'trouve dans un pire trou que moi !"~ */
  IF ~~ THEN REPLY #9747 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 9
  IF ~~ THEN REPLY #9748 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~  Global("Crispy","GLOBAL",1)
~ THEN BEGIN 20 // from:
  SAY #20099 /* ~"Encore ?!"~ */
  IF ~~ THEN REPLY #20100 /* ~"J'ai quelques questions…"~ */ GOTO 9
  IF ~~ THEN REPLY #20101 /* ~"Rien, je ne faisais que passer. Au revoir."~ */ EXIT
END
