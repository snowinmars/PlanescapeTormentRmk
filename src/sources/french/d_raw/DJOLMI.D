// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJOLMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DJOLMI~

IF ~  GlobalLT("Jolmi","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #43388 /* ~Cette vieille femme à l'air sévère semble à la recherche de quelqu'un. Comme tu t'approches d'elle, ses yeux se fixent sur ton visage. "Toi, là… je peux te parler une seconde ?"~ */
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43389 /* ~"Bien sûr…"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",0)
~ THEN REPLY #43852 /* ~"Qu'est-ce que tu veux ?"~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ GOTO 1
  IF ~  Global("Jolmi","GLOBAL",1)
~ THEN REPLY #43853 /* ~"Oui… Tu es Jolmi, n'est-ce pas ? J'ai parlé à ton messager."~ */ DO ~SetGlobal("Jolmi","GLOBAL",2)
~ JOURNAL #63980 /* ~Une femme noble dénommée Jolmi m'a fait une bien étrange proposition : apparemment, elle est prête à payer en échange du plaisir de 'm'assassiner'. J'imagine que ce sera de l'argent vite gagné si tout se passe bien…~ */ GOTO 4
  IF ~~ THEN REPLY #43854 /* ~"Non, pas maintenant. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #43855 /* ~"Je m'appelle Jolmi et je suis une noble dame de la Maison Syrma. Je cherche un homme qui, m'a-t-on dit, ne peut pas mourir… Un homme couvert de cicatrices pour qui la mort n'est rien d'autre que le plus insignifiant des désagréments. Cette vague description te correspond assez bien… Es-tu cet homme ?"~ */
  IF ~~ THEN REPLY #43856 /* ~"Oui."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Jolmi_1","GLOBALLaw",2)
SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Une femme noble dénommée Jolmi m'a fait une bien étrange proposition : apparemment, elle est prête à payer en échange du plaisir de 'm'assassiner'. J'imagine que ce sera de l'argent vite gagné si tout se passe bien…~ */ GOTO 4
  IF ~~ THEN REPLY #43857 /* ~"Non, pas du tout."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Jolmi_1","GLOBALLaw",-1)
~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #43858 /* ~Elle incline sévèrement la tête. "Dans ce cas, je te remercie de m'avoir accordé un peu de temps. Au revoir."~ */
  IF ~~ THEN REPLY #43859 /* ~"Attends… J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #43860 /* ~"Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 11.1 13.0
  SAY #43861 /* ~Jolmi secoue la tête. "Il y a d'autres personnes ici qui pourraient répondre à tes questions. Je te demanderai donc de trouver quelqu'un d'autre et de me laisser à mes recherches. Au revoir."~ */
  IF ~  GlobalLT("Jolmi","GLOBAL",3)
~ THEN REPLY #43862 /* ~"En fait, je *suis* l'homme que tu cherches."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Une femme noble dénommée Jolmi m'a fait une bien étrange proposition : apparemment, elle est prête à payer en échange du plaisir de 'm'assassiner'. J'imagine que ce sera de l'argent vite gagné si tout se passe bien…~ */ GOTO 4
  IF ~~ THEN REPLY #43863 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.0 3.0 11.0
  SAY #43864 /* ~"Ravie de te rencontrer, alors." Elle te salue discrètement. "J'ai une proposition quelque peu insolite à te faire… mais admets que tu es quelqu'un d'insolite. Je te donnerai mille pièces de cuivre… si tu me permets de te tuer. Es-tu ouvert à la discussion sur ce sujet ?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43865 /* ~"Bien sûr, pourquoi ?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43866 /* ~"Bien sûr, pourquoi ?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43867 /* ~"Bien sûr, pourquoi ?"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43868 /* ~"Mais… Pourquoi ?"~ */ GOTO 5
  IF ~~ THEN REPLY #43869 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.3 12.3
  SAY #43870 /* ~Jolmi ne sourcille pas. "Mais pourquoi pas ? Je me disais que ce serait une expérience intéressante - payer quelqu'un pour avoir le privilège de le tuer. Quand j'ai eu vent des rumeurs qui couraient sur toi, comment aurais-je pu résister ? Alors… Qu'est-ce que tu en dis ? Est-ce qu'on peut en parler plus en détail ?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43871 /* ~"Oui ; voyons ça en détail."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43872 /* ~"Oui ; voyons ça en détail."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43873 /* ~"Oui ; voyons ça en détail."~ */ GOTO 9
  IF ~~ THEN REPLY #43874 /* ~"Un moment… Où as-tu entendu ces rumeurs ?"~ */ GOTO 6
  IF ~~ THEN REPLY #43875 /* ~"Je ne le ferai pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.3
  SAY #43876 /* ~Jolmi fronce les sourcils. "On dit des tas de choses à la Salle des Fêtes. Comment ne *pas* finir par entendre parler d'un homme comme toi ? Je te le redemande : peux-tu réfléchir à ma proposition ?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43877 /* ~"Oui ; voyons ça en détail."~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43878 /* ~"Oui ; voyons ça en détail."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43879 /* ~"Oui ; voyons ça en détail."~ */ GOTO 9
  IF ~~ THEN REPLY #43880 /* ~"Je ne le ferai pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 5.0 6.0 12.0
  SAY #43881 /* ~Suite à une brève discussion, vous en arrivez à l'accord suivant : Jolmi te paiera mille pièces de cuivre ; en échange, tu lui permets de te transpercer le cœur de sa dague. Elle attendra ensuite que tu te réveilles pour te donner l'argent.

"Alors, tu es d'accord ?"~ */
  IF ~~ THEN REPLY #43883 /* ~"Oui… Allons-y."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43884 /* ~"Non, je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.1 5.1 6.1 12.1
  SAY #43885 /* ~Suite à une brève discussion, vous en arrivez à l'accord suivant : Jolmi te paiera mille cinq cents pièces de cuivre ; en échange, tu lui permets de te transpercer le cœur de sa dague. Elle attendra ensuite que tu te réveilles pour te donner l'argent.

"Alors, tu es d'accord ?"~ */
  IF ~~ THEN REPLY #43886 /* ~"Oui… Allons-y."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(1500)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43887 /* ~"Non, je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.2 5.2 6.2 12.2
  SAY #43888 /* ~Suite à une brève discussion, vous en arrivez à l'accord suivant : Jolmi te paiera deux mille pièces de cuivre ; en échange, tu lui permets de te transpercer le cœur de sa dague. Elle attendra ensuite que tu te réveilles pour te donner l'argent.

"Alors, tu es d'accord ?"~ */
  IF ~~ THEN REPLY #43889 /* ~"Oui… Allons-y."~ */ DO ~SetGlobal("Jolmi","GLOBAL",4)
GivePartyGold(2000)
FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 10
  IF ~~ THEN REPLY #43890 /* ~"Non, je ne crois pas. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.0 8.0 9.0
  SAY #43891 /* ~L'affaire ne prend que quelques instants… Au moment où tu te réveilles, elle a déjà nettoyé et rengainé sa lame. Jolmi t'aide à te relever du sol de la Salle des Fêtes, puis te tend plusieurs rouleaux de pièces de cuivre, tandis que tu frottes ta poitrine endolorie.

"Je dois admettre que je suis un peu déçue. Ah, enfin… c'est malgré tout de l'argent bien dépensé. Au revoir."~ */
  IF ~~ THEN REPLY #43892 /* ~"Oui… au revoir."~ */ DO ~IncrementGlobal("Death","GLOBAL",1)
~ JOURNAL #63981 /* ~J'ai autorisé Jolmi à me planter sa dague en plein cœur pour une somme conséquente. Elle a eu l'air déçue par l'expérience. Pour ma part, je suis satisfait de la somme gagnée.~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #43893 /* ~Jolmi se tourne vers toi en te lançant un regard sévère. "Oui ?"~ */
  IF ~~ THEN REPLY #43894 /* ~"Je suis l'homme que tu cherches."~ */ DO ~SetGlobal("Jolmi","GLOBAL",3)
~ JOURNAL #63980 /* ~Une femme noble dénommée Jolmi m'a fait une bien étrange proposition : apparemment, elle est prête à payer en échange du plaisir de 'm'assassiner'. J'imagine que ce sera de l'argent vite gagné si tout se passe bien…~ */ GOTO 4
  IF ~~ THEN REPLY #43895 /* ~"J'ai des questions…"~ */ GOTO 3
  IF ~~ THEN REPLY #43896 /* ~"Rien… Au revoir."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #43897 /* ~Le regard froid de Jolmi étincelle de reconnaissance alors que tu t'approches d'elle. "Alors, tu as réfléchi à mon offre ? Mille pièces en échange de la permission de te tuer ?"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #43898 /* ~"Oui ; voyons ça."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 7
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #43899 /* ~"Oui ; voyons ça."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 8
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #43900 /* ~"Oui ; voyons ça."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ GOTO 9
  IF ~~ THEN REPLY #43901 /* ~"Dis-moi d'abord pourquoi tu veux que je fasse ça."~ */ GOTO 5
  IF ~~ THEN REPLY #43902 /* ~"Non, merci. Au revoir."~ */ EXIT
END

IF ~  Global("Jolmi","GLOBAL",4)
~ THEN BEGIN 13 // from:
  SAY #43903 /* ~Jolmi se tourne vers toi en te lançant un regard sévère ; une étincelle de reconnaissance traverse son regard. "Oui ?"~ */
  IF ~~ THEN REPLY #43904 /* ~"J'ai quelques questions, Jolmi…"~ */ GOTO 3
  IF ~~ THEN REPLY #43905 /* ~"Je ne faisais que passer… Au revoir."~ */ EXIT
END
