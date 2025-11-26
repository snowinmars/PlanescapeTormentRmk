// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINCAR3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DINCAR3~

IF ~  Global("Good_Incarnation","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #52688 /* ~"Il s'est réveillé."~ */
  IF ~~ THEN DO ~SetGlobal("Good_Incarnation","GLOBAL",1)
~ EXTERN ~DINCAR1~ 0
END

IF ~~ THEN BEGIN 1 // from:
  SAY #63861 /* ~"Silence tous les deux ! Assurons-nous qu'il va bien, vous vous disputerez plus tard."~ */
  IF ~~ THEN REPLY #63862 /* ~"Qu… qui es-tu ?"~ */ EXTERN ~DINCAR1~ 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63863 /* ~"Calme-toi. Il est seulement désorienté, comme nous le sommes tous. Laisse-lui un moment pour qu'il reprenne ses esprits."~ */
  IF ~~ THEN EXTERN ~DINCAR2~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63864 /* ~"Cette querelle ne nous conduit nulle part ! Laissez-le respirer, laissez-le tranquille."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 4
END

IF ~  Global("Good_Incarnation","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #63865 /* ~L'homme devant toi te ressemble mais il semble… plus calme. Il sourit à ton approche et hoche la tête comme pour approuver. "Te sens-tu bien ?"~ */
  IF ~~ THEN REPLY #63866 /* ~"Qui es-tu ?"~ */ DO ~SetGlobal("Good_Incarnation","GLOBAL",2)
~ GOTO 5
  IF ~~ THEN REPLY #63867 /* ~Laisse cet homme tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 8.0
  SAY #63868 /* ~"Avons-nous jamais eu un nom ? Ou seulement le premier d'entre nous ?" L'homme glousse doucement. "Sache que je suis ton allié dans cette affaire - comme les autres, j'ai vécu ma mort dans ton esprit et cette vision est tout ce qu'il en reste."~ */
  IF ~~ THEN REPLY #63869 /* ~"Mais qui *es*-tu ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #63870 /* ~"Ah…" Son sourire s'estompe et il te regarde d'un air inquiet. "Cela doit être déconcertant. Je vais essayer de t'expliquer - je suis une de tes incarnations. J'étais autrefois égaré mais je suis de nouveau ici."~ */
  IF ~~ THEN REPLY #63871 /* ~"Comment cela est-il possible ?"~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63872 /* ~"Je - ne sais pas. Tout ce que tu as pu toucher dans la Forteresse a fait ressurgir des parties de toi." Il s'interrompt un moment pour réfléchir. "L'un d'eux peut savoir comment cela s'est produit - moi, cela me dépasse."~ */
  IF ~~ THEN REPLY #63873 /* ~"Si tu es une partie de moi, il y a des choses que je dois savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63874 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~  Global("Good_Incarnation","GLOBAL",2)
~ THEN BEGIN 8 // from:
  SAY #63875 /* ~Cette incarnation sourit à ton approche. Elle parle d'une voix qui résonne légèrement. "Oui ?"~ */
  IF ~~ THEN REPLY #63876 /* ~"Qui es-tu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #63877 /* ~"Si tu es une partie de moi, il y a des choses que je dois savoir."~ */ GOTO 9
  IF ~~ THEN REPLY #63878 /* ~Laisse l'incarnation tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.1 10.1 11.1 12.1 13.0 14.1 15.0 16.0 17.1 18.1 19.0 20.0 29.2
  SAY #63879 /* ~"Demande."~ */
  IF ~  Global("Know_Merge","GLOBAL",1)
~ THEN REPLY #63880 /* ~"Pour pouvoir partir, tu dois de nouveau faire partie de moi. Acceptes-tu ?"~ */ GOTO 21
  IF ~  Global("Know_Traces","GLOBAL",1)
~ THEN REPLY #63881 /* ~"Tu as dit que, quand nous mourons, cela laisse des traces dans notre esprit. C'est ce qui vous a engendrés. N'est-ce pas ?"~ */ GOTO 29
  IF ~~ THEN REPLY #63882 /* ~"J'ai eu un nombre incalculable de vies. Pourquoi n'y a-t-il que trois incarnations ici ?"~ */ GOTO 10
  IF ~~ THEN REPLY #63883 /* ~"Sais-tu pourquoi je voulais devenir immortel ?"~ */ GOTO 14
  IF ~~ THEN REPLY #63884 /* ~"Quelle a été ta vie ?"~ */ GOTO 17
  IF ~~ THEN REPLY #63885 /* ~"Je suis venu dans cette Forteresse avec des amis… mais nous avons été séparés."~ */ GOTO 16
  IF ~~ THEN REPLY #63886 /* ~"Comment puis-je quitter cet endroit ?"~ */ GOTO 20
  IF ~~ THEN REPLY #63887 /* ~"Je n'ai plus rien à te demander - peut-être reparlerons-nous."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.2
  SAY #63888 /* ~"Je ne sais pas. Peut-être étions-nous les trois pièces encore présentes dans ton esprit."~ */
  IF ~~ THEN REPLY #63889 /* ~"Présentes dans mon esprit ? Comment ?"~ */ DO ~SetGlobal("Know_Traces","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #63890 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63891 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63892 /* ~"Je n'en suis pas sûr, mais je suppose que lorsque nous mourons, il doit rester dans ton esprit des fragments de ton ancienne personnalité - et je sais que, quelquefois, nous pouvons influer sur toi."~ */
  IF ~~ THEN REPLY #63893 /* ~"Comment ça ?"~ */ GOTO 12
  IF ~~ THEN REPLY #63894 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63895 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0 29.1
  SAY #63896 /* ~"Quand un danger te menace, ou que tu es proche d'un accomplissement, par exemple, j'ai découvert que je pouvais t'orienter dans la bonne direction."~ */
  IF ~~ THEN REPLY #63897 /* ~"Ainsi c'était *toi*, cet étrange picotement que je sentais à l'arrière de mon crâne ?"~ */ GOTO 13
  IF ~~ THEN REPLY #63898 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63899 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #63900 /* ~"Je serais bien incapable de te décrire ce que l'on ressent, mais c'est possible, en effet."~ */
  IF ~~ THEN REPLY #63901 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63902 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 9.3
  SAY #63903 /* ~"Non. Je pense que c'est dû à la peur. Peut-être que l'une des autres le sait mais pas moi."~ */
  IF ~~ THEN REPLY #63904 /* ~"Pourquoi penses-tu que cela était dû à la peur ?"~ */ GOTO 15
  IF ~~ THEN REPLY #63905 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63906 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #63907 /* ~L'homme esquisse un sourire, mais il est dépourvu de joie ; c'est un sourire triste. "Quel homme souhaite mourir ?" Il secoue lentement la tête. "Mais seul le premier d'entre nous connaît la raison qui nous a conduits ici."~ */
  IF ~~ THEN REPLY #63908 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63909 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 9.5
  SAY #63910 /* ~"Alors je crains que tes amis ne soient déjà morts." L'homme semble peiné. "Cet endroit abhorre les êtres vivants."~ */
  IF ~~ THEN REPLY #63911 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63912 /* ~"Je dois y réfléchir - nous reparlerons."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 9.4
  SAY #63913 /* ~"Elle fut longue et tranquille, pleine des chagrins et des joies d'une vie normale. Je fus cartographe, pendant un temps, et j'ai voyagé sur les plans pendant plusieurs années."~ */
  IF ~~ THEN REPLY #63914 /* ~"Comment est-ce que tu es mort ?"~ */ GOTO 18
  IF ~~ THEN REPLY #63915 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63916 /* ~"Très bien. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #63917 /* ~"Vers la fin, tandis que je traversais les champs de la Bytopie, des ombres terrifiantes prirent ma vie pendant mon sommeil. Je mourus sous leurs griffes."~ */
  IF ~~ THEN REPLY #63918 /* ~"Ce sont les ombres de tous ceux qui sont morts à notre place."~ */ GOTO 19
  IF ~~ THEN REPLY #63919 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63920 /* ~"Très bien. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #63921 /* ~L'homme semble peiné. "Oui, je sais… je le sais maintenant. On ne peut être dans cet endroit de regrets et ne pas ressentir leur agonie."~ */
  IF ~~ THEN REPLY #63922 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63923 /* ~"Très bien. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 9.6
  SAY #63924 /* ~"Je ne sais pas - c'est la première fois que je me retrouve ici. L'une des autres sait peut-être comment s'enfuir, mais moi je l'ignore."~ */
  IF ~~ THEN REPLY #63925 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63926 /* ~"Très bien. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 9.0
  SAY #63927 /* ~"J'ai une hypothèse - nous ne devrions pas exister ainsi et, aussi anormale que soit notre immortalité, cette situation ne fait qu'aggraver les choses." Il acquiesce de la tête. "Oui, je fusionnerai une nouvelle fois avec toi ."~ */
  IF ~~ THEN REPLY #63928 /* ~"Tu sais que tu cesseras d'exister ?"~ */ GOTO 22
  IF ~~ THEN REPLY #63929 /* ~"Très bien."~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #63930 /* ~Il acquiesce. "Oui, je sais."~ */
  IF ~~ THEN REPLY #63931 /* ~"Très bien."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.1 22.0 36.0
  SAY #63932 /* ~"Une dernière chose… juste ça…" L'incarnation s'interrompt un instant et te dévisage. "Avant de retourner au néant - il y a quelque chose que je voudrais savoir."~ */
  IF ~~ THEN REPLY #63933 /* ~"Je peux te consacrer un peu de temps - que désires-tu savoir ?"~ */ GOTO 24
  IF ~~ THEN REPLY #63934 /* ~"Je n'ai pas de temps à perdre. Si tu veux vraiment m'aider, tu dois t'abandonner à moi."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #63935 /* ~Il plonge son regard dans le tien, l'air grave. "As-tu *vécu* ta vie - la brève vie que tu as eue ? En définitive… cela valait-il le coup ?"~ */
  IF ~~ THEN REPLY #63936 /* ~"Non. Je me suis réincarné dans un endroit terrifiant et je regrette d'avoir vécu."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63937 /* ~"Cela a semblé tellement…. court. Le peu que j'ai pu vivre, je l'ai apprécié et je ne souhaite pas l'oublier."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63938 /* ~"J'ai trop voyagé pour vraiment l'apprécier. Nous verrons ce qu'il en est vraiment après avoir réglé cette affaire."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63939 /* ~"Ta question n'a aucune importance - je dois partir maintenant."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
  IF ~~ THEN REPLY #63940 /* ~"Cette vie n'a été que souffrances pour les autres ainsi que pour moi-même. J'aimerais qu'elle se termine et que les plans retrouvent la paix."~ */ DO ~PermanentStatChange(Protagonist,WIS,RAISE,1)
FullHeal(Protagonist)
GiveExperience(Protagonist,32000)
SetAnimState(Myself,ANIM_MIMEDIE)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 24.1 24.2 24.3 24.4
  SAY #63941 /* ~Il acquiesce, et, pendant un instant, il te semble qu'il va dire quelque chose mais, soudain, il s'effondre, la vie l'abandonnant pour s'écouler en toi. Tandis qu'il s'affaisse sur les pierres noires, tu sens un picotement à l'arrière de ton crâne qui te fait frissonner. Tu sais que cette incarnation n'est plus.~ */
  IF ~~ THEN REPLY #63942 /* ~"Au revoir…"~ */ DO ~IncrementGlobal("BD_ABSORB","GLOBAL",1)
SetGlobal("Absorb_Good_Incarnation","GLOBAL",1)
Kill(Myself)
Deactivate(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #63943 /* ~La troisième incarnation parle lentement mais elle semble peinée. "Pourquoi as-tu fait une chose aussi terrible ?"~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 32
END

IF ~~ THEN BEGIN 27 // from:
  SAY #63944 /* ~La troisième incarnation t'interrompt. "Peut-être qu'il n'y a pas de réponse à une telle chose. Peut-être qu'il n'y en a jamais eu."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 73
END

IF ~~ THEN BEGIN 28 // from:
  SAY #63945 /* ~La troisième incarnation t'interrompt. "Peut-être qu'il n'y a pas de réponse à une telle chose. Peut-être qu'il n'y en a jamais eu."~ */
  IF ~~ THEN EXTERN ~DINCAR1~ 74
END

IF ~~ THEN BEGIN 29 // from: 9.1
  SAY #63946 /* ~"Je peux ne pas tout comprendre mais, oui, il semble que cela soit le cas. Et nous pouvons avoir une légère influence."~ */
  IF ~  CheckStatGT(Protagonist,16,INT)
~ THEN REPLY #63947 /* ~"Ainsi, il est possible que le premier d'entre nous - le vrai nous, avant toutes ces incarnations, puisse être enfoui quelque part dans mon esprit."~ */ DO ~AddexperienceParty(96000)
~ GOTO 30
  IF ~~ THEN REPLY #63948 /* ~"Comme quoi ?"~ */ GOTO 12
  IF ~~ THEN REPLY #63949 /* ~"J'aimerais savoir autre chose."~ */ GOTO 9
  IF ~~ THEN REPLY #63950 /* ~"Très bien. Nous reparlerons plus tard."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #63951 /* ~Pendant un instant, l'expression de son visage se trouble, mais il est comme un miroir et tu te rends compte soudain à qui tu parles.~ */
  IF ~~ THEN REPLY #63952 /* ~"C'était *toi* le premier d'entre nous."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #63953 /* ~Le regard de l'incarnation se fait hagard et se détourne de toi. "Je sais à quoi tu penses - mais ce n'est pas le cas. Tu penses que le fait de connaître l'esprit du premier d'entre nous t'aidera ici. Il n'en est rien."~ */
  IF ~~ THEN REPLY #63954 /* ~"Mais pourquoi - j'ai tellement de questions auxquelles TU pourrais répondre. Pourquoi sommes-nous devenus immortels ? Pourquoi ?"~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #63955 /* ~"Car, si nous mourons, si nous mourons *vraiment*," l'incarnation lève la tête vers toi et ses yeux sont comme l'acier, "le royaume de la mort ne sera *pas* un paradis, pas pour nous. Si tu parles aux autres qui étaient ici, sache qu'une fraction du mal de leur vie n'est qu'une goutte d'eau comparée au mal de la mienne. Cette vie, même *sans* les milliers d'autres, me vaut une place dans les Plans Inférieurs pour l'éternité."~ */
  IF ~~ THEN REPLY #63956 /* ~"Mais tu as l'air tellement plus… calme. Et doté de meilleures intentions."~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #63957 /* ~"Je suis devenu ainsi, oui. Car, pour moi…" Sa voix prend une étrange sonorité. "Ce sont les *regrets* qui peuvent changer la nature d'un homme." Il soupire. "Mais c'était trop tard. J'étais déjà damné."~ */
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #63958 /* ~"J'ai appris que changer ma nature ne suffisait pas. J'avais besoin de plus de temps et de plus de vie. Alors je me rendis auprès de la plus puissante des Sœurs Grises pour lui demander une faveur - essayer de m'aider à vivre assez longtemps pour réparer le mal que j'avais fait. Me rendre immortel."~ */
  IF ~~ THEN REPLY #63959 /* ~"Et c'est ce qu'a fait Ravel. Mais quand elle t'a tué pour tester ton immortalité, tu as tout oublié. *Tout*."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #63960 /* ~Elle semble abattue. "Et les plans agonisent depuis. Le crime est grand et la faute est mienne."~ */
  IF ~~ THEN REPLY #63961 /* ~"J'ai tant de questions à te poser - qui es-tu, quelle a été ta vie ? Qui -"~ */ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #63962 /* ~L'incarnation secoue la tête, en te coupant la parole. "Quand je ne serai plus, quand je me fondrai en toi, tu auras les réponses que tu cherches. Il te faudra un peu de temps pour faire le tri, mais elles sont là." Elle sourit d'un air piteux. "Il est difficile de transmettre toute une vie avec des mots."~ */
  IF ~~ THEN REPLY #63963 /* ~"Très bien… nous allons devenir un et un seul. Es-tu prêt ?"~ */ DO ~SetGlobal("Absorb_Real_Incarnation","GLOBAL",1)
~ GOTO 23
END
