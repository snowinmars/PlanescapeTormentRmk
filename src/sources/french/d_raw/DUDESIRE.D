// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUDESIRE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DUDESIRE~

IF ~  Global("UDesire","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2987 /* ~La femme qui se tient devant toi est incroyablement attirante ; elle dégage une sorte d'aura intangible qui te donne *envie* de lui parler. Alors que tu avances vers elle, elle te regarde avec coquetterie, puis te dédie un sourire entendu.~ */
  IF ~~ THEN REPLY #2988 /* ~"Bonjour…"~ */ DO ~SetGlobal("UDesire","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #44849 /* ~Laisse-la.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 21.0
  SAY #44850 /* ~"Tu *veux* quelque chose… n'est-ce pas ?" Elle appuie sur le 's' de 'n'est-ce pas', en le laissant traîner doucement entre ses dents, avec sensualité. "Je peux t'aider. Dis-moi ce que tu veux et j'exaucerai ton vœu."~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN EXTERN ~DMORTE~ 475
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44851 /* ~"J'ai envie de *toi*."~ */ GOTO 3
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44852 /* ~"Je veux les armes du pouvoir."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44853 /* ~"Je veux des objets magiques."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44854 /* ~"Je veux des sorts magiques."~ */ GOTO 10
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44855 /* ~"Je veux la connaissance. J'ai quelques questions…"~ */ GOTO 15
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44856 /* ~"Je veux récupérer mes souvenirs, tous mes souvenirs."~ */ GOTO 17
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44857 /* ~"Qu'est-ce que tu as que je pourrais vouloir ?"~ */ GOTO 16
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #44858 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #44859 /* ~La femme ignore Morte, ses yeux rivés sur les tiens. Elle sourit, attendant une réponse.~ */
  IF ~~ THEN REPLY #44860 /* ~"J'ai envie de *toi*."~ */ GOTO 3
  IF ~~ THEN REPLY #44861 /* ~"Je veux les armes du pouvoir."~ */ GOTO 10
  IF ~~ THEN REPLY #44862 /* ~"Je veux des objets magiques."~ */ GOTO 10
  IF ~~ THEN REPLY #44863 /* ~"Je veux des sorts magiques."~ */ GOTO 10
  IF ~~ THEN REPLY #44864 /* ~"Je veux la connaissance. J'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #44865 /* ~"Je veux récupérer mes souvenirs, tous mes souvenirs."~ */ GOTO 17
  IF ~~ THEN REPLY #44866 /* ~"Qu'est-ce que tu as que je pourrais vouloir ?"~ */ GOTO 16
  IF ~~ THEN REPLY #44867 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 5.0
  SAY #44868 /* ~Elle humidifie ses lèvres et sourit ; tu sens quelque chose dans ta poitrine, comme si quelqu'un avait plongé sa main dans ton ventre et tirait sur tes entrailles. "Une simple demande. Et j'en ai une pour toi, voyageur : je te demande de me dire, de m'expliquer comment tu me désires. Parle-moi de ton envie… *Ensuite*, je te dirai quel est mon prix."~ */
  IF ~~ THEN REPLY #44869 /* ~"Ce n'est pas ce que je voulais dire… Je n'ai pas envie de toi."~ */ GOTO 4
  IF ~~ THEN REPLY #44870 /* ~"J'ai envie de toi. Ça suffit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44871 /* ~Décris la façon dont tu as envie d'elle.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44872 /* ~Montre-lui - physiquement - que tu as envie d'elle.~ */ GOTO 7
  IF ~~ THEN REPLY #44873 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #44874 /* ~Son sourire disparaît et elle semble attristée par ta réponse. "Tu désires me tourmenter, voyageur ? Le désir n'est pas une émotion fortuite… Tu ne veux *rien* ?"~ */
  IF ~~ THEN REPLY #44875 /* ~"Il y a autre chose dont j'avais envie…"~ */ GOTO 5
  IF ~~ THEN REPLY #44876 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 11.0 15.0 16.0
  SAY #44877 /* ~"Oui ? Allez, maintenant… Dis-moi…"~ */
  IF ~~ THEN REPLY #44878 /* ~"J'ai envie de *toi*."~ */ GOTO 3
  IF ~~ THEN REPLY #44879 /* ~"Je veux les armes du pouvoir."~ */ GOTO 10
  IF ~~ THEN REPLY #44880 /* ~"Je veux des objets magiques."~ */ GOTO 10
  IF ~~ THEN REPLY #44881 /* ~"Je veux des sorts magiques."~ */ GOTO 10
  IF ~~ THEN REPLY #44882 /* ~"Je veux la connaissance. J'ai quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #44883 /* ~"Je veux récupérer mes souvenirs, tous mes souvenirs."~ */ GOTO 17
  IF ~~ THEN REPLY #44884 /* ~"Qu'est-ce que tu as que je pourrais vouloir ?"~ */ GOTO 16
  IF ~~ THEN REPLY #44885 /* ~"Peut-être plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1 7.0
  SAY #44886 /* ~Son sourire se durcit. "Tu dois donner de la voix et de l'émotion à ton désir, sinon ce n'est que du vent pour moi. Tu dois me convaincre que tu désires vraiment ce que je peux te donner, sinon tu ne l'auras pas."~ */
  IF ~~ THEN REPLY #44887 /* ~Décris la façon dont tu as envie d'elle.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44888 /* ~Montre-lui - physiquement - que tu as envie d'elle.~ */ GOTO 7
  IF ~~ THEN REPLY #44889 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3 6.1
  SAY #44890 /* ~Tu essaies de l'attraper par les épaules, mais elle recule rapidement et tu ne saisis que du vide. "Ça ne suffit pas de simplement *vouloir* entrer dans le palais… un suppliant exprime ses désirs, après quoi seulement les portes s'ouvrent. Parle."~ */
  IF ~~ THEN REPLY #44891 /* ~"J'ai envie de toi. Ça suffit ?"~ */ GOTO 6
  IF ~~ THEN REPLY #44892 /* ~Décris la façon dont tu as envie d'elle.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 8
  IF ~~ THEN REPLY #44893 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.2 6.0 7.1
  SAY #44894 /* ~À mesure que tu parles, son sourire s'efface et elle se penche vers toi, attentive, pour te dévorer du regard. Sa seule présence te pousse à te révéler plus que tu ne le ferais d'ordinaire. Au bout d'un moment, elle ferme les yeux, prend une profonde inspiration et, soudain, la faim qu'elle t'inspire disparaît… ton désir te quitte, pour ne laisser derrière lui qu'un grand vide glacé. Elle rouvre les yeux et te sourit ; à présent, elle a l'air satisfaite… ou rassasiée.

"Qu'est-ce qui ne va pas, voyageur ? Tu ne veux plus de moi… ?"~ */
  IF ~~ THEN REPLY #44895 /* ~"Non… non. Qu'est-ce que tu as fait ?"~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #44896 /* ~Elle paraît perplexe. "Que veux-tu dire ?" Malgré son air innocent, tu es sûr qu'il vient de se produire un événement surnaturel. Elle t'a dérobé le désir qu'elle t'inspirait - elle te l'a volé, pour satisfaire un besoin contre nature, ou pour s'en nourrir - et il a disparu… à jamais.

"Allons, y a-t-il autre chose que tu désires ? Dis-le-moi…"~ */
  IF ~~ THEN REPLY #44897 /* ~"Je… je ne préférerais pas. Au revoir, Désir-non-Assouvi."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 1.2 1.3 1.4 2.1 2.2 2.3 5.1 5.2 5.3
  SAY #44898 /* ~Elle observe ton visage. "Si tu désires vraiment ces choses, tu dois d'abord répondre à cette requête pour me satisfaire : tu dois me dire comment tu veux ces objets. Parle-moi de ton désir et je te proposerai un prix."~ */
  IF ~~ THEN REPLY #44899 /* ~"Ce n'est pas ce que je voulais dire… Je n'ai pas envie de ce genre de choses."~ */ GOTO 11
  IF ~~ THEN REPLY #44900 /* ~"J'en ai envie… Ça ne suffit pas ?"~ */ GOTO 12
  IF ~~ THEN REPLY #44901 /* ~Décris la façon dont tu en as envie.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44902 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 17.0 18.0
  SAY #44903 /* ~Son sourire s'évanouit. "Ton désir est de me tourmenter, voyageur ? Le désir n'est pas une émotion fortuite… Tu ne veux *rien* ?" Elle attend, tout en continuant à t'observer.~ */
  IF ~~ THEN REPLY #44904 /* ~"Il y a autre chose dont j'avais envie…"~ */ GOTO 5
  IF ~~ THEN REPLY #44905 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #44906 /* ~Son sourire se durcit. "Tu dois donner de la voix et de l'émotion à ton désir, sinon il n'a aucune valeur pour moi. Tu dois me convaincre que tu désires vraiment ce que je peux te donner, sinon tu ne l'auras pas."~ */
  IF ~~ THEN REPLY #44907 /* ~"Ce n'est pas ce que je voulais dire… Je n'ai pas envie de ce genre de choses."~ */ GOTO 11
  IF ~~ THEN REPLY #44908 /* ~Décris la façon dont tu en as envie.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 13
  IF ~~ THEN REPLY #44909 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 12.1
  SAY #44910 /* ~À mesure que tu parles, son sourire s'efface et elle se penche vers toi, attentive, pour te dévorer du regard. Sa seule présence te pousse à te révéler plus que tu ne le ferais d'ordinaire. Au bout d'un moment, elle ferme les yeux, prend une profonde inspiration et, soudain, la faim qu'elle t'inspire disparaît… ton *besoin* te quitte peu à peu, pour ne laisser derrière lui qu'un grand vide glacé. Elle rouvre les yeux alors que tu te tais.

"Qu'est-ce qui ne va pas, voyageur ? Tu n'en veux plus… ?"~ */
  IF ~~ THEN REPLY #44911 /* ~"Non… Je veux dire, oui… Qu'est-ce que tu m'as fait ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 20.0
  SAY #44912 /* ~Elle paraît perplexe. "Que veux-tu dire ?" Malgré son air innocent, tu es sûr qu'il vient de se produire un événement surnaturel. Elle t'a dérobé un peu du désir qu'elle t'inspirait - elle te l'a volé, pour satisfaire un besoin contre nature, ou pour s'en nourrir. Si tu avais fini de l'exprimer, tu en es sûr, il aurait disparu… à jamais.

"Allons, y a-t-il autre chose que tu désires ? Dis-le-moi…"~ */
  IF ~~ THEN REPLY #44913 /* ~"Je… je ne préférerais pas. Au revoir, Désir-non-Assouvi."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 1.5 2.4 5.4 22.0
  SAY #44914 /* ~Elle fronce les sourcils, détournant le regard un moment. "La connaissance… je ne m'y intéresse pas. Tu as sûrement *d'autres* désirs, *d'autres* besoins dont tu peux me parler…"~ */
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44915 /* ~"Oui, il y a autre chose dont j'avais envie…"~ */ GOTO 5
  IF ~  GlobalLT("UDesire","GLOBAL",2)
~ THEN REPLY #44916 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #44917 /* ~"Non, je ne crois pas que je les partagerai avec toi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 1.7 2.6 5.6
  SAY #44918 /* ~"Tout ce dont tu pourrais avoir envie est à ma portée. Je peux tout obtenir. Parle-moi de ton désir…"~ */
  IF ~~ THEN REPLY #44919 /* ~"Il y *a* quelque chose dont j'ai envie…"~ */ GOTO 5
  IF ~~ THEN REPLY #44920 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.6 2.5 5.5
  SAY #44921 /* ~Elle sourit. "Il y a beaucoup de choses qu'on peut oublier au cours d'une vie… Et bien plus encore au cours de plusieurs vies. Je *peux* t'aider." Elle observe attentivement ton visage. "Explique-moi comment tu as envie de ces souvenirs. Parle-moi de ton désir et je te proposerai un prix."~ */
  IF ~~ THEN REPLY #44922 /* ~"Ce n'est pas ce que je voulais dire… Je ne veux pas les récupérer."~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #44923 /* ~"Qu'est-ce qui me prouve que tu pourras me les rendre ?"~ */ GOTO 18
  IF ~~ THEN REPLY #44924 /* ~"Je veux les récupérer… Ça ne suffit pas ?"~ */ GOTO 19
  IF ~~ THEN REPLY #44925 /* ~Décris la façon dont tu veux récupérer tes souvenirs.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44926 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.0
  SAY #44927 /* ~Elle ne semble pas bouger, mais soudain sa main se pose sur ton front, un doigt glissant le long de ta tempe. "Seulement ça…" C'est comme si le brouillard qui envahissait ta tête s'était dissipé, brièvement, suffisamment pour te permettre d'avoir un aperçu de souvenir… mais avant que tu aies le temps de te concentrer sur ton souvenir, le brouillard retombe. "Seulement ça. Dis-moi seulement *pourquoi* tu en as envie, parle-moi de ton désir et je te proposerai un prix…"~ */
  IF ~~ THEN REPLY #44928 /* ~"Ce n'est pas ce que je voulais dire… Je ne veux pas les récupérer."~ */ GOTO 11
  IF ~~ THEN REPLY #44929 /* ~"Je veux les récupérer… Ça ne suffit pas ?"~ */ GOTO 19
  IF ~~ THEN REPLY #44930 /* ~Décris la façon dont tu veux récupérer tes souvenirs.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44931 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.2 18.1
  SAY #44932 /* ~Son sourire se durcit. "Tu dois donner de la voix et de l'émotion à ton désir, sinon ce n'est que du vent pour moi. Tu dois me convaincre que tu désires vraiment ce que je peux te donner, sinon tu ne l'auras pas."~ */
  IF ~~ THEN REPLY #44933 /* ~"Qu'est-ce qui me prouve que tu pourras me les rendre ?"~ */ GOTO 18
  IF ~~ THEN REPLY #44934 /* ~Décris la façon dont tu veux récupérer tes souvenirs.~ */ DO ~SetGlobal("UDesire","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #44935 /* ~"Peut-être une autre fois. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3 18.2 19.1
  SAY #44936 /* ~À mesure que tu parles, son sourire s'efface et elle se penche vers toi, attentive, pour te dévorer du regard. Sa seule présence te pousse à te révéler plus que tu ne le ferais d'ordinaire. Au bout d'un moment, elle ferme les yeux, prend une profonde inspiration et, soudain, le désir que tu as de retrouver la mémoire disparaît… ton *besoin* te quitte peu à peu, pour ne laisser derrière lui qu'un grand vide glacé. Elle rouvre les yeux alors que tu te tais.

"Qu'est-ce qui ne va pas, voyageur ? Tu ne veux plus retrouver la mémoire… ?"~ */
  IF ~~ THEN REPLY #44937 /* ~"Non… Je veux dire, oui… Qu'est-ce que tu m'as fait ?"~ */ GOTO 14
END

IF ~  Global("UDesire","GLOBAL",1)
~ THEN BEGIN 21 // from:
  SAY #44938 /* ~Tu vois Désir-non-Assouvi. Alors que tu t'approches d'elle, elle se tourne vers toi et sourit.~ */
  IF ~~ THEN REPLY #44939 /* ~"Bonjour…"~ */ GOTO 1
  IF ~~ THEN REPLY #44940 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END

IF ~  Global("UDesire","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #44941 /* ~Tu vois Désir-non-Assouvi, qui semble recueillir ou se nourrir des désirs des autres, les extirpant à jamais de leurs esprits. Au moment où elle te voit, elle sourit.~ */
  IF ~~ THEN REPLY #44942 /* ~"J'avais quelques questions…"~ */ GOTO 15
  IF ~~ THEN REPLY #44943 /* ~"Je ne faisais que passer. Au revoir."~ */ EXIT
END
