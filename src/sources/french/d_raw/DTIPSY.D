// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTIPSY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DTIPSY~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3022 /* ~Ce vieil homme dont le visage est marqué par les épreuves a le regard perdu dans sa chope de bière blonde. La chope en étain cabossé est originale ; elle porte des gravures de runes étranges et de visages barbus, et elle est couverte d'une fine couche de givre. L'homme lève la tête à ton approche. "Bonjour… monsieur…" Il semble légèrement éméché.~ */
  IF ~~ THEN REPLY #7234 /* ~"Y a quelque chose qui va pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #46154 /* ~"Qu'est-ce que c'est que cette chope ?"~ */ GOTO 5
  IF ~~ THEN REPLY #46155 /* ~"J'ai des questions…"~ */ GOTO 1
  IF ~~ THEN REPLY #46156 /* ~"Bonjour et au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #46157 /* ~Il secoue tristement la tête et boit une nouvelle gorgée de bière. "Tu trouveras pas la moindre réponse ici, ça non."~ */
  IF ~~ THEN REPLY #46158 /* ~"Quelque chose ne va pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #46159 /* ~"Qu'est-ce que c'est que cette chope ?"~ */ GOTO 5
  IF ~~ THEN REPLY #46160 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0 5.0
  SAY #46161 /* ~Il soupire, rote derrière sa main et hoche la tête avant de boire une nouvelle gorgée. "Tu parles que ça va mal. J'étais apprenti et on m'a foutu à la porte. J'étais pété comme un coin et j'ai fait foirer la dernière expérience de mon mentor. Tout ça pour cette satanée boisson !" Il lance un regard noir à sa chope, mais sa colère retombe aussitôt et il se remet à boire. "Ça me bousille tout, cette saleté de vice…"~ */
  IF ~~ THEN REPLY #46162 /* ~"Dans ce cas, pourquoi n'arrêtes-tu pas de boire ?"~ */ JOURNAL #66804 /* ~Dans un café du Quartier des Gratte-Papier, j'ai fait la connaissance d'un homme à qui la boisson a fait perdre son poste d'apprenti-magicien. J'ignore comment il va pouvoir s'en sortir, vu qu'il ne semble pas avoir suffisamment de volonté pour cesser de boire.~ */ GOTO 3
  IF ~~ THEN REPLY #46163 /* ~"Si tu es trop faible pour arrêter, tant pis pour toi. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #46164 /* ~"C'est dommage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #46165 /* ~Il hausse les épaules et pousse un petit soupir. "Je ne peux pas. Il faut que je boive ! J'essaye bien de m'en empêcher mais, au bout du compte, j'arrive pas à résister. Je suis devenu une vraie loque…" Il finit sa chope et en commande une autre.~ */
  IF ~  Global("UDesire","GLOBAL",2)
~ THEN REPLY #46166 /* ~"Il y a quelqu'un que tu devrais aller voir. C'est une femme du nom de Désir-non-Assouvi, que tu trouveras à la Salle des Fêtes. Parle-lui de ton problème de boisson, et tu verras qu'il disparaîtra bien vite."~ */ DO ~GiveItemCreate("DwfMug",Protagonist,1,0,0)
AddexperienceParty(10000)
~ JOURNAL #66805 /* ~J'ai parlé de Désir-non-Assouvi à l'apprenti-magicien alcoolique du Quartier des Gratte-Papier. Je suis certain que les pouvoirs qu'elle possède permettront de guérir le pauvre bougre. En échange, il m'a donné sa chope refroidissante, en me disant qu'il n'en avait plus l'utilité.~ */ GOTO 4
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46167 /* ~"Je vois. Qu'est-ce que c'est que cette chope ?"~ */ GOTO 5
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46168 /* ~"Si tu es trop faible pour arrêter, tant pis pour toi. Au revoir."~ */ EXIT
  IF ~  !Global("UDesire","GLOBAL",2)
~ THEN REPLY #46169 /* ~"C'est dommage. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #46170 /* ~Son regard s'illumine. "C'est vrai ? Je… dans ce cas, je vais aller la voir sans attendre. Je… merci, monsieur. Tiens ! Prends-la, je n'en ai plus besoin." Ce disant, il te tend sa chope couverte de runes.~ */
  IF ~~ THEN REPLY #46171 /* ~"Merci… Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.1 1.1 3.1
  SAY #46172 /* ~"Ça ?" fait-il en regardant sa chope. "Je l'ai gagnée aux dés. Elle est enchantée et garde au frais tout ce qu'elle contient. Dans mon cas, je ne mets jamais dedans que de la bière de mauvaise qualité." Il fronce les sourcils, se frotte les yeux et boit une nouvelle gorgée.~ */
  IF ~~ THEN REPLY #46173 /* ~"Quelque chose ne va pas ?"~ */ GOTO 2
  IF ~~ THEN REPLY #46174 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END
