// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS4.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS4~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3204 /* ~Ce gentilhomme passerait inaperçu, si ce n'était son cocard, qui laisse présumer qu'il a été frappé en plein visage. Il s'incline légèrement à ton approche. "Bonjour, monsieur."~ */
  IF ~~ THEN REPLY #3205 /* ~"Bonjour. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40154 /* ~"Bonjour et au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #40155 /* ~"Rebonjour."~ */
  IF ~~ THEN REPLY #40156 /* ~"Bonjour. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #40157 /* ~"Bonjour et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 3.2 4.2 5.1 6.0 7.1 8.1 9.0 10.1 11.0 12.0 13.1 14.0 15.0 16.0 17.0
  SAY #40158 /* ~Il fait un signe de tête. "Oui, vas-y…"~ */
  IF ~~ THEN REPLY #40159 /* ~"Comment tu as fait pour te retrouver avec ce cocard ?"~ */ GOTO 3
  IF ~~ THEN REPLY #40160 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 7
  IF ~~ THEN REPLY #40161 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 10
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40162 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 11
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68125 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ GOTO 11
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40163 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 12
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40164 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 13
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40165 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 15
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40166 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 16
  IF ~  GlobalGT("Dolora","GLOBAL",0)
Global("Grace_Quest","GLOBAL",1)
GlobalGT("Ecco","GLOBAL",0)
GlobalGT("Yves","GLOBAL",0)
GlobalGT("Vivian","GLOBAL",0)
GlobalGT("Nenny","GLOBAL",0)
GlobalGT("SadJuli","GLOBAL",0)
GlobalGT("Marissa","GLOBAL",0)
GlobalGT("Kesai","GLOBAL",0)
GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40167 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 17
  IF ~~ THEN REPLY #40168 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #40169 /* ~Il arbore un petit sourire suffisant. "Oh, ça ? C'est une longue histoire. Une histoire qui ne t'intéresserait pas."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN EXTERN ~DMORTE~ 426
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40170 /* ~"Mais si… je t'en prie, raconte-moi."~ */ GOTO 4
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40171 /* ~"Très bien. J'avais une autre question…"~ */ GOTO 2
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #40172 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #40173 /* ~L'homme soupire en levant les yeux au ciel. "D'accord… mais je ne divulguerai pas les détails. Malgré ma remarque de tout à l'heure sur la longueur de l'histoire, je la résumerai en quatre mots : Kimasxi Langue-de-Vipère."~ */
  IF ~  Global("Kimasxi","GLOBAL",0)
~ THEN REPLY #40174 /* ~"Qui ?"~ */ GOTO 5
  IF ~  GlobalGT("Kimasxi","GLOBAL",0)
~ THEN REPLY #40175 /* ~"Oh… oui, je la connais."~ */ GOTO 6
  IF ~~ THEN REPLY #40176 /* ~"Je vois. J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40177 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40178 /* ~"Ah, je vois que tu ne lui as pas encore parlé. Je ne t'en dirai pas plus sur la merveilleuse Kimasxi, mon cher… je te conseille plutôt de lui parler directement. C'est l'une des prostituées de cet établissement, et l'élève la plus fascinante de Dame Grâce." Il te sourit.~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40179 /* ~"Dame Grâce ?"~ */ GOTO 9
  IF ~~ THEN REPLY #40180 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40181 /* ~"Je vais peut-être aller la chercher, alors. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #40182 /* ~L'homme soupire, rêveur. "Merveilleuse, n'est-ce pas ?" Il se reprend soudain. "Mais attention ! Ne prends pas mes paroles pour une marque d'affection, mon brave… car je suis fiancé à une femme que j'aime profondément. Mais Kimasxi… est une interlocutrice si… *différente*." Il te sourit.~ */
  IF ~~ THEN REPLY #40183 /* ~"Différente… oui. J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40184 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #40185 /* ~"Eh bien, je profite des plaisirs de la Maison de tolérance ! Pas toi ?"~ */
  IF ~~ THEN REPLY #40186 /* ~"Les plaisirs ?"~ */ GOTO 8
  IF ~~ THEN REPLY #40187 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40188 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #40189 /* ~"Oui, c'est exact… tu n'es pas ici pour parler avec les dames ? C'est après tout le but de cet établissement pour les clients. Converser avec les ravissantes étudiantes de Dame Grâce !"~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40190 /* ~"Dame Grâce ?"~ */ GOTO 9
  IF ~~ THEN REPLY #40191 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40192 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0 8.0 10.0
  SAY #40193 /* ~L'homme acquiesce. "Oui, et belle à croquer, avec ça. Je crois bien que je pourrais l'écouter des heures durant ! Il n'y a que Kimasxi que je trouve plus distrayante…" Son esprit semble vagabonder un instant. "Oh ! Mais comme je le disais, Dame Grâce est la tenancière de la Maison de tolérance. C'est sûr, elle est ici, quelque part… va lui parler toi-même. Tu ne seras pas déçu, je peux te l'assurer."~ */
  IF ~~ THEN REPLY #40194 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40195 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.2
  SAY #40196 /* ~"Quel est le citoyen de Sigil qui ne connaît pas la Maison de tolérance des Plaisirs Intellectuels ? Tu dois être nouveau ici, c'est sûr." Il soupire. "Se promener… converser avec les dames… c'est ça, la Maison de tolérance. Si tu es intéressé par son histoire et tout ça, je te conseille d'en parler avec Dame Grâce."~ */
  IF ~  !NearbyDialog("DGrace")
!Dead("Grace")
~ THEN REPLY #40197 /* ~"Dame Grâce ?"~ */ GOTO 9
  IF ~~ THEN REPLY #40198 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40199 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.3 2.4
  SAY #40200 /* ~L'homme s'interrompt pour réfléchir. "Je n'ai jamais échangé de paroles avec elle, mais je crois qu'elle s'appelle 'Ecco'."~ */
  IF ~~ THEN REPLY #40201 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40202 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.5
  SAY #40203 /* ~"Ravel… Ravel… tu veux parler de la légendaire guenaude noire ? J'ai du mal à croire que cette créature monstrueuse puisse être la mère de *quoi que ce soit*, et encore moins de cette bonne Kesai."~ */
  IF ~~ THEN REPLY #40204 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40205 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 2.6
  SAY #40206 /* ~"Elle a perdu son parfum ? Comme c'est étrange… je l'ai croisée il y a que quelques heures à peine et elle sentait très bon. Comme d'habitude, bien sûr. En fait, je crois que je n'ai jamais senti un parfum aussi attirant sur une femme."~ */
  IF ~~ THEN REPLY #40207 /* ~"En fait, c'est son parfum *personnel* qu'elle a perdu."~ */ GOTO 14
  IF ~~ THEN REPLY #40208 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40209 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40210 /* ~"Vraiment ? Je ne savais pas que c'était possible. En tout cas, j'espère qu'elle va le récupérer !"~ */
  IF ~~ THEN REPLY #40211 /* ~"J'avais une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40212 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 2.7
  SAY #40213 /* ~"Non. Je dois quand même avouer que cette Marissa m'inquiète. J'ai peur que quelque chose de terrible se cache dans sa chambre, et qu'elle ne me ménage que pour mieux me réduire en pièces. Ce qui est sûr, c'est que je serai content quand elle aura retrouvé son voile et qu'elle recommencera à rencontrer ses clients à l'extérieur de sa chambre noire."~ */
  IF ~~ THEN REPLY #40214 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40215 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.8
  SAY #40216 /* ~"Tout ce que je sais sur Ravel, c'est ce qu'en disent les contes pour enfants… qu'elle est incroyablement diabolique, qu'elle a provoqué le courroux de la Dame des Douleurs et qu'elle a été bannie à tout jamais."~ */
  IF ~~ THEN REPLY #40217 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40218 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.9
  SAY #40219 /* ~"Une dixième ? Une dixième étudiante… une dixième prostituée… hmmm. Non, je ne peux pas dire que je sois au courant, et encore moins que je sache de qui il s'agit."~ */
  IF ~~ THEN REPLY #40220 /* ~"J'ai une autre question…"~ */ GOTO 2
  IF ~~ THEN REPLY #40221 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END
