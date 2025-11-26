// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMERIMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMERIMAN~

IF ~  NumTimesTalkedTo(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49920 /* ~Cet homme ressemble à un vieux monsieur acariâtre et amer. Sa bouche fait une grimace qui s'accentue en te voyant venir vers lui. "Hilarion est peut-être mon nom, mais hilare, je ne le suis pas ! Va-t'en, jeunot ! J'ai pas de temps à perdre avec quelqu'un comme toi !" Il se met à tousser après t'avoir hurlé de partir.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49921 /* ~"Attends… Dolora voulait que je te parle."~ */ GOTO 2
  IF ~~ THEN REPLY #49922 /* ~"Bon… Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Merriman","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #49923 /* ~Hilarion te foudroie du regard. "Fiche le camp" siffle-t-il.~ */
  IF ~  Global("Dolora","GLOBAL",2)
~ THEN REPLY #49924 /* ~"Attends… Dolora voulait que je te parle."~ */ GOTO 2
  IF ~~ THEN REPLY #49925 /* ~"Bon… Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #49926 /* ~Hilarion te regarde d'un air soupçonneux. "Ah bon ? À *quel* sujet, hein ? Hum ? Eh bien ?"~ */
  IF ~~ THEN REPLY #49927 /* ~"Elle dit que tu es son premier amour et que tant que tu garderas les clés de son cœur, elle ne sera jamais libre d'en aimer un autre."~ */ GOTO 3
  IF ~~ THEN REPLY #49928 /* ~"Laisse tomber. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #49929 /* ~"Elle t'a dit ça, hein ? Ça me surprend. Peut-être que le fait de l'avoir laissée sous la tutelle de Maîtresse Grâce lui a permis de développer ses *sentiments*, ce que je n'avais jamais réussi. Quoi qu'il en soit…" Il tapote une poche de sa tunique. "… je ne te *donnerai* pas les clés."~ */
  IF ~~ THEN REPLY #49930 /* ~"Attends, ce sont littéralement 'les clés de son cœur' ?"~ */ GOTO 5
  IF ~~ THEN REPLY #49931 /* ~"Alors, qu'est-ce que tu veux en échange ?"~ */ GOTO 7
  IF ~~ THEN REPLY #49932 /* ~"Alors, je vais peut-être tout simplement te les *prendre*…"~ */ GOTO 4
  IF ~~ THEN REPLY #49933 /* ~"On en reparlera plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.2 5.2 6.1 10.1
  SAY #49934 /* ~"Si tu veux *mes* clés, jeunot, tu vas devoir les arracher de mes doigts froids et morts ! Et je ne crois pas qu'il soit sage de créer une dispute à la Salle des Fêtes…"~ */
  IF ~~ THEN REPLY #49935 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #49936 /* ~"D'accord. Alors, ce sont littéralement 'les clés de son cœur' ?"~ */ GOTO 5
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49937 /* ~"Très bien. Qu'est-ce que tu veux en échange, Hilarion ?"~ */ GOTO 7
  IF ~~ THEN REPLY #49938 /* ~"Dans ce cas, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.1
  SAY #49939 /* ~Il hoche la tête. "Les voilà. Dolora est une Construction, tu ne le savais pas ? Une créature de sorcellerie et de mécanique, une de mes plus belles créations." Hilarion soupire. "Mais froide, sans émotion, ni personnalité. Je l'ai emmenée à la Maison de tolérance et 'paramétrée' pour qu'elle ne puisse pas partir, dans l'espoir qu'au contact des autres, elle commencerait à développer sa propre personnalité. Les clés sont les outils permettant de la 'paramétrer' ; je pense qu'elle les veut car elles limitent sa croissance personnelle."~ */
  IF ~~ THEN REPLY #49940 /* ~"Alors, pourquoi est-ce que tu ne les lui rends pas, tout simplement ?"~ */ GOTO 6
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49941 /* ~"Qu'est-ce que tu veux en échange des clés ?"~ */ GOTO 7
  IF ~~ THEN REPLY #49942 /* ~"Je peux peut-être tout simplement te *prendre* les clés…"~ */ GOTO 4
  IF ~~ THEN REPLY #49943 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #49944 /* ~Hilarion fronce les sourcils. "Parce que je suis devenu un vieil homme amer et cruel, qui voit qu'il peut obtenir quelque chose de toi."~ */
  IF ~  Global("Merriman","GLOBAL",0)
~ THEN REPLY #49945 /* ~"Alors, vas-y… Qu'est-ce que tu veux ?"~ */ GOTO 7
  IF ~~ THEN REPLY #49946 /* ~"Pas si je te prends les clés, Hilarion…"~ */ GOTO 4
  IF ~~ THEN REPLY #49947 /* ~"On en reparlera plus tard. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.2 5.1 6.0
  SAY #49948 /* ~"Je veux… je veux oublier. J'ai vécu presque cent cinquante ans et j'ai vu toutes les pierres sensorielles que je voulais dans cette grande salle. Il ne me reste plus beaucoup de temps à vivre et je suis trop faible pour aller chercher de nouvelles expériences… Je dois donc trouver un moyen de toutes les oublier. Ainsi, je pourrai renouveler la découverte de ces expériences pendant le temps qu'il me reste à vivre…"~ */
  IF ~~ THEN REPLY #49949 /* ~"Alors… il suffit que je te donne un coup dans la nuque, ou quoi ?"~ */ JOURNAL #49952 /* ~Hilarion m'a dit qu'il me donnerait la clé du cœur de Dolora si je l'aidais à perdre la mémoire. Il va sans doute falloir que je cherche un objet capable d'atteindre ce résultat, puis que je le lui amène. Hilarion lui-même a évoqué une possibilité : l'eau du Styx.~ */ GOTO 8
  IF ~~ THEN REPLY #49950 /* ~"Qu'est-ce que je peux faire pour t'aider ?"~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ JOURNAL #49952 /* ~Hilarion m'a dit qu'il me donnerait la clé du cœur de Dolora si je l'aidais à perdre la mémoire. Il va sans doute falloir que je cherche un objet capable d'atteindre ce résultat, puis que je le lui amène. Hilarion lui-même a évoqué une possibilité : l'eau du Styx.~ */ GOTO 9
  IF ~~ THEN REPLY #49951 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #49953 /* ~"Non, espèce de lourdaud sanguinaire !"~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.1 8.0
  SAY #49954 /* ~"J'aurai besoin de quelque chose… un objet, une préparation… pour me permettre d'oublier. Comme une gorgée d'eau du Styx, par exemple."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49955 /* ~"Tiens, prends cette chope… Elle contient un Oiseau noir d'Ocanthus, un éclat de glace du Styx. Ça devrait effacer tes souvenirs…"~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49956 /* ~"Bien. Si je trouve quelque chose, je reviendrai… Au revoir."~ */ DO ~SetGlobal("Merriman","GLOBAL",1)
~ EXIT
END

IF ~  Global("Merriman","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #49957 /* ~Hilarion te regarde de travers. "Alors ? Tu as quelque chose pour effacer ces maudits souvenirs de mon esprit ? J'espère que c'est le cas… sinon tu n'auras jamais les clés du cœur de Dolora."~ */
  IF ~  PartyHasItem("DwfMug2")
Global("Know_Styx_Ice","GLOBAL",1)
~ THEN REPLY #49958 /* ~"Tiens, prends cette chope… Elle contient un Oiseau noir d'Ocanthus, un éclat de glace du Styx. Ça devrait effacer tes souvenirs…"~ */ DO ~DestroyPartyItem("DwfMug2",FALSE)
~ GOTO 11
  IF ~~ THEN REPLY #49959 /* ~"Je peux peut-être tout simplement te prendre les clés, Hilarion…"~ */ GOTO 4
  IF ~~ THEN REPLY #49960 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0 10.0
  SAY #49961 /* ~Hilarion prend la chope et attrape un morceau de papier dans sa poche. Il retourne la chope et verse la glace dans sa bouche… Elle fond instantanément, lui laissant une expression effrayée…~ */
  IF ~  HasItem("DlraKey",Myself)
~ THEN REPLY #49962 /* ~"Hilarion… ?"~ */ DO ~GiveItem("DlraKey",Protagonist)
AddexperienceParty(12000)
~ JOURNAL #66580 /* ~J'ai ramené à Hilarion un morceau de glace du Styx, un Oiseau Noir d'Ocanthus. En l'avalant, il a totalement perdu la mémoire. Il a eu ce qu'il souhaitait, mais je ne peux pas dire que je l'envie.~ */ GOTO 12
  IF ~  !HasItem("DlraKey",Myself)
~ THEN REPLY #49963 /* ~"Hilarion… ?"~ */ DO ~AddexperienceParty(12000)
~ JOURNAL #66580 /* ~J'ai ramené à Hilarion un morceau de glace du Styx, un Oiseau Noir d'Ocanthus. En l'avalant, il a totalement perdu la mémoire. Il a eu ce qu'il souhaitait, mais je ne peux pas dire que je l'envie.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #49964 /* ~Hilarion te regarde d'un air troublé, puis regarde le papier qu'il tient dans les mains. Il lit ce qui y est écrit à haute voix : "Félicitations, Hilarion : tu as encore recommencé. Remercie l'homme qui se trouve devant toi et donne-lui la clé qui se trouve dans ta poche. Pour plus d'informations, adresse-toi à Écharde, l'homme qui se trouve à l'entrée de ce bâtiment." Il te regarde de nouveau. "Eh bien… Visiblement, je dois te remercier, mon bon monsieur. Tiens… prends cette clé. Je ferais mieux de trouver cet 'Écharde' pour savoir ce qui se passe !"~ */
  IF ~~ THEN REPLY #49965 /* ~"Merci, Hilarion. Bonne chance."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #49966 /* ~Hilarion te regarde d'un air troublé, puis regarde le papier qu'il tient dans les mains. Il lit ce qui y est écrit à haute voix : "Félicitations, Hilarion : tu as encore recommencé. Remercie l'homme qui se trouve devant toi et donne-lui la clé qui se trouve dans ta poche. Pour plus d'informations, adresse-toi à Écharde, l'homme qui se trouve à l'entrée de ce bâtiment." Il te regarde de nouveau. "Eh bien… Visiblement, je dois te remercier, mon bon monsieur. Hum… Mais je n'ai pas la clé. Quelqu'un a dû me la prendre. Vraiment désolé ! Je ferais mieux de trouver cet 'Écharde' pour savoir ce qui se passe !"~ */
  IF ~~ THEN REPLY #49967 /* ~"Bonne chance, Hilarion. Au revoir."~ */ DO ~SetGlobal("Merriman","GLOBAL",2)
EscapeArea()
~ EXIT
END
