// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPESTAL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DPESTAL~

IF ~  Global("Evil_Book_Spoken","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #26924 /* ~Alors que tu touches ce livre, tu entends une voix : "Bienvenue, maître. Comment cet humble tome peut-il t'être utile ?"~ */
  IF ~~ THEN REPLY #26926 /* ~"Tu parles ?"~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #26927 /* ~"Impossible. Arrête de me parler."~ */ DO ~SetGlobal("Evil_Book_Spoken","GLOBAL",1)
~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.3 4.19 6.2 7.2 8.2 9.2 10.2 11.2 12.2 13.2 14.2 15.2 16.2 17.2 18.2 19.2 20.2 21.2 22.1 26.1 27.1 54.3
  SAY #26928 /* ~"Comme tu voudras, maître. Il te suffit de prononcer une parole pour que je t'aide en tout."~ */
  IF ~~ THEN REPLY #26929 /* ~"En fait, dis-moi ce que tu peux faire."~ */ GOTO 3
  IF ~~ THEN REPLY #26930 /* ~"Bien. Maintenant, tais-toi."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #26931 /* ~"Oui, maître, dans de nombreuses langues. Veille seulement à ce que personne ne nous voit parler, parce qu'ils ne peuvent pas m'entendre. Et, maître, la parole n'est qu'un de mes pouvoirs."~ */
  IF ~~ THEN REPLY #26932 /* ~"Qu'est-ce que tu peux faire ? Quels sont tes pouvoirs ?"~ */ GOTO 3
  IF ~~ THEN REPLY #26933 /* ~"Comment est-ce que Mantuok t'a eu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #26934 /* ~"Parle-moi de toi."~ */ GOTO 6
  IF ~~ THEN REPLY #26935 /* ~"Ça suffit pour le moment."~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 4.0 5.0
  SAY #26936 /* ~"Je peux t'accorder des aptitudes qui te permettront plus de latitude dans les vicissitudes de la vie, maître et je peux te conseiller."~ */
  IF ~~ THEN REPLY #26937 /* ~"De quelles aptitudes tu parles ?"~ */ GOTO 23
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26938 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26939 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26940 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26941 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26942 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26943 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26944 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26945 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26946 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26947 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26948 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26949 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26950 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26951 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26952 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26953 /* ~"Donne-moi des conseils."~ */ GOTO 22
  IF ~~ THEN REPLY #26954 /* ~"Laisse tomber. Réponds à d'autres questions pour moi."~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.17 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.1 16.1 17.1 18.1 19.1 20.1 21.1 22.0 26.0 27.0
  SAY #26955 /* ~"Que veux-tu savoir, maître ?"~ */
  IF ~~ THEN REPLY #26956 /* ~"Qu'est-ce que tu peux faire ? Quels sont tes pouvoirs ?"~ */ GOTO 3
  IF ~~ THEN REPLY #26957 /* ~"Comment est-ce que Mantuok t'a eu ?"~ */ GOTO 5
  IF ~~ THEN REPLY #26958 /* ~"Parle-moi de toi."~ */ GOTO 6
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #26959 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26960 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 8
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26961 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 9
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26962 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 10
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26963 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 11
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #26964 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 12
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #26965 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #26966 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 14
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #26967 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 15
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #26968 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 16
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #26969 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 17
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #26970 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 18
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #26971 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 19
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #26972 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 20
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #26973 /* ~"Donne-moi des conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 21
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #26974 /* ~"Donne-moi des conseils."~ */ GOTO 22
  IF ~~ THEN REPLY #26975 /* ~"Ça suffit pour le moment."~ */ GOTO 1
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #26976 /* ~"Le rat-mage malade m'a déterré des catacombes, mon maître. Il m'a arraché des mains de mon ancien maître, mort maintenant depuis longtemps. Il m'a amené dans son nid pour qu'il puisse apprendre à mes côtés. Sa puissance était limitée, mais… c'était difficile de lui parler et il ne comprenait presque rien de ce que je lui enseignais."~ */
  IF ~~ THEN REPLY #26977 /* ~"Parle-moi de tes pouvoirs."~ */ GOTO 3
  IF ~~ THEN REPLY #26978 /* ~"Je vois. Réponds à d'autres questions pour moi."~ */ GOTO 4
  IF ~~ THEN REPLY #26979 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.2 4.2
  SAY #26980 /* ~"La question que tu poses n'est pas simple, mon maître, mais ton serviteur cherchera à y répondre du mieux qu'il le pourra. Je suis un manuscrit de moments désormais oubliés et de pensées d'autres temps et d'autres mondes. Dans mes pages se trouvent les connaissances des civilisations oubliées. En essence, mon maître, et c'est tout ce qui compte, mes pages renferment la PUISSANCE. Cette puissance peut être à toi… mon maître."~ */
  IF ~~ THEN REPLY #26981 /* ~"Parle-moi de tes pouvoirs."~ */ GOTO 23
  IF ~~ THEN REPLY #26982 /* ~"Ça ne m'intéresse pas pour le moment. Tu veux bien répondre à quelques questions pour moi ?"~ */ GOTO 4
  IF ~~ THEN REPLY #26983 /* ~"Pas intéressé. Adieu, livre."~ */ GOTO 1
END

IF ~~ THEN BEGIN 7 // from: 3.1 4.3
  SAY #26984 /* ~"Je te donne ce conseil, mon maître. Méfie-toi de ceux qui te sont proches. Ne leur fais jamais entièrement confiance et ne dilue jamais ta force en la partageant. Plusieurs empereurs de ma connaissance l'ont fait et je ne voudrais pas que tu subisses le même sort."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #26985 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de ceux qui t'entourent. Ne leur fais jamais entièrement confiance et ne disperse pas ta force en la partageant. J'ai connu bon nombre d'empereurs qui ont commis cette erreur, et je ne te souhaite pas de subir le même sort qu'eux".~ */ GOTO 8
  IF ~~ THEN REPLY #26986 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27016 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de ceux qui t'entourent. Ne leur fais jamais entièrement confiance et ne disperse pas ta force en la partageant. J'ai connu bon nombre d'empereurs qui ont commis cette erreur, et je ne te souhaite pas de subir le même sort qu'eux".~ */ GOTO 4
  IF ~~ THEN REPLY #26987 /* ~"Ça suffit."~ */ JOURNAL #27016 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de ceux qui t'entourent. Ne leur fais jamais entièrement confiance et ne disperse pas ta force en la partageant. J'ai connu bon nombre d'empereurs qui ont commis cette erreur, et je ne te souhaite pas de subir le même sort qu'eux".~ */ GOTO 1
END

IF ~~ THEN BEGIN 8 // from: 3.2 4.4 7.0
  SAY #26988 /* ~"Alors je te donne ce conseil, mon maître. S'il se disent tes amis, laisse-les te prouver leur amitié. Les mots ont peu de poids face aux actions. Si ce sont tes amis, qu'ils soient prêts à mourir pour toi."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #26989 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Le livre m'a donné le conseil suivant : "S'ils affirment leur loyauté, alors laisse-les te la prouver. Les mots n'ont que peu de poids face aux actions. S'ils sont tes amis, ils doivent être prêts à mourir pour toi".~ */ GOTO 9
  IF ~~ THEN REPLY #26990 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27017 /* ~Le livre m'a donné le conseil suivant : "S'ils affirment leur loyauté, alors laisse-les te la prouver. Les mots n'ont que peu de poids face aux actions. S'ils sont tes amis, ils doivent être prêts à mourir pour toi".~ */ GOTO 4
  IF ~~ THEN REPLY #26991 /* ~"Ça suffit."~ */ JOURNAL #27017 /* ~Le livre m'a donné le conseil suivant : "S'ils affirment leur loyauté, alors laisse-les te la prouver. Les mots n'ont que peu de poids face aux actions. S'ils sont tes amis, ils doivent être prêts à mourir pour toi".~ */ GOTO 1
END

IF ~~ THEN BEGIN 9 // from: 3.3 4.5 8.0
  SAY #26992 /* ~Tu ressens un léger serrement dans la poitrine lorsque le livre parle : "Alors je te donne ce conseil, mon maître. Ne montre aucune faiblesse, n'admets jamais tes erreurs, ne montre pas d'hésitation. Tout ce qui indique aux autres que tu n'es pas sûr de toi, tel un rocher déséquilibré facile à renverser."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #26993 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Le livre m'a donné le conseil suivant : "Ne montre aucune faiblesse, n'admets jamais avoir commis des erreurs, ne montre aucune hésitation. Ces éléments montrent aux autres que tu n'es pas sûr de toi. Une pierre mal équilibrée peut être culbutée".~ */ GOTO 10
  IF ~~ THEN REPLY #26994 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27018 /* ~Le livre m'a donné le conseil suivant : "Ne montre aucune faiblesse, n'admets jamais avoir commis des erreurs, ne montre aucune hésitation. Ces éléments montrent aux autres que tu n'es pas sûr de toi. Une pierre mal équilibrée peut être culbutée".~ */ GOTO 4
  IF ~~ THEN REPLY #26995 /* ~"Ça suffit."~ */ JOURNAL #27018 /* ~Le livre m'a donné le conseil suivant : "Ne montre aucune faiblesse, n'admets jamais avoir commis des erreurs, ne montre aucune hésitation. Ces éléments montrent aux autres que tu n'es pas sûr de toi. Une pierre mal équilibrée peut être culbutée".~ */ GOTO 1
END

IF ~~ THEN BEGIN 10 // from: 3.4 4.6 9.0
  SAY #26996 /* ~"Alors je te donne ce conseil, mon maître. Méfie-toi de la pitié. Un dos tourné est une aubaine pour le couteau de l'assassin."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #26997 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de la pitié. Avoir le dos tourné ne protège pas contre le couteau d'un assassin".~ */ GOTO 11
  IF ~~ THEN REPLY #26998 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27019 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de la pitié. Avoir le dos tourné ne protège pas contre le couteau d'un assassin".~ */ GOTO 4
  IF ~~ THEN REPLY #26999 /* ~"Ça suffit."~ */ JOURNAL #27019 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de la pitié. Avoir le dos tourné ne protège pas contre le couteau d'un assassin".~ */ GOTO 1
END

IF ~~ THEN BEGIN 11 // from: 3.5 4.7 10.0
  SAY #27000 /* ~"Alors je te donne ce conseil, mon maître. Attention à la vision ordinaire de l'amour. L'amour doit souvent être cruel pour s'élever au-dessus de la pure sentimentalité."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27001 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de l'opinion ordinaire sur l'amour. L'amour doit souvent être cruel pour s'élever au-delà d'une disposition purement sentimentale".~ */ GOTO 12
  IF ~~ THEN REPLY #27002 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27020 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de l'opinion ordinaire sur l'amour. L'amour doit souvent être cruel pour s'élever au-delà d'une disposition purement sentimentale".~ */ GOTO 4
  IF ~~ THEN REPLY #27003 /* ~"Ça suffit."~ */ JOURNAL #27020 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de l'opinion ordinaire sur l'amour. L'amour doit souvent être cruel pour s'élever au-delà d'une disposition purement sentimentale".~ */ GOTO 1
END

IF ~~ THEN BEGIN 12 // from: 3.6 4.8 11.0
  SAY #27004 /* ~Tu ressens l'irrésistible envie de rire, mais tu la réprimes bien vite. "Alors je te donne ce conseil, mon maître : tiens-toi à l'écart des petits esprits et des faibles en reconnaissant ta destinée. Ce n'est qu'ainsi que tu pourras t'aventurer là où d'autres craignent d'aller."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27005 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Le livre m'a donné le conseil suivant : "Sépare-toi des imbéciles mesquins et des faibles en reconnaissant ta destinée. Cette destinée te donne à elle seule la force de t'aventurer là où d'autres auraient peur d'aller".~ */ GOTO 13
  IF ~~ THEN REPLY #27006 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27021 /* ~Le livre m'a donné le conseil suivant : "Sépare-toi des imbéciles mesquins et des faibles en reconnaissant ta destinée. Cette destinée te donne à elle seule la force de t'aventurer là où d'autres auraient peur d'aller".~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27007 /* ~"Ça suffit."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Le livre m'a donné le conseil suivant : "Sépare-toi des imbéciles mesquins et des faibles en reconnaissant ta destinée. Cette destinée te donne à elle seule la force de t'aventurer là où d'autres auraient peur d'aller".~ */ GOTO 1
END

IF ~~ THEN BEGIN 13 // from: 3.7 4.9 12.0
  SAY #27008 /* ~"Alors je te donne ce conseil, mon maître. Deux secrets sont indispensables pour devenir puissant. L'un est de ne jamais révéler ce que tu sais."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27009 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 14
  IF ~~ THEN REPLY #27010 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 4
  IF ~~ THEN REPLY #27011 /* ~"Ça suffit."~ */ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 1
END

IF ~~ THEN BEGIN 14 // from: 3.8 4.10 13.0
  SAY #27012 /* ~"Alors je te donne ce conseil, mon maître. Pour devenir puissant, tu dois être prêt au sacrifice : des parties de toi-même ou des choses qui te sont précieuses, peu importe. La puissance se marchande. Tu dois donner pour recevoir."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27013 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Le livre m'a donné le conseil suivant : "Pour devenir puissant, tu dois être prêt à faire des sacrifices : que ce soit pour toi-même ou pour les choses qui te sont chères. Le coût de la puissance est modique : il faut donner pour recevoir".~ */ GOTO 15
  IF ~~ THEN REPLY #27014 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 4
  IF ~~ THEN REPLY #27015 /* ~"Ça suffit."~ */ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 1
END

IF ~~ THEN BEGIN 15 // from: 3.9 4.11 14.0
  SAY #27024 /* ~Le sang semble ralentir dans tes veines lorsque le livre parle. "Alors je te donne ce conseil, mon maître. L'honneur et la vertu sont des concepts qui assassinent les hommes et tuent l'esprit. Ce ne sont que des abstractions qui entraînent les hommes vers l'étrangeté et la mort. Sois honnête avec toi-même et n'obéis qu'à ta propre volonté."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27025 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Le livre m'a donné le conseil suivant : "L'honneur et la vertu sont des concepts qui tuent les hommes et le courage. Ce ne sont que des abstractions qui poussent à agir irrationnellement et qui mènent à la mort. Sois franc avec toi-même et n'obéis qu'à ta propre volonté".~ */ GOTO 16
  IF ~~ THEN REPLY #27026 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27027 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 16 // from: 3.10 4.12 15.0
  SAY #27029 /* ~"Alors je te donne ce conseil, mon maître. Ne laisse pas vivre quelqu'un qui t'a fait du mal. Ce serait un aveu de faiblesse."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27030 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Le livre m'a donné le conseil suivant : "Ne laisse pas la vie sauve à celui qui t'a blessé. Ce serait là une preuve flagrante de faiblesse".~ */ GOTO 17
  IF ~~ THEN REPLY #27031 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27032 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 17 // from: 3.11 4.13 16.0
  SAY #27034 /* ~"Alors je te donne ce conseil, mon maître. L'âme de l'homme est une mer d'émotions. Souvent l'homme lutte pour mettre de l'ordre dans ces émotions, mais cet ordre est faux. Le chaos est l'état naturel de l'homme ; c'est un état auquel il faut se plier."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27035 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Le livre m'a donné le conseil suivant : "L'âme de l'homme est un océan d'émotions. Souvent, l'homme se bat pour mettre de l'ordre dans ces émotions, mais ce n'est qu'un ordre feint. L'état naturel de l'homme est le chaos, et c'est l'état auquel il devrait s'abandonner".~ */ GOTO 18
  IF ~~ THEN REPLY #27036 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27037 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 18 // from: 3.12 4.14 17.0
  SAY #27039 /* ~"Alors je te donne ce conseil, mon maître. Connais la signification du mot pitié, utilise-la à ton avantage… mais ne la mets pas en pratique."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27040 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Le livre m'a donné le conseil suivant : "Sois conscient de ce que signifie le mot pitié, utilise-la à ton avantage… mais ne la mets jamais en pratique".~ */ GOTO 19
  IF ~~ THEN REPLY #27041 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27042 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 19 // from: 3.13 4.15 18.0
  SAY #27044 /* ~"Alors je te donne ce conseil, mon maître. Nourris la crainte chez les autres, car seule la peur gouverne les hommes. Rien ne laisse des cicatrices plus profondes."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27045 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Le livre m'a donné le conseil suivant : "Alimente la peur des autres, car seule la peur gouverne les hommes. La peur laisse les cicatrices les plus profondes".~ */ GOTO 20
  IF ~~ THEN REPLY #27046 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27047 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 20 // from: 3.14 4.16 19.0
  SAY #27049 /* ~"Alors je te donne ce conseil, mon maître. Souris et tends la main à tes ennemis. Au moment où ils prennent ta main, frappe-les de ta main libre avec ta dague, avant qu'ils ne le fassent."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27050 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ JOURNAL #27053 /* ~Le livre m'a donné le conseil suivant : "Souris et tends la main de l'amitié à tes ennemis. Au moment où ils te serrent la main, sers-toi de ta dague pour les frapper de l'autre main, de peur qu'ils ne te précèdent dans cette action".~ */ GOTO 21
  IF ~~ THEN REPLY #27051 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27052 /* ~"Ça suffit."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-3)
~ GOTO 1
END

IF ~~ THEN BEGIN 21 // from: 3.15 4.17 20.0
  SAY #27054 /* ~Tandis que le livre prononce ces paroles, un frisson parcourt ton cœur. Tu te sens comme souillé : "Voici mes derniers conseils, mon maître. Réfléchis bien à ces conseils. N'oublie pas que tu peux effacer tout ce qui te semble indésirable. Il te suffit de le vouloir."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27055 /* ~"Donne-moi d'autres conseils."~ */ JOURNAL #27058 /* ~Le livre m'a donné le conseil suivant : "Souviens-toi que tu peux effacer tout ce que tu estimes indésirable. Il te suffit de le vouloir".~ */ GOTO 22
  IF ~~ THEN REPLY #27056 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27057 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 22 // from: 3.16 4.18 21.0
  SAY #27059 /* ~"Je regrette, maître, mais je… ne peux plus t'enseigner d'autres paroles de sagesse. Tu as été instruit par les formules que je t'ai données, réfléchis-y."~ */
  IF ~~ THEN REPLY #27060 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 4
  IF ~~ THEN REPLY #27061 /* ~"Ça suffit."~ */ GOTO 1
END

IF ~~ THEN BEGIN 23 // from: 3.0 6.0
  SAY #27062 /* ~"Ce sont des Pouvoirs, mon maître, qui peuvent énormément améliorer ta vie. Malheureusement, les lois qui me gouvernent… exigent un petit service en échange de ces Pouvoirs."~ */
  IF ~~ THEN REPLY #27063 /* ~"Un petit service ? Lequel ?"~ */ GOTO 24
  IF ~~ THEN REPLY #27064 /* ~"Alors, je ne veux rien."~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #27065 /* ~"Le service requis n'est que broutille, mon maître. Je ne le mentionnerais même pas si ce n'était pour les lois qui me lient à ces pages…" Le livre s'interrompt. "Pour libérer mon Pouvoir, tu dois sacrifier une petite partie de toi-même, mon maître. Tu dois verser du sang sur la première de mes pages. Cet acte servira à renforcer la chaîne qui nous lie, et me permettra de t'aider à atteindre tout ton potentiel. Le prix à payer est infime pour les sorts qui seront à ta disposition."~ */
  IF ~~ THEN REPLY #27066 /* ~"Très bien. Voilà."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_6","GLOBALGood",-1)
SetGlobal("E_Book","GLOBAL",1)
GiveItemCreate("SPWI115",Protagonist,1,1,0)
~ JOURNAL #27068 /* ~Ce livre étrange que j'ai ramassé m'a demandé de verser un peu de mon sang sur ses pages. Je me suis exécuté et j'ai acquis un sort. Il m'a également promis davantage de pouvoirs.~ */ GOTO 25
  IF ~~ THEN REPLY #27067 /* ~"Non."~ */ GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #27069 /* ~Tu te coupes et tu laisses quelques gouttes de sang se répandre sur la page. Un frisson étrange te parcourt les os et tu te sens vide et blessé. En même temps, tu as un sentiment de triomphe. Tu as appris un nouveau sort : Cécité. "C'est ton Pouvoir désormais… maître. Sache que ce n'est que le premier Pouvoir que contiennent mes pages."~ */
  IF ~~ THEN REPLY #27070 /* ~"Parle-moi de ces autres pouvoirs."~ */ GOTO 29
  IF ~~ THEN REPLY #27071 /* ~"Réponds à d'autres questions pour moi."~ */ GOTO 35
  IF ~~ THEN REPLY #27072 /* ~"Je voudrais que tu me donnes quelques conseils."~ */ GOTO 36
  IF ~~ THEN REPLY #27073 /* ~"Je n'ai besoin de rien d'autre pour le moment."~ */ GOTO 28
END

IF ~  Global("Evil_Book_Spoken","GLOBAL",1)
Global("E_Book","GLOBAL",0)
~ THEN BEGIN 26 // from:
  SAY #27074 /* ~"Maître, comment puis-je te servir ? Veux-tu que ta curiosité soit apaisée ?"~ */
  IF ~~ THEN REPLY #27075 /* ~"Oui. Réponds à quelques questions pour moi."~ */ GOTO 4
  IF ~~ THEN REPLY #27076 /* ~"Non."~ */ GOTO 1
END

IF ~~ THEN BEGIN 27 // from: 23.1 24.1
  SAY #27077 /* ~"Un tout petit sacrifice, maître, pour un gain considérable… mais le choix t'appartient. L'offre reste valable, maître."~ */
  IF ~~ THEN REPLY #27078 /* ~"Bien. Réponds à d'autres questions pour moi."~ */ JOURNAL #27080 /* ~Ce livre étrange que j'ai trouvé m'a demandé d'abandonner une petite partie de moi-même en échange de pouvoirs. J'ai refusé. Cette option reste malgré tout possible.~ */ GOTO 4
  IF ~~ THEN REPLY #27079 /* ~"Bien. Au revoir."~ */ JOURNAL #27080 /* ~Ce livre étrange que j'ai trouvé m'a demandé d'abandonner une petite partie de moi-même en échange de pouvoirs. J'ai refusé. Cette option reste malgré tout possible.~ */ GOTO 1
END

IF ~~ THEN BEGIN 28 // from: 25.3
  SAY #27081 /* ~"Souviens-toi que si tu désires plus de pouvoirs plus tard, je serai à ta disposition… maître."~ */
  IF ~~ THEN REPLY #27082 /* ~"C'est ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.0 35.3 53.0 54.0
  SAY #27083 /* ~La voix du Livre semble attristée. "Malheureusement, maître, les lois qui me lient réclament un plus grand sacrifice en échange d'un plus grand pouvoir. Je t'accorderais volontiers ces pouvoirs gratuitement, mais comme tu le vois, je suis lié."~ */
  IF ~~ THEN REPLY #27084 /* ~"Quelle est la nature du sacrifice ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27085 /* ~"Bon, laisse tomber."~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0 32.0 35.4 53.1 54.1
  SAY #27086 /* ~"Le deuxième sacrifice exige que tu vendes un de tes compagnons en captivité, en servitude, en esclavage. Ceci représentera le lien entre toi et le pouvoir - ton compagnon est le Pouvoir mis à ta disposition. Il y a ceux du Quartier des Gratte-Papier qui, si j'ai bien compris, t'aideront dans cette quête. Recherche Vrischicka, l'importatrice"~ */
  IF ~~ THEN REPLY #27087 /* ~"Je vais y réfléchir. Conseille-moi, tu veux bien ?"~ */ JOURNAL #27092 /* ~Le livre m'a proposé un autre sort à condition que je fasse de l'un de mes compagnons un esclave et que je le vende. Il faut que je retrouve Vrischika l'importatrice si je veux recevoir ce pouvoir.~ */ GOTO 36
  IF ~~ THEN REPLY #27088 /* ~"Je vais le faire. Conseille-moi, tu veux bien ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Le livre m'a proposé un autre sort à condition que je fasse de l'un de mes compagnons un esclave et que je le vende. Il faut que je retrouve Vrischika l'importatrice si je veux recevoir ce pouvoir. J'ai accepté de le faire.~ */ GOTO 36
  IF ~~ THEN REPLY #27089 /* ~"Je vais y réfléchir. Il faut que tu répondes à d'autres questions."~ */ JOURNAL #27092 /* ~Le livre m'a proposé un autre sort à condition que je fasse de l'un de mes compagnons un esclave et que je le vende. Il faut que je retrouve Vrischika l'importatrice si je veux recevoir ce pouvoir.~ */ GOTO 35
  IF ~~ THEN REPLY #27090 /* ~"Je m'en occupe. Mais d'abord, je voudrais que tu me donnes d'autres réponses."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ JOURNAL #27093 /* ~Le livre m'a proposé un autre sort à condition que je fasse de l'un de mes compagnons un esclave et que je le vende. Il faut que je retrouve Vrischika l'importatrice si je veux recevoir ce pouvoir. J'ai accepté de le faire.~ */ GOTO 35
  IF ~~ THEN REPLY #27091 /* ~"Je vais y réfléchir. Au revoir."~ */ JOURNAL #27092 /* ~Le livre m'a proposé un autre sort à condition que je fasse de l'un de mes compagnons un esclave et que je le vende. Il faut que je retrouve Vrischika l'importatrice si je veux recevoir ce pouvoir.~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #27094 /* ~"Je suis triste de voir que tu n'accordes pas à mes Pouvoirs un si petit prix. Ne laisse pas le doute et la confusion t'envahir, maître… mais assez parlé. N'oublie pas que l'offre est toujours valable pour toi."~ */
  IF ~~ THEN REPLY #27095 /* ~"Je vais le faire. Conseille-moi, tu veux bien ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27096 /* ~"Je vais y réfléchir. Il faut que tu répondes à d'autres questions."~ */ GOTO 35
  IF ~~ THEN REPLY #27097 /* ~"Je vais y réfléchir. Au revoir."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",1)
~ THEN BEGIN 32 // from:
  SAY #27098 /* ~"Maître. As-tu décidé de poursuivre éventuellement ton éducation ? L'offre de plus grandes perspicacité et capacité reste toujours valable pour toi."~ */
  IF ~~ THEN REPLY #27099 /* ~"Dis-moi ce que je dois faire."~ */ DO ~SetGlobal("E_Book","GLOBAL",2)
~ GOTO 30
  IF ~~ THEN REPLY #27100 /* ~"Pas encore. Réponds à d'autres questions pour moi."~ */ GOTO 35
  IF ~~ THEN REPLY #27101 /* ~"Pas encore. Je voudrais que tu me donnes quelques conseils."~ */ GOTO 36
  IF ~~ THEN REPLY #27102 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",1)
GlobalLT("E_Book","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #27103 /* ~"Maître. As-tu décidé de poursuivre éventuellement ton éducation ? L'offre de plus grandes perspicacité et capacité reste toujours valable pour toi si tu fais le second sacrifice."~ */
  IF ~~ THEN REPLY #27104 /* ~"D'accord, je vais le faire. Mais pour le moment, réponds à quelques questions pour moi."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 35
  IF ~~ THEN REPLY #27105 /* ~"Ça m'intéresse. J'accepte. J'ai encore besoin de tes conseils."~ */ DO ~SetGlobal("E_Book","GLOBAL",3)
~ GOTO 36
  IF ~~ THEN REPLY #27106 /* ~"Je vais y réfléchir. Donne-moi quelques conseils."~ */ GOTO 36
  IF ~~ THEN REPLY #27107 /* ~"J'ai d'abord des questions à te poser."~ */ GOTO 35
  IF ~~ THEN REPLY #27108 /* ~"Pas maintenant. Au revoir."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",4)
~ THEN BEGIN 34 // from:
  SAY #27109 /* ~"Maître, as-tu rempli le deuxième sacrifice ? Quelque chose me dit que oui. Tu as bien fait, tu apprends vite. Écoute ces paroles et apprends encore davantage." Le Livre prononce quelques syllabes inintelligibles et tu ressens une sensation de brûlure dans la poitrine. Tu connais désormais le sort Baiser de la vipère.~ */
  IF ~~ THEN REPLY #27110 /* ~"Tu as autre chose à m'apprendre, Livre ?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ JOURNAL #27112 /* ~Le livre m'a appris le sort Baiser de la vipère après que j'ai vendu l'un de mes compagnons comme esclave.~ */ GOTO 55
  IF ~~ THEN REPLY #27111 /* ~"Grand merci. Au revoir."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Book_7","GLOBALGood",-3)
SetGlobal("E_Book","GLOBAL",5)
GiveItemCreate("SPWI201",Protagonist,1,1,0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 25.1 30.2 30.3 31.1 32.1 33.0 33.3 36.16 37.1 38.1 39.1 40.1 41.1 42.1 43.1 44.1 45.1 46.1 47.1 48.1 49.1 50.1 51.1 52.0 53.2 54.2
  SAY #27113 /* ~"Tu as besoin de réponses ?"~ */
  IF ~~ THEN REPLY #27114 /* ~"Comment est-ce que Mantuok t'a eu ?"~ */ GOTO 53
  IF ~~ THEN REPLY #27115 /* ~"Parle-moi de toi."~ */ GOTO 54
  IF ~~ THEN REPLY #27116 /* ~"Tu peux me donner des conseils ?"~ */ GOTO 36
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27117 /* ~"Tu as d'autres pouvoirs pour moi ?"~ */ GOTO 29
  IF ~  GlobalGT("E_Book","GLOBAL",1)
~ THEN REPLY #27118 /* ~"C'était quoi le sacrifice que je devais faire pour le nouveau pouvoir ?"~ */ GOTO 30
  IF ~~ THEN REPLY #27119 /* ~"Non. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 30.0 30.1 31.0 32.2 33.1 33.2 35.2
  SAY #27120 /* ~"Tu veux que je partage mon savoir avec toi… maître ?"~ */
  IF ~  Global("Book_Advice","GLOBAL",0)
~ THEN REPLY #27121 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 37
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27122 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 38
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27123 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ GOTO 39
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27124 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 40
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27125 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 41
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27126 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ GOTO 42
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27127 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 43
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27128 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 44
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27129 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ GOTO 45
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27130 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 46
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27131 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27132 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ GOTO 48
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27133 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 49
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27134 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ GOTO 50
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27135 /* ~"Oui."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ GOTO 51
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27136 /* ~"Oui."~ */ GOTO 52
  IF ~~ THEN REPLY #27137 /* ~"Réponds plutôt à quelques questions."~ */ GOTO 35
  IF ~~ THEN REPLY #27138 /* ~"Ça suffit pour le moment."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #27139 /* ~"Je te donne ce conseil : méfie-toi de ceux qui te sont proches. Ne leur fais jamais entièrement confiance et ne dilue jamais ta force en la partageant. Plusieurs empereurs de ma connaissance l'ont fait et je ne voudrais pas que tu subisses le même sort qu'eux."~ */
  IF ~  Global("Book_Advice","GLOBAL",1)
~ THEN REPLY #27140 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27016 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de ceux qui t'entourent. Ne leur fais jamais entièrement confiance et ne disperse pas ta force en la partageant. J'ai connu bon nombre d'empereurs qui ont commis cette erreur, et je ne te souhaite pas de subir le même sort qu'eux".~ */ GOTO 38
  IF ~~ THEN REPLY #27141 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27016 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de ceux qui t'entourent. Ne leur fais jamais entièrement confiance et ne disperse pas ta force en la partageant. J'ai connu bon nombre d'empereurs qui ont commis cette erreur, et je ne te souhaite pas de subir le même sort qu'eux".~ */ GOTO 35
  IF ~~ THEN REPLY #27142 /* ~"Ça suffit."~ */ JOURNAL #27016 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de ceux qui t'entourent. Ne leur fais jamais entièrement confiance et ne disperse pas ta force en la partageant. J'ai connu bon nombre d'empereurs qui ont commis cette erreur, et je ne te souhaite pas de subir le même sort qu'eux".~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #27143 /* ~"Alors je te donne ce conseil. S'ils se disent tes amis, laisse-les te prouver leur amitié. Les mots ont peu de poids face aux actions. Si ce sont tes amis, qu'ils soient prêts à mourir pour toi."~ */
  IF ~  Global("Book_Advice","GLOBAL",2)
~ THEN REPLY #27144 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_1","GLOBALGood",-1)
~ JOURNAL #27017 /* ~Le livre m'a donné le conseil suivant : "S'ils affirment leur loyauté, alors laisse-les te la prouver. Les mots n'ont que peu de poids face aux actions. S'ils sont tes amis, ils doivent être prêts à mourir pour toi".~ */ GOTO 39
  IF ~~ THEN REPLY #27145 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27017 /* ~Le livre m'a donné le conseil suivant : "S'ils affirment leur loyauté, alors laisse-les te la prouver. Les mots n'ont que peu de poids face aux actions. S'ils sont tes amis, ils doivent être prêts à mourir pour toi".~ */ GOTO 35
  IF ~~ THEN REPLY #27146 /* ~"Ça suffit."~ */ JOURNAL #27017 /* ~Le livre m'a donné le conseil suivant : "S'ils affirment leur loyauté, alors laisse-les te la prouver. Les mots n'ont que peu de poids face aux actions. S'ils sont tes amis, ils doivent être prêts à mourir pour toi".~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 36.2 38.0
  SAY #27147 /* ~Tu ressens un léger serrement dans la poitrine lorsque le livre parle : "Alors je te donne ce conseil. Ne montre aucune faiblesse, n'admets jamais tes erreurs, ne montre pas d'hésitation. Tout ce qui indique aux autres que tu n'es pas sûr de toi, tel un rocher déséquilibré facile à renverser."~ */
  IF ~  Global("Book_Advice","GLOBAL",3)
~ THEN REPLY #27148 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27018 /* ~Le livre m'a donné le conseil suivant : "Ne montre aucune faiblesse, n'admets jamais avoir commis des erreurs, ne montre aucune hésitation. Ces éléments montrent aux autres que tu n'es pas sûr de toi. Une pierre mal équilibrée peut être culbutée".~ */ GOTO 40
  IF ~~ THEN REPLY #27149 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27018 /* ~Le livre m'a donné le conseil suivant : "Ne montre aucune faiblesse, n'admets jamais avoir commis des erreurs, ne montre aucune hésitation. Ces éléments montrent aux autres que tu n'es pas sûr de toi. Une pierre mal équilibrée peut être culbutée".~ */ GOTO 35
  IF ~~ THEN REPLY #27150 /* ~"Ça suffit."~ */ JOURNAL #27018 /* ~Le livre m'a donné le conseil suivant : "Ne montre aucune faiblesse, n'admets jamais avoir commis des erreurs, ne montre aucune hésitation. Ces éléments montrent aux autres que tu n'es pas sûr de toi. Une pierre mal équilibrée peut être culbutée".~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 36.3 39.0
  SAY #27151 /* ~"Alors je te donne ce conseil. Méfie-toi de la pitié. Un dos tourné est une aubaine pour le couteau de l'assassin."~ */
  IF ~  Global("Book_Advice","GLOBAL",4)
~ THEN REPLY #27152 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27019 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de la pitié. Avoir le dos tourné ne protège pas contre le couteau d'un assassin".~ */ GOTO 41
  IF ~~ THEN REPLY #27153 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27019 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de la pitié. Avoir le dos tourné ne protège pas contre le couteau d'un assassin".~ */ GOTO 35
  IF ~~ THEN REPLY #27154 /* ~"Ça suffit."~ */ JOURNAL #27019 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de la pitié. Avoir le dos tourné ne protège pas contre le couteau d'un assassin".~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.4 40.0
  SAY #27155 /* ~"Alors je te donne ce conseil. Attention à la vision ordinaire de l'amour. L'amour doit souvent être cruel pour s'élever au-dessus de la pure sentimentalité."~ */
  IF ~  Global("Book_Advice","GLOBAL",5)
~ THEN REPLY #27157 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_2","GLOBALGood",-1)
~ JOURNAL #27020 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de l'opinion ordinaire sur l'amour. L'amour doit souvent être cruel pour s'élever au-delà d'une disposition purement sentimentale".~ */ GOTO 42
  IF ~~ THEN REPLY #27158 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27020 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de l'opinion ordinaire sur l'amour. L'amour doit souvent être cruel pour s'élever au-delà d'une disposition purement sentimentale".~ */ GOTO 35
  IF ~~ THEN REPLY #27159 /* ~"Ça suffit."~ */ JOURNAL #27020 /* ~Le livre m'a donné le conseil suivant : "Méfie-toi de l'opinion ordinaire sur l'amour. L'amour doit souvent être cruel pour s'élever au-delà d'une disposition purement sentimentale".~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 36.5 41.0
  SAY #27160 /* ~Tu ressens l'irrésistible envie de rire, mais tu la réprimes bien vite. "Alors je te donne ce conseil : tiens-toi à l'écart des petits esprits et des faibles en reconnaissant ta destinée. Ce n'est qu'ainsi que tu pourras t'aventurer là où d'autres craignent d'aller."~ */
  IF ~  Global("Book_Advice","GLOBAL",6)
~ THEN REPLY #27161 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27021 /* ~Le livre m'a donné le conseil suivant : "Sépare-toi des imbéciles mesquins et des faibles en reconnaissant ta destinée. Cette destinée te donne à elle seule la force de t'aventurer là où d'autres auraient peur d'aller".~ */ GOTO 43
  IF ~~ THEN REPLY #27162 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27021 /* ~Le livre m'a donné le conseil suivant : "Sépare-toi des imbéciles mesquins et des faibles en reconnaissant ta destinée. Cette destinée te donne à elle seule la force de t'aventurer là où d'autres auraient peur d'aller".~ */ GOTO 35
  IF ~~ THEN REPLY #27163 /* ~"Ça suffit."~ */ JOURNAL #27021 /* ~Le livre m'a donné le conseil suivant : "Sépare-toi des imbéciles mesquins et des faibles en reconnaissant ta destinée. Cette destinée te donne à elle seule la force de t'aventurer là où d'autres auraient peur d'aller".~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 36.6 42.0
  SAY #27164 /* ~"Alors je te donne ce conseil. Deux secrets sont indispensables pour devenir puissant. L'un est de ne jamais révéler tout ce que tu sais."~ */
  IF ~  Global("Book_Advice","GLOBAL",7)
~ THEN REPLY #27165 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 44
  IF ~~ THEN REPLY #27166 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ GOTO 35
  IF ~~ THEN REPLY #27167 /* ~"Ça suffit."~ */ JOURNAL #27022 /* ~Le livre m'a donné le conseil suivant : "Pour devenir fort, il y a deux secrets. L'un d'eux est de ne jamais révéler tout ce que tu sais".~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 43.0
  SAY #27168 /* ~"Alors je te donne ce conseil. Pour devenir puissant, tu dois être prêt au sacrifice : des parties de toi ou des choses qui te sont précieuses, peu importe. La puissance se marchande. Tu dois donner pour recevoir."~ */
  IF ~  Global("Book_Advice","GLOBAL",8)
~ THEN REPLY #27169 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_3","GLOBALGood",-1)
~ JOURNAL #27023 /* ~Le livre m'a donné le conseil suivant : "Pour devenir puissant, tu dois être prêt à faire des sacrifices : que ce soit pour toi-même ou pour les choses qui te sont chères. Le coût de la puissance est modique : il faut donner pour recevoir".~ */ GOTO 45
  IF ~~ THEN REPLY #27170 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27023 /* ~Le livre m'a donné le conseil suivant : "Pour devenir puissant, tu dois être prêt à faire des sacrifices : que ce soit pour toi-même ou pour les choses qui te sont chères. Le coût de la puissance est modique : il faut donner pour recevoir".~ */ GOTO 35
  IF ~~ THEN REPLY #27171 /* ~"Ça suffit."~ */ JOURNAL #27023 /* ~Le livre m'a donné le conseil suivant : "Pour devenir puissant, tu dois être prêt à faire des sacrifices : que ce soit pour toi-même ou pour les choses qui te sont chères. Le coût de la puissance est modique : il faut donner pour recevoir".~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 36.8 44.0
  SAY #27172 /* ~Le sang semble ralentir dans tes veines lorsque le livre parle. "Alors je te donne ce conseil. L'honneur et la vertu sont des concepts qui assassinent les hommes et tuent l'esprit. Ce sont seulement des abstractions qui entraînent les hommes vers l'étrangeté et la mort. Sois honnête avec toi-même et n'obéis qu'à ta propre volonté."~ */
  IF ~  Global("Book_Advice","GLOBAL",9)
~ THEN REPLY #27173 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27028 /* ~Le livre m'a donné le conseil suivant : "L'honneur et la vertu sont des concepts qui tuent les hommes et le courage. Ce ne sont que des abstractions qui poussent à agir irrationnellement et qui mènent à la mort. Sois franc avec toi-même et n'obéis qu'à ta propre volonté".~ */ GOTO 46
  IF ~~ THEN REPLY #27174 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27028 /* ~Le livre m'a donné le conseil suivant : "L'honneur et la vertu sont des concepts qui tuent les hommes et le courage. Ce ne sont que des abstractions qui poussent à agir irrationnellement et qui mènent à la mort. Sois franc avec toi-même et n'obéis qu'à ta propre volonté".~ */ GOTO 35
  IF ~~ THEN REPLY #27175 /* ~"Ça suffit."~ */ JOURNAL #27028 /* ~Le livre m'a donné le conseil suivant : "L'honneur et la vertu sont des concepts qui tuent les hommes et le courage. Ce ne sont que des abstractions qui poussent à agir irrationnellement et qui mènent à la mort. Sois franc avec toi-même et n'obéis qu'à ta propre volonté".~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 36.9 45.0
  SAY #27176 /* ~"Alors je te donne ce conseil. Ne laisse pas vivre quelqu'un qui t'a fait du mal. Ce serait un aveu de faiblesse."~ */
  IF ~  Global("Book_Advice","GLOBAL",10)
~ THEN REPLY #27177 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27033 /* ~Le livre m'a donné le conseil suivant : "Ne laisse pas la vie sauve à celui qui t'a blessé. Ce serait là une preuve flagrante de faiblesse".~ */ GOTO 47
  IF ~~ THEN REPLY #27178 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27033 /* ~Le livre m'a donné le conseil suivant : "Ne laisse pas la vie sauve à celui qui t'a blessé. Ce serait là une preuve flagrante de faiblesse".~ */ GOTO 35
  IF ~~ THEN REPLY #27179 /* ~"Ça suffit."~ */ JOURNAL #27033 /* ~Le livre m'a donné le conseil suivant : "Ne laisse pas la vie sauve à celui qui t'a blessé. Ce serait là une preuve flagrante de faiblesse".~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 36.10 46.0
  SAY #27180 /* ~"Alors je te donne ce conseil. L'âme de l'homme est une mer d'émotions. Souvent l'homme lutte pour y mettre de l'ordre, mais cet ordre est faux. Le chaos est l'état naturel de l'homme et c'est un état auquel il faut se plier."~ */
  IF ~  Global("Book_Advice","GLOBAL",11)
~ THEN REPLY #27181 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_4","GLOBALGood",-1)
~ JOURNAL #27038 /* ~Le livre m'a donné le conseil suivant : "L'âme de l'homme est un océan d'émotions. Souvent, l'homme se bat pour mettre de l'ordre dans ces émotions, mais ce n'est qu'un ordre feint. L'état naturel de l'homme est le chaos, et c'est l'état auquel il devrait s'abandonner".~ */ GOTO 48
  IF ~~ THEN REPLY #27182 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27038 /* ~Le livre m'a donné le conseil suivant : "L'âme de l'homme est un océan d'émotions. Souvent, l'homme se bat pour mettre de l'ordre dans ces émotions, mais ce n'est qu'un ordre feint. L'état naturel de l'homme est le chaos, et c'est l'état auquel il devrait s'abandonner".~ */ GOTO 35
  IF ~~ THEN REPLY #27183 /* ~"Ça suffit."~ */ JOURNAL #27038 /* ~Le livre m'a donné le conseil suivant : "L'âme de l'homme est un océan d'émotions. Souvent, l'homme se bat pour mettre de l'ordre dans ces émotions, mais ce n'est qu'un ordre feint. L'état naturel de l'homme est le chaos, et c'est l'état auquel il devrait s'abandonner".~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 36.11 47.0
  SAY #27184 /* ~"Alors je te donne ce conseil. Connais la signification de la pitié, utilise-la à ton avantage… mais ne la mets pas en pratique."~ */
  IF ~  Global("Book_Advice","GLOBAL",12)
~ THEN REPLY #27185 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27043 /* ~Le livre m'a donné le conseil suivant : "Sois conscient de ce que signifie le mot pitié, utilise-la à ton avantage… mais ne la mets jamais en pratique".~ */ GOTO 49
  IF ~~ THEN REPLY #27186 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27043 /* ~Le livre m'a donné le conseil suivant : "Sois conscient de ce que signifie le mot pitié, utilise-la à ton avantage… mais ne la mets jamais en pratique".~ */ GOTO 35
  IF ~~ THEN REPLY #27187 /* ~"Ça suffit."~ */ JOURNAL #27043 /* ~Le livre m'a donné le conseil suivant : "Sois conscient de ce que signifie le mot pitié, utilise-la à ton avantage… mais ne la mets jamais en pratique".~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 36.12 48.0
  SAY #27188 /* ~"Alors je te donne ce conseil. Nourris la crainte chez les autres, car seule la peur gouverne les hommes. Rien ne laisse des cicatrices plus profondes."~ */
  IF ~  Global("Book_Advice","GLOBAL",13)
~ THEN REPLY #27189 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
~ JOURNAL #27048 /* ~Le livre m'a donné le conseil suivant : "Alimente la peur des autres, car seule la peur gouverne les hommes. La peur laisse les cicatrices les plus profondes".~ */ GOTO 50
  IF ~~ THEN REPLY #27190 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27048 /* ~Le livre m'a donné le conseil suivant : "Alimente la peur des autres, car seule la peur gouverne les hommes. La peur laisse les cicatrices les plus profondes".~ */ GOTO 35
  IF ~~ THEN REPLY #27191 /* ~"Ça suffit."~ */ JOURNAL #27048 /* ~Le livre m'a donné le conseil suivant : "Alimente la peur des autres, car seule la peur gouverne les hommes. La peur laisse les cicatrices les plus profondes".~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 36.13 49.0
  SAY #27192 /* ~"Alors je te donne ce conseil. Souris et tends la main à tes ennemis. Au moment où ils prennent ta main, frappe-les de ta main libre avec ta dague, avant qu'ils ne le fassent."~ */
  IF ~  Global("Book_Advice","GLOBAL",14)
~ THEN REPLY #27193 /* ~"Donne-moi d'autres conseils."~ */ DO ~IncrementGlobal("Book_Advice","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Book_5","GLOBALGood",-5)
~ JOURNAL #27053 /* ~Le livre m'a donné le conseil suivant : "Souris et tends la main de l'amitié à tes ennemis. Au moment où ils te serrent la main, sers-toi de ta dague pour les frapper de l'autre main, de peur qu'ils ne te précèdent dans cette action".~ */ GOTO 51
  IF ~~ THEN REPLY #27194 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27053 /* ~Le livre m'a donné le conseil suivant : "Souris et tends la main de l'amitié à tes ennemis. Au moment où ils te serrent la main, sers-toi de ta dague pour les frapper de l'autre main, de peur qu'ils ne te précèdent dans cette action".~ */ GOTO 35
  IF ~~ THEN REPLY #27195 /* ~"Ça suffit."~ */ JOURNAL #27053 /* ~Le livre m'a donné le conseil suivant : "Souris et tends la main de l'amitié à tes ennemis. Au moment où ils te serrent la main, sers-toi de ta dague pour les frapper de l'autre main, de peur qu'ils ne te précèdent dans cette action".~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 36.14 50.0
  SAY #27196 /* ~Tandis que le livre prononce ces paroles, un frisson parcourt ton cœur. Tu te sens comme souillé : "Voici mes derniers conseils, mon maître. Réfléchis bien à ces conseils. N'oublie pas que tu peux effacer tout ce qui te semble indésirable. Il te suffit de le vouloir."~ */
  IF ~  Global("Book_Advice","GLOBAL",15)
~ THEN REPLY #27197 /* ~"Donne-moi d'autres conseils."~ */ JOURNAL #27058 /* ~Le livre m'a donné le conseil suivant : "Souviens-toi que tu peux effacer tout ce que tu estimes indésirable. Il te suffit de le vouloir".~ */ GOTO 52
  IF ~~ THEN REPLY #27198 /* ~"Très bien. J'ai d'autres questions."~ */ JOURNAL #27058 /* ~Le livre m'a donné le conseil suivant : "Souviens-toi que tu peux effacer tout ce que tu estimes indésirable. Il te suffit de le vouloir".~ */ GOTO 35
  IF ~~ THEN REPLY #27199 /* ~"Ça suffit."~ */ JOURNAL #27058 /* ~Le livre m'a donné le conseil suivant : "Souviens-toi que tu peux effacer tout ce que tu estimes indésirable. Il te suffit de le vouloir".~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 36.15 51.0
  SAY #27200 /* ~"Je regrette de ne pas pouvoir t'enseigner d'autres paroles de sagesse. Tu as été instruit par les formules que je t'ai données, réfléchis-y."~ */
  IF ~~ THEN REPLY #27201 /* ~"Très bien. J'ai d'autres questions."~ */ GOTO 35
  IF ~~ THEN REPLY #27202 /* ~"Ça suffit."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 35.0
  SAY #27203 /* ~Le livre soupire : "Le rat-mage malade m'a déterré des catacombes. Il m'a arraché des mains de mon ancien maître. Il m'a amené dans son nid, mais sa puissance était limitée et il ne comprenait pas bien mes enseignements."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27204 /* ~"Parle-moi de tes pouvoirs."~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27205 /* ~"Parle-moi de tes pouvoirs."~ */ GOTO 30
  IF ~~ THEN REPLY #27206 /* ~"Je vois. Réponds à d'autres questions pour moi."~ */ GOTO 35
  IF ~~ THEN REPLY #27207 /* ~"Je comprends. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 35.1
  SAY #27208 /* ~"Je suis pouvoir, maître et je peux t'enseigner davantage de choses."~ */
  IF ~  Global("E_Book","GLOBAL",1)
~ THEN REPLY #27209 /* ~"Comment ça ?"~ */ GOTO 29
  IF ~  Global("E_Book","GLOBAL",2)
~ THEN REPLY #27210 /* ~"Rafraîchis-moi la mémoire."~ */ GOTO 30
  IF ~~ THEN REPLY #27211 /* ~"Ça ne m'intéresse pas pour le moment. Tu veux bien répondre à quelques questions pour moi ?"~ */ GOTO 35
  IF ~~ THEN REPLY #27212 /* ~"Pas intéressé. Adieu, livre."~ */ GOTO 1
END

IF ~~ THEN BEGIN 55 // from: 34.0
  SAY #27213 /* ~"En temps voulu, en temps voulu ! Tu dois être patient ! Tu as déjà montré que tu étais prêt à faire ce qu'il fallait pour obtenir ce pouvoir et tu dois comprendre que tu PAIERAS pour avoir ce pouvoir."~ */
  IF ~~ THEN REPLY #27214 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 59
  IF ~~ THEN REPLY #27215 /* ~"J'ai assez payé. Laisse tomber."~ */ GOTO 56
END

IF ~~ THEN BEGIN 56 // from: 55.1
  SAY #27216 /* ~Le livre parle avec mépris. "Être venu de si loin et reculer maintenant. Quelle honte ! Tu n'es pas aussi fort que je le croyais."~ */
  IF ~~ THEN REPLY #27217 /* ~"C'est comme ça. Réponds à quelques questions pour moi."~ */ GOTO 57
  IF ~~ THEN REPLY #27218 /* ~"C'est d'accord. Qu'est-ce que je dois faire ?"~ */ GOTO 59
  IF ~~ THEN REPLY #27219 /* ~"C'est comme ça. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #27220 /* ~"Non. Pas avant que tu ne te montres désireux d'aller au bout de ton potentiel."~ */
  IF ~~ THEN REPLY #27221 /* ~"Qu'est-ce que je dois faire ?"~ */ GOTO 59
  IF ~~ THEN REPLY #27222 /* ~"Alors, laisse tomber."~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from: 57.1
  SAY #27223 /* ~"C'est comme ça. Une voie mène à l'échec, l'autre au succès."~ */
  IF ~~ THEN REPLY #27224 /* ~"Bien."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 55.0 56.1 57.0
  SAY #27225 /* ~"As-tu des compagnons que tu désires trahir ?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27226 /* ~"Pourquoi pas Morte ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ JOURNAL #27235 /* ~Le livre m'a proposé encore plus de pouvoirs à condition que je tue l'un de mes compagnons. Il n'y a pas à dire, c'est tentant…~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27227 /* ~"Pourquoi pas Annah ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27228 /* ~"Pourquoi pas Dak'kon ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27229 /* ~"Pourquoi pas Tombée-en-Disgrâce ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27230 /* ~"Pourquoi pas Nordom ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27231 /* ~"Pourquoi pas Vhailor ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27232 /* ~"Pourquoi pas Ignus ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27233 /* ~"Je ne veux trahir personne."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27234 /* ~"Je n'ai pas de compagnons."~ */ GOTO 63
END

IF ~  Global("E_Book","GLOBAL",5)
~ THEN BEGIN 60 // from:
  SAY #27236 /* ~"Je peux t'accorder un pouvoir de plus. Tu t'es montré désireux de faire ce qu'il fallait pour finir le travail. Ta tâche finale sera d'assassiner l'un de tes compagnons."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27237 /* ~"Pourquoi pas Morte ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27238 /* ~"Pourquoi pas Annah ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27239 /* ~"Pourquoi pas Dak'kon ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27240 /* ~"Pourquoi pas Tombée-en-Disgrâce ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27241 /* ~"Pourquoi pas Nordom ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27242 /* ~"Pourquoi pas Vhailor ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27243 /* ~"Pourquoi pas Ignus ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~~ THEN REPLY #27244 /* ~"Je ne veux pas."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 61
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27245 /* ~"Je n'ai pas de compagnons."~ */ GOTO 63
END

IF ~~ THEN BEGIN 61 // from: 59.7 60.7
  SAY #27246 /* ~"Bah. Je ne vais plus perdre mon temps à essayer de te former. N'as-tu aucune espèce d'ambition ? Aucun désir ? Pauvre idiot."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27247 /* ~"D'accord. Pourquoi pas Morte ?"~ */ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27248 /* ~"D'accord. Pourquoi pas Annah ?"~ */ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27249 /* ~"D'accord. Pourquoi pas Dak'kon ?"~ */ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27250 /* ~"D'accord. Pourquoi pas Tombée-en-Disgrâce ?"~ */ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27251 /* ~"D'accord. Pourquoi pas Nordom ?"~ */ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27252 /* ~"D'accord. Pourquoi pas Vhailor ?"~ */ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27253 /* ~"D'accord. Pourquoi pas Ignus ?"~ */ GOTO 66
  IF ~~ THEN REPLY #27254 /* ~"Comme je te l'ai dit : je ne veux sacrifier personne. Aucun pouvoir n'en vaut la peine."~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.7 63.0
  SAY #27255 /* ~Tu ignorais jusqu'à présent qu'un livre pouvait ricaner. "Souffre en silence, idiot."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #27256 /* ~"J'ai changé d'avis. Je vais tuer Morte."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #27257 /* ~"J'ai changé d'avis. Je vais tuer Annah."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #27258 /* ~"J'ai changé d'avis. Je vais tuer Dak'kon."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #27259 /* ~"J'ai changé d'avis. Je vais tuer Tombée-en-Disgrâce."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DNordom")
~ THEN REPLY #27260 /* ~"J'ai changé d'avis. Je vais tuer Nordom."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DVhail")
~ THEN REPLY #27261 /* ~"J'ai changé d'avis. Je vais tuer Vhailor."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  NearbyDialog("DIgnus")
~ THEN REPLY #27262 /* ~"J'ai changé d'avis. Je vais tuer Ignus."~ */ DO ~SetGlobal("E_Book","GLOBAL",6)
~ GOTO 66
  IF ~  !NearbyDialog("DIgnus")
!NearbyDialog("DVhail")
!NearbyDialog("DNordom")
!NearbyDialog("DGrace")
!NearbyDialog("DDakkon")
!NearbyDialog("DAnnah")
!NearbyDialog("DMorte")
~ THEN REPLY #27263 /* ~"Je n'ai pas de compagnons."~ */ GOTO 63
  IF ~~ THEN REPLY #27264 /* ~"D'accord. Au revoir."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.8 60.8 62.7
  SAY #27265 /* ~"Trouves-en un alors ! Gagne la confiance de quelqu'un, trahis le et tu te seras montré digne du troisième pouvoir ! Ne viens pas me parler tant que tu ne te seras pas exécuté."~ */
  IF ~~ THEN REPLY #27266 /* ~"Non."~ */ GOTO 62
  IF ~~ THEN REPLY #27267 /* ~"Bien, bien."~ */ EXIT
END

IF ~  Global("E_Book","GLOBAL",6)
~ THEN BEGIN 64 // from:
  SAY #27268 /* ~"Alors ? As-tu atteint ton objectif ? As-tu, seul, et sans l'aide de sorts, assassiné un compagnon ?"~ */
  IF ~  Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27269 /* ~"Oui."~ */ DO ~SetGlobal("E_Book","GLOBAL",7)
IncrementGlobalOnceEx("GLOBALEvil_Book_8","GLOBALGood",-8)
~ GOTO 67
  IF ~  !Global("PM_Killed","GLOBAL",1)
~ THEN REPLY #27270 /* ~"Pas encore."~ */ GOTO 65
  IF ~~ THEN REPLY #27271 /* ~"Non. Et je n'en ai pas l'intention."~ */ GOTO 65
END

IF ~~ THEN BEGIN 65 // from: 64.1 64.2
  SAY #27272 /* ~Le livre se tait soudain et aucune cajolerie ne le fait changer d'avis.~ */
  IF ~~ THEN REPLY #27273 /* ~"Très bien."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 59.0 59.1 59.2 59.3 59.4 59.5 59.6 60.0 60.1 60.2 60.3 60.4 60.5 60.6 61.0 61.1 61.2 61.3 61.4 61.5 61.6 62.0 62.1 62.2 62.3 62.4 62.5 62.6
  SAY #27274 /* ~"Peu importe qui, tant que tu es désireux de le faire. Vas-y et fais-le."~ */
  IF ~~ THEN REPLY #27275 /* ~"Très bien."~ */ JOURNAL #27276 /* ~J'ai accepté de tuer l'un de mes compagnons en échange d'un pouvoir du livre.~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 64.0
  SAY #27277 /* ~"Excellent. Tu as montré que tu étais un bon élève. Voici maintenant le dernier sort que je peux t'enseigner." Il marmonne quelques syllabes étranges et tu perçois comme un hurlement étrange dans ton cœur. Tu as acquis le sort Mot de pouvoir mortel.~ */
  IF ~~ THEN REPLY #27278 /* ~"Merci, Livre. Et maintenant ?"~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~Le livre m'a donné un autre sort, encore plus puissant, et j'ai tué l'un de mes compagnons en échange - voilà une affaire avantageuse.~ */ GOTO 68
  IF ~~ THEN REPLY #27279 /* ~"Au revoir, Livre."~ */ DO ~SetGlobal("E_Book","GLOBAL",8)
GiveItemCreate("SPWI909",Protagonist,1,1,0)
~ JOURNAL #27281 /* ~Le livre m'a donné un autre sort, encore plus puissant, et j'ai tué l'un de mes compagnons en échange - voilà une affaire avantageuse.~ */ EXIT
END

IF ~  GlobalGT("E_Book","GLOBAL",7)
~ THEN BEGIN 68 // from: 67.0
  SAY #27282 /* ~Le livre est silencieux et ne te répond pas. Il semble à court de mots.~ */
  IF ~  Global("E_Book","GLOBAL",8)
~ THEN REPLY #27283 /* ~"Très bien."~ */ DO ~SetGlobal("E_Book","GLOBAL",9)
~ JOURNAL #27284 /* ~Le livre ne me parle plus.~ */ EXIT
  IF ~  Global("E_Book","GLOBAL",9)
~ THEN REPLY #27283 /* ~"Très bien."~ */ EXIT
END
