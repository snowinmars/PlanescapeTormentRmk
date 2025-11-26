// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKUUYIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DKUUYIN~

IF ~  GlobalGT("KYName","GLOBAL",2)
GlobalLT("KYName","GLOBAL",7)
~ THEN BEGIN 0 // from:
  SAY #20109 /* ~L'homme découragé te regarde, une lueur d'espoir dans les yeux ; pourtant, il s'exprime sans trahir aucune émotion. "Elle t'a donné mon nom et mon numéro ? Elle t'a proposé de l'argent, n'est-ce pas ? Je ne peux pas vivre. L'argent n'est rien sans nom. Trouve-moi mon nom." Ses yeux s'attardent sur ton visage, te fixant avec intensité.~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20110 /* ~"Oui. Elle me les a donnés."~ */ GOTO 5
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20111 /* ~Mensonge : "Non. Pas encore."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20112 /* ~"Non. Pas encore."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20113 /* ~"Non. Pas encore. Je continue à chercher. Au revoir."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 15
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #45396 /* ~"Elle m'a offert de l'argent si je les lui donnais."~ */ DO ~SetGlobal("KYName","GLOBAL",5)
~ GOTO 25
END

IF ~~ THEN BEGIN 1 // from: 0.1 17.0
  SAY #20114 /* ~Des spasmes musculaires parcourent son visage. "Pardonne-moi", dit-il "car je t'ai fait du tort en pensée. Je lis sur ton visage que tu as mon nom et mon numéro, pourtant ta voix me dit le contraire. Je te le redemande. As-tu mon nom et mon numéro ?"~ */
  IF ~~ THEN REPLY #20115 /* ~Mensonge : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 2
  IF ~~ THEN REPLY #20116 /* ~"Oui."~ */ GOTO 5
  IF ~~ THEN REPLY #20117 /* ~"Réponds d'abord à quelques questions, d'accord ?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20118 /* ~"Je dois demander trois fois et pas une de plus. C'est la loi. As-tu mon nom et mon numéro ?"~ */
  IF ~~ THEN REPLY #20119 /* ~Mensonge : "Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #20120 /* ~"Oui."~ */ GOTO 5
  IF ~~ THEN REPLY #20121 /* ~"Réponds d'abord à quelques questions, d'accord ?"~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.0 2.2 5.2 6.1
  SAY #20122 /* ~"Il n'y a pas de justice ici. On m'a fait du tort et je ne peux pas en parler. Je ne suis rien et je le resterai à jamais. Je ne te reverrai point."~ */
  IF ~~ THEN REPLY #20123 /* ~"Attends, j'ai ton nom et ton numéro, en fait…"~ */ JOURNAL #66390 /* ~J'ai rendu son nom et son numéro à Ku'u Yin, mais il les a refusés. Qu'il aille au diable.~ */ GOTO 4
  IF ~~ THEN REPLY #20124 /* ~"Réponds encore à quelques questions, d'accord ?"~ */ GOTO 4
  IF ~~ THEN REPLY #20125 /* ~"Très bien. Si c'est ce que tu veux."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1
  SAY #20126 /* ~Il secoue la tête et s'éloigne.~ */
  IF ~~ THEN REPLY #20127 /* ~"Alors, au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 0.0 1.1 2.1 17.1
  SAY #20128 /* ~"Puis-je les avoir ?"~ */
  IF ~~ THEN REPLY #20129 /* ~"Qu'est-ce que tu me donneras en échange ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_2","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #20130 /* ~"Oui. Tu t'appelles Ku'u Yin. Prends ton numéro."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_1","GLOBALLaw",1)
IncrementGlobalOnceEx("GLOBALGood_KY_1","GLOBALGood",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 7
  IF ~~ THEN REPLY #20131 /* ~"Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_1","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #20132 /* ~"Je ne peux rien te donner car je n'ai rien. Me donneras-tu mon nom et mon numéro ?"~ */
  IF ~~ THEN REPLY #20133 /* ~"Oui. Tu t'appelles Ku'u Yin. Prends ton numéro."~ */ DO ~TakePartyItemNum("KYName",1)
AddexperienceParty(2500)
SetGlobal("KYName","GLOBAL",7)
~ GOTO 8
  IF ~~ THEN REPLY #20134 /* ~"Non."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_KY_3","GLOBALGood",-1)
~ GOTO 3
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #20135 /* ~"Je te remercie pour mon nom et mon numéro. Oui. Ku'u Yin. Oui. Mais non. Je réalise maintenant que je n'ai plus besoin de numéro ici. Je me trouverai un autre numéro, si nécessaire. Je te donne mon vieux numéro. Cela peut t'aider. C'est une protection de la loi. L'acceptes-tu ?"~ */
  IF ~~ THEN REPLY #20136 /* ~"Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_KY_2","GLOBALLaw",4)
~ GOTO 9
  IF ~~ THEN REPLY #20137 /* ~"Non."~ */ DO ~TakePartyItemNum("KYName",1)
~ GOTO 14
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20138 /* ~Il les accepte gravement. "Je te remercie pour mon nom et mon numéro. Oui. Ku'u Yin. Oui. Tu as ma reconnaissance. Je me souviendrai de toi." Il jette le numéro autour de son cou comme une écharpe et il s'engloutit dans sa peau. Il commence à s'éloigner.~ */
  IF ~~ THEN REPLY #20139 /* ~"Attends. J'avais encore quelques questions…"~ */ JOURNAL #66391 /* ~J'ai rendu son nom et son numéro à Ku'u Yin, mais il ne m'a rien offert en échange. Peut-être aurais-je dû essayer de le faire chanter…~ */ GOTO 10
  IF ~~ THEN REPLY #20140 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ JOURNAL #66391 /* ~J'ai rendu son nom et son numéro à Ku'u Yin, mais il ne m'a rien offert en échange. Peut-être aurais-je dû essayer de le faire chanter…~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.0
  SAY #20141 /* ~"Laisse-le te réchauffer. Fais-lui confiance. Il te protègera. Adieu." Il se détourne et commence à s'éloigner de toi.~ */
  IF ~~ THEN REPLY #20142 /* ~"Attends. J'avais encore quelques questions…"~ */ JOURNAL #66392 /* ~J'ai rendu son nom et son numéro à Ku'u Yin. Il m'a offert son numéro, en disant qu'il me protégerait et me porterait chance.~ */ GOTO 10
  IF ~~ THEN REPLY #20143 /* ~"Au revoir."~ */ DO ~EscapeArea()
~ JOURNAL #66392 /* ~J'ai rendu son nom et son numéro à Ku'u Yin. Il m'a offert son numéro, en disant qu'il me protégerait et me porterait chance.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0 13.0 14.0
  SAY #20144 /* ~"Quelles sont-elles ?"~ */
  IF ~~ THEN REPLY #20145 /* ~"Parle-moi de toi."~ */ GOTO 11
  IF ~~ THEN REPLY #20146 /* ~"Parle-moi de cet endroit."~ */ GOTO 12
  IF ~~ THEN REPLY #20147 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 13
  IF ~~ THEN REPLY #20148 /* ~"Rien. Laisse tomber. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #20149 /* ~"Je suis Ku'u Yin. Je suis arrivé ici par accident. Maintenant que j'y suis, j'ai l'intention d'en savoir plus. Je dois en apprendre davantage."~ */
  IF ~~ THEN REPLY #20150 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #20151 /* ~"Bonne chance. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20152 /* ~"J'ai l'intention de le découvrir moi-même. Avec mon nom, je suis de nouveau une personne. Je peux apprendre. Je le ferai."~ */
  IF ~~ THEN REPLY #20153 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #20154 /* ~"Bonne chance. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #20155 /* ~"Je me prépare à faire face à ce nouveau monde avec ma vieille identité. Maintenant que je sais qu'il y a des pièges cachés, j'ai l'intention de découvrir ce que je peux. Je suis prêt maintenant."~ */
  IF ~~ THEN REPLY #20156 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #20157 /* ~"Bonne chance. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 7.1
  SAY #20158 /* ~Il jette le numéro autour de son cou comme une écharpe et il s'engloutit dans sa peau. "Je porterai donc mon vieux numéro. Tu as toute ma gratitude. Au revoir." Il se tourne et se dirige vers la sortie.~ */
  IF ~~ THEN REPLY #20159 /* ~"J'ai d'autres questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #20160 /* ~"Bonne chance. Au revoir."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 0.2 0.3
  SAY #20161 /* ~Il parle sans émotion tandis que tu t'approches. "Je t'implore de continuer à marchander avec la voleuse. Sans mon nom et mon numéro, je ne suis rien."~ */
  IF ~~ THEN REPLY #20162 /* ~"J'y vais. Réponds d'abord à quelques questions, d'accord ?"~ */ GOTO 16
  IF ~~ THEN REPLY #20163 /* ~"Très bien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 18.1 19.0 20.0 20.3 21.2 22.0 22.1 23.0 23.1 24.0
  SAY #20164 /* ~"Que désires-tu savoir ?"~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20165 /* ~"Parle-moi de toi."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20166 /* ~"Parle-moi de toi."~ */ GOTO 20
  IF ~~ THEN REPLY #20167 /* ~"Parle-moi de cet endroit."~ */ GOTO 21
  IF ~~ THEN REPLY #20168 /* ~"Parle-moi de Sigil."~ */ GOTO 21
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20169 /* ~"Rien. Au revoir."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20170 /* ~"Rien. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("KYName","GLOBAL",0)
GlobalLT("KYName","GLOBAL",3)
~ THEN BEGIN 17 // from:
  SAY #20171 /* ~"As-tu trouvé la femme avec mon nom et mon numéro ? Elle te dira qu'elle a gagné ce nom, mais c'est pas vrai. Elle l'a volé. Je veux mon nom et mon numéro. Elle est quelque part dans le Village."~ */
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20172 /* ~Mensonge : "Non, pas encore."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_KY_2","GLOBALLaw",-1)
~ GOTO 1
  IF ~  PartyHasItem("KYName")
~ THEN REPLY #20173 /* ~"J'ai ton nom et ton numéro."~ */ GOTO 5
  IF ~  Global("KYName","GLOBAL",2)
!PartyHasItem("KYName")
~ THEN REPLY #20174 /* ~"Oui, je l'ai trouvée, mais elle ne veut pas céder."~ */ DO ~SetGlobal("KYName","GLOBAL",3)
~ GOTO 18
  IF ~  !PartyHasItem("KYName")
~ THEN REPLY #20175 /* ~"Je n'ai encore rien trouvé."~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #20176 /* ~Il pâlit un moment. "Il le faut. Ce sont les miens. Elle me les a volés. Je demande ton assistance."~ */
  IF ~~ THEN REPLY #20177 /* ~"Je vais t'aider."~ */ GOTO 19
  IF ~~ THEN REPLY #20178 /* ~"Je t'aiderai peut-être si tu réponds encore à quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #20179 /* ~"Laisse tomber."~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 17.3 18.0 18.2
  SAY #20180 /* ~"J'ai besoin d'aide. Je te serai reconnaissant de toute l'aide que tu m'apporteras. Aide-moi s'il te plaît."~ */
  IF ~~ THEN REPLY #20181 /* ~"Est-ce que tu peux d'abord répondre à d'autres questions… ?"~ */ GOTO 16
  IF ~~ THEN REPLY #20182 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.0 16.1 16.4 21.0 21.1 21.3
  SAY #20183 /* ~"Je vivais autrefois dans une terre de machines métalliques et de portes qui s'ouvraient sur un mot. Je rêve des villes métalliques de jadis et des enveloppes vides que sont mes pareils. J'avais un numéro et un nom, maintenant je n'ai rien. Comme tous mes semblables, c'est tout ce que j'ai. C'est tout ce que j'ai eu à moi de toute ma vie. On me les a volés. Sans eux, je ne suis rien. Je demande ton aide."~ */
  IF ~~ THEN REPLY #20184 /* ~"Je vais voir ce que je peux faire. Réponds à d'autres questions…"~ */ JOURNAL #66389 /* ~J'ai rencontré un homme à qui l'on a volé son nom et son numéro. Il est originaire d'un monde de loi et de métal, où chaque chose à sa place et son numéro ; il se sent nu sans le sien.~ */ GOTO 16
  IF ~~ THEN REPLY #20185 /* ~"Qui a ton nom et ton numéro ?"~ */ JOURNAL #66389 /* ~J'ai rencontré un homme à qui l'on a volé son nom et son numéro. Il est originaire d'un monde de loi et de métal, où chaque chose à sa place et son numéro ; il se sent nu sans le sien.~ */ GOTO 23
  IF ~~ THEN REPLY #20186 /* ~"Qu'est-ce que tu me donnes en échange ?"~ */ JOURNAL #66389 /* ~J'ai rencontré un homme à qui l'on a volé son nom et son numéro. Il est originaire d'un monde de loi et de métal, où chaque chose à sa place et son numéro ; il se sent nu sans le sien.~ */ GOTO 22
  IF ~~ THEN REPLY #20187 /* ~"On verra. Réponds à d'autres questions."~ */ JOURNAL #66389 /* ~J'ai rencontré un homme à qui l'on a volé son nom et son numéro. Il est originaire d'un monde de loi et de métal, où chaque chose à sa place et son numéro ; il se sent nu sans le sien.~ */ GOTO 16
  IF ~~ THEN REPLY #20188 /* ~"On verra. Au revoir."~ */ JOURNAL #66389 /* ~J'ai rencontré un homme à qui l'on a volé son nom et son numéro. Il est originaire d'un monde de loi et de métal, où chaque chose à sa place et son numéro ; il se sent nu sans le sien.~ */ EXIT
  IF ~~ THEN REPLY #20189 /* ~"Je vais essayer. Au revoir."~ */ JOURNAL #66389 /* ~J'ai rencontré un homme à qui l'on a volé son nom et son numéro. Il est originaire d'un monde de loi et de métal, où chaque chose à sa place et son numéro ; il se sent nu sans le sien.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.2 16.3
  SAY #20190 /* ~"Je n'en sais rien. Je ne connais pas cet endroit. Je n'ai pas de nom. Je n'ai pas de numéro. Je ne me souviens pas de cet endroit. J'ai froid. J'ai peur. C'est étrange, d'être si nu. J'ai peur de mourir."~ */
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20191 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20192 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 20
  IF ~~ THEN REPLY #20193 /* ~"J'ai d'autres questions…"~ */ GOTO 16
  IF ~  Global("KYName","GLOBAL",0)
~ THEN REPLY #20194 /* ~"Hm. Intéressant. Au revoir."~ */ DO ~SetGlobal("KYName","GLOBAL",1)
~ GOTO 20
  IF ~  GlobalGT("KYName","GLOBAL",0)
~ THEN REPLY #20195 /* ~"Hm. Intéressant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.2
  SAY #20196 /* ~"Je n'ai rien. Je demande ton aide."~ */
  IF ~~ THEN REPLY #20197 /* ~"Je vais voir ce que je peux faire. Réponds à d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #20198 /* ~"On verra. Réponds à d'autres questions."~ */ GOTO 16
  IF ~~ THEN REPLY #20199 /* ~"Bon, laisse tomber. Au revoir."~ */ EXIT
  IF ~~ THEN REPLY #20200 /* ~"Je vais essayer. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.1
  SAY #20201 /* ~"Celle que l'on appelait Radine. Elle me les a volés. Je lui ai offert l'abri de mon nom et de mon numéro et elle me les a volés. Ils sont à moi de plein droit. Retrouve-la. Elle est dans le village."~ */
  IF ~~ THEN REPLY #20202 /* ~"Je vais voir ce que je peux faire. Réponds à d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #20203 /* ~"Dommage. Réponds à d'autres questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #20204 /* ~"Je vais voir ce que je peux faire."~ */ EXIT
  IF ~~ THEN REPLY #20205 /* ~"Dommage pour toi. Au revoir."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 24 // from:
  SAY #20206 /* ~Tu aperçois un homme terne dont le visage a la forme parfaite de la lune. Il te regarde sans expression et ne parle pas. À son apparence, sa voix doit être aussi monotone qu'une prairie.~ */
  IF ~~ THEN REPLY #20207 /* ~"Bonjour. J'espérais que tu pourrais répondre à quelques questions…"~ */ GOTO 16
  IF ~~ THEN REPLY #20208 /* ~Laisse-le tranquille.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 0.4
  SAY #45395 /* ~"Aucune somme peut acheter un nom ou un numéro. L'argent a rien à voir avec l'identité de chacun. Tu peux bien le comprendre, non ?"~ */
  IF ~~ THEN REPLY #45397 /* ~"C'est possible, oui. Je ferai de mon mieux. Au revoir."~ */ EXIT
END
