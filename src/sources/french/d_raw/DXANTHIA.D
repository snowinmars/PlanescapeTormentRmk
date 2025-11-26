// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DXANTHIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DXANTHIA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51104 /* ~Tu vois une jolie jeune femme très bien habillée. Contrairement à la plupart des habitants de ce quartier, elle n'a pas le teint jaune. Elle semble observer avec intérêt trois créatures voisines.~ */
  IF ~~ THEN REPLY #51105 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #51106 /* ~Ignore-la.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51107 /* ~Elle se retourne vers toi et tu lis une certaine contrariété sur son visage. "Oui ? Qu'est-ce que tu veux ?"~ */
  IF ~~ THEN REPLY #51108 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51109 /* ~"Rien, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.1 7.1 8.1 9.1 10.1 12.1 13.0 14.1 15.0
  SAY #51110 /* ~"Bien." Elle semble agacée.~ */
  IF ~~ THEN REPLY #51111 /* ~"Qui es-tu ?"~ */ GOTO 3
  IF ~~ THEN REPLY #51112 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 4
  IF ~~ THEN REPLY #51113 /* ~"Qu'est-ce que tu peux me dire sur ce quartier ?"~ */ GOTO 14
  IF ~~ THEN REPLY #51114 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51115 /* ~"Je m'appelle Xanthia." Elle te toise du regard et fronce les sourcils. "Tu veux autre chose ?"~ */
  IF ~~ THEN REPLY #51116 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51117 /* ~"Je m'en vais, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #51118 /* ~"Un combat va avoir lieu et je veux y assister." Elle sourit d'un air méchant. "Ça devrait être intéressant."~ */
  IF ~~ THEN REPLY #51119 /* ~"Un combat ?"~ */ GOTO 5
  IF ~~ THEN REPLY #51120 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51121 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 14.0
  SAY #51122 /* ~"Oui. Tu vois les trois thokolas, là-bas ?" Elle désigne trois mastodontes aux muscles saillants. "Ils vont essayer de tuer un abishaï." Elle ricane. "Quels rustres stupides !"~ */
  IF ~~ THEN REPLY #51123 /* ~"C'est quoi, un abishaï ?"~ */ GOTO 6
  IF ~~ THEN REPLY #51124 /* ~"Les thokolas ont l'air de savoir se défendre."~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51125 /* ~"C'est une créature des Plans Inférieurs, un baatezu je crois…" Elle fronce les sourcils, pensive. "Quoi qu'il en soit, les abishaïs sont cruels, ils ont des griffes acérées et ils lancent des sorts. Ils sont redoutables…"~ */
  IF ~~ THEN REPLY #51126 /* ~"Les thokolas ont l'air de savoir se défendre."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #51127 /* ~"En temps normal, je te répondrais oui, les thokolas sont de redoutables guerriers…" Elle sourit sournoisement et se penche pour te murmurer quelque chose. "Mais je sais quelque chose qu'ils ignorent…"~ */
  IF ~~ THEN REPLY #51128 /* ~"Quoi ?"~ */ DO ~SetGlobal("Know_Xanthia_Plan","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #51129 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51130 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #51131 /* ~"Seule la magie peut venir à bout des abishaïs." Elle ricane. "Les thokolas vont se faire massacrer, j'en suis sûre." Elle se redresse et fixe les thokolas, impatiente de voir le combat commencer.~ */
  IF ~~ THEN REPLY #51132 /* ~"Comment sais-tu qu'ils ne sont vulnérables qu'à la magie ?"~ */ GOTO 9
  IF ~~ THEN REPLY #51133 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51134 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #51135 /* ~Elle te lance un regard ennuyé. "Mon mari est un membre éminent de l'Harmonium. Les gardes de l'Harmonium sont entraînés à affronter des créatures telles que les abishaïs." Elle détourne le regard. "Voilà comment je le sais, c'est mon mari qui me l'a dit."~ */
  IF ~~ THEN REPLY #51136 /* ~"Pourquoi tu ne préviens pas les thokolas ?"~ */ GOTO 10
  IF ~~ THEN REPLY #51137 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51138 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #51139 /* ~"Pourquoi est-ce que je ferais ça ?" Elle sourit d'un air méchant. "C'est moi qui ai lancé l'idée du combat."~ */
  IF ~~ THEN REPLY #51140 /* ~"Pourquoi ?"~ */ GOTO 11
  IF ~~ THEN REPLY #51141 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51142 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #51143 /* ~"Mon mari essaie d'améliorer ses relations avec ses subordonnés en allant parfois boire un verre avec eux dans les tavernes du coin. Hier soir, il m'a obligée à l'accompagner. Ces trois rustres étaient là, se vantant de leurs prouesses guerrières. Ils étaient manifestement sous l'emprise de l'alcool. Au moment où ils partaient, l'un d'eux a trébuché et est tombé sur la table à laquelle j'étais assise." Elle marque une pause.~ */
  IF ~~ THEN REPLY #51144 /* ~"Continue."~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #51145 /* ~Elle fronce les sourcils de colère. "Les verres posés sur la table se sont presque tous renversés sur mes genoux et ont abîmé une robe de soirée très chère. Alors que ce crétin essayait de s'excuser, je lui ai murmuré que j'accepterais uniquement les excuses d'un grand guerrier, et que s'il en était vraiment un, il serait capable de vaincre un abishaï en se battant avec lui au corps à corps."~ */
  IF ~~ THEN REPLY #51146 /* ~"Tu vas les laisser se faire tuer parce qu'ils ont abîmé ta robe ?"~ */ JOURNAL #67304 /* ~J'ai rencontré une femme dénommée Xanthia dans le Bas Quartier. Elle était en colère car trois thokolas avaient abîmé une de ses robes du soir en versant de l'alcool dessus. Elle a décidé de se venger d'eux en n'acceptant leurs excuses que s'ils parvenaient à vaincre un abishaï au corps à corps. Elle affirme que le fiélon ne peut être blessé que par les sorts ou les armes magiques, que les thokolas ne possèdent pas. Elle a l'intention de regarder les pauvres bougres se faire tailler en pièces par l'abishaï. Faut-il que je les prévienne ?~ */ GOTO 13
  IF ~~ THEN REPLY #51147 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51148 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #51149 /* ~"Apparemment, la gravité de la situation t'échappe." Elle te regarde comme si tu n'étais qu'un enfant stupide. "J'ai été gênée et humiliée devant mon mari et ses subordonnés !" Elle semble en colère.~ */
  IF ~~ THEN REPLY #51150 /* ~"Je vois… j'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51151 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 2.2
  SAY #51152 /* ~"Rien…" Elle regarde autour d'elle d'un air dégoûté. "S'il n'y avait pas ce combat, je ne resterais pas ici une seconde de plus."~ */
  IF ~~ THEN REPLY #51153 /* ~"Quel combat ?"~ */ GOTO 5
  IF ~~ THEN REPLY #51154 /* ~"Je vois. J'ai quelques questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51155 /* ~"Je dois m'en aller, maintenant. Au revoir."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 16 19 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 15 // from:
  SAY #51156 /* ~Tu vois Xanthia. Elle te considère d'un air las. "Faut-il vraiment que tu reviennes m'ennuyer ?"~ */
  IF ~~ THEN REPLY #51157 /* ~"J'ai des questions…"~ */ GOTO 2
  IF ~~ THEN REPLY #51158 /* ~"Peu importe. Au revoir."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 19 even though they appear after this state */
~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 16 // from:
  SAY #51159 /* ~Tu vois Xanthia. Elle te foudroie du regard. "Tu as prévenu l'autre brute, hein ? "~ */
  IF ~~ THEN REPLY #51160 /* ~"Oui, j'ai fait ce qui me semblait juste."~ */ DO ~AddexperienceParty(2000)
~ GOTO 17
  IF ~~ THEN REPLY #51161 /* ~"Non, je ne sais pas de quoi tu parles."~ */ GOTO 18
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #51162 /* ~Elle acquiesce lentement. "Je n'oublierai pas cette insulte. Bonne journée." Elle se détourne et s'en va.~ */
  IF ~~ THEN REPLY #51163 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #51164 /* ~Elle te sourit. "Très bien, continue de mentir. Mais sache une chose, bige. Je n'oublie jamais une insulte. Bonne journée." Elle se détourne et s'en va.~ */
  IF ~~ THEN REPLY #51165 /* ~Pars.~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",3)
~ THEN BEGIN 19 // from:
  SAY #64167 /* ~Tu vois Xanthia. Elle te lance un regard ennuyé quand tu approches. "Bon… J'ai vu que tu parlais à ce balourd de Thorp. L'as-tu averti ?"~ */
  IF ~  !Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #64168 /* ~"Non, j'ai décidé de profiter du spectacle avec toi."~ */ GOTO 20
  IF ~  Global("Xanthia_Rewarded","GLOBAL",1)
~ THEN REPLY #68127 /* ~"Non, je ne risque pas de faire ça après le joli *cadeau* que tu m'as fait."~ */ GOTO 21
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #64169 /* ~Xanthia rit puis sourit. "Comme c'est aimable… Joins-toi à moi, s'il te plaît." Elle réfléchit un moment puis prend une bourse à sa ceinture. "Tiens… Prends ceci comme récompense pour ne pas avoir gâché la distraction d'une dame ." Elle te tend la bourse..~ */
  IF ~~ THEN REPLY #64170 /* ~"Merci, Xanithia. Au revoir."~ */ DO ~SetGlobal("Xanthia_Rewarded","GLOBAL",1)
AddexperienceParty(500)
GivePartyGold(500)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.1
  SAY #68128 /* ~Xanthia éclate de rire puis te sourit. "Comme c'est gentil…" Elle te tourne résolument le dos.~ */
  IF ~~ THEN REPLY #68129 /* ~"Au revoir."~ */ EXIT
END
