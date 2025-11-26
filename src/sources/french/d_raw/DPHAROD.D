// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHAROD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHAROD~

IF ~  Global("Pharod","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2841 /* ~Devant toi se trouve un homme âgé lourdement incliné sur une béquille, sa jambe gauche est tordue, comme s'il avait tenté de marcher simultanément dans deux directions et qu'il en avait payé le prix. Sa peau au teint verdâtre est tassée sur son crâne et tachetée de marques de jaunisse. Il marmonne et fait des bruits secs avec ses lèvres tandis que ses yeux parcourent la pièce.~ */
  IF ~~ THEN REPLY #17912 /* ~"Bonjour."~ */ DO ~SetGlobal("Pharod","GLOBAL",1)
~ JOURNAL #17915 /* ~J'ai *enfin* trouvé Pharod dans un village enseveli, sous le Square du Chiffonnier. Malheureusement, cet endroit ne semble pas plus accueillant que la Ruche… au moins, Pharod aura peut-être des informations à me fournir.~ */ GOTO 3
  IF ~~ THEN REPLY #17913 /* ~Ignore l'homme, explore la pièce.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2842 /* ~Tu aperçois Pharod. Il parcourt la pièce des yeux, tout en marmonnant et en faisant claquer ses lèvres. Son teint terreux ressort, même à la lumière vacillante de la torche.~ */
  IF ~~ THEN REPLY #17916 /* ~"Bonjour."~ */ GOTO 3
  IF ~~ THEN REPLY #17917 /* ~Ignore Pharod, explore la pièce.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #2843 /* ~"Ah, cadavre…" Pharod se tourne à ton approche, sa béquille *résonnant* sur les pavés de la Cour. "Bienvenue, bienvenue…"~ */
  IF ~~ THEN REPLY #17918 /* ~"J'ai des questions à te poser, Pharod."~ */ GOTO 17
  IF ~~ THEN REPLY #17919 /* ~"Je n'ai pas le temps de discuter, Pharod. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #17834 /* ~"Ah !" Les yeux de l'homme s'illuminent lorsqu'il entend ta voix. "Ma fidèle récolte de joncs serait-elle de retour ? Bienvenue, cadavre." Son sourire est pervers. "Es-tu venu demander à Pharod une nouvelle balade à la Morgue ?"~ */
  IF ~~ THEN REPLY #17920 /* ~"Pharod, j'ai besoin d'informations. On m'a dit que tu savais quelque chose sur moi."~ */ GOTO 4
  IF ~~ THEN REPLY #17921 /* ~"Non, je suis là pour te poser des questions auxquelles tu es le seul à pouvoir répondre."~ */ GOTO 6
  IF ~~ THEN REPLY #17922 /* ~"Oui, Pharod, je suis de retour. Toutes les dispositions ont été prises ?"~ */ GOTO 9
  IF ~~ THEN REPLY #17923 /* ~"Je n'ai pas le temps de discuter avec toi, Pharod. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17835 /* ~"Que je sais quelque chose sur toi… ?" La lumière dans les yeux de Pharod faiblit. Il t'étudie, en marmonnant légèrement tandis que ses yeux te jaugent en tremblotant. "Cadavre… ? Non ? Oui ?" Ses yeux rencontrent les tiens. "Ah ! Non…"~ */
  IF ~~ THEN REPLY #17924 /* ~"Pharod ? Alors ?"~ */ GOTO 7
  IF ~~ THEN REPLY #17925 /* ~"Regarde bien… Tu sais qui je suis ?"~ */ GOTO 7
  IF ~~ THEN REPLY #17926 /* ~"Je n'ai pas le temps de discuter avec toi, Pharod. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 9.0 9.2 9.4
  SAY #17836 /* ~Quelque chose dans ton ton, peut-être un tout petit moment de doute, te trahit… quoi qu'il en soit, Pharod s'arrête car la lumière dans ses yeux baisse et il t'examine. "Cadavre…? Non ? Oui ?" Ses yeux rencontrent les tiens. "Ah ! Non…"~ */
  IF ~~ THEN REPLY #17927 /* ~"Pharod… ?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0
  SAY #17837 /* ~Il t'étudie, en marmonnant légèrement tandis que ses yeux te jaugent en tremblotant. "On n'est pas à la fête foraine, cadavre. Pas question de jouer, Pharod n'a pas le temps de faire tourner la roue… qui es-tu ? Pourquoi poses-tu ces questions ?"~ */
  IF ~~ THEN REPLY #17928 /* ~Vérité : "J'ai oublié qui je suis, et on m'a dit d'aller te voir. Il paraît que tu sais certaines choses sur moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17929 /* ~"J'ai besoin de réponses, Pharod. On m'a dit que tu pourrais me les donner."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #17838 /* ~Pharod t'étudie avec un regard neutre. "On n'est pas à la fête foraine, cadavre. Pas question de jouer, pas le temps de faire tourner la roue… pourquoi est-ce que tu poses ces questions ?"~ */
  IF ~~ THEN REPLY #17930 /* ~Vérité : "J'ai oublié qui je suis, et on m'a dit d'aller te voir. Il paraît que tu sais certaines choses sur moi."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17931 /* ~"J'ai besoin de réponses, Pharod. On m'a dit que tu pourrais me les donner."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1 7.0 7.1
  SAY #17839 /* ~"Eh…" Pharod se lèche les lèvres dans un bruit de râpe, comme le bruit d'un parchemin sec sur du sable. "Qui t'a dit une chose pareille, cadavre ?"~ */
  IF ~~ THEN REPLY #17932 /* ~Vérité : "Et bien, personne ne m'a rien *dit*, en fait. Ce sont les tatouages que j'ai dans le dos… Ils m'ont dit d'aller te voir si jamais j'oubliais qui j'étais."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #17933 /* ~"Qui avait besoin de me dire pareille chose ? N'es-tu pas Pharod ?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY #17840 /* ~"Tout à fait… mes Récupérateurs ont fait ce que tu as demandé, à la lettre." Il s'appuie lourdement sur sa béquille, qui craque dangereusement. "Eh… pas autant de chance avec la babiole. Est-ce que tu sais par hasard *où* elle se trouve ? Ça serait bien utile, ouais…"~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17934 /* ~"S'il te plaît, Pharod… Qu'est-ce que j'ai demandé à tes Récupérateurs de faire, déjà ?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17935 /* ~"S'il te plaît, Pharod… Qu'est-ce que j'ai demandé à tes Récupérateurs de faire, déjà ?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17936 /* ~"Non… Réponds-moi, qu'est-ce que tu disais à propos d'une 'balade à la Morgue' ?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17937 /* ~"Non… Réponds-moi, qu'est-ce que tu disais à propos d'une 'balade à la Morgue' ?"~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17938 /* ~"La babiole ?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17939 /* ~"La babiole ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17940 /* ~"Peu importe, Pharod. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.5 11.1 12.1 13.1
  SAY #17841 /* ~"La *sphère,* cadavre, la sphère ! Est-ce que tu…" La voix de Pharod est désespérée, suppliante, comme celle d'un mendiant puis il s'arrête et se reprend. "Peu importe, je la trouverai… peu importe."~ */
  IF ~~ THEN REPLY #17941 /* ~"S'il te plaît, Pharod… Qu'est-ce que j'ai demandé à tes Récupérateurs de faire, déjà ?"~ */ GOTO 11
  IF ~~ THEN REPLY #17942 /* ~"Qu'est-ce que tu disais à propos d'une 'balade à la Morgue' ?"~ */ GOTO 12
  IF ~~ THEN REPLY #17943 /* ~"Peu importe, Pharod. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 12.0 13.0
  SAY #17842 /* ~Pharod tape de sa béquille sur les dalles et se balance sur les talons. "Ce que tu as dit…" Il se lèche les lèvres. "S'assurer qu'ils te gardent au frais s'ils te trouvent, et faire en sorte que tu sois expédié à la Morgue." Il te regarde, presque soucieux. "Pourquoi ? Quelqu'un m'aurait-il empaillé ? As-tu été jeté dans un endroit où tu n'aurais pas dû être ?"~ */
  IF ~~ THEN REPLY #17944 /* ~"Non, mais réponds-moi : comment j'étais censé sortir de la Morgue une fois que j'y étais ?"~ */ GOTO 13
  IF ~~ THEN REPLY #17945 /* ~"Non… C'est quoi cette babiole dont tu as parlé ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17946 /* ~"Peu importe, Pharod. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3 10.1
  SAY #17843 /* ~"Ah… oui ?" Pharod acquiesce. "La Morgue. Les Hommes-Poussière et tout ça." Sa voix chute et ses doigts se tortillent nerveusement sur sa béquille. "Est-ce qu'on joue franc jeu, cadavre ? Quelque chose ne va pas ?"~ */
  IF ~~ THEN REPLY #17947 /* ~"S'il te plaît, Pharod… Qu'est-ce que j'ai demandé à tes Récupérateurs de faire, déjà ?"~ */ GOTO 11
  IF ~~ THEN REPLY #17948 /* ~"C'est quoi cette babiole dont tu as parlé ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17949 /* ~"Peu importe, Pharod. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #17844 /* ~Pharod ricane doucement, puis se gratte. "Ah, cadavre, t'as rien dit sur ta *sortie* de ce trou… tu étais si pressé d'y entrer, on aurait dit que tu t'étais arrangé pour jouer un air aux Hommes-Poussière une fois qu'on t'y aurait fait entrer. J'espère qu'on était bien d'accord sur ce coup."~ */
  IF ~~ THEN REPLY #17950 /* ~"S'il te plaît, Pharod… Qu'est-ce que j'ai demandé à tes Récupérateurs de faire, déjà ?"~ */ GOTO 11
  IF ~~ THEN REPLY #17951 /* ~"C'est quoi cette babiole dont tu as parlé ?"~ */ GOTO 10
  IF ~~ THEN REPLY #17952 /* ~"Peu importe, Pharod. Je dois m'en aller."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.0 8.1
  SAY #17845 /* ~"Ah… si peu dit, tellement raconté…" Pharod devient silencieux, et soudain, tu as l'impression qu'il te dissèque, comme un cadavre sur une dalle de la Morgue. "J'en sais beaucoup que tu aimerais savoir. Beaucoup, oui… beaucoup." Pharod sourit lentement, les plis de chair de son visage se tirant comme un rideau.~ */
  IF ~~ THEN REPLY #17953 /* ~"Qu'est-ce que tu sais sur moi ?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #17846 /* ~Pharod se lèche les lèvres puis s'agrippe à sa béquille comme un vautour. "Non, non… pas gratuit, la question que tu poses." Ses mains d'un blanc pâteux tapotent le rebord de sa béquille. "Je pourrais t'en dire beaucoup, mais tout a un prix."~ */
  IF ~~ THEN REPLY #17954 /* ~"Continue, Pharod…"~ */ GOTO 34
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17847 /* ~"Ah, cadavre…" Pharod se tourne à ton approche, sa béquille *tintant* sur les dalles de la Cour. Il se lèche les lèvres et sourit dans l'expectative. "Tu m'as apporté ce que je t'ai demandé ?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17955 /* ~"La sphère en bronze ? La voilà."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(15000)
~ GOTO 54
  IF ~~ THEN REPLY #17956 /* ~"J'avais d'abord quelques questions…"~ */ GOTO 17
  IF ~  !PartyHasItem("Bsphere")
~ THEN REPLY #17957 /* ~"Pas encore. Je reviendrai quand je l'aurai."~ */ EXIT
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17958 /* ~"Je… cherche toujours. Je reviendrai quand je l'aurai."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 16.1 18.1 19.0 20.1 21.1 22.3 23.1 24.1 25.0 26.1 27.1 28.1 29.2 30.1 31.0 44.0 45.3 46.2 47.1 48.1 49.1 50.1 51.1 52.1 53.0 54.1 55.1 56.3 57.2 58.1 59.2 60.1 61.2 62.4 63.2 64.2 65.3 66.1 67.1 68.1 69.1 71.2 73.1 74.1 76.1 79.0 80.0 85.1 86.2 87.0
  SAY #17848 /* ~"Alors, demande !" Pharod frappe sa béquille sur le pavé, comme s'il prononçait une sentence. "Allez, allez, cadavre, le temps nous est compté et ma patience a des limites."~ */
  IF ~~ THEN REPLY #17959 /* ~"Quand tu m'as dit bonjour, tu m'as demandé si je voulais 'faire une balade à la Morgue'. Qu'est-ce que tu voulais dire ?"~ */ GOTO 18
  IF ~~ THEN REPLY #17960 /* ~"Qu'est-ce que c'est que cet endroit ?"~ */ GOTO 20
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17961 /* ~"À mon réveil à la Morgue, mon journal avait disparu. Tu sais où il est ?"~ */ GOTO 79
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #17962 /* ~"On m'a raconté une histoire sur un certain Pharod. Un roi des chiffons."~ */ GOTO 26
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #17963 /* ~"J'ai entendu dire que tu avais trouvé une mine de corps, Pharod. D'où est-ce qu'ils viennent ?"~ */ GOTO 45
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17964 /* ~"Comme je t'ai apporté ce que tu m'avais demandé, je te repose ma question : qu'est-ce que tu sais sur moi ?"~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17965 /* ~"Encore une fois : est-ce que tu as récupéré quelque chose sur mon corps quand tu l'as trouvé ?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17966 /* ~"Où est-ce qu'Annah a trouvé mon corps déjà ?"~ */ GOTO 74
  IF ~~ THEN REPLY #17967 /* ~"Pas de questions - au revoir, Pharod."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #17849 /* ~"C'est à toi de me le dire, cadavre. Peut-être que les Hommes-Poussière qui vivent là sont plus à ton goût que certaine jeune fille à la poitrine douce ?" Pharod frappe le sol de sa béquille et fait résonner toute la cour. "Très généreux de la part des Hommes-Poussière de te laisser aller et venir ainsi, alors que tu n'as même pas la décence de rester dans le livre des morts."~ */
  IF ~~ THEN REPLY #17968 /* ~"Je voulais entrer à la Morgue ? Mais pourquoi ?"~ */ JOURNAL #17971 /* ~Pharod m'a dit de *retourner* à la Morgue… Pourquoi ? Suis-je censé trouver quelque chose là-bas ?~ */ GOTO 19
  IF ~~ THEN REPLY #17969 /* ~"J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #17970 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #17850 /* ~Pharod se gausse. "Cadavre, tu étais si pressé d'y aller et maintenant tu chantes que tu ne sais même pas pourquoi tu voulais y aller ? On se demande parfois comment les Plans peuvent tourner…"~ */
  IF ~~ THEN REPLY #17972 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #17973 /* ~"J'en ai entendu assez. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #17851 /* ~Les yeux de Pharod roulent dans leurs orbites, parcourant le plafond, les murs puis le sol. "Ici c'est la Cour des Vents Mauvais - c'est pas moi qui ai choisi le nom, merci bien - et la guitoune à l'extérieur de la Cour, c'est le Village Enseveli, cadavre."~ */
  IF ~~ THEN REPLY #17974 /* ~"C'est quoi le Village Enseveli ?"~ */ GOTO 21
  IF ~~ THEN REPLY #17975 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #17976 /* ~"J'en ai assez entendu. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #17852 /* ~"Bon, c'est une longue histoire…" Pharod se lèche à nouveau les lèvres, puis hausse les épaules. "Pour te dire la vérité, cette histoire m'ennuie. Faisons court. C'est un quartier de la Ruche qui a été muré en une journée, un quartier de Sigil qui a été enfermé dans le livre des morts."~ */
  IF ~~ THEN REPLY #17977 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 22
  IF ~~ THEN REPLY #17978 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #17979 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #17853 /* ~"Tu connais ces têtes de chèvres planantes qui servent la Dame, ces dabus ? Peu importe de toute façon - ils sont tout le temps partout à réparer, casser, enterrer, construire. Tu m'suis ?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17980 /* ~"Des dabus ?"~ */ DO ~SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17981 /* ~"Des dabus ?"~ */ GOTO 23
  IF ~~ THEN REPLY #17982 /* ~"Oui, continue."~ */ GOTO 24
  IF ~~ THEN REPLY #17983 /* ~"Laisse tomber. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #17984 /* ~"Peu importe. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #17854 /* ~"Ces têtes de chèvres ? Allez, t'as perdu la tête ?! Ces trucs qui flottent avec les marteaux qui baragouinent par symboles ? Ceux qui obéissent à la Dame ?" Pharod frappe les dalles de sa béquille, en faisant un bruit aigu. "Allez, ne joue pas au farceur avec Pharod, le temps nous est compté et ma patience a des limites."~ */
  IF ~~ THEN REPLY #17985 /* ~"Très bien, continue."~ */ GOTO 24
  IF ~~ THEN REPLY #17986 /* ~"Laisse tomber. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #17987 /* ~"Peu importe. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0
  SAY #17855 /* ~"Bon, comme dit la chanson… et une chanson bien poussiéreuse… ces dabus ont carrément condamné un jour tout un quartier de la Ruche et tout le monde s'est mis à l'oublier. Ils y ont jeté beaucoup d'ordures, et puis un beau jour, personne s'en est souvenu." Pharod sourit. "Cruel, non ? Tout un quartier de Sigil oublié ?"~ */
  IF ~~ THEN REPLY #17988 /* ~"Comment tu l'as trouvé ?"~ */ GOTO 25
  IF ~~ THEN REPLY #17989 /* ~"Je vois. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #17990 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17856 /* ~Pharod fait claquer sa langue. "J'ai encore des yeux, cadavre, et des oreilles, et quand on a assez de bon sens pour relier les deux, ce n'est pas aussi dur que certains le pensent de trouver le soltif des histoires louches." Pharod frotte son manteau répugnant. "Bon, tu voulais m'demander autre chose ? Tu n'es pas simplement venu pour entendre parler d'ce trou à rats, si ?"~ */
  IF ~~ THEN REPLY #17991 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #17992 /* ~"Non, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #17857 /* ~L'œil gauche de Pharod s'agrandit, mais tu n'arrives pas à savoir s'il le fait exprès ou si les plis de sa peau sont simplement en train de s'excorier. "Ah bon ? Sigil est une montagne d'histoires, mais toute histoire concernant Pharod est la bienvenue à ses oreilles." Il te regarde de façon soupçonneuse, puis grimace. "Alors comme ça, t'es devenu un conteur d'histoires, cadavre ?"~ */
  IF ~~ THEN REPLY #17993 /* ~"C'est une histoire étrange. Elle parle d'un homme riche et important qui avait tout, puis qui découvre qu'il n'a rien."~ */ GOTO 27
  IF ~~ THEN REPLY #17994 /* ~"Non. Mais j'avais encore des questions à te poser."~ */ GOTO 17
  IF ~~ THEN REPLY #17995 /* ~"Non, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #17858 /* ~La grimace de Pharod se fige sur son visage et ses yeux prennent une lueur étrange, enflammée. "Es-tu certain de vouloir conter cette histoire, cadavre ? Tu n'aimeras peut-être pas sa fin, hein ?"~ */
  IF ~~ THEN REPLY #17996 /* ~"Cet homme était tellement menteur et tricheur qu'il s'est retrouvé coincé. Il a découvert que lorsque la mort viendrait le chercher, elle l'emmènerait dans un endroit terrible."~ */ GOTO 28
  IF ~~ THEN REPLY #17997 /* ~"Alors, à la place j'aurais des questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #17998 /* ~"Alors, je ne dirai plus rien. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #17859 /* ~La grimace de Pharod s'évanouit et il se lèche les lèvres. Il a l'air… effrayé.~ */
  IF ~~ THEN REPLY #17999 /* ~"Il était déterminé à éviter un tel sort, alors il a recherché désespérément un moyen d'y échapper. Il a triché avec son sort comme il avait triché avec les autres."~ */ GOTO 29
  IF ~~ THEN REPLY #18000 /* ~"L'histoire se termine là. Mais j'ai quelques questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #18001 /* ~"J'en ai assez dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #17860 /* ~Le visage de Pharod se tord, comme s'il avait avalé quelque chose de déplaisant.~ */
  IF ~  GlobalLT("Pharod","GLOBAL",3)
~ THEN REPLY #18002 /* ~"Il a trouvé une réponse… Ou un endroit où chercher cette réponse. Pour échapper à son sort, on lui a dit de fouiller les ordures de Sigil. Maintenant, Pharod… Tu peux peut-être me dire comment se termine cette histoire."~ */ GOTO 32
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18003 /* ~"Il a trouvé une réponse… Ou un endroit où chercher cette réponse. Pour échapper à son sort, on lui a dit de fouiller les ordures de Sigil. C'est ça la sphère, Pharod ? Quelque chose qui te permettra de jouer un air à ton destin ?"~ */ GOTO 30
  IF ~~ THEN REPLY #18004 /* ~"L'histoire se termine là. Mais j'ai quelques questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #18005 /* ~"J'en ai assez dit. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #17861 /* ~Pharod te regarde, ses doigts tapotant sur sa béquille. "On va voir tous les deux, hein, cadavre ?" Il ricane. "Et *qu'est-ce* qui va te faire jouer un air au destin, hein ? Pas de babiole, pas de fanfreluche pour toi, quel dommage."~ */
  IF ~~ THEN REPLY #18006 /* ~"Tu ne sais pas ce qu'est la sphère, c'est ça ?"~ */ GOTO 31
  IF ~~ THEN REPLY #18007 /* ~"Je trouverai. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #18008 /* ~"On verra, Pharod. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17862 /* ~Pharod murmure. "D'abord, trouve-la, cadavre. Le reste viendra avec."~ */
  IF ~~ THEN REPLY #18009 /* ~"Très bien. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #18010 /* ~"On verra, Pharod. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #17863 /* ~Son visage devient hargneux. "Ça n'a PAS de fin ! Pas pour moi !" Tu vois le sang lui monter au visage. "Moi aussi, j'ai une histoire pour *toi*, cadavre !"~ */
  IF ~~ THEN REPLY #18011 /* ~"Très b-"~ */ GOTO 33
  IF ~~ THEN REPLY #18012 /* ~"Je ne v-"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #17864 /* ~Le doigt de Pharod s'élance vers toi, recourbé tel la houlette d'un berger. "Un cadavre vient à la Cour de Pharod, plein de puanteur et de promesses, clamant qu'il TROUVERAIT ce que Pharod veut, mais qu'est-ce qu'il amène ? *Rien* ! Des promesses rompues, cadavre ! Le nies-tu ?! Dis-le, ça veut dire que tu m'as menti et je vais *mourir* à cause de ça !"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #18013 /* ~"Je continue à chercher, Pharod. Quand je l'aurai trouvée, je reviendrai. Je n'ai pas manqué à ma parole."~ */ GOTO 80
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #18014 /* ~"Tu veux parler de la sphère en bronze ? Calme-toi… La voilà."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(4000)
~ GOTO 54
END

IF ~~ THEN BEGIN 34 // from: 15.0
  SAY #17865 /* ~Pharod tape les dalles de sa béquille et ricane. "Il n'y a pas que ce village qui est enterré sous le Square du Chiffonnier."~ */
  IF ~~ THEN REPLY #18041 /* ~"Oui… ?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #17866 /* ~"Chambres, souterrains, couloirs… remplis de morts, tous endormis dans leurs cercueils. Quelque part dans ces halls, quelque part, quelque chose n'est pas à sa place. Quelque chose qui est à moi."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18042 /* ~"Quoi ?"~ */ GOTO 36
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18043 /* ~"Qu'est-ce que c'est ?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #17867 /* ~"Une petite chose, une babiole, une vétille en somme…" Pendant que Pharod parle, ses mots font écho, comme si deux personnes parlaient… tu sais que tu as déjà entendu ça… de tes propres lèvres.~ */
  IF ~~ THEN REPLY #18044 /* ~"… c'est une sphère, en bronze, horrible. On dirait un œuf au toucher, et une odeur de flan pourri s'en dégage. C'est ça ?"~ */ GOTO 38
  IF ~~ THEN REPLY #18045 /* ~Tais-toi et écoute.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.1
  SAY #17868 /* ~"Une petite chose, une babiole, une vétille en somme…" Pharod se tourne, comme gêné, mais sa voix s'affûte comme un couteau. "Une sphère en bronze. Laide. On dirait un œuf au toucher, mais elle pue le flan pourri. Ramène-la moi - c'est peu demander - puis je te rendrai un service en retour, cadavre."~ */
  IF ~~ THEN REPLY #18046 /* ~"Tu sais où se trouve cette sphère ?"~ */ GOTO 40
  IF ~~ THEN REPLY #18047 /* ~"Pourquoi est-ce que tu ne demandes pas à un de tes Récupérateurs de la chercher ?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 36.0
  SAY #17869 /* ~Pharod devient silencieux un moment puis acquiesce. "Oui… qu'est-ce que tu me caches, cadavre ?" Il ricane. "Es-tu revenu voir si je me rappelle ce que je t'ai demandé ?"~ */
  IF ~~ THEN REPLY #18048 /* ~"Tu sais où se trouve cette sphère ?"~ */ GOTO 40
  IF ~~ THEN REPLY #18049 /* ~"Pourquoi est-ce que tu ne demandes pas à un de tes Récupérateurs de la chercher ?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.1 40.0
  SAY #17870 /* ~"Parce que les couloirs n'ont plus besoin des morts de ce village." Pharod fait claquer sa langue. "Force, rapidité, intelligence… sont des qualités que mes villageois ne possèdent pas. Ceux qui descendent ne reviennent jamais." Pharod te lance un regard noir. "Peut-être les morts accueilleront-ils un des leurs, hum ? C'est *mon* avis, cadavre."~ */
  IF ~~ THEN REPLY #18050 /* ~"Tu sais où se trouve cette sphère ?"~ */ GOTO 40
  IF ~~ THEN REPLY #18051 /* ~"Très bien… Je vais le faire. Mais je veux savoir ce que j'achète avec cette babiole."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.0 38.0 39.0
  SAY #17871 /* ~"Ah…" Le soupir de Pharod te fait penser à du sable qui s'écoule. "Et pourquoi crois-tu que je te demande de la chercher, cadavre ? Je ne sais pas *où* elle est. Je sais qu'elle est enterrée très profond, là où aucun villageois ne s'est jamais aventuré." Il fait claquer sa langue. "Elle se trouve peut-être dans les catacombes aux eaux profondes, si profondes…"~ */
  IF ~~ THEN REPLY #18052 /* ~"Pourquoi est-ce que tu ne demandes pas à un de tes Récupérateurs de la chercher ?"~ */ GOTO 39
  IF ~~ THEN REPLY #18053 /* ~"Très bien… Je vais le faire. Mais je veux savoir ce que j'achète avec cette babiole."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.1
  SAY #17872 /* ~"Y a pas mal de savoir dans ma boîte grise, cadavre." Il lève un doigt desséché. "Au nombre de ces savoirs, il y a cette maxime sans prix : tout le monde *veut* quelque chose, qu'ils le sachent ou non. Je sais beaucoup de choses sur toi… beaucoup de choses que tu *aimerais* savoir…"~ */
  IF ~~ THEN REPLY #18054 /* ~"À mon avis, tu n'as rien d'intéressant à me dire, Pharod."~ */ GOTO 43
  IF ~~ THEN REPLY #18055 /* ~"Très bien, je vais essayer de trouver cette sphère pour toi… En échange de tu sais quoi."~ */ GOTO 44
  IF ~~ THEN REPLY #18056 /* ~Vérité : "Tu as intérêt à me dire ce que tu sais, Pharod, si tu ne veux pas que j'inscrive ton nom dans le livre des morts avec ton sang en guise d'encre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18057 /* ~Bluff : "Tu as intérêt à me dire ce que tu sais, Pharod, si tu ne veux pas que j'inscrive ton nom dans le livre des morts avec ton sang en guise d'encre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.3 43.0 43.1
  SAY #17873 /* ~Pharod parle ensuite comme s'il avait appris ces paroles par cœur. "Ce que je sais va mourir avec moi, cadavre… si je meurs, tout cela deviendra cendres. Rien, rien pour toi…"~ */
  IF ~~ THEN REPLY #18058 /* ~"À mon avis, tu n'as rien d'intéressant à me dire, Pharod."~ */ GOTO 43
  IF ~~ THEN REPLY #18059 /* ~"Très bien, je vais essayer de trouver cette sphère pour toi… En échange de tu sais quoi."~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 41.0 42.0
  SAY #17874 /* ~"J'ai appris un autre morceau de sagesse inestimable… pour toi, ça sera gratuit. Un homme se *trompe* souvent sur beaucoup de choses et un homme mort est un homme qui s'est trompé une fois de trop." Pharod se lèche les lèvres. "J'ai beaucoup de choses précieuses à te dévoiler."~ */
  IF ~~ THEN REPLY #18060 /* ~Vérité : "Tu as intérêt à me dire ce que tu sais, Pharod, si tu ne veux pas que j'inscrive ton nom dans le livre des morts avec ton sang en guise d'encre."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18061 /* ~Bluff : "Tu as intérêt à me dire ce que tu sais, Pharod, si tu ne veux pas que j'inscrive ton nom dans le livre des morts avec ton sang en guise d'encre."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18062 /* ~"Très bien, je vais essayer de trouver cette sphère pour toi… En échange de tu sais quoi."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 41.1 42.1 43.2
  SAY #17875 /* ~"Très bien, marché conclu…" Pharod *fait craquer* sa béquille sur les dalles. "Une sphère pour un coup d'œil dans ma boîte grise. Bon, cadavre, il n'y a pas de temps à perdre. Rends-toi à la porte au sud et à l'est et dis à ces fous assoupis de l'ouvrir pour toi. Allez, dépêche-toi."~ */
  IF ~~ THEN REPLY #18063 /* ~"Attends un peu… J'ai d'autres questions à te poser avant de partir…"~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~J'ai accepté de descendre dans les catacombes pour Pharod et de lui rapporter une sphère en bronze. Il pense que la sphère se trouve dans la partie la plus profonde des catacombes… là où l'eau a inondé les galeries. L'entrée de la première partie des catacombes est située dans la partie sud-est du village, après la porte… Pharod m'a dit de parler de ma mission aux gardes, qui m'ouvriront les portes et me laisseront passer.~ */ GOTO 17
  IF ~~ THEN REPLY #18064 /* ~"Très bien. Je vais tout de suite me rendre à la porte et entrer dans les catacombes."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~J'ai accepté de descendre dans les catacombes pour Pharod et de lui rapporter une sphère en bronze. Il pense que la sphère se trouve dans la partie la plus profonde des catacombes… là où l'eau a inondé les galeries. L'entrée de la première partie des catacombes est située dans la partie sud-est du village, après la porte… Pharod m'a dit de parler de ma mission aux gardes, qui m'ouvriront les portes et me laisseront passer.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 17.4
  SAY #17876 /* ~"Un mage dévoile-t-il les secrets de son art ? Il en va de même avec le Récupérateur…" Pharod fronce les sourcils, et t'examine. "Je vais peut-être te le dire… mais tu dois promettre de le garder pour toi."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18066 /* ~"Tu te compares à un *mage*, Pharod ? C'est une insulte envers la profession."~ */ GOTO 46
  IF ~~ THEN REPLY #18067 /* ~Serment : "Ce que j'entends, seules mes oreilles l'entendront."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_3","GLOBALLaw",1)
~ JOURNAL #18071 /* ~J'ai promis à Pharod de ne pas révéler où il prenait les corps.~ */ GOTO 48
  IF ~~ THEN REPLY #18068 /* ~Mensonge : "Ce que j'entends, seules mes oreilles l'entendront."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_2","GLOBALLaw",-1)
~ JOURNAL #18072 /* ~J'ai menti et j'ai "juré" que je ne dirais à personne où Pharod prenait les corps. La vieille goule m'a cru… Je crois qu'il crevait d'envie de montrer à quel point il était malin.~ */ GOTO 48
  IF ~~ THEN REPLY #18069 /* ~"Je ne veux rien savoir. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18070 /* ~"Laisse tomber. Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #17877 /* ~Pharod bouillonne et frappe le sol de sa béquille. "La collecte est autant un art que n'importe quelle petite magie."~ */
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",0)
~ THEN REPLY #18073 /* ~"Pharod, récupérer des corps morts pour les vendre n'a rien à voir avec l'étude de la magie."~ */ DO ~AddexperienceParty(500)
SetGlobal("Pharod_Extortion_Bodies","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",1)
~ THEN REPLY #18074 /* ~"Je te l'ai déjà dit, Pharod : récupérer des corps morts pour les vendre n'a rien à voir avec l'étude de la magie."~ */ GOTO 47
  IF ~~ THEN REPLY #18075 /* ~"Je ne tiens pas à discuter de ça avec toi. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18076 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #17878 /* ~"N'est-ce pas grâce à cet art que j'ai trouvé ce lieu ?!" La voix de Pharod devient hurlement et ses doigts s'agrippent à sa béquille. "Il a fallu de l'intuition pour trouver cet endroit et pour en faire bon usage !"~ */
  IF ~~ THEN REPLY #18077 /* ~"Le Village Enseveli ? Allez, qu'est-ce qui se cache derrière tout ça ?"~ */ JOURNAL #18080 /* ~J'ai convaincu Pharod de me dire où il prenait ses corps sans avoir à lui donner ma parole de ne rien dire. Je ne crois même pas qu'il s'en soit rendu compte… quel imbécile !~ */ GOTO 48
  IF ~~ THEN REPLY #18078 /* ~"Je ne tiens pas à discuter de ça avec toi. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18079 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2 47.0
  SAY #17879 /* ~"Très bien…" Pharod tapote les dalles de sa béquille et ricane. "Il n'y a pas que ce village enfoui sous le Square du Chiffonnier."~ */
  IF ~~ THEN REPLY #18081 /* ~"Continue…"~ */ GOTO 49
  IF ~~ THEN REPLY #18082 /* ~"Je ne veux rien savoir. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18083 /* ~"J'en ai assez entendu… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #17880 /* ~"Des chambres, des souterrains, des couloirs…" Pharod esquisse un sourire et ses yeux brillent comme de l'or. "Des endroits, complètement noirs, remplis de pierres pleureuses et de précieux morts, tous endormis dans leurs cercueils. Endormis…"~ */
  IF ~~ THEN REPLY #18084 /* ~"D'où viennent tous ces morts ?"~ */ GOTO 50
  IF ~~ THEN REPLY #18085 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18086 /* ~"J'en ai assez entendu… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #17881 /* ~Pharod te regarde de biais. "Cadavre, cadavre… tout meurt. La vie est trop courte, mais la mort dure très, très longtemps. Beaucoup de gens, beaucoup de morts…" Son regard voyage au-delà de toi. "Quelle perte que tous ces morts inutiles dans les bras des Hommes-Poussière, hein ?"~ */
  IF ~~ THEN REPLY #18087 /* ~"Qu'est-ce que tu veux dire ?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ JOURNAL #18090 /* ~J'ai découvert d'où venaient tous les corps de cette vieille goule de Pharod : il a trouvé des catacombes ensevelies sous le Village Enseveli. Les Hommes-Poussière ont enterré un certain nombre de corps là-bas ; Pharod les déterre, il les revend aux Hommes-Poussière, attend que les Hommes-Poussière les enterrent, puis les déterre à nouveau et ainsi de suite. Une source inaltérable d'argent… morbide, mais efficace.~ */ GOTO 51
  IF ~~ THEN REPLY #18088 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18089 /* ~"J'en ai assez entendu… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #17882 /* ~Pharod sourit avidement. "Tous les morts qui passent la porte de la Morgue n'entretiennent pas le four, cadavre. Les Hommes-Poussière en enterrent certains dans les entrailles de la cité. Sous le village… si près, si proche… est cet endroit. J'aurais été idiot de ne pas y voir une chance à saisir…"~ */
  IF ~~ THEN REPLY #18091 /* ~"Alors, tu voles les morts que les Hommes-Poussière ont enterrés dans les catacombes, tu les leur revends et ils les enterrent de nouveau ?"~ */ GOTO 52
  IF ~~ THEN REPLY #18092 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18093 /* ~"J'en ai assez entendu… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #17883 /* ~Pharod acquiesce puis ricane légèrement - on dirait un bruit de sable mouvant. "Ces catacombes sont aussi profondes que les poches d'un Homme-Poussière."~ */
  IF ~~ THEN REPLY #18094 /* ~"Et que la cupidité de l'homme."~ */ GOTO 53
  IF ~~ THEN REPLY #18095 /* ~"Très malin, Pharod. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18096 /* ~"J'en ai assez entendu… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #17884 /* ~"Oh, oui…" Pharod ricane. "Il est toujours bon de compter sur la cupidité de l'homme à défaut d'autre chose, pas vrai ?"~ */
  IF ~~ THEN REPLY #18097 /* ~"Très malin, Pharod. J'ai d'autres questions…"~ */ GOTO 17
  IF ~~ THEN REPLY #18098 /* ~"J'en ai assez entendu… Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 16.0 33.1
  SAY #17885 /* ~Les yeux de Pharod luisent lorsque tu lui tends la sphère en bronze - il la touche délicatement, avec déférence presque. "Tu…" Il ricane. "Ah, cadavre, tu représentais un véritable défi mais ça en valait la peine…" Pharod étudie son reflet dans la sphère et fait claquer sa langue. "Les années ne m'ont pas épargné, je vois…"~ */
  IF ~~ THEN REPLY #18099 /* ~"J'ai fait ce que tu m'as demandé, Pharod. Maintenant, je veux des réponses."~ */ GOTO 55
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18100 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18101 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #17886 /* ~Pharod ne te regarde même pas lorsque tu parles… toute son attention est portée sur la sphère qu'il tient. "Oui, oui, pose tes questions…" Pharod fait tourner la sphère dans ses mains. "Très important, tes questions…"~ */
  IF ~~ THEN REPLY #18102 /* ~"Qu'est-ce que tu sais sur moi ? Pourquoi est-ce qu'on m'a dit d'aller te voir ?"~ */ GOTO 56
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18103 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18104 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #17887 /* ~Pharod t'examine d'un œil critique. "Retiens tes armes pour ce que je vais te dire, cadavre, parce que tes oreilles pourraient en prendre ombrage…" Pharod sourit méchamment. "Mes oreilles ne comptent plus, mais les tiennes sont encore assez fraîches pour être échauffées, il me semble."~ */
  IF ~~ THEN REPLY #18105 /* ~"Réponds-moi, Pharod. Je perds patience."~ */ GOTO 57
  IF ~~ THEN REPLY #18106 /* ~Serment : "Je te donne ma parole que je me retiendrai, Pharod. Mais il faut que tu me dises ce que tu sais."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_4","GLOBALLaw",1)
~ GOTO 57
  IF ~~ THEN REPLY #18107 /* ~Mensonge : "Je te donne ma parole que je me retiendrai, Pharod. Mais il faut que tu me dises ce que tu sais."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_2","GLOBALGood",-1)
~ GOTO 57
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18108 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18109 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 56.2
  SAY #17888 /* ~"La vérité…" La voix de Pharod se fait plus douce, presque cajoleuse. "La vérité c'est que je t'en ai dit plus que j'en savais la première fois, cadavre - en toute honnêteté, je ne sais pas grand-chose sur toi." Il lève un doigt flétri. "Pourtant, écoute-moi…"~ */
  IF ~~ THEN REPLY #18110 /* ~"Oui… ?"~ */ GOTO 58
  IF ~~ THEN REPLY #18111 /* ~"Pharod, j'espère que ça *vaut la peine* que je t'écoute."~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18112 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18113 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 17.5 57.0 57.1
  SAY #17889 /* ~"T'es un matois qui joue les morts, à ce que je vois." Pharod te regarde de biais. "Il y a quelque temps tu es venu me voir, comme aujourd'hui, à la Cour des Vents Mauvais et tu m'as dis que tu voulais une 'audience'."~ */
  IF ~~ THEN REPLY #18114 /* ~"Une audience avec toi ?"~ */ GOTO 59
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18115 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18116 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #17890 /* ~"Oui, une 'audience'." Pharod glousse. "Comme si j'étais un roi…" Il semble amusé, mais sa voix laisse entendre une légère nervosité. "Tu savais ce qu'il fallait dire, ça oui. Tu as narré la chanson comme un Greffier, un vrai. Et je t'ai écouté."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #18117 /* ~"Mais tu étais un personnage royal… Ou en tout cas un homme haut placé autrefois, non ?"~ */ GOTO 60
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #18118 /* ~"Qu'est-ce qu'il… qu'est-ce que je… voulais ?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18119 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18120 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #17891 /* ~"Une fois." Pharod siffle. "*Une fois*. Des titres, des mots seulement, RIEN en fin de compte…" Il redevient silencieux, puis fait claquer sa langue. "Tu la connaissais aussi, mon histoire, je pense…"~ */
  IF ~~ THEN REPLY #18121 /* ~"Qu'est-ce qu'il… qu'est-ce que je… voulais ?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18122 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18123 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1 60.0
  SAY #17892 /* ~Pharod fait un simulacre de salut et sa béquille craque lorsqu'il s'appuie dessus. "Ô Pharod, grand Roi des Récupérateurs, dis-tu. 'Je suis venu à toi pour te demander une faveur.' 'Une faveur ?' dis-je. 'Que pourrais-je offrir à un homme qui a l'air aussi fort ?'"~ */
  IF ~~ THEN REPLY #18124 /* ~"Continue…"~ */ GOTO 62
  IF ~~ THEN REPLY #18125 /* ~"Assez de simagrées, Pharod. Qu'est-ce que je voulais ?"~ */ GOTO 62
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18126 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18127 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1
  SAY #17893 /* ~Pharod agite son doigt crochu. "Et tu as demandé une chose étrange. Tu as dit, 'Seigneur Pharod, je te demande de la *courtoisie*. Tes Récupérateurs parcourent la Ruche. S'ils trouvent mon corps, je veux qu'ils en prennent soin. C'est tout ce que je demande." Pharod hausse les épaules. "Une simple faveur."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18128 /* ~"Je vois. Et c'est tout ce que tu sais ?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18129 /* ~"Je vois. Et c'est tout ce que tu sais ?"~ */ GOTO 68
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18130 /* ~"Sauf que… tu n'avais rien à y gagner, toi. Pourquoi tu as accepté ?"~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18131 /* ~"Sauf que… tu n'avais rien à y gagner, toi. Pourquoi tu as accepté ?"~ */ GOTO 64
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18132 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18133 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #17894 /* ~Tu t'apprêtes à parler mais tu ressens soudain un fourmillement dans le crâne lorsque Pharod prononce le mot 'faveur' et l'odeur du sang et de la peur envahit tes narines. Pharod cache quelque chose, quelque chose qui est arrivé dans le passé, qui te concerne - et cela l'effraie. La faveur qu'il t'a accordée n'était pas bénigne.~ */
  IF ~~ THEN REPLY #18134 /* ~"Alors, tu n'avais aucune raison de me rendre service ? Tu n'avais rien à y gagner. Pourquoi tu as accepté ?"~ */ GOTO 64
  IF ~~ THEN REPLY #18135 /* ~"Euh… Je vois. Et c'est tout ce que tu sais ?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18136 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18137 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.2 62.3 63.0
  SAY #17895 /* ~Pharod reste silencieux un moment. "Un homme mort ne peut pas garder de promesses et il est facile de promettre à un mort, cadavre."~ */
  IF ~~ THEN REPLY #18138 /* ~"Tu es un marchand, Pharod, pas un Bon Samaritain. Il devait y avoir une autre raison…"~ */ DO ~SetGlobal("Pharod_Sphere_Truth","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #18139 /* ~"Bon, très bien. C'est tout ce que tu sais ?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18140 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18141 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #17896 /* ~"Oui…" Soudain, la fureur déforme le visage de Pharod, le sang lui monte à la tête. "Quand tu as pendu haut et court une grande partie de ma famille sur les murs de la Ruche, j'avais des raisons *suffisantes* pour te promettre les PLANS eux-mêmes. C'est alors que tu as débarqué CHEZ MOI, dans ma GUITOUNE, pour EXIGER une 'faveur'…" Pharod se calme mais son visage est encore congestionné. "Oui, j'ai accepté…"~ */
  IF ~~ THEN REPLY #18142 /* ~Vérité : "Je suis désolé de ce qui est arrivé aux tiens, Pharod. Ce n'était pas moi… Mais si je peux faire quelque chose pour toi en contrepartie…"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Pharod_5","GLOBALLaw",1)
~ GOTO 66
  IF ~~ THEN REPLY #18143 /* ~Vérité : "Je suis désolé de ce qui est arrivé aux tiens, Pharod, pour ce que ça vaut."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
~ GOTO 66
  IF ~~ THEN REPLY #18144 /* ~"Continue… quoi d'autre ?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18145 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18146 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.1
  SAY #17897 /* ~Pharod fait claquer sa langue. "Peu importe, ces corps m'ont bien servi. Les Hommes-Poussière paient autant pour les frais que pour les anciens…"~ */
  IF ~~ THEN REPLY #18147 /* ~"C'est la seule raison qui t'a poussé à accepter ma requête ?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18148 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18149 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.2 66.0
  SAY #17898 /* ~"Tu savais des choses sur moi… des choses que j'étais le seul à savoir. Tu savais que je voulais quelque chose sous Sigil et tu y as mis un nom et une image : la sphère de bronze, tu as dit. Je ne pensais pas que tu irais la chercher pour moi…" Il ricane. "Mais tu l'as fait. Les Plans tournent de façon étrange…"~ */
  IF ~~ THEN REPLY #18150 /* ~"Et c'est *tout* ce que tu sais ?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18151 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18152 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 62.1 63.1 64.1 67.0
  SAY #17899 /* ~"Tout ce que je sais ? Non… mais c'est tout ce que je sais sur toi, cadavre."~ */
  IF ~~ THEN REPLY #18153 /* ~"Bien. Question suivante… qu'est-ce que tu as récupéré sur mon corps après ma mort ?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18154 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18155 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 17.6 68.0
  SAY #17900 /* ~"Moi ?" Pharod se lèche les lèvres. "Ah *moi*, je n'ai rien pris, cadavre." Son visage grimace. "Ce n'est pas moi qui ai trouvé ton corps…"~ */
  IF ~~ THEN REPLY #18156 /* ~"C'était qui ?"~ */ GOTO 70
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18157 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18158 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 75.4
  SAY #17901 /* ~Le sourire de Pharod s'élargit, tirant les plis de sa chair comme un rideau. "Ma fille, ma toute douce et intelligente, la prunelle de mes yeux…" Il lèche ses lèvres sèches et soupire d'un air triste et railleur. "Mais quelle langue cruelle…"~ */
  IF ~  !Dead("Annah")
~ THEN REPLY #18159 /* ~"Ta *fille* ? Qui ça ?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18161 /* ~J'ai apporté la sphère en bronze à Pharod. Il ne m'a pas dit grand-chose d'intéressant : il a expliqué que je lui avais demandé son 'assistance'. Je voulais qu'à ma mort, il s'assure que les membres de son gang de Récupérateurs amèneraient mon corps sain et sauf à la Morgue. Il m'a dit que mon corps avait été trouvé par sa fille Annah.~ */ GOTO 71
  IF ~  Dead("Annah")
~ THEN REPLY #18160 /* ~"Ta *fille* ? Qui ça ?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18162 /* ~J'ai apporté la sphère en bronze à Pharod. Il ne m'a pas dit grand-chose d'intéressant : il a expliqué que je lui avais demandé son 'assistance'. Je voulais qu'à ma mort, il s'assure que les membres de son gang de Récupérateurs amèneraient mon corps sain et sauf à la Morgue. Il m'a dit que mon corps avait été trouvé par sa fille Annah… Il me semble que c'est le nom de l'un des tieffelins que j'ai tués dans la Ruche. Peu importe, du moment que Pharod sait où mon corps a été trouvé…~ */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.0 78.0 78.1 78.2
  SAY #17902 /* ~"Ma fille chérie, Annah. Elle t'a trouvé, plus mort que mort, dans un endroit où la plupart des Récupérateurs n'iraient pas même pour une *montagne* de pièces. T'aurait-elle arraché quelque chose, peut-être… ?" Il se penche, en secouant la tête. "Tu devras lui demander, ce n'est pas à son père de répondre."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Pharod_Extortion","GLOBAL",0)
~ THEN REPLY #18163 /* ~"Ne me mens pas, Pharod. Tu es un marchand et tu réclames toujours ta part à tes employés. Qu'est-ce qu'Annah *t'a* donné après avoir fouillé mon cadavre ?"~ */ GOTO 75
  IF ~  Global("Annah","GLOBAL",0)
~ THEN REPLY #18164 /* ~"Annah ? Très bien, je vais lui demander. Où est-elle ?"~ */ GOTO 73
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18166 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18167 /* ~"Très bien, c'est tout ce que je voulais savoir."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY #17903 /* ~"Ma fille chérie, Annah. Elle t'as trouvé, plus mort que mort, dans un endroit où la plupart des Récupérateurs n'iraient pas même pour une *montagne* de pièces. Si tu allais là-bas tu trouverais peut-être ces précieux morceaux qui te manquent…"~ */
  IF ~~ THEN REPLY #18168 /* ~"Où est-ce qu'elle a trouvé mon corps ?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY #17904 /* ~"Où est Annah ?" Pharod hausse les épaules. "Quelque part dans l'ombre, je suppose, à écouter la chanson. Je suis allé la chercher quand tu es parti là-dessous… je voulais lui demander si tu étais *vraiment* dans le livre des morts quand elle t'a trouvé…" Il glousse sèchement, puis inspire profondément et se tourne vers l'obscurité : "Annah ! Arrête tes simagrées et viens dire bonjour à notre invité !"~ */
  IF ~~ THEN REPLY #18169 /* ~"Elle est ici ?"~ */ DO ~SetGlobal("0110_Cut_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("0110cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18170 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18171 /* ~"Très bien, c'est tout ce que je voulais savoir. Je vais essayer de la trouver."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 17.7 72.0
  SAY #17905 /* ~"Elle dit qu'elle t'a trouvé dans la Ruche. Dans une allée hantée, au nord-est du Cadavre fumant…" Pharod réfléchit, en tapotant ses doigts sur sa béquille. "Évidemment, il faudra d'abord que tu réussisses à passer ces Chaoteux de la Ruche…"~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #18172 /* ~"Qu'est-ce que tu veux dire ?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #18173 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47828 /* ~"Très bien, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 71.0
  SAY #17906 /* ~"Ah… oui… mon tribut…" Pharod replie ses mains blanchies sur sa béquille, comme pour se protéger. "Rien ne dit ce qu'il y avait sur *toi*, cadavre. Vraisemblablement, il n'y avait rien."~ */
  IF ~~ THEN REPLY #18175 /* ~Vérité : "Pharod, ma patience est à bout. Il ne restera rien de toi, ni de ce village si tu ne me remets pas le 'tribut'."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_3","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18176 /* ~Bluff : "Pharod, ma patience est à bout. Il ne restera rien de toi, ni de ce village si tu ne me remets pas le 'tribut'."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_4","GLOBALLaw",-1)
~ GOTO 76
  IF ~  !Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18177 /* ~Vérité : "Pharod, ma patience est à bout. Si tu ne me rends pas ce que tu m'as volé, j'irai trouver les Hommes-Poussière et je leur dirai où tu te caches."~ */ GOTO 76
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18178 /* ~Vérité : "Pharod, ma patience est à bout. Si tu ne me rends pas ce que tu m'as volé, j'irai trouver les Hommes-Poussière et je leur dirai où tu te caches."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_4","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18179 /* ~"Très bien… qui a trouvé mon corps déjà ?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1 75.2 75.3
  SAY #17907 /* ~Pharod reste silencieux un instant. Il tapote des doigts sur sa béquille… lentement.~ */
  IF ~~ THEN REPLY #18180 /* ~"Et bien ?"~ */ DO ~SetGlobal("Pharod_Extortion","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 77
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18181 /* ~"Peu importe. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18182 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #17908 /* ~"Qu'est devenue la bienséance humaine…" Pharod maugrée, en secouant la tête. "C'est une courtoisie de ma part, cadavre… une véritable courtoisie. Pharod *se séparant* de quoi que ce soit… ce serait le livre des morts pour moi si on venait à l'apprendre… reste ici, ne bouge pas d'un pouce. Je vais revenir."~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #18183 /* ~Attends…~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18185 /* ~Pharod est allé chercher l'offrande que sa fille avait prise sur mon corps. Un bout de papier accompagnait l'offrande… j'ai l'étrange impression que je l'ai écrit à mon attention.~ */ GOTO 78
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18184 /* ~"Hmmm. Je me demande où il va…"~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18186 /* ~Pharod est allé chercher l'offrande que sa fille avait prise sur mon corps. Un bout de papier accompagnait l'offrande… j'ai l'étrange impression que je l'ai écrit à mon attention. Et comment Pharod a-t-il réussi à se la procurer ? Il n'est pas sorti par la porte principale, et je ne crois pas que la Cour des Vents mauvais ait d'autres issues.~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #17909 /* ~Au bout d'un long moment, Pharod revient, sa béquille *résonant* de nouveau sur les dalles. Dans ses mains, il tient plusieurs objets, qu'il te fait passer. "Tu garderas le *silence* là-dessus et accepteras la *bénédiction* dont je me suis même souvenu…"~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18187 /* ~"Quelques centaines de pièces de cuivre et un morceau de papier ? Génial. Et qui est-ce qui a trouvé mon corps déjà ?"~ */ DO ~GiveGoldForce(200)
GiveItemCreate("Npharod",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #18188 /* ~"Quelques centaines de pièces de cuivre, un morceau de papier et un anneau ? Très bien… qui a trouvé mon corps déjà ?"~ */ DO ~GiveGoldForce(250)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #18189 /* ~"Quelques centaines de pièces de cuivre, un morceau de papier, des bandages et un anneau ? Très bien… qui a trouvé mon corps déjà ?"~ */ DO ~GiveGoldForce(350)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 79 // from: 17.2
  SAY #17910 /* ~Pharod te regarde du coin de l'œil, les plis de sa peau retombant presque sur ses yeux. "Tu avais un journal lorsque nous nous sommes parlés la dernière fois… se serait-il perdu ?" Pharod glousse sèchement. "Ces yeux ne l'ont pas vu… mais je les garderai bien ouverts, crois-moi. J'adorerais lire un travail aussi *somptueux*…"~ */
  IF ~~ THEN REPLY #18190 /* ~"J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #18191 /* ~"Je dois m'en aller. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 33.0
  SAY #17911 /* ~"Tout mensonge entraînant la mort d'autrui est ce qu'il y a de pire…" Pharod tapote sur sa béquille, sa respiration légèrement sifflante. "Tu ferais mieux de tenir ta parole, cadavre, sinon les Plans te moudront comme la roue du meunier."~ */
  IF ~~ THEN REPLY #18192 /* ~"Je m'en souviendrai. J'ai d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #18193 /* ~"On verra, Pharod. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #47307 /* ~"Annah, petite prunelle de mes yeux, ne t'ai-je pas appris à *respecter* les morts ?" Un sourire imperceptible se grave sur le visage de Pharod et il s'incline légèrement vers toi. "Ce cadavre plein de ressources souhaite savoir où tu l'as trouvé."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 220
END

IF ~~ THEN BEGIN 82 // from:
  SAY #47308 /* ~"Ah, oui ! Je me suis trompé", fait-il avant de se faire menaçant. "Ou peut-être devrais-je dire que TU t'es trompée, Annah chérie, car cet homme n'avait qu'un pied dans la tombe quand tu me l'as amené." Il tape les dalles de sa béquille. "Et maintenant, il s'est réveillé et est venu me trouver. Voilà qui est embarrassant pour moi… très embarrassant…"~ */
  IF ~~ THEN EXTERN ~DANNAH~ 221
END

IF ~~ THEN BEGIN 83 // from:
  SAY #47309 /* ~"Montre-lui où tu as trouvé son corps, Annah", dit-il en tapant une nouvelle fois le sol de sa béquille. "Conduis-le à l'allée hantée." Pharod fixe un instant Annah puis se tourne vers toi. "Si jamais tu perds ma petite chérie avant d'arriver à l'allée, reviens me voir, cadavre. Je te guiderai moi-même…"~ */
  IF ~~ THEN JOURNAL #59007 /* ~Je ne sais si je dois me sentir flatté ou insulté. Pharod vient de demander à sa 'fille' de me conduire à l'allée hantée où elle a retrouvé ma dépouille. Si jamais elle me perd en chemin, il m'a assuré que je n'avais qu'à venir le retrouver et qu'il me guiderait en personne.~ */ EXTERN ~DANNAH~ 224
END

IF ~~ THEN BEGIN 84 // from:
  SAY #47310 /* ~"Annah…" Pharod n'élève pas la voix, mais la jeune femme se tait aussitôt. "Occupe-toi de lui et veille à ce qu'il ne lui arrive rien tant qu'il se trouve au village. Et emmène-le là où il souhaite aller."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 226
END

IF ~~ THEN BEGIN 85 // from: 74.0
  SAY #47829 /* ~"Ma chère Annah a dû se faufiler dans une de leurs guitounes pour arriver jusqu'à l'allée où elle t'a trouvé… un bâtiment qui en grouillait entre elle et l'allée où elle a trouvé ton corps."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47832 /* ~"Alors… il faut d'abord que je passe par un bâtiment *avant* d'arriver à cette 'allée hantée' ?"~ */ GOTO 86
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47833 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47834 /* ~"Très bien, c'est tout ce que je voulais savoir. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #47830 /* ~"Oui… elle a dit quelque chose au sujet d'une porte spéciale appartenant à ces Chaoteux." Pharod réfléchit un moment. "C'était une porte que l'on ne pouvait ouvrir qu'avec les yeux fermés - sinon elle ne ressemblait à rien d'autre qu'à une peinture de porte de la Ruche."~ */
  IF ~  Global("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47835 /* ~"Je me souviens de cette porte… Elle se trouve au nord-est du Cadavre fumant. Mais je croyais que ce n'était qu'une peinture. Alors, comme ça, elle se transforme en VÉRITABLE porte si on essaie de l'ouvrir les yeux fermés ?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod m'a dit où mon corps avait été retrouvé : dans la Ruche, et plus particulièrement dans une "allée hantée" proche du bar du Cadavre fumant. Peut-être pourrais-je y découvrir des informations sur ma mort. Pharod m'a expliqué que, pour atteindre l'allée, il me faudrait d'abord passer par un immeuble plein de Chaoteux. L'entrée de ce bâtiment est une peinture de porte, au nord du bar du Cadavre fumant. Il suffit de fermer les yeux pour que la porte devienne réelle. Décidément, cette ville est de plus en plus étrange.~ */ GOTO 87
  IF ~  Global("Know_Painted_Door","GLOBAL",0)
~ THEN REPLY #47836 /* ~"Alors cette… porte peinte… se trouve au nord-est du Cadavre fumant ? Et elle se transforme en VRAIE porte si on essaie de l'ouvrir les yeux fermés ?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod m'a dit où mon corps avait été retrouvé : dans la Ruche, et plus particulièrement dans une "allée hantée" proche du bar du Cadavre fumant. Peut-être pourrais-je y découvrir des informations sur ma mort. Pharod m'a expliqué que, pour atteindre l'allée, il me faudrait d'abord passer par un immeuble plein de Chaoteux. L'entrée de ce bâtiment est une peinture de porte, au nord du bar du Cadavre fumant. Il suffit de fermer les yeux pour que la porte devienne réelle. Décidément, cette ville est de plus en plus étrange.~ */ GOTO 87
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47837 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47838 /* ~"Très bien, c'est tout ce que je voulais savoir. Je vais essayer de trouver cette porte peinte."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0 86.1
  SAY #47831 /* ~"Oui…" Pharod sourit. "Sigil a de bien étranges habitudes, cadavre. Sigil a de bien étranges habitudes."~ */
  IF ~~ THEN REPLY #47839 /* ~"J'avais d'autres questions à te poser…"~ */ GOTO 17
  IF ~~ THEN REPLY #47840 /* ~"Très bien, c'est tout ce que je voulais savoir. Je vais essayer de trouver cette porte peinte."~ */ EXIT
END
