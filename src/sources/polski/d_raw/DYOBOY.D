// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYOBOY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DYOBOY~

IF ~  Global("YoBoy","AR0600",0)
~ THEN BEGIN 0 // from:
  SAY #46037 /* ~Ten młody, muskularny 'opryszek', chociaż wystarczająco uzbrojony i potężny, aby budzić strach, jest jakoś zbyt czysty, jak na typowego ulicznego bandziora. W jednej dłoni trzyma słusznych rozmiarów topór, a w drugiej stalowe pudło. Kiedy zbliżasz się do niego, nadyma się i krzywi gniewnie. "Na co się gapisz, 'skurlu'? 'Szpicuj się', pókim cię jeszcze nie 'zdybał'!"~ */
  IF ~  NearbyDialog("DAnnah")
~ THEN EXTERN ~DANNAH~ 216
  IF ~  !NearbyDialog("DAnnah")
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46097 /* ~"Jak na opryszka, jesteś trochę zanadto zadbany."~ */ GOTO 2
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46098 /* ~"Uspokój się... Mam tylko kilka pytań."~ */ GOTO 2
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #46099 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #46042 /* ~Opryszek spogląda przenikliwie na Annę, ale nie mówi nic.~ */
  IF ~~ THEN REPLY #46043 /* ~"Jak na opryszka, jesteś trochę zanadto zadbany."~ */ GOTO 2
  IF ~~ THEN REPLY #46044 /* ~"Uspokój się... Mam tylko kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #46045 /* ~Odejdź.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 0.2 1.0 1.1 12.0 12.1 14.0
  SAY #46046 /* ~"Przestań poruszać 'trumną', wołowy łbie! To jest *moje* terytorium i zaraz będziesz stąd zmykał w podskokach, chyba że wolisz, żeby moje 'krwawniki' rozniosły cię na strzępy!"~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 217
  IF ~  !NearbyDialog("DAnnah")
!NearbyDialog("DAnnah")
!Global("YoBoy","AR0600",3)
~ THEN REPLY #46100 /* ~"Zastanawiałem się właśnie, co jest w tym pudle, które trzymasz w ręku."~ */ GOTO 4
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46101 /* ~"Nie. Myślę, że się jeszcze trochę pokręcę po okolicy."~ */ GOTO 3
  IF ~  !NearbyDialog("DAnnah")
~ THEN REPLY #46102 /* ~"Dobra. Już mnie nie ma. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 6.2 7.2 8.3
  SAY #46051 /* ~Twarz łotrzyka nabiega gniewem. Zgrzyta zębami ze złości. "Dobra! Niech mnie na 'szpice' wezmą, będziesz miał, co chciałeś! Bierzcie go, krwawnicy!" Wznosi topór i rzuca się na ciebie.~ */
  IF ~~ THEN REPLY #46052 /* ~Walcz.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #46053 /* ~Uciekaj.~ */ DO ~Enemy()
Help()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #46054 /* ~Łotrzyk robi markotną minę i spogląda na pudło. "Nie wiem. Nie mogę otworzyć tego 'szpicowanego' pudła... Wydaje mi się, że to jakiś 'szpicowany' gadający czerep, ale kiedy upuściłem go, całkiem umilkł. Chciałem go sprzedać w Sklepie z Osobliwościami, ale Vris, niechaj na 'szpicach' skona, nie chciała go. A tyś tego ciekaw? Będzie twoje za sto miedziaków."~ */
  IF ~~ THEN REPLY #46055 /* ~"Poczekaj! Skąd masz ten przedmiot?"~ */ GOTO 5
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46056 /* ~"To jest głowa od tego ciała z Gmachu Rozrywki, co?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46057 /* ~"Jasne. Biorę ją."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46058 /* ~"Nie. Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #46059 /* ~Łotrzyk przez chwilę wygląda na zmieszanego. Zaambarasowany wyraz twarzy w zestawieniu z jego potężną posturą tworzy dość zabawną kombinację. "Zna... znalazłem je. A poza tym to nie twój 'szpicowany' interes, 'skurlu'! Chcesz to kupić, czy nie? Dajesz sto miedziaków i je bierzesz, albo to 'szpicowane' pudło zostaje przy mnie!"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #46060 /* ~"To jest głowa od tego ciała z Gmachu Rozrywki, co?"~ */ GOTO 6
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46061 /* ~"Jasne. Biorę."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46062 /* ~"Nie. Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0
  SAY #46063 /* ~Łotrzyk warczy na ciebie, roniąc obficie z ust drobinkami śliny. "Nie wiem, do stu 'szpic'! Kogo to obchodzi! Po prostu znalazłem to 'szpicowane' pudło... A ponieważ ja to znalazłem, jest moje. Takim prawem! Kupujesz? Sto 'brzdęków', 'trepie'."~ */
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46064 /* ~"Jasne. Biorę."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46065 /* ~"To, co? Może zorganizujemy jakiś konkurs o to pudło?"~ */ GOTO 7
  IF ~~ THEN REPLY #46066 /* ~"A może po prostu stłukę cię do nieprzytomności, po czym wezmę sobie to pudło?"~ */ GOTO 3
  IF ~~ THEN REPLY #46067 /* ~"Nie. Dzięki. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #46068 /* ~"Co?"~ */
  IF ~~ THEN REPLY #46069 /* ~"Już wyjaśniam. Weźmiesz topór i palniesz mnie nim z całej siły, w dowolne miejsce na moim ciele. Jeżeli po tym ciosie stanę na nogi i podniosę pudło, to będzie ono moje. W innym wypadku będziesz mógł sobie wziąć wszystko, co mam przy sobie."~ */ GOTO 8
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46070 /* ~"Mniejsza o to. Po prostu kupię to pudło."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46071 /* ~"Nieważne. Po prostu stłukę cię do nieprzytomności, po czym wezmę sobie to pudło."~ */ GOTO 3
  IF ~~ THEN REPLY #46072 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #46073 /* ~Łotrzyk patrzy na swój topór, a potem na ciebie. Ma bardzo sceptyczny wyraz twarzy.~ */
  IF ~  HPGT(Protagonist,15)
~ THEN REPLY #46074 /* ~"Co, boisz się, że jestem jakimś 'nieśmiertelnym', którego twój topór nie może zranić? *Spójrz* tylko na mnie."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
AddexperienceParty(1000)
~ GOTO 10
  IF ~  HPLT(Protagonist,16)
~ THEN REPLY #46075 /* ~"Co, boisz się, że jestem jakimś 'nieśmiertelnym', którego twój topór nie może zranić? *Spójrz* tylko na mnie."~ */ DO ~Damage(Protagonist,LOWER,15)
SetAnimState(Myself,ANIM_MIMEATTACK1)
SetAnimState(Protagonist,ANIM_MIMEGETHIT)
~ GOTO 9
  IF ~  PartyGoldGT(99)
~ THEN REPLY #46076 /* ~"Mniejsza o to. Po prostu kupię to pudło."~ */ DO ~TakePartyGold(100)
GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ GOTO 11
  IF ~~ THEN REPLY #46077 /* ~"Nieważne. Po prostu stłukę cię do nieprzytomności, po czym wezmę sobie to pudło."~ */ GOTO 3
  IF ~~ THEN REPLY #46078 /* ~"Mniejsza o to. Żegnaj."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #46079 /* ~Opryszek jednym potężnym ciosem zatapia topór w twoim ciele. Ostrze miażdży kości i tnie tkanki. Co tu dużo mówić - jesteś martwy.~ */
  IF ~~ THEN REPLY #46080 /* ~Zapadnij w ciemność...~ */ DO ~SetGlobal("YoBoy","AR0600",2)
TakePartyGold(10000)
Kill(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #46081 /* ~Opryszek jednym potężnym ciosem zatapia topór w twoim ciele. Ostrze przecina cię niemal na pół, miażdżąc kości i tnąc tkanki. Zataczasz się, wykrztuszasz z siebie sporo krwi i... posyłasz krzepkiemu rzezimieszkowi zgryźliwy uśmiech. Przerażony łotr zamienia się w słup, ty zaś sięgasz po stalowe pudło.~ */
  IF ~~ THEN REPLY #46082 /* ~"Biorę to pudło, przyjacielu. Szkoda, że nie zauważyłeś, że jestem 'nieśmiertelnym', którego twój topór nie może zranić, prawda? Żegnaj."~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
  IF ~~ THEN REPLY #46083 /* ~Weź pudło i zostaw go w osłupieniu.~ */ DO ~GiveItemCreate("Mertwyn",Protagonist,1,0,0)
SetGlobal("YoBoy","AR0600",3)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 4.2 5.1 6.0 7.1 8.2
  SAY #46084 /* ~Krzepki rzezimieszek chciwie łapie miedziaki i ciska ci stalowe pudło. "A teraz zjeżdżaj stąd. Nie chcę mi już z tobą gadać, 'trepie'."~ */
  IF ~~ THEN REPLY #46085 /* ~"Tak, tak. Cokolwiek sobie życzysz. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #46086 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",1)
~ THEN BEGIN 12 // from:
  SAY #46087 /* ~Krzepki rzezimieszek uśmiecha się szyderczo na twój widok "To znowu ty? 'Szpicuj się', 'trepie'!"~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #46088 /* ~"Jak na opryszka, jesteś trochę zanadto zadbany."~ */ GOTO 2
  IF ~~ THEN REPLY #46089 /* ~"Uspokój się... Mam tylko kilka pytań."~ */ GOTO 2
  IF ~~ THEN REPLY #46090 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",3)
~ THEN BEGIN 13 // from:
  SAY #46091 /* ~Krzepki rzezimieszek uśmiecha się szyderczo na twój widok. "Możesz sobie ruszać 'szpicowaną' 'trumną', ile dusza zapragnie, 'trepie'! Nie mam z tobą żadnej 'śpiewki'!"~ */
  IF ~~ THEN REPLY #46092 /* ~"No nic. Żegnaj."~ */ EXIT
  IF ~~ THEN REPLY #46093 /* ~Odejdź.~ */ EXIT
END

IF ~  Global("YoBoy","AR0600",2)
~ THEN BEGIN 14 // from:
  SAY #61592 /* ~Krzepki młody rozbójnik krzywi się złośliwie na twój widok. "Znowu ty? 'Szpic..." Nagle zapomina języka w gębie i mruży oczy, drapiąc się po głowie. "Słuchaj... Czy ja cię przypadkiem nie... No wiesz..."~ */
  IF ~~ THEN REPLY #61593 /* ~"Tak, tak, wiem, o co ci chodzi. Mam kilka pytań..."~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ GOTO 2
  IF ~~ THEN REPLY #61594 /* ~"Owszem... 'Ty mnie przypadkiem tak'. A teraz za to zapłacisz."~ */ DO ~Enemy()
Help()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #61595 /* ~Odejdź.~ */ DO ~SetGlobal("YoBoy","AR0600",1)
~ EXIT
END
