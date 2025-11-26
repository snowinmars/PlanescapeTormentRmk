// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOURN2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOURN2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #7080 /* ~Cette femme Homme-Poussière est vêtue d'une longue robe noire et ses mains sont enfoncées dans ses manches. Elle a la tête penchée et elle chante en chœur avec les autres.~ */
  IF ~~ THEN REPLY #7081 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #8241 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0 4.0
  SAY #8201 /* ~La femme Homme-Poussière semble t'avoir entendu, mais elle ne lève pas la tête.~ */
  IF ~~ THEN REPLY #8242 /* ~"Je voudrais parler avec toi un moment."~ */ GOTO 3
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8243 /* ~Écoute-les chanter.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8244 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8245 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8246 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8247 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8248 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8249 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8250 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 4.1 11.0 34.1
  SAY #8202 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. À intervalles réguliers, le chant se transforme presque en un cri, puis diminue lentement, tel un écho. Une fois le chant terminé, les Hommes-Poussière prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #8251 /* ~"Bonjour."~ */ GOTO 1
  IF ~~ THEN REPLY #8252 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 24.0 25.0 26.0 27.0 39.0
  SAY #8203 /* ~La femme Homme-Poussière lève la tête. Elle ne s'arrête pas de chanter, suivant toujours le même ton et le même rythme que les autres Hommes-Poussière qui l'entourent.~ */
  IF ~~ THEN REPLY #8253 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 4
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8254 /* ~"Je pleure un mort."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8255 /* ~"Je suis là pour une personne qui a perdu quelqu'un."~ */ GOTO 35
  IF ~~ THEN REPLY #8256 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #8204 /* ~La femme Homme-Poussière t'ignore, baisse la tête et se remet à chanter.~ */
  IF ~~ THEN REPLY #8257 /* ~"Je voudrais parler avec toi."~ */ GOTO 1
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8258 /* ~Écoute-les chanter.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8259 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8260 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8261 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8262 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8263 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8264 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #8265 /* ~Laisse-la tranquille.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 20.2
  SAY #8205 /* ~La pleureuse s'arrête soudain et t'observe. "Eprouves-tu de la souffrance face à cette mort ?"~ */
  IF ~~ THEN REPLY #8266 /* ~"Non. La mort ne m'émeut pas."~ */ GOTO 11
  IF ~  Global("Deionarra_Death_Truth","GLOBAL",1)
~ THEN REPLY #8267 /* ~Vérité : "Oui… Je crois que je suis responsable de la mort d'une innocente femme, Deionarra. Non seulement cela me tourmente, mais je me sens coupable du chagrin que j'ai causé à son père."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_1","GLOBALGood",3)
~ GOTO 6
  IF ~  Global("Xachariah","GLOBAL",2)
~ THEN REPLY #8268 /* ~Vérité : "Oui… Je suis responsable de la mort d'un innocent, Xachariah. Sa disparition me tourmente."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_2","GLOBALGood",2)
~ GOTO 7
  IF ~  GlobalGT("Nature","GLOBAL",0)
~ THEN REPLY #8269 /* ~Vérité : "Oui… Je crois que je suis responsable de la mort de nombreux innocents à travers les plans. Cette révélation provoque en moi une douleur presque insoutenable."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_3","GLOBALGood",5)
~ GOTO 8
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8270 /* ~"Ce n'est pas moi. Il y a une femme, la femme d'Angyar, qui a perdu un fils. Cette mort l'a beaucoup peinée."~ */ GOTO 9
  IF ~~ THEN REPLY #8271 /* ~Mensonge : "Non, euh, je parle au nom d'un ami, euh… Adahn -- C'est lui qui souffre de la mort de la personne."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8272 /* ~"Oui, cette mort récente m'a causé beaucoup de peine et de chagrin."~ */ GOTO 36
  IF ~~ THEN REPLY #7855 /* ~"Et bien, euh, avant cela, j'aurais des questions à te poser…"~ */ GOTO 20
  IF ~~ THEN REPLY #8273 /* ~"Excuse-moi… Ce n'est pas ce que je voulais dire. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #8206 /* ~"Nous nous permettrons de pleurer pour elle et son père, si ça ne te fait rien."~ */
  IF ~~ THEN REPLY #8274 /* ~"Si tu le pouvais, ça atténuerait énormément la peine de son père et la mienne."~ */ DO ~SetGlobal("Chant","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #8275 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #8207 /* ~"Nous pleurerons pour toi, si tel est ton désir."~ */
  IF ~~ THEN REPLY #8276 /* ~"Si tu le pouvais, ça atténuerait énormément ma peine."~ */ DO ~SetGlobal("Chant","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #8277 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 5.3
  SAY #8208 /* ~"Nous pleurerons pour toi, si tel est ton désir."~ */
  IF ~~ THEN REPLY #8278 /* ~"Si tu le pouvais, ça atténuerait énormément ma peine."~ */ DO ~SetGlobal("Chant","GLOBAL",3)
~ GOTO 11
  IF ~~ THEN REPLY #8279 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.4 35.1
  SAY #8209 /* ~"Nous pleurerons pour elle, si ça ne lui fait rien."~ */
  IF ~~ THEN REPLY #8280 /* ~"Si tu le pouvais, ça atténuerait énormément sa peine."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mourn_4","GLOBALGood",2)
SetGlobal("Chant","GLOBAL",4)
~ GOTO 11
  IF ~~ THEN REPLY #8281 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 5.5 35.2
  SAY #8210 /* ~"Nous pleurerons pour lui, si ça ne lui fait rien."~ */
  IF ~~ THEN REPLY #8282 /* ~"Si tu le pouvais, ça atténuerait énormément sa peine."~ */ DO ~SetGlobal("Chant","GLOBAL",5)
~ GOTO 11
  IF ~~ THEN REPLY #8283 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 5.0 6.0 7.0 8.0 9.0 10.0 20.4 35.0 36.0 38.0
  SAY #8211 /* ~L'Homme-Poussière s'incline et se remet à chanter.~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8284 /* ~Écoute-les chanter.~ */ GOTO 2
  IF ~  Global("Chant","GLOBAL",1)
~ THEN REPLY #8285 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 21
  IF ~  Global("Chant","GLOBAL",2)
~ THEN REPLY #8286 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 24
  IF ~  Global("Chant","GLOBAL",3)
~ THEN REPLY #8287 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 25
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8288 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 26
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8289 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 27
  IF ~  GlobalGT("Chant","GLOBAL",5)
GlobalLT("Chant","GLOBAL",8)
~ THEN REPLY #8290 /* ~Écoute-les chanter.~ */ DO ~SetGlobal("Chant_Change","GLOBAL",1)
~ GOTO 39
  IF ~~ THEN REPLY #8291 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 3.3 5.8 6.1 7.1 8.1 9.1 10.1 13.8 14.8 15.8 16.10 17.8 18.9 19.7 20.5 28.1 29.1 30.2 31.2 32.2 33.2 35.4 36.1 37.1 38.1 40.2
  SAY #8212 /* ~La femme Homme-Poussière baisse la tête et se remet à chanter.~ */
  IF ~~ THEN REPLY #8292 /* ~Pars.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 20.0
  SAY #8213 /* ~"Nous sommes en deuil."~ */
  IF ~~ THEN REPLY #8293 /* ~"Qui est mort ?"~ */ GOTO 14
  IF ~  False()
Global("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #8294 /* ~"Je croyais que vous, les Hommes-Poussière, étiez au-dessus des pleurs et des émotions."~ */ GOTO 14
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8295 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8296 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8297 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8298 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8299 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8300 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8301 /* ~"C'est tout ce que je voulais savoir. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1
  SAY #8214 /* ~"Nous ne pleurons pas les morts, mais les vivants."~ */
  IF ~~ THEN REPLY #8302 /* ~"Les vivants ?"~ */ GOTO 15
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8303 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8304 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8305 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8306 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8307 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8308 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8309 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8310 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #8215 /* ~"Nous pleurons les vivants qui ont perdu un être cher."~ */
  IF ~~ THEN REPLY #8311 /* ~"Pourquoi ?"~ */ GOTO 16
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8312 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8313 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8314 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8315 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8316 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8317 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8318 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8319 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #8216 /* ~"Le passage d'une âme dans la Vraie Mort laisse souvent une vague de troubles derrière lui. Lorsque le défunt est un être cher, sa mort s'accompagne souvent de souffrance et d'un sentiment de perte."~ */
  IF ~~ THEN REPLY #8320 /* ~"Ce qui est naturel…"~ */ GOTO 17
  IF ~~ THEN REPLY #8321 /* ~"Alors, vous pleurez les vivants parce que…"~ */ GOTO 17
  IF ~~ THEN REPLY #8322 /* ~"La Vraie Mort ?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8323 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8324 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8325 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8326 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8327 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8328 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8329 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8330 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1 18.1
  SAY #8217 /* ~"La souffrance et le sentiment de perte sont des émotions fortes. De telles émotions rattachent les vivants à cette existence, les empêchant d'atteindre la Vraie Mort lorsque leur heure est venue. Nous pleurons les vivants prisonniers de telles émotions."~ */
  IF ~~ THEN REPLY #8331 /* ~"La Vraie Mort ?"~ */ GOTO 18
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8332 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8333 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8334 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8335 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8336 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8337 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8338 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8339 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 18 // from: 16.2 17.0
  SAY #8218 /* ~"On l'appelle parfois la mort finale. La Vraie Mort est la délivrance de cette sombre et douloureuse existence. C'est la délivrance des émotions. La délivrance de la raison. La délivrance de ces carapaces."~ */
  IF ~~ THEN REPLY #8340 /* ~"Ça ressemble à de l'oubli."~ */ GOTO 19
  IF ~~ THEN REPLY #8341 /* ~"C'est pour ça que vous pleurez les vivants ?"~ */ GOTO 17
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8342 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8343 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8344 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8345 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8346 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8347 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8348 /* ~"Je… vois. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8349 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #8219 /* ~L'Homme-Poussière s'incline. "Certains l'appellent comme ça, mais ce n'est pas tout à fait exact."~ */
  IF ~  Global("Chant","GLOBAL",0)
~ THEN REPLY #8350 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 30
  IF ~  GlobalGT("Chant","GLOBAL",0)
GlobalLT("Chant","GLOBAL",4)
~ THEN REPLY #8351 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",4)
~ THEN REPLY #8352 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 32
  IF ~  Global("Chant","GLOBAL",5)
~ THEN REPLY #8353 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 33
  IF ~  Global("Chant","GLOBAL",6)
~ THEN REPLY #8354 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 31
  IF ~  Global("Chant","GLOBAL",7)
~ THEN REPLY #8355 /* ~"Qui pleures-tu en particulier ?"~ */ GOTO 40
  IF ~~ THEN REPLY #8356 /* ~"Peu importe. J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8357 /* ~"Je crois que j'en ai assez entendu. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 20 // from: 5.7 14.7 15.7 16.9 17.7 18.8 19.6 29.0 30.1 31.1 32.1 33.1 34.0 37.0 40.1
  SAY #8220 /* ~L'Homme-Poussière attend.~ */
  IF ~~ THEN REPLY #8358 /* ~"Qu'est-ce que tu fais ?"~ */ GOTO 13
  IF ~  Global("Chant_Change","GLOBAL",1)
~ THEN REPLY #8359 /* ~"Pourquoi votre chant a-t-il changé ?"~ */ GOTO 28
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8360 /* ~"Je pleure un mort."~ */ GOTO 5
  IF ~  Global("Mourn","GLOBAL",1)
~ THEN REPLY #8361 /* ~"Je parle au nom d'une personne qui a perdu quelqu'un."~ */ GOTO 35
  IF ~~ THEN REPLY #8362 /* ~"J'aimerais vous écouter chanter."~ */ GOTO 11
  IF ~~ THEN REPLY #8363 /* ~"Excuse-moi, je ne voulais pas te déranger. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 1.2 4.2 11.1 23.0
  SAY #8221 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci comporte des cycles, comme le flux et le reflux des vagues sur le rivage. Ta mémoire est attisée par cette pensée…~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #8364 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,500)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
~ THEN REPLY #8365 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,750)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",0)
CheckStatGT(Protagonist,15,WIS)
~ THEN REPLY #8366 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
GiveExperience(Protagonist,1000)
~ GOTO 22
  IF ~  Global("Shore_Memory","GLOBAL",1)
~ THEN REPLY #8367 /* ~Essaie de te rappeler…~ */ DO ~PlaySoundNotRanged("SPTR_01")
~ GOTO 22
  IF ~~ THEN REPLY #33957 /* ~Repousse le souvenir.~ */ GOTO 23
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2 21.3
  SAY #8222 /* ~Tu te souviens vaguement de t'être retrouvé sur un lointain rivage… ailleurs, loin d'ici. Une femme t'accompagne. Elle se tient à ta gauche et tu n'arrives pas à la distinguer clairement. Lorsque tu tentes de saisir le souvenir, il s'évanouit…~ */
  IF ~  Global("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8368 /* ~Retrouve tes repères.~ */ DO ~SetGlobal("Shore_Memory","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Shore_Memory","GLOBAL",0)
~ THEN REPLY #8369 /* ~Retrouve tes repères.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 21.4 22.0 22.1
  SAY #8223 /* ~… et tu te retrouves de nouveau avec les Hommes-Poussière pleureurs. Leur chant est à peine audible à présent. Ils s'arrêtent, prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #8370 /* ~Écoute de nouveau.~ */ GOTO 21
  IF ~~ THEN REPLY #8371 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 1.3 4.3 11.2
  SAY #8224 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, le ton de celui-ci est beaucoup plus aigu, tel le sifflement d'une flèche ou le bruit du vent soufflant à travers un canyon. Ce chant commence et finit rapidement, après quoi les Hommes-Poussière se taisent, prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #8372 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #8373 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 1.4 4.4 11.3
  SAY #8225 /* ~Tous les Hommes-Poussière chantent sur le même ton et au même rythme. Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci se caractérise par une certaine énergie et un caractère aléatoire. C'est un chant imprévisible, dont le ton semble changer par le simple fait d'être prononcé. Quelle que soit la façon dont le chant varie, les Hommes-Poussière réussissent à conserver une parfaite harmonie. Lorsque ce chant s'évanouit presque, les Hommes-Poussière prononcent plusieurs lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #8374 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #8375 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 1.5 4.5 11.4
  SAY #8226 /* ~Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci ne comporte qu'une seule note, tenue pendant plusieurs minutes… Il rappelle le bruit d'une énorme cloche. Les Hommes-Poussière restent un moment silencieux une fois la note terminée, prononcent plusieurs lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #8376 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #8377 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 1.6 4.6 11.5
  SAY #8227 /* ~Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, celui-ci est plus subtil. Parfois, ce chant est si lent qu'il semble se mélanger au bruit de la rue. Les Hommes-Poussière se taisent complètement au bout d'une minute environ, prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur 'chant'.~ */
  IF ~~ THEN REPLY #8378 /* ~"J'ai des questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #8379 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 20.1
  SAY #8228 /* ~L'Homme-Poussière te regarde froidement. "Notre chant n'a pas changé. C'est le même depuis le début."~ */
  IF ~~ THEN REPLY #8380 /* ~"Votre chant a changé… Il y a une différence de ton et de rythme."~ */ GOTO 29
  IF ~~ THEN REPLY #8381 /* ~"Très bien, peu importe."~ */ GOTO 12
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #8229 /* ~La femme Homme-Poussière secoue la tête. "C'est peut-être toi qui as changé."~ */
  IF ~~ THEN REPLY #8382 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8383 /* ~"Peut-être. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 30 // from: 13.2 14.1 15.1 16.3 17.1 18.2 19.0
  SAY #8230 /* ~"Je pleure Iannis. Il souffre de la perte de sa fille unique, Deionarra."~ */
  IF ~  GlobalGT("Deionarra","GLOBAL",0)
~ THEN REPLY #8384 /* ~"Deionarra ? J'ai entendu parler d'elle. Sais-tu comment elle est morte ?"~ */ JOURNAL #27450 /* ~Les pleureuses Hommes-Poussière m'ont dit qu'elles pleuraient pour le deuil d'un homme dénommé Iannis, apparemment le père de cet esprit que j'ai rencontré à la Morgue. Iannis en saura peut-être plus sur Deionarra et moi…~ */ GOTO 37
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8385 /* ~"J'ai d'autres questions…"~ */ JOURNAL #27451 /* ~Les pleureuses Hommes-Poussière m'ont dit qu'elles pleuraient pour le deuil d'un homme dénommé Iannis, qui avait perdu sa seule et unique fille, Deionarra. Ces noms m'ont paru familiers, sans que je puisse mettre des visages dessus.~ */ GOTO 20
  IF ~  Global("Deionarra","GLOBAL",0)
~ THEN REPLY #8386 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ JOURNAL #27451 /* ~Les pleureuses Hommes-Poussière m'ont dit qu'elles pleuraient pour le deuil d'un homme dénommé Iannis, qui avait perdu sa seule et unique fille, Deionarra. Ces noms m'ont paru familiers, sans que je puisse mettre des visages dessus.~ */ GOTO 12
END

IF ~~ THEN BEGIN 31 // from: 13.3 13.6 14.2 14.5 15.2 15.5 16.4 16.7 17.2 17.5 18.3 18.6 19.1 19.4
  SAY #8231 /* ~"Nous pleurons pour la souffrance que tu éprouves face à cette perte."~ */
  IF ~~ THEN REPLY #8387 /* ~"Ça va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin que moi."~ */ GOTO 34
  IF ~~ THEN REPLY #8388 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8389 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 32 // from: 13.4 14.3 15.3 16.5 17.3 18.4 19.2
  SAY #8232 /* ~"Nous pleurons la femme d'Angyar, qui éprouve de la souffrance face à cette perte."~ */
  IF ~~ THEN REPLY #8390 /* ~"Elle va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin qu'elle."~ */ GOTO 34
  IF ~~ THEN REPLY #8391 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8392 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 33 // from: 13.5 14.4 15.4 16.6 17.4 18.5 19.3
  SAY #8233 /* ~"Nous pleurons Adahn, qui éprouve de la souffrance face à cette perte."~ */
  IF ~~ THEN REPLY #8393 /* ~"Euh… Adahn va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin que lui."~ */ GOTO 34
  IF ~~ THEN REPLY #8394 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8395 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 34 // from: 31.0 32.0 33.0 40.0
  SAY #8234 /* ~La femme Homme-Poussière s'incline, secoue la tête et se remet à chanter.~ */
  IF ~~ THEN REPLY #8396 /* ~"J'ai d'autres questions…"~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 20
  IF ~~ THEN REPLY #8397 /* ~Écoute.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ GOTO 2
  IF ~~ THEN REPLY #8398 /* ~Pars.~ */ DO ~SetGlobal("Chant","GLOBAL",0)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 3.2 20.3
  SAY #8235 /* ~La pleureuse s'arrête soudain et t'observe. "Cette personne éprouve-t-elle de la souffrance face à cette perte ?"~ */
  IF ~~ THEN REPLY #8399 /* ~"Non. Ça ne les émeut pas."~ */ GOTO 11
  IF ~  Global("Wife_of_Angyar","GLOBAL",2)
~ THEN REPLY #8400 /* ~"Oui. Une femme, la femme d'Angyar, a perdu un fils. Cette mort l'a beaucoup peinée."~ */ GOTO 9
  IF ~~ THEN REPLY #8401 /* ~Mensonge : "Euh, oui… Mon ami, euh… Adahn… vient de perdre un proche. Cette mort l'a beaucoup peiné."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Mourn_1","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALAdahn_Mourn_1","GLOBALAdahn",4)
~ GOTO 10
  IF ~~ THEN REPLY #8402 /* ~"Oui, cette mort récente leur a causé beaucoup de peine et de chagrin."~ */ GOTO 38
  IF ~~ THEN REPLY #8403 /* ~"Excuse-moi… Ce n'est pas ce que je voulais dire. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 36 // from: 5.6
  SAY #8236 /* ~"Nous pleurerons pour toi, si tel est ton désir."~ */
  IF ~~ THEN REPLY #8404 /* ~"Si tu le pouvais, ça atténuerait énormément ma peine."~ */ DO ~SetGlobal("Chant","GLOBAL",6)
~ GOTO 11
  IF ~~ THEN REPLY #8405 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 37 // from: 30.0
  SAY #8237 /* ~"Les circonstances qui entourent sa mort me sont inconnues."~ */
  IF ~~ THEN REPLY #8406 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8407 /* ~"Très bien. C'est tout ce que je voulais savoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 38 // from: 35.3
  SAY #8238 /* ~"Nous pleurerons pour leur peine, si ça ne te fait rien."~ */
  IF ~~ THEN REPLY #8408 /* ~"Si tu le pouvais, ça atténuerait énormément leur peine."~ */ DO ~SetGlobal("Chant","GLOBAL",7)
~ GOTO 11
  IF ~~ THEN REPLY #8409 /* ~"Non, c'est inutile. Au revoir."~ */ GOTO 12
END

IF ~~ THEN BEGIN 39 // from: 1.7 11.6
  SAY #8239 /* ~Contrairement au chant que tu as entendu en t'approchant pour la première fois du Mémorial, le ton de celui-ci n'est pas facile à identifier. Pendant que tu écoutes, tu remarques qu'il est étrangement atténué, comme si l'air seul absorbait le chant. Le chant des Hommes-Poussière s'évanouit au bout d'une minute environ, ils prononcent quelques lignes à la gloire de la 'Vraie Mort', puis reprennent leur chant.~ */
  IF ~~ THEN REPLY #8410 /* ~"J'ai quelques questions à te poser…"~ */ GOTO 3
  IF ~~ THEN REPLY #8411 /* ~Laisse-les chanter.~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 13.7 14.6 15.6 16.8 17.6 18.7 19.5
  SAY #8240 /* ~"Nous pleurons la personne dont tu parlais et qui éprouve de la souffrance face à cette perte."~ */
  IF ~~ THEN REPLY #8412 /* ~"La personne va mieux. Celui que tu pleurais avant que nous n'entamions notre conversation est plus dans le besoin que celle dont je parlais."~ */ GOTO 34
  IF ~~ THEN REPLY #8413 /* ~"J'ai d'autres questions…"~ */ GOTO 20
  IF ~~ THEN REPLY #8414 /* ~"Merci. C'est tout ce que je voulais savoir."~ */ GOTO 12
END
