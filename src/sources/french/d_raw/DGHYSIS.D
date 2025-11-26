// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGHYSIS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DGHYSIS~

IF ~~ THEN BEGIN 0 // from: 69.0 69.1
  SAY #2947 /* ~"Bon, écoutez… C'est le séminaire sur la *Guerre*. Si vous êtes venus écouter l'histoire de la Guerre Sanglante, prenez place. Sinon, vous avez tout faux, et vous feriez mieux de déguerpir au plus vite."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 320
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #2948 /* ~Écoute.~ */ GOTO 1
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #32707 /* ~Arrête d'écouter, pars.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #32708 /* ~L'homme regarde soudainement la foule d'un regard sombre, comme s'il cherchait quelque chose. "Et par ailleurs, si vous êtes tanar'ri ou baatezu, allez voir dehors. J'vais pas vous laisser écouter c'que j'raconte pour ensuite écouter vos arguments d'azimuté…"~ */
  IF ~~ THEN REPLY #32709 /* ~Continue à écouter.~ */ GOTO 2
  IF ~~ THEN REPLY #32710 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #32711 /* ~"… Parce qu'c'est pas une question d'savoir qui a raison ou tort." Derrière toi, tu entends le bruit de quelque chose d'énorme quittant la Salle de conférence. "Ça raconte juste la Guerre Sanglante du point d'vue des humains. Ça favorise pas un côté ou l'autre, parce que d'toute façon, ils puent *tous les deux* différemment."~ */
  IF ~~ THEN REPLY #32712 /* ~Continue à écouter.~ */ GOTO 3
  IF ~~ THEN REPLY #32713 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #32714 /* ~L'orateur devient grave. "Alors… y reste plus qu'à vous raconter quelquz' histoires d'la Guerre Sanglante… les histoires d'la *Guerre*. Z'allez en entend' toute *l'horreur*, c'est sûr. La fort'resse flottante cousue et r'cousue d'peau humaine ! Tous les plans sur lesquels la Guerre Sanglante s'est déroulée !"~ */
  IF ~~ THEN REPLY #32716 /* ~Continue à écouter.~ */ GOTO 4
  IF ~~ THEN REPLY #32717 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #32718 /* ~Il montre ses dents jaunies : "Des histoires d'fiélons s'battant avec d'aut' fiélons ! Grrr ! Raah !" Son grognement s'apaise, et il semble soudainement s'ennuyer.~ */
  IF ~~ THEN REPLY #32719 /* ~Continue à écouter.~ */ GOTO 5
  IF ~~ THEN REPLY #32720 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #32721 /* ~"Ben, laissez-moi vous peler les paupières et vous secouer les os : c'est qu'une stupidité débile d'aller crécher sur l'fumier d'cette forge." Il crache en signe de dérision, ouvrant grand les yeux.~ */
  IF ~~ THEN REPLY #32722 /* ~Continue à écouter.~ */ GOTO 6
  IF ~~ THEN REPLY #32723 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32724 /* ~"J'vais quand même vous dire *ça* : vous pouvez pas *imaginer* l'ampleur d'la Guerre Sanglante. Rien de c'que vous avez vu, entendu, ou c'qu'vous avez fait - y'a *rien* d'comparable : la durée, l'nombre de 'légions', un pur bain d'sang… rien d'comparable, biges. Essayez même pas d'l'imaginer. Mon conseil ? Simple : restez autant que possible loin d'ce grand foutoir."~ */
  IF ~~ THEN REPLY #32725 /* ~Continue à écouter.~ */ GOTO 7
  IF ~~ THEN REPLY #32726 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #32727 /* ~"Tout c'qu'vous d'vez savoir c'est ça : des fiélons qui tuent des fiélons. Des baatezus qui massacrent des tanar'ris, des tanar'ris qui dérouillent des baatezus. En c'moment même." Il crache à nouveau. "Aucun gagnant. Croyez pas qu'l'un d'entre eux *peut* gagner. La plus grande impasse pour l'éternité… grâce aux puissances."~ */
  IF ~~ THEN REPLY #32728 /* ~Continue à écouter.~ */ GOTO 8
  IF ~~ THEN REPLY #32729 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #32730 /* ~"C'est tout." Il hausse les épaules. "C'est tout. J'vais répondre aux questions qu'vous avez pour moi, maintenant…"~ */
  IF ~~ THEN REPLY #32731 /* ~Pose une question.~ */ GOTO 11
  IF ~~ THEN REPLY #32732 /* ~Ne dis rien.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1 11.10 12.2 13.2 14.3 15.2 16.2 17.2 18.3 19.3 20.2 21.2 22.2 23.2 24.3 25.2 26.2 27.5 28.2 29.2 30.2 31.5 32.2 33.2 34.2 35.2 36.2 37.2 38.1 39.2 40.1 41.2 42.2 43.2 44.2 45.2 46.3 47.2 48.7 49.2 50.2 51.2 52.2 54.2 55.2 56.1 57.2 58.1 59.2 60.4 61.1 62.2 64.2 70.1 74.3 75.1 76.1 77.1 79.1 80.1 81.1 82.0
  SAY #32733 /* ~"D'accord… c'est l'dernier morceau dans c'cas. Y'en a parmi vous qui sont des Sensats, alors j'ai une chose à vous dire : vous inscrivez pas pour 'savoir c'qu'est la Guerre Sanglante'. Soyez pas des bougres d'azimutés. Utilisez une pierre sensorielle si ça vous chatouille, mais cherchez par à voir ça par vous-mêmes."~ */
  IF ~~ THEN REPLY #32734 /* ~Continue à écouter.~ */ GOTO 10
  IF ~~ THEN REPLY #32735 /* ~Quitte la salle de conférences.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #32736 /* ~"Ça vaut pas l'coup. Ça…"  Son visage se crispe, comme sous l'effet d'une grande souffrance, comme au bord des larmes. "… vaut vraiment pas l'coup. Fin de la séance. Au revoir."~ */
  IF ~~ THEN REPLY #32737 /* ~Pars.~ */ DO ~SetGlobal("Lecture_Ghysis","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.0 12.1 13.1 14.2 15.1 16.1 17.1 18.2 19.2 20.1 21.1 22.1 23.1 24.2 25.1 26.1 27.4 28.1 29.1 30.1 31.4 32.1 33.1 34.1 35.1 36.1 37.1 38.0 39.1 40.0 41.1 42.1 43.1 44.1 45.1 46.2 47.1 48.6 49.1 50.1 51.1 52.1 54.1 55.1 56.0 57.1 58.0 59.1 60.3 61.0 62.1 64.1 70.0 74.2
  SAY #32738 /* ~"Quelle est ta question, matois ?"~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49564 /* ~"Comment est-ce que tu as survécu à la Guerre Sanglante, déjà ?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49565 /* ~"Comment est-ce que tu as survécu à la Guerre Sanglante, déjà ?"~ */ GOTO 70
  IF ~~ THEN REPLY #32739 /* ~"Tu peux m'en dire un peu plus sur la Guerre Sanglante ?"~ */ GOTO 32
  IF ~~ THEN REPLY #32740 /* ~"Qu'est-ce qui a déclenché la Guerre Sanglante ?"~ */ GOTO 41
  IF ~~ THEN REPLY #32741 /* ~"Comment est-ce qu'on s'enrôle dans la Guerre Sanglante ?"~ */ GOTO 59
  IF ~~ THEN REPLY #32742 /* ~"Où a lieu la Guerre Sanglante ?"~ */ GOTO 55
  IF ~~ THEN REPLY #32743 /* ~"Comment est-ce qu'on survit à la Guerre Sanglante ?"~ */ GOTO 12
  IF ~~ THEN REPLY #32744 /* ~"Décris les tanar'ris."~ */ GOTO 57
  IF ~~ THEN REPLY #32745 /* ~"Décris les baatezus."~ */ GOTO 45
  IF ~~ THEN REPLY #32746 /* ~"Alors, tu ne nous raconteras aucune histoire sur la Guerre Sanglante ?"~ */ GOTO 39
  IF ~~ THEN REPLY #33088 /* ~"En fait, je n'ai pas de questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 12 // from: 11.6
  SAY #32747 /* ~"T'veux savoir comment survivre à la Guerre Sanglante ? Trois choses, matois :" Il lève une main estropiée qui ne compte plus que deux doigts.~ */
  IF ~~ THEN REPLY #32748 /* ~"Continue…"~ */ GOTO 13
  IF ~~ THEN REPLY #32749 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32750 /* ~"En fait, peu importe. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #32751 /* ~"Premièrement, va caguer aussi loin d'elle qu'possible. Deuxièmement, va caguer aussi diablement loin d'elle qu'possible. Et dernièrement… va caguer aussi diablement d'bougrement loin d'elle qu'possible."~ */
  IF ~~ THEN REPLY #32752 /* ~"Continue…"~ */ GOTO 14
  IF ~~ THEN REPLY #32753 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32754 /* ~"En fait, peu importe. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #32755 /* ~"Si tu t'trouves par malheur près d'la Guerre, prie pour qu'ton imagination t'botte les fesses, et cours aussi loin et aussi vite qu'tu peux. Si tu peux pas courir, alors allonge-toi et reste aussi calme qu'possible et prie pour qu'elle t'ignore." Il marque une pause. "L'problème, c'est qu'y a pas d'endroit qu'elle touche pas, et qu'y a nulle part où tu puisses courir pour lui échapper."~ */
  IF ~~ THEN REPLY #32756 /* ~"S'il n'y a nulle part où aller, pourquoi leurs fiélons ne se battent-ils pas à Sigil ?"~ */ GOTO 21
  IF ~~ THEN REPLY #32757 /* ~"Autre chose ?"~ */ GOTO 15
  IF ~~ THEN REPLY #32758 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32759 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 15 // from: 14.1 29.0
  SAY #32760 /* ~"Ouais : quoi qu'tu fasses, *parle* pas d'la Guerre Sanglante avec un *quelconque* fiélon… ou même une divinité ou un archon, pour c'que ça peut faire. N'en parle pas, un point c'est tout, parce qu'tu sais jamais avec qui tu peux être en train d'parler. Et ils sont tous un peu sensibles quand il s'agit d'parler d'la guerre. C'est leur raison d'vivre."~ */
  IF ~~ THEN REPLY #32761 /* ~"Autre chose ?"~ */ GOTO 16
  IF ~~ THEN REPLY #32762 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32763 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #32764 /* ~Il secoue la tête. "Passe jamais un portail sauf si t'es sûr à caguer qu'tu sais où il va. P'têt qu't'as jamais entendu les histoires d'ces abrutis qui traversent les plans à travers un portail et finissent en plein milieu d'une escarmouche d'la Guerre Sanglante. Tu sais pourquoi t'as pas entendu parler d'eux ? Parce qu'ces bougres sont morts, morts, *morts*."~ */
  IF ~~ THEN REPLY #32765 /* ~"Autre chose ?"~ */ GOTO 17
  IF ~~ THEN REPLY #32767 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32768 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #32769 /* ~"Et quoi qu'tu fasses, signe pas pour t'engager, quel qu'soit le nombre de joncs qu'ils te fassent miroiter. Une mort certaine et s'engager pour la Guerre Sanglante, c'est la même chose, matois."~ */
  IF ~~ THEN REPLY #32770 /* ~"Pourquoi ça ?"~ */ GOTO 18
  IF ~~ THEN REPLY #32771 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32772 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #32773 /* ~"L'est possible que quand tu signes, ils t'pèlent pour qu'tu t'retrouves sur l'champ d'bataille jusqu'à la fin des temps. Même la mort peut pas t'libérer, parce qu't'es coincé dans les Plans Inférieurs et qui t'déterrent pire qu't'étais auparavant. Ils t'ont dans leurs griffes pour l'éternité."~ */
  IF ~~ THEN REPLY #32774 /* ~"Comment faire *annuler* ce genre de contrat ?"~ */ GOTO 30
  IF ~~ THEN REPLY #32775 /* ~"Alors, mourir au cours de la Guerre Sanglante est particulièrement terrible ?"~ */ GOTO 19
  IF ~~ THEN REPLY #32776 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32777 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 19 // from: 18.1 31.0
  SAY #32778 /* ~"Si t'es mauvais, c'est sûr. Mais si t'es bon, tu t'retrouves sur un autre Plan pour passer ton après-vie. Mais t'es quand même mort. En c'qui m'concerne, j'ai encore pas mal d'mal à laver d'mon âme, alors si j'mourais dans les Plans Inférieurs, ils m'auraient jusqu'au trognon."~ */
  IF ~~ THEN REPLY #32779 /* ~"Quand on meurt, on va sur un autre Plan ? Tu peux m'expliquer ça ?"~ */ GOTO 20
  IF ~~ THEN REPLY #32780 /* ~"Comment faire *annuler* ce genre de contrat ?"~ */ GOTO 30
  IF ~~ THEN REPLY #32781 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32782 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #32783 /* ~"Va voir l'autre gars qui parle de mort si tu veux connaître l'soltif. J'peux pas l'expliquer aussi bien qu'lui, et bien qu'il soit doublement stupide et qu'il t'ébouillante avec son haleine puante."~ */
  IF ~~ THEN REPLY #32784 /* ~"Comment faire *annuler* ce genre de contrat ?"~ */ GOTO 30
  IF ~~ THEN REPLY #32785 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32786 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 21 // from: 14.0
  SAY #32788 /* ~"Ouais, maintenant, matois, écoute : ils s'sont battus ici plusieurs fois. On a quelquefois eu des débordements d'la Guerre Sanglante. Notre Dame des Douleurs, qu'son cœur d'acier soit béni, éteint les feux…"~ */
  IF ~~ THEN REPLY #32789 /* ~"Continue…"~ */ GOTO 22
  IF ~~ THEN REPLY #32790 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32791 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #32792 /* ~"… *la plupart* du temps." Il ricane. "Y'a des fois, où c'tait tellement horrible, où ils ont démoli et brûlé des bougres d'quartiers entiers d'Sigil avant qu'elle se décide à faire le ménage." Il fait claquer sa langue et cligne de l'œil cyniquement. "Elle est pas toujours aussi volontaire pour stopper la Guerre Sanglante, qu'il paraît, tu vois ?"~ */
  IF ~~ THEN REPLY #33089 /* ~"Pourquoi les fiélons ne prennent-ils pas Sigil, tout simplement ?"~ */ GOTO 23
  IF ~~ THEN REPLY #32794 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32805 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #32806 /* ~Il se met à rire, mais son rire se transforme en toux. "Te méprends pas : les tanar'ris et les baatezus veulent Sigil dur comme fer. C'est l'terrain l'plus important du multivers - la Cage, c'est la Cité des Portes et elle a des connexions *partout*. Tu peux pas l'ignorer, parce qu'si tu sers dans la Guerre Sanglante, et qu'tu veux gagner, *faut* qu'tu l'aies."~ */
  IF ~~ THEN REPLY #32807 /* ~"Continue…"~ */ GOTO 24
  IF ~~ THEN REPLY #32808 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32809 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #32810 /* ~L'homme tousse à nouveau. "C'est juste qu'les fiélons vont pas la *prendre* tant qu'la Dame s'en occupe. Elle est dure à cuire, et ses lames coupent plus profond qu'aucun croc d'fiélon. Et ça lie les pieds des fiélons comme tu peux pas savoir. La dame bien calme, ses mains dans ses manches, qui r'tient la Guerre Sanglante à elle toute seule." Il rit avec amertume.~ */
  IF ~  NearbyDialog("DGrace")
~ THEN EXTERN ~DGRACE~ 134
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32811 /* ~"Mais les fiélons sont toujours admis à Sigil ?"~ */ GOTO 25
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32812 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32813 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 25 // from: 24.1
  SAY #32814 /* ~"Oh, c'est ben certain. Ils peuvent pas s'battre dans les rues… pas trop. En tant qu'terrain neutre, Sigil leur permet d'branler leur râtelier sans s'entre-tuer. Y'a des fois où ils en discutent ensemble ici. La paix durera quand même pas longtemps…"~ */
  IF ~~ THEN REPLY #32815 /* ~"Continue…"~ */ GOTO 26
  IF ~~ THEN REPLY #32816 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32817 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #32818 /* ~"Aussi, l'fait qu'ils peuvent pas s'massacrer entre eux dans les rues veut pas dire qu'il y a pas d'espions, d'recrutement et d'attaques sournoises. Ils s'battent avec des mensonges et des mots, bige. Quelquefois c'est tout dans l'baratin. Et y'a aussi les places sûres. Des endroits où ils peuvent s'refroidir les griffes jusqu'à la prochaine escarmouche…"~ */
  IF ~~ THEN REPLY #32819 /* ~"Continue…"~ */ GOTO 27
  IF ~~ THEN REPLY #32820 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32821 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #32822 /* ~"Et ils aiment recruter ici, aussi. Cherchent des p'tits gars avec un peu d'avidité dans leur cœur pour les embarquer dans leur glorieuse armée." Il s'arrête de parler pour te regarder de plus près. "P'têt qu'ils t'ont déjà recruté une fois, hein, matois ? T'as l'air d'avoir goûté à la guerre."~ */
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32823 /* ~"J'en doute."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",0)
~ THEN REPLY #32824 /* ~"Peut-être."~ */ DO ~SetGlobal("Memory_Ghysis","GLOBAL",1)
~ GOTO 63
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32825 /* ~"J'en doute."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32884 /* ~"Peut-être."~ */ GOTO 28
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32885 /* ~"Peut-être. Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~  Global("Memory_Ghysis","GLOBAL",1)
~ THEN REPLY #32886 /* ~"Peut-être. De toute façon, je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 28 // from: 27.2 27.3
  SAY #32887 /* ~"La guerre laisse des cicatrices sur toi. Tu l'*saurais*. Et tu voudrais *jamais* y retourner."~ */
  IF ~~ THEN REPLY #32888 /* ~"Est-ce qu'ils recrutent souvent ?"~ */ GOTO 29
  IF ~~ THEN REPLY #32889 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32890 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 29 // from: 28.0 64.0
  SAY #32891 /* ~Il acquiesce sévèrement. "Tu peux en être sûr. Sigil est la meilleure source d'chair à canon des plans. À côté, toutes les autres planètes et leurs habitants primaires… c'est trop d'boulot."~ */
  IF ~~ THEN REPLY #32892 /* ~"Alors, tu as d'autres conseils pour survivre à la Guerre ?"~ */ GOTO 15
  IF ~~ THEN REPLY #32893 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32894 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 30 // from: 18.0 19.1 20.0
  SAY #32895 /* ~"À moins qu'ils ne t'veulent pas, t'as aucune chance. J'ai jamais entendu dire qu'ils le faisaient avec des recrues mauvaises ou quelqu'un sur qui ils voulaient vraiment garder leurs griffes. Essayer d'être plus malin qu'un tanar'ri, c'est risqué, mais ça peut s'faire… les baatezus sont beaucoup plus dangereux, avec leurs contrats. Si t'en signes un, t'es damné à vie…"~ */
  IF ~~ THEN REPLY #32896 /* ~"Continue…"~ */ GOTO 31
  IF ~~ THEN REPLY #32897 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32898 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #32899 /* ~"Tu peux essayer d'les flatter un peu, d'leur passer la d'la pommade puis d't'enfuir à toutes jambes… mais pour aller où ? Y'en a tant…"~ */
  IF ~~ THEN REPLY #32900 /* ~"Et mourir au cours de la Guerre Sanglante est *particulièrement* terrible ?"~ */ GOTO 19
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #32901 /* ~"Alors, comment tu as échappé à la Guerre Sanglante ?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49558 /* ~"Alors, comment est-ce que tu as survécu à la Guerre Sanglante, déjà ?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49559 /* ~"Alors, comment est-ce que tu as survécu à la Guerre Sanglante, déjà ?"~ */ GOTO 70
  IF ~~ THEN REPLY #32902 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32903 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 32 // from: 11.2
  SAY #32904 /* ~"S'il fallait l'résumer, j'dirais ça : la Guerre Sanglante dure depuis une bon sang d'éternité, et elle continuera une éternité, jusqu'à c'qu'elle se retrouve elle-même inscrite au livre des morts. Les tanar'ris, champions du *chaos* et du mal essaient d'massacrer ces fumiers verts de baatezus, les champions d'la *loi* et du mal. Ils s'exterminent pour se prouver mutuellement c'que le mal *devrait* être, si t'arrives à le croire. Ha !"~ */
  IF ~~ THEN REPLY #32905 /* ~"D'après toi, qu'est-ce qui se passerait si quelqu'un mettait fin à la Guerre Sanglante ?"~ */ GOTO 33
  IF ~~ THEN REPLY #32906 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32907 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #32908 /* ~"Tu pourras rien changer à cette guerre ! Elle est bougrement trop *totale*. T'es qu'une pierre, un caillou dans un océan qu'est un caillou dans un autre océan qu'est un caillou dans un autre océan et ainsi de suite. En tant que caillou, ton but est de pas te faire remarquer et de t'cacher au fond, avec la lie…"~ */
  IF ~~ THEN REPLY #32909 /* ~"Continue…"~ */ GOTO 34
  IF ~~ THEN REPLY #32910 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32911 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #32912 /* ~"Si tu pouvais changer quelqu'chose - c'que tu peux *pas* faire - tu d'vrais pas *essayer*, parce qu'alors les plans y s'écrouleraient."~ */
  IF ~~ THEN REPLY #32913 /* ~"Les plans s'écrouleraient ? Pourquoi ?"~ */ GOTO 35
  IF ~~ THEN REPLY #32914 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32915 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #32916 /* ~Il lève les mains, tels deux piliers. "La Guerre Sanglante est énorme, comme une poutre sanglante qui supporterait les plans… fais-la tomber, et un tas de plans s'écrouleront avec. Y'a pas mal de bagage sur l'dos d'la Guerre." Il se met soudain à braire comme un âne, en riant avec amertume. "La plus grosse, et la plus méchante bête de somme des plans…"~ */
  IF ~~ THEN REPLY #32917 /* ~"Continue…"~ */ GOTO 36
  IF ~~ THEN REPLY #32918 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32919 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #32920 /* ~Il a un sourire cynique. "En plus, la guerre est comme qui dirait *excellente* pour les affaires." Il éclate d'un rire creux, puis semble sur le point de se mettre à pleurer. "Eh… fais pas gaffe à ça… une autre question ?"~ */
  IF ~~ THEN REPLY #32921 /* ~"Ça va ? Tu as l'air peiné…"~ */ GOTO 37
  IF ~~ THEN REPLY #32922 /* ~"Oui, j'ai une autre question…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ghysis_1","GLOBALGood",1)
~ GOTO 11
  IF ~~ THEN REPLY #32923 /* ~"Non, je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #32924 /* ~L'homme sourit tristement. "Ouais, ouais… écoute, matois : J'suis pas prêtre, et j'voudrais même pas l'être, mais écoute ça : garde le mal loin de ton cœur. Si tu meurs avec le mal dans ton cœur, ton esprit tombe dans les Plans Inférieurs, et là, tu deviens un suppliant…"~ */
  IF ~~ THEN REPLY #32925 /* ~"Continue…"~ */ GOTO 38
  IF ~~ THEN REPLY #32926 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32927 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #32928 /* ~"Et devine c'qui s'passe après ça ? Les suppliants des abysses s'retrouvent fantassins… et s'battent pour l'éternité dans la Guerre Sanglante." Il glousse, et secoue la tête. "Et c'est pour ça qu'les baatezus et les tanar'ris essaient d'corrompre tout c'qu'ils touchent ; parce qu'ils ont besoin de plus de troupes. Rappelle-toi ça : garde le mal loin d'ton cœur, bige."~ */
  IF ~~ THEN REPLY #32929 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32930 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 39 // from: 11.9
  SAY #32931 /* ~"D'accord, en voilà une : laisse-moi t'expliquer c'que 'viande' signifie pour eux. Ils récupèrent quelques mercenaires mortels mauvais, disons quelques millions, et les laissent se massacrer entre eux sans raison - une bataille sans but pour un morceau d'terre oubliée par les puissances. Devine où vont *toutes* leurs âmes ?"~ */
  IF ~~ THEN REPLY #32932 /* ~"Où ça ?"~ */ GOTO 40
  IF ~~ THEN REPLY #32933 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32934 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #32935 /* ~"Leurs âmes s'incrustent dans les plans maudits sur lesquels ils se battent, et d'là, ils peuvent être arrachés à cette gadoue pour s'battre à nouveau en tant qu'lémures ou quoi qu'ce soit qu'ces bougres de fiélons deviennent. Plus ils ramassent de bougres de suppliants, plus ils ont de troupes."~ */
  IF ~~ THEN REPLY #32936 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32937 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 41 // from: 11.3
  SAY #32938 /* ~"T'as sûrement raison d'te demander c'qui a provoqué ce chantier en premier lieu : c'qui a poussé ces fiélons à croiser l'fer en premier lieu, s'mordant et s'griffant mutuellement jusqu'à ce que ce soit leur seule raison d'vivre…"~ */
  IF ~~ THEN REPLY #32939 /* ~"Continue…"~ */ GOTO 42
  IF ~~ THEN REPLY #32940 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32941 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #32942 /* ~"Simple : ils se sont rencontrés." Il soupire. "Les tanar'ris et les baatezus se sont croisés un jour, et comme deux poivrots, ils ont commencé à s'battre. C'est simple." Il fronce les sourcils. "Ouais…"~ */
  IF ~~ THEN REPLY #32943 /* ~"Continue…"~ */ GOTO 43
  IF ~~ THEN REPLY #32944 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32945 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #32946 /* ~"Maint'nant, écoute-ça : imagine deux *prêtres* bourrés qui croient tous les deux qu'ils connaissent la *seule* manière de vivre. Maint'nant, imagine que ces prêtres sont couverts d'écailles, d'crocs et d'cornes, et cruels comme tout, et mets-les dans une minuscule cellule… et t'auras une idée d'l'amour qui s'est créé entre eux. Et voilà ! L'origine d'la Guerre Sanglante."~ */
  IF ~~ THEN REPLY #32947 /* ~"Pourquoi est-ce que deux races *maléfiques* se combattent ?"~ */ GOTO 44
  IF ~~ THEN REPLY #32948 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32949 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #32950 /* ~"Les uns pensent qu'le mal doit être planifié et organisé. Les autres pensent qu'le mal doit être chaotique, et ramper à travers les plans. Le mal dans les deux cas, mais ça veut pas dire qu'ils peuvent se mettre d'accord sur quoi que ce soit. Vengeance, revanche… chacun veut exterminer l'autre pour qu'seul son type de mal subsiste. Ils se haïssent, comme… comme…"~ */
  IF ~~ THEN REPLY #32951 /* ~"Continue…"~ */ GOTO 61
  IF ~~ THEN REPLY #32952 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32953 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 45 // from: 11.8
  SAY #32954 /* ~L'homme acquiesce. "Ils paient pas autant qu'les tanar'ris, mais ils trahissent pas leur promesses écrites. Mais ils sont futés - des centaines de fois plus futés qu'quiconque, et ils ont conclu des contrats depuis l'aube des temps. Ils savent comment t'appâter avec des mots, ouais. Si tu signes, attends-toi à être pelé et mis à sécher dans une de leurs légions…"~ */
  IF ~~ THEN REPLY #32955 /* ~"Continue…"~ */ GOTO 46
  IF ~~ THEN REPLY #32956 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32957 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #32958 /* ~"Ils planifient tout. Ils dépensent plus de temps à préparer une seule escarmouche stratégique qu'les humains l'font pour une campagne." Il renifle, puis se gratte le menton. "D'habitude, ils rassemblent leurs forces sur l'Averne, la première strate de Baator."~ */
  IF ~~ THEN REPLY #32960 /* ~"À quoi ressemble l'Averne ?"~ */ GOTO 47
  IF ~~ THEN REPLY #32961 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32962 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32963 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #32964 /* ~"L'Averne ? Hum…" Il grimace, comme si parler de cet endroit l'angoissait. "C'est peuplé d'maudits et d'ceux qui vénèrent les maudits. Des contrées rougeâtres, aux sables empoisonnés, et aux jets de flammes qui hurlent partout. C'est ce que j'ai vu d'Baator, la strate d'l'Averne. Un endroit affreux."~ */
  IF ~~ THEN REPLY #32965 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32966 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32967 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 48 // from: 46.1 47.0 49.0 50.0 51.0 52.0 54.0
  SAY #32968 /* ~"Toutes sortes, à l'exception des biges mortels des plans. Des abishaïs et des cornugons, des lémures et des nuppéribos, des succubes… et la liste est longue."~ */
  IF ~~ THEN REPLY #32969 /* ~"Parle-moi des abishaïs."~ */ GOTO 49
  IF ~~ THEN REPLY #32970 /* ~"Parle-moi des cornugons."~ */ GOTO 50
  IF ~~ THEN REPLY #32971 /* ~"Parle-moi des lémures."~ */ GOTO 51
  IF ~~ THEN REPLY #32972 /* ~"Parle-moi des nupperibos."~ */ GOTO 52
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #32973 /* ~"Parle-moi des succubes."~ */ GOTO 53
  IF ~  !NearbyDialog("DGrace")
~ THEN REPLY #32974 /* ~"Parle-moi des succubes."~ */ GOTO 54
  IF ~~ THEN REPLY #32975 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32976 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #32977 /* ~"Ils sont l'gros de la plupart des armées baatezu. Y'en a diverses sortes, et ceux qui ont des écailles noires sont les plus faibles et les plus courants."~ */
  IF ~~ THEN REPLY #32978 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32979 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32980 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #32981 /* ~"Les cornugons sont *vraiment* des durs, matois. Il est rare d'en voir plusieurs ensemble, mais ils forment parfois des troupes d'élite. D'habitude, ils dirigent les troupes plus faibles, comme les abishaïs et les mercenaires mortels durant la bataille."~ */
  IF ~~ THEN REPLY #32982 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32983 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32984 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 51 // from: 48.2
  SAY #32985 /* ~"Les lémures sont ces… choses… qui ressemblent à des personnes fondues. Des bougres ennuyeux qui s'régénèrent, même lorsque t'es en train d'les tuer. Ils ressentent pas la douleur ou le danger, et ils fuient donc jamais la bataille. Tout juste bons à crever sur les lignes avancées."~ */
  IF ~~ THEN REPLY #32986 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32987 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32988 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 52 // from: 48.3
  SAY #32989 /* ~"Des espèces de p'tits cagueurs qu'ont des p'tites, p'tites têtes. Sourds, muets et abrutis, ils sont là qu'pour crever sur les lignes avancées. Sont durs à tuer aussi… même le plus p'tit morceau d'eux repousse, si tu lui laisses une chance de l'faire."~ */
  IF ~~ THEN REPLY #32990 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32991 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #32992 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 53 // from: 48.4
  SAY #32993 /* ~"Des tanar'ris - adorables mais mortelles, qu'elles sont. Elles séduisent les mortels et essaient d'les traîner dans les abysses." Il fait un signe de tête à Tombée-en-Disgrâce. "Si j'peux m'permettre, m'dame."~ */
  IF ~~ THEN EXTERN ~DGRACE~ 135
END

IF ~~ THEN BEGIN 54 // from: 48.5
  SAY #32997 /* ~"Des tanar'ris - adorables mais mortelles, qu'elles sont. Elles séduisent les mortels et essaient d'les traîner aux Abysses… plus d'suppliants, plus d'chair à canon pour la Guerre."~ */
  IF ~~ THEN REPLY #32998 /* ~"Quels sont les types de forces en présence dans la Guerre Sanglante ?"~ */ GOTO 48
  IF ~~ THEN REPLY #32999 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33000 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 55 // from: 11.5
  SAY #33001 /* ~"Dans plein d'endroits… *d'habitude* les Plans Inférieurs. Partout le long du fleuve Styx… les neuf strates de Baator, les quatre fourneaux de la Géhenne, la Gaste Grise, les froides et rouges Carcères - le plan prison - et cette cagure de puits sans fin qu'sont les Abysses." La Gaste Grise te semble étrangement familière…~ */
  IF ~~ THEN REPLY #33002 /* ~"Parle-moi de la Gaste Grise."~ */ GOTO 56
  IF ~~ THEN REPLY #33003 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33004 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #33005 /* ~"On l'appelle aussi 'l'obscurité'." Il hausse les épaules, puis frissonne, comme par pur réflexe. "Gris par tous les sens du mot. Les couleurs te brûlent les yeux, là-bas ; elles hurlent, elles sont criardes, et tes rêves te sont arrachés pour être répandus sur le sol, perdus pour toujours. Seules les guenaudes noires règnent là-bas… Les Dames Grises de la Gaste."~ */
  IF ~~ THEN REPLY #33006 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33007 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 57 // from: 11.7
  SAY #33008 /* ~L'homme acquiesce. "Les tanar'ris paient mieux qu'les baatezus, mais t'as besoin d'avoir deux ou trois têtes et des yeux sur tout l'corps, parce qu'tu peux pas leur tourner l'dos : ils sont le chaos, ils sont pleins d'lubies et d'manigances. La confiance, ou l'respect d'leur parole, ça leur importe peu…"~ */
  IF ~~ THEN REPLY #33009 /* ~"Continue…"~ */ GOTO 58
  IF ~~ THEN REPLY #33010 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33011 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 58 // from: 57.0
  SAY #33012 /* ~Il renifle, puis hausse les épaules. "Ils s'fichent de ce qui peut s'passer, tant que *quelque chose* se passe et qu'c'est mauvais. La plupart du temps, ils attaquent les baatezus plutôt que d's'entretuer."~ */
  IF ~~ THEN REPLY #33013 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33014 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 59 // from: 11.4
  SAY #33015 /* ~"Tu sais, d'temps en temps, des biges à la tête dure s'pointent pour chercher un boulot dans la Guerre Sanglante. Ils veulent juste un peu d'jonc, un peu d'boulot, puis reprendre le cours de leur vie. P'têt que j'étais une d'ces têtes dures. P'têt que j'étais un de ces mercenaires, et qu'j'ai entendu dire qu'il y avait du jonc à s'faire dans Guerre. P'têt qu'ça m'a intéressé…"~ */
  IF ~~ THEN REPLY #33016 /* ~"Continue…"~ */ GOTO 60
  IF ~~ THEN REPLY #33017 /* ~"Attends… Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33018 /* ~"Peu importe, en fait. Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #33019 /* ~"J'ai appris une bonne chose : on est comme des fourmis qui courent autour des talons de bougres de cagueurs de dieux. J'ai vu de grands hommes, qui prétendaient être de grands soldats…" Il secoue la tête. "Des soldats de *papier*. La Guerre est leur *fourneau*. Ça les réveille ou ça les *brûle*."~ */
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",0)
~ THEN REPLY #33020 /* ~"Alors, comment tu as survécu à la Guerre Sanglante ?"~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",1)
~ GOTO 62
  IF ~  Global("CW_Ghysis_Survive","GLOBAL",1)
GlobalLT("Ghysis","GLOBAL",2)
~ THEN REPLY #49556 /* ~"Alors, comment est-ce que tu as survécu à la Guerre Sanglante, déjà ?"~ */ GOTO 62
  IF ~  Global("Ghysis","GLOBAL",2)
~ THEN REPLY #49557 /* ~"Alors, comment est-ce que tu as survécu à la Guerre Sanglante, déjà ?"~ */ GOTO 70
  IF ~~ THEN REPLY #33021 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33022 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 61 // from: 44.0
  SAY #33023 /* ~Il se tord les mains, essayant de trouver les mots justes. "Tu vois, ils ne haïssent pas comme *nous*, nous haïssons. On ne sait même pas c'que c'est, la haine. On n'a qu'un, *qu'un seul* mot pour la 'haine'. Ils en ont…" Sa voix devient un murmure. "… des milliers, des milliers de milliers, leurs significations emmêlées et empilées comme des… cadavres. C'est pour *ça* qu'ils se battent."~ */
  IF ~~ THEN REPLY #33024 /* ~"Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33025 /* ~"Je n'ai pas d'autre question."~ */ GOTO 9
END

IF ~~ THEN BEGIN 62 // from: 11.0 31.1 31.2 60.0 60.1
  SAY #33026 /* ~Le visage de l'homme s'assombrit. "Eh… bien, v'là une chose dont j'discuterai pas, matois. La seule chose à dire, c'est qu'un homme fait c'qu'il doit faire pour échapper à la Guerre."~ */
  IF ~  Global("CW_Vrischika_Ghysis","GLOBAL",1)
~ THEN REPLY #49560 /* ~"Mais une certaine Vrischika m'a dit que tu avais dû tuer tes propres hommes pour échapper à la Guerre."~ */ GOTO 74
  IF ~~ THEN REPLY #33027 /* ~"Alors, je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33028 /* ~"Alors, je n'ai plus de questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 63 // from: 27.0 27.1
  SAY #33029 /* ~"La Guerre laisse des cicatrices sur toi. Tu l'*saurais*. Et tu voudrais *jamais* y retourner." Tes tempes commencent à devenir douloureuses alors que tu réfléchis aux propos de l'homme… un souvenir commence à refaire surface…~ */
  IF ~  CheckStatLT(Protagonist,9,WIS)
~ THEN REPLY #33030 /* ~Essaie de te souvenir.~ */ DO ~GiveExperience(Protagonist,500)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,8,WIS)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #33031 /* ~Essaie de te souvenir.~ */ DO ~GiveExperience(Protagonist,1000)
~ GOTO 65
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #33032 /* ~Essaie de te souvenir.~ */ DO ~GiveExperience(Protagonist,1500)
~ GOTO 65
  IF ~~ THEN REPLY #32996 /* ~Refoule les souvenirs.~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from: 63.3 68.0
  SAY #33035 /* ~"Matois ? Ça va ?"~ */
  IF ~~ THEN REPLY #33098 /* ~"Oui… Je vais bien. Alors, les fiélons recrutent souvent ?~ */ GOTO 29
  IF ~~ THEN REPLY #33099 /* ~"Ça va. Je voudrais te demander autre chose…"~ */ GOTO 11
  IF ~~ THEN REPLY #33100 /* ~"Ça va. Je n'ai pas d'autre question à te poser."~ */ GOTO 9
END

IF ~~ THEN BEGIN 65 // from: 63.0 63.1 63.2
  SAY #33036 /* ~La salle de conférence commence à s'évanouir alors que des images terribles suintent dans ton esprit… des images d'un lieu où les saisons ne ressemblent à rien de ce que tu as pu voir, entendre ou essayer d'éviter. Un endroit où les prières ne sont pas entendues, et tombent comme des pierres sur la terre… des éclairs sanglants parcourent ce qui fut autrefois le ciel, mais qui bouillonne maintenant sous tes pieds et crie lorsque tu te frottes contre…~ */
  IF ~~ THEN REPLY #33102 /* ~Continue à te souvenir…~ */ GOTO 66
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #33037 /* ~Tu cours au devant d'un grand groupe d'hommes, passant au travers de sombres canyons dont les parois frissonnent d'humidité et battent comme un cœur. Tu n'as que ton propre sang pour vêtement. Tu te tiens enfin à un endroit où le terrain gris cendre ondule comme un nid de vipères, s'enroulant autour de tes chevilles et murmurant ta malveillance à la terre. Tu marches sans fin, silencieusement, dans ces paysages incolores, où la fatigue semble *vivante* et te chasse comme une ombre sur la Gaste, et te flagelle avec le désespoir…~ */
  IF ~~ THEN REPLY #33112 /* ~Continue à te souvenir…~ */ GOTO 67
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #33039 /* ~À un moment donné, les hommes dépenaillés qui te suivent et toi rencontrez une sorcière assise sur un monceau de larves, poussant l'une de ces choses couvertes de bave d'une serre brisée. Tu fais signe à l'un de tes hommes de s'avancer pour lui parler ; la voix de crécelle de la sorcière porte jusqu'à tes oreilles…~ */
  IF ~~ THEN REPLY #33113 /* ~Continue à te souvenir…~ */ GOTO 68
END

IF ~~ THEN BEGIN 68 // from: 67.0
  SAY #33056 /* ~"Je veux lui parler" dit-elle, puis elle glousse. Ses yeux se mettent à briller alors qu'elle te fait signe, derrière l'homme. "Le bel homme qui mène cette troupe de dépenaillés. Je veux lui parler." … et c'est tout ce dont tu te souviens.~ */
  IF ~~ THEN GOTO 64
END

IF ~  True()
~ THEN BEGIN 69 // from:
  SAY #33057 /* ~Ce vieil homme trapu, voûté, a gardé les épaules carrées et les mains calleuses d'un travailleur ou d'un guerrier. Une aura de désespoir et de lassitude semble flotter autour de lui. Il est lancé dans un discours.~ */
  IF ~  Global("Ghysis","GLOBAL",0)
~ THEN REPLY #33114 /* ~Reste pour la conférence.~ */ DO ~SetGlobal("Ghysis","GLOBAL",1)
SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~  GlobalGT("Ghysis","GLOBAL",0)
~ THEN REPLY #33115 /* ~Reste pour la conférence.~ */ DO ~SetGlobal("Know_Blood_War","GLOBAL",1)
~ GOTO 0
  IF ~~ THEN REPLY #49551 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 11.1 31.3 60.2
  SAY #33059 /* ~Le visage de Ghysis s'assombrit. "Va caguer ! J'veux plus causer d'ça avec toi !"~ */
  IF ~~ THEN REPLY #49554 /* ~"Je voudrais te demander autre chose, alors…"~ */ GOTO 11
  IF ~~ THEN REPLY #49555 /* ~"Dans ce cas, je n'ai plus de questions."~ */ GOTO 9
END

IF ~~ THEN BEGIN 71 // from:
  SAY #33060 /* ~Il glousse et frappe dans ses mains. "Ça répond à *ça*, c'est sûr. J'parle d'la Guerre, matois… La Guerre Sanglante. Si ça t'intéresse, parles-en à Splinter, l'guide et portier d'la Salle des Fêtes. Il t'dira quand les conférences ont lieu."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #33061 /* ~Ghysis te fait un signe de tête. "R'bonjour, matois."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #33062 /* ~Le visage de l'homme s'assombrit. "Je… bien, c'est une chose dont j'parle pas, matois. Ça suffit d'raconter c'qu'il faut faire pour échapper à la Guerre."~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from: 62.0
  SAY #33063 /* ~L'homme rougit de colère. "Fais gaffe à toi, matois ! C'est un mensonge ! Un mensonge puant ! Est-ce que t'es *azimuté*, pour tailler la bavette avec un fiélon à propos d'la Guerre et croire tout c'qu'il dit ?!"~ */
  IF ~~ THEN REPLY #33124 /* ~"C'est ce qu'elle m'a dit. Je n'ai pas dit que je la croyais."~ */ GOTO 75
  IF ~~ THEN REPLY #33125 /* ~"Alors, qu'est-ce qui s'est passé ?"~ */ GOTO 75
  IF ~~ THEN REPLY #33126 /* ~"Laisse tomber. J'ai d'autres questions…"~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #49566 /* ~"Peu importe. Je n'ai plus de questions."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 75 // from: 74.0 74.1
  SAY #33064 /* ~"J'vais t'dire c'qui s'est passé, bige !" Il soupire et se calme légèrement. "J'faisais partie d'la compagnie d'l'Effigie Ardente… au départ, elle comptait entre autres cinquante-trois mercenaires mortels, mais on n'était plus que neuf. On campait quelque part sur l'Averne, ouais, en attendant des renforts pour la bataille suivante…"~ */
  IF ~~ THEN REPLY #33127 /* ~"Continue…"~ */ GOTO 76
  IF ~~ THEN REPLY #33128 /* ~"Désolé, mais je crois que j'écouterai le reste une autre fois."~ */ GOTO 9
END

IF ~~ THEN BEGIN 76 // from: 75.0
  SAY #33065 /* ~"Ben, j'en avais presque fini… en fait, j'devais terminer après cette bataille. L'problème était que si j'étais mort là-bas, j'y serais resté pour toujours - trop d'noirceur, trop d'mal dans mon cœur. J'me serais retrouvé suppliant sur Baator, éternel soldat de la Guerre." Il frissonne à cette pensée.~ */
  IF ~~ THEN REPLY #33129 /* ~"Qu'est-ce qui s'est passé ?"~ */ GOTO 77
  IF ~~ THEN REPLY #33130 /* ~"Désolé, mais je crois que j'écouterai le reste une autre fois."~ */ GOTO 9
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #33066 /* ~"Moi et deux aut' gars, on s'est enfuis comme des chiens, c'est c'qui s'est passé. On a détalé pendant quelques jours avant d'tomber sur ce grand pilier avec des têtes vivantes… une vision d'horreur, qu'c'était… elles baragouinaient et nous sifflaient, nous appelant pour qu'on s'rapproche. Cette nuit-là, j'me suis éloigné des autres et suis retourné parler au pilier."~ */
  IF ~~ THEN REPLY #33131 /* ~"Et alors… ?"~ */ GOTO 78
  IF ~~ THEN REPLY #33132 /* ~"Désolé, mais je crois que j'écouterai le reste une autre fois."~ */ GOTO 9
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #33067 /* ~Ghysis ferme les yeux et se frotte les tempes. "Je… J'ai demandé au pilier comment j'pourrais être libre, comment j'pourrais m'échapper d'Baator… et il m'a dit que je devais échanger deux d'mes compagnons." Il se tait, se mordille les phalanges et semble s'efforcer de retenir des larmes. "Pour moi… à c't'époque… c'était juste une question d'arithmétique."~ */
  IF ~~ THEN REPLY #33133 /* ~"Pour moi, tu les as assassinés."~ */ GOTO 80
  IF ~~ THEN REPLY #33134 /* ~"Le choix a dû être terrible."~ */ DO ~SetGlobal("CW_Ghysis_Survive","GLOBAL",2)
~ GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.1
  SAY #33068 /* ~Il acquiesce. "J'suis pas sûr que j'me pardonnerai à moi-même. Maintenant, j'suis juste un soldat qui cherche un endroit pour mourir. J'essaie d'effacer les traces du mal, de m'nettoyer l'intérieur avant d'mourir et d'retourner à la Guerre Sanglante. J'enseigne ici pour en tenir les gens éloignés, d'les empêcher d'avoir à faire un choix comme ça."~ */
  IF ~~ THEN REPLY #33136 /* ~"Je vois. Mais pour moi, tu les as tous les deux assassinés."~ */ GOTO 80
  IF ~~ THEN REPLY #33137 /* ~"Je comprends, Ghysis."~ */ GOTO 9
END

IF ~~ THEN BEGIN 80 // from: 78.0 79.0
  SAY #33069 /* ~Il acquiesce. "J'suis pas sûr que j'me pardonnerai à moi-même. Maintenant, j'suis juste un soldat qui cherche un endroit pour mourir. J'essaie d'effacer les traces du mal, de m'nettoyer l'intérieur avant d'mourir et d'retourner à la Guerre Sanglante. J'enseigne ici pour en tenir les gens éloignés, d'les empêcher d'avoir à faire un choix comme ça."~ */
  IF ~~ THEN REPLY #33138 /* ~"Je devrais peut-être en parler autour de moi, Ghysis - Les gens seraient sûrement ravis de savoir *comment* tu t'es sorti de la Guerre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_1","GLOBALGood",-1)
~ GOTO 81
  IF ~~ THEN REPLY #33139 /* ~"Très bien."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 81 // from: 80.0
  SAY #33070 /* ~"J'dirais pas qu'c'était juste, bige, mais tu peux pas nier que tout homme aurait fait pareil. J'appelle ça *survivre*, pas tuer… maintenant, laisse-moi tranquille. Le vieux Ghysis ne veut plus causer avec *toi*."~ */
  IF ~~ THEN REPLY #33140 /* ~"Dois-je être plus explicite, vieil homme ? Je te fais chanter. En échange de mon silence, tu vas me donner quelque chose de valeur."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ghysis_2","GLOBALGood",-1)
~ GOTO 82
  IF ~~ THEN REPLY #33141 /* ~"Rien… laisse tomber."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
~ GOTO 9
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #33071 /* ~Ghysis grimace, secouant la tête. "Tu… t'es dégoûtant, bige. Tiens, prends tout c'que j'ai… et ferme-la. Mais j'sens que si j'dois me retrouver dans la Guerre Sanglante, je sais qui il y aura à mes côtés…" Il te tend quelques pièces et une poignée d'autres objets.~ */
  IF ~~ THEN REPLY #33142 /* ~"C'est pas près d'arriver, Ghysis. Allez, finis cette conférence."~ */ DO ~SetGlobal("Ghysis","GLOBAL",2)
GivePartyGold(200)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("ClotChrm",Protagonist,1,0,0)
GiveItemCreate("BloodFly",Protagonist,1,0,0)
~ GOTO 9
END
