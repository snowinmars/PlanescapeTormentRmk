// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGS1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGS1~

IF ~  NumTimesTalkedToLT(1)
~ THEN BEGIN 0 // from:
  SAY #1910 /* ~L'homme lève les yeux lentement à ton approche. Il jette un œil sur toi puis ricane, dégoûté. "Par les Neuf Enfers, qui es-tu ?" Il plisse le nez. Les Hommes-Poussière ont peut-être perdu un de leurs chiens galeux." Il rit. "Ha ! Je n'ai *jamais* rien vu d'aussi laid."~ */
  IF ~~ THEN REPLY #1911 /* ~"À part ton reflet ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1912 /* ~"Fais attention à ce que tu dis si tu ne veux pas avoir de mauvaises surprises."~ */ GOTO 1
  IF ~~ THEN REPLY #1913 /* ~"Au revoir."~ */ GOTO 7
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 11.0 11.1
  SAY #1914 /* ~L'homme reste interloqué un moment, puis joue avec le manche de son poignard en ricanant. "Tu as l'air à point pour la saignée, chef."~ */
  IF ~~ THEN REPLY #1915 /* ~"Essaie un peu d'utiliser cette lame, et le seul que tu tueras, ce sera toi."~ */ GOTO 2
  IF ~~ THEN REPLY #1916 /* ~"Du calme, je n'ai aucun intérêt à te combattre."~ */ GOTO 3
  IF ~~ THEN REPLY #1917 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1918 /* ~"Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1919 /* ~Il saisit son arme. "Eh ben, chef, on va voir…"~ */
  IF ~~ THEN REPLY #1945 /* ~"Je t'avais prévenu…"~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #1920 /* ~"Ah non ?" Il crache à tes pieds. "Le sang faible et aqueux du lâche coulerait-il dans tes veines, bige ? Ou aurais-tu tout perdu lors de ta dernière raclée ?"~ */
  IF ~~ THEN REPLY #1921 /* ~"Si je me souviens bien, le sang aqueux des lâches coule dans les veines de ta mère… Et si je ne m'abuse, ça signifie que la moitié des bâtards de la cité sont de la même lignée que toi."~ */ GOTO 4
  IF ~~ THEN REPLY #1922 /* ~"Arrêtons ça avant que ça n'aille trop loin."~ */ GOTO 5
  IF ~~ THEN REPLY #1923 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1924 /* ~"Au revoir."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.1
  SAY #1925 /* ~L'homme cligne des yeux un instant, comme s'il digérait tes paroles, puis il rougit de colère. Il sort sa lame et il t'assène un coup.~ */
  IF ~~ THEN REPLY #1946 /* ~Défends-toi…~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #1926 /* ~"Non, non bige, ce n'est pas aussi simple. Tu devras *payer* ce privilège de ne pas user ma lame."~ */
  IF ~~ THEN REPLY #1927 /* ~"Bon, d'accord. Combien ?"~ */ GOTO 6
  IF ~~ THEN REPLY #1929 /* ~"Mais ta mère ne fait pas payer. Alors, pourquoi toi, si ?"~ */ GOTO 4
  IF ~~ THEN REPLY #1930 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1931 /* ~Pars.~ */ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #1932 /* ~"Tout ce que tu portes devrait régler nos comptes, selon mes calculs." Il rit. "Allez, donne-moi tout ça."~ */
  IF ~~ THEN REPLY #1936 /* ~Donne-lui tout ton argent.~ */ GOTO 10
  IF ~~ THEN REPLY #1937 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1938 /* ~Pars.~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 0.2
  SAY #1933 /* ~"La prochaine fois, réfléchis à deux fois avant de venir me parler, infection des reins de ta mère."~ */
  IF ~~ THEN REPLY #1939 /* ~"*Qu'est-ce* que tu as dit ?"~ */ GOTO 9
  IF ~~ THEN REPLY #1940 /* ~Laisse-le partir et va-t'en.~ */ EXIT
  IF ~~ THEN REPLY #1941 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.3 3.3 5.3 6.2 11.2
  SAY #1934 /* ~"Allez, retourne chez le boucher, poltron." Il rit.~ */
  IF ~~ THEN REPLY #1942 /* ~"*Qu'est-ce* que tu as dit ?"~ */ GOTO 9
  IF ~~ THEN REPLY #1943 /* ~Laisse-le partir et va-t'en.~ */ EXIT
  IF ~~ THEN REPLY #1944 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0 8.0
  SAY #1935 /* ~"Oh, mes excuses les plus sincères, matois… tu es sourd ?" Il te lance un regard dédaigneux. "Oh, tu as pris quelques coups sur la tête, c'est ça ?" Il se frappe doucement la tête. "Faut-il que je te parle lentement, bige ?"~ */
  IF ~~ THEN REPLY #1947 /* ~Attaque-le.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1948 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #1949 /* ~Il lève les mains pendant que tu cherches ton argent. "Non, lâche, garde-le pour l'instant… Je le prendrai après que je t'aurai étripé." Il tire sa lame et sourit. "Je vais te rendre encore plus laid que tu ne l'es."~ */
  IF ~~ THEN REPLY #1950 /* ~Défends-toi…~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 11 // from:
  SAY #1951 /* ~"Hein ?" Il ricane. "Encore toi, bige ? Tu fais l'aumône ? Tu ferais mieux d'aller mendier ailleurs." Il t'examine des pieds à la tête. "Je n'ai jamais rien vu d'aussi laid."~ */
  IF ~~ THEN REPLY #1953 /* ~"À part ton reflet ?"~ */ GOTO 1
  IF ~~ THEN REPLY #1954 /* ~"Fais attention à ce que tu dis si tu ne veux pas avoir de mauvaises surprises."~ */ GOTO 1
  IF ~~ THEN REPLY #1955 /* ~"Au revoir."~ */ GOTO 8
END
