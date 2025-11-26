// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBROCUS6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DBROCUS6~

IF ~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 0 // from:
  SAY #3208 /* ~Cette étrange créature cubique ressemble autant à une machine qu'à un être organique. Alors que tu t'approches d'elle, elle te regarde en silence de ses grands yeux fixes. Son visage ne laisse transparaître aucune émotion.~ */
  IF ~~ THEN EXTERN ~DMORTE~ 429
END

IF ~  NumTimesTalkedTo(0)
!NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #40748 /* ~Cette étrange créature cubique ressemble autant à une machine qu'à un être organique. Alors que tu t'approches d'elle, elle te regarde en silence de ses grands yeux fixes. Son visage ne laisse transparaître aucune émotion.~ */
  IF ~~ THEN REPLY #40749 /* ~"Bonjour…"~ */ DO ~SetGlobal("Met_Modrons","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #40750 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #40751 /* ~Le modrone te regarde en silence.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40752 /* ~"J'avais des questions…"~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40753 /* ~"J'avais des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #40754 /* ~Laisse-le tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #40755 /* ~La voix métallique résonne, comme s'il s'agissait davantage d'une fausse note que d'une voix : "Bonjour à toi." Tu entends un léger *clic* alors que la créature cligne des yeux. Un silence gêné s'installe entre vous.~ */
  IF ~  Global("Modron_ID","AR0605",0)
~ THEN REPLY #40756 /* ~"J'avais des questions…"~ */ GOTO 4
  IF ~  Global("Modron_ID","AR0605",1)
~ THEN REPLY #40757 /* ~"J'ai des questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #65533 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 3.0
  SAY #40758 /* ~"Communique-nous ton identité."~ */
  IF ~~ THEN REPLY #40759 /* ~"Mais… mes questions…"~ */ GOTO 5
  IF ~~ THEN REPLY #40760 /* ~"Mon identité n'a pas d'importance."~ */ GOTO 6
  IF ~~ THEN REPLY #40761 /* ~Mensonge : "Je m'appelle… Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40762 /* ~"Je ne sais pas qui je suis exactement."~ */ GOTO 8
  IF ~~ THEN REPLY #40763 /* ~"Laisse tomber… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #40764 /* ~"Apprendre l'identité du sujet est une priorité importante. Répondre aux diverses questions posées par le sujet est une priorité peu importante. Communique-nous ton identité."~ */
  IF ~~ THEN REPLY #40765 /* ~"Mon identité n'a pas d'importance."~ */ GOTO 6
  IF ~~ THEN REPLY #40766 /* ~Mensonge : "Je m'appelle… Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40767 /* ~"Je ne sais pas qui je suis exactement."~ */ GOTO 8
  IF ~~ THEN REPLY #40768 /* ~"Laisse tomber… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 8.0
  SAY #40769 /* ~"L'opinion du sujet quant à l'importance de son identité est hors de propos. Nous considérons l'identité du sujet comme importante ; par conséquent, elle l'est."~ */
  IF ~~ THEN REPLY #40770 /* ~Mensonge : "Je m'appelle… Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40771 /* ~"Je ne sais pas qui je suis exactement."~ */ GOTO 8
  IF ~~ THEN REPLY #40772 /* ~"Laisse tomber… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.0 8.2
  SAY #40773 /* ~La créature s'incline légèrement vers l'avant, puis vers l'arrière, sur ses jambes métalliques. Tu ne sais pas si ce mouvement est censé indiquer un acquiescement ou un geste de soumission. "Nous nous identifierions au sujet Adahn comme étant des modrones de type tétradrone, variante ailée."~ */
  IF ~~ THEN REPLY #40774 /* ~"Maintenant j'ai quelques questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #40775 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.3 5.2 6.1
  SAY #40776 /* ~"Nous voulons savoir pourquoi."~ */
  IF ~~ THEN REPLY #40777 /* ~"Ça n'a pas d'importance, vraiment…"~ */ GOTO 6
  IF ~~ THEN REPLY #40778 /* ~"Je ne le sais pas moi-même. Je ne m'en souviens pas."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
~ GOTO 9
  IF ~~ THEN REPLY #40779 /* ~Mensonge : "Je m'appelle… Adahn."~ */ DO ~SetGlobal("Modron_ID","AR0605",1)
IncrementGlobal("Adahn","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Brocust6_1","GLOBALLaw",-1)
~ GOTO 7
  IF ~~ THEN REPLY #40780 /* ~"Laisse tomber… au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #40781 /* ~"Toute chose doit avoir un nom ; toute chose doit être identifiée. Nous trouvons ta réponse insatisfaisante, mais elle devra suffire pour l'instant." La créature s'interrompt et cligne des yeux en te regardant. "Nous nous identifierions au sujet comme des modrones de type tétradrone, variante ailée."~ */
  IF ~~ THEN REPLY #40782 /* ~"Maintenant j'ai quelques questions…"~ */ GOTO 10
  IF ~~ THEN REPLY #40783 /* ~"Je m'en vais, maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 2.1 3.1 7.0 9.0 11.1 12.1 13.1 14.1 15.0 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.0 25.0
  SAY #40784 /* ~"Le sujet est libre de poser une question."~ */
  IF ~  PartyHasItem("Cube")
Global("Know_Cube","GLOBAL",0)
~ THEN REPLY #40785 /* ~"Est-ce que tu sais ce qu'est ce petit jouet en forme de cube ?"~ */ DO ~SetGlobal("Know_Cube_Puzzle","GLOBAL",1)
~ GOTO 24
  IF ~~ THEN REPLY #40786 /* ~"Qu'est-ce que tu fais ici ?"~ */ GOTO 11
  IF ~~ THEN REPLY #40787 /* ~"Qu'est-ce que tu peux me dire sur cet endroit ?"~ */ GOTO 16
  IF ~  Global("Ecco_Speak","GLOBAL",1)
Global("Ecco_Name","AR0605",0)
~ THEN REPLY #40788 /* ~"Qu'est-ce que tu peux me dire sur la prostituée silencieuse ?"~ */ DO ~SetGlobal("Ecco_Name","AR0605",1)
~ GOTO 18
  IF ~  Global("Ecco_Speak","GLOBAL",1)
GlobalGT("Ecco_Name","AR0605",0)
~ THEN REPLY #68126 /* ~"Que peux-tu m'apprendre sur la prostituée silencieuse ?"~ */ GOTO 18
  IF ~  Global("Know_Kesai_Ravel","AR0605",1)
!Global("Kesai","GLOBAL",3)
~ THEN REPLY #40789 /* ~"J'ai entendu dire que Kesai-Serris était la fille de Ravel. C'est vrai ?"~ */ GOTO 19
  IF ~  Global("Scent_Quest","AR0605",1)
~ THEN REPLY #40790 /* ~"J'essaie de trouver le parfum de Viviane… Tu sais où il pourrait être ?"~ */ GOTO 21
  IF ~  Global("Veil_Quest","AR0605",1)
~ THEN REPLY #40791 /* ~"J'essaie de trouver le Voile pourpre de Marissa… Tu sais où il pourrait être ?"~ */ GOTO 21
  IF ~  Global("Know_Ravel","GLOBAL",1)
~ THEN REPLY #40792 /* ~"Tu sais quelque chose sur Ravel Puits-de-Rébus ?"~ */ GOTO 22
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
~ THEN REPLY #40793 /* ~"J'ai parlé à neuf prostituées en tout… Tu sais qui est la dixième et où elle se trouve ?"~ */ GOTO 23
  IF ~~ THEN REPLY #40794 /* ~"En fait, peu importe. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #40795 /* ~"Notre mission ici est l'observation."~ */
  IF ~~ THEN REPLY #40796 /* ~"Qu'est-ce que tu observes ?"~ */ GOTO 12
  IF ~~ THEN REPLY #40797 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40798 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #40799 /* ~"Nous observons l'une des employées de l'établissement."~ */
  IF ~~ THEN REPLY #40800 /* ~"Qui est-ce que tu observes ?"~ */ GOTO 13
  IF ~~ THEN REPLY #40801 /* ~"J'ai une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40802 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #40803 /* ~"Comme expliqué précédemment, nous observons l'une des employées de l'établissement."~ */
  IF ~~ THEN REPLY #40804 /* ~"Oui, mais tu observes qui *exactement* ?"~ */ GOTO 14
  IF ~~ THEN REPLY #40805 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40806 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #40807 /* ~"L'objet de notre examen s'appelle 'Dolora'."~ */
  IF ~~ THEN REPLY #40808 /* ~"Pourquoi est-ce que tu la surveilles ?"~ */ GOTO 15
  IF ~~ THEN REPLY #40809 /* ~"J'ai une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40810 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #40811 /* ~"Nous n'avons pas été informés du ou des buts de notre présente mission. L'ordre de notre pentadrone supérieur est une raison suffisante pour effectuer ladite mission ; le ou les buts sont donc hors de propos pour nous."~ */
  IF ~~ THEN REPLY #40812 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40813 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.2
  SAY #40814 /* ~"C'est un bâtiment situé dans la section de Sigil communément appelé le Quartier des Gratte-Papier. Nous ne pouvons pas en donner les coordonnées exactes car la superficie de Sigil change à intervalles que nous n'avons pas encore déterminés. Le bâtiment lui-même est connu sous le nom de Maison de tolérance des Plaisirs Intellectuels. Il est utilisé pour ce que l'on pourrait définir grossièrement comme une école de langue. Les étudiants de cette école sont essentiellement de sexe féminin, et elles veulent, dans un avenir non déterminé et qui varie selon les élèves, devenir factotums de la Société des Sensations."~ */
  IF ~~ THEN REPLY #40815 /* ~"La Société des Sensations ?"~ */ GOTO 17
  IF ~~ THEN REPLY #40816 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40817 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #40818 /* ~"Nous allons fournir un court résumé de la définition de la Société des Sensations : faction dont la croyance principale est que la véritable compréhension du multivers et de ses secrets s'acquiert par l'expérience."~ */
  IF ~~ THEN REPLY #40819 /* ~"J'ai une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40820 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 10.3 10.4
  SAY #40821 /* ~"Le sujet en question s'appelle 'Ecco'. Nous n'avons pas d'autres informations disponibles sur ledit sujet."~ */
  IF ~~ THEN REPLY #40822 /* ~"J'ai une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40823 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.5
  SAY #40824 /* ~"Si nous devions formuler des hypothèses quant à laquelle des Ravel est mentionnée, nous n'aurions toujours aucun moyen de déterminer si oui ou non Ravel est la mère de Kesai."~ */
  IF ~~ THEN REPLY #40825 /* ~"Laquelle des Ravel ? Il y en a plus d'une ?"~ */ GOTO 20
  IF ~~ THEN REPLY #40826 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40827 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #40828 /* ~"Nous ne pouvons pas affirmer un tel fait, mais nous devons prendre en compte le fait que pas moins de 11 032 plans sont infinis en envergure, dont pas moins de 3 701 sont peuplés d'êtres doués d'intelligence qui utilisent des noms différents. Il est donc raisonnable de penser qu'à n'importe quel moment, il existe un nombre infini d'êtres dénommés ainsi."~ */
  IF ~~ THEN REPLY #40829 /* ~"J'ai une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40830 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 10.6 10.7
  SAY #40831 /* ~"Non. Si tu ne l'appliques pas actuellement, nous te conseillons l'approche méthodique et l'interrogatoire de chacun des occupants de ce bâtiment."~ */
  IF ~~ THEN REPLY #40832 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40833 /* ~"Alors je vais continuer à demander autour de moi. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 10.8
  SAY #40834 /* ~"Nous ne connaissons aucun être ou objet de ce nom."~ */
  IF ~~ THEN REPLY #40835 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40836 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 10.9
  SAY #40837 /* ~"Non. Nous n'avons pas encore procédé au recensement des occupants de ce bâtiment et nous n'avons pas l'intention de le faire, à aucun moment."~ */
  IF ~~ THEN REPLY #40838 /* ~"J'ai une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40839 /* ~"Alors, au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 10.0
  SAY #40840 /* ~Le modrone, dont l'aspect est identique à l'objet que tu tiens dans les mains sauf en taille, cligne des yeux une fois, deux fois, puis parle : "L'objet est un cube de portail. L'utilisateur doit positionner les appendices du cube de portail d'une certaine façon pour l'activer. Une fois activé, le cube de portail transporte l'utilisateur vers une destination programmée au moment de la création du cube."~ */
  IF ~~ THEN REPLY #40841 /* ~"Et celui-ci, dans quelle position il faut le mettre pour l'activer ?"~ */ GOTO 25
  IF ~~ THEN REPLY #40842 /* ~"Tu sais vers quelle destination ce cube transportera son utilisateur ?"~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #40843 /* ~"Nous ne détenons pas cette information. Plus de 97% de la totalité des cubes de portail fonctionnent de façon légèrement différente. Nous n'étions pas présents au moment de la construction de celui du sujet et nous n'avons jamais reçu d'instructions d'utilisation. Si le sujet souhaite utiliser le cube de portail, il doit déterminer sa méthode de fonctionnement et sa destination par le biais de l'expérimentation."~ */
  IF ~~ THEN REPLY #40844 /* ~"J'avais une autre question…"~ */ GOTO 10
  IF ~~ THEN REPLY #40845 /* ~"Alors, au revoir."~ */ EXIT
END
