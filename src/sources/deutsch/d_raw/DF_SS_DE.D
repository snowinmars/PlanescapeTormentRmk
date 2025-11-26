// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DF_SS_DE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DF_SS_DE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51731 /* ~Der untere Teil dieses wasserblauen Steins ist so behauen, daß es aussieht, als sei er mit dem Sockel, auf dem er ruht, verschmolzen. Ein Strom perfekter, azurblauer Tränen tropft an den Seiten herunter und rahmt die Inschrift am Sockel ein: "Sehnsucht".~ */
  IF ~~ THEN REPLY #51732 /* ~Beginn die Erfahrung.~ */ GOTO 1
  IF ~~ THEN REPLY #52857 /* ~Geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #52858 /* ~Als du deine Hände auf den Stein legst, wellt sich seine Oberfläche unter deiner Berührung. Ein Schauer läuft über deine Arme, als ob du deine Hände in einen Gebirgsbach getaucht hättest.~ */
  IF ~~ THEN REPLY #52859 /* ~Schließ die Augen, tauch in die Erfahrung ein...~ */ GOTO 2
  IF ~~ THEN REPLY #52860 /* ~Schüttel die Erfahrung ab, laß den Stein los.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #52861 /* ~Als du die Augen schließt, blinzelst du und öffnest sie wieder. Deine Augen sind mit Tränen gefüllt, und du wirst von einem schrecklichen Gefühl des *Ertrinkens* überwältigt. Während die Empfindung durch dich läuft, spürst du in der Brust ein Rumoren, einen *Hunger*, giftig wie eine Schlange, der in dein Herz BEISST, bis du das Gefühl hast, daß deine Brust *explodiert*. Du versuchst verzweifelt, dich zu beruhigen, dich zu konzentrieren, aber in deine Augen kommen nur Tränen...~ */
  IF ~~ THEN REPLY #52862 /* ~Wisch dir die Tränen weg...~ */ GOTO 3
  IF ~~ THEN REPLY #52863 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #52864 /* ~Du hebst die Hand, um deine Tränen wegzuwischen. Deine Hände sind die weichen, zarten Hände einer Frau. Sie wischen die Tränen von deinen Wangen. Du umschließt sie mit deinen Händen, jede Träne wie ein im Licht schimmerndes Juwel...~ */
  IF ~~ THEN REPLY #52865 /* ~Dreh dich um, um die Lampen näher zu betrachten...~ */ GOTO 4
  IF ~~ THEN REPLY #52866 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #52867 /* ~Die Lichter kommen von Kerzenkugeln, die durch deinen Zufluchtsraum schweben. Du bist an diesen Ort gekommen, um deine Gedanken zu sammeln, um, mit einem Auge auf die Zukunft gerichtet, über die Vergangenheit nachzudenken, um deine Gedanken vor der bevorstehenden Reise zu reinigen. Doch... du kannst dich nicht *konzentrieren*! Deine Gedanken bleiben in der Gegenwart, dort gefangen von dem schrecklichen Gefühl, das sich in deiner Brust windet. Was hat er GEMEINT...?! ~ */
  IF ~~ THEN REPLY #52868 /* ~Schließ die Augen, seufze...~ */ GOTO 5
  IF ~~ THEN REPLY #52869 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #52870 /* ~Du schließt die Augen, aber seine Worte klingen wie ein Echo in deinen Gedanken nach, hundert, TAUSEND Mal. Wird er JEMALS zurückkehren?! Das Geräusch ist ein Flüstern, ein Echo: "Nur du. NUR du." Und doch hast du GEZÖGERT, an der Schwelle der Tür der Zeit, und er muß gedacht haben, daß du ANGST hast zu gehen, aber das hattest du nicht, du hattest ANGST zu bleiben, und die Angst... die Schlange windet sich wieder in deiner Brust, ihre Giftzähne beißen in dein Herz und füllen es bis zum Bersten mit ihrem *Gift*. Die Tränen kommen wieder, laufen dir in Strömen die Wangen hinunter, seine Worte hallen wie ein Echo...~ */
  IF ~~ THEN REPLY #52871 /* ~Echo: "Nur du. NUR du."~ */ DO ~SetGlobal("Sensory_Deionarra","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #52872 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #52873 /* ~Deine Augen gehen ruckartig auf. Es ist SEINE Stimme! Du wirbelst herum und schnappst nach Luft. Er steht in den Schatten, mächtig, und er schreitet in das Licht der schwebenden Kerzenkugeln, und du spürst, wie die Schlange sich windet und STIRBT... Er ist zurückgekehrt! Seine Miene, streng, aber irgendwo in diesen Zügen kannst du beinahe erkennen, daß er sich freut, dich zu sehen. Nach allem ist er zurückgekehrt wegen d-~ */
  IF ~~ THEN REPLY #52874 /* ~Echo: "Nur du kannst mir helfen, Deionarra. Aber es war falsch von mir, dich um Hilfe zu bitten..."~ */ GOTO 7
  IF ~~ THEN REPLY #52875 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #52876 /* ~Du sprichst... Deionarra... Und doch bist DU es. Grauhäutig wie eine Statue trittst du aus dem Licht. Bist du wirklich so *vernarbt*?! Dein Körper sieht aus, als sei er in Messerklingen gebadet worden, die Wunden, die Tätowierungen, schrecklich. Und doch siehst du mit DEIONARRAS AUGEN, und sie sieht... Wie kann sie dich nur so SEHEN, sie legt einen MANTEL über dein Gesicht, sie sieht dich in solch einem *Licht*, solch schreckliche Sehnsucht, *Licht*... denn...wie... kann sie so etwas FÜHLEN...?~ */
  IF ~~ THEN REPLY #52877 /* ~Versuch, dich wieder zu konzentrieren, dich zu stärken, die Erfahrung festzuhalten...~ */ GOTO 8
  IF ~~ THEN REPLY #52878 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #52879 /* ~Du fühlst, wie das, was du siehst, zerrissen wird, sich verdoppelt, bis du dieser Mann bist, der aus dem Licht tritt, du BIST es, aber du bist es auch NICHT... Du fühlst, wie du ZERRISSEN wirst. Es ist Deionarras Erfahrung, aber gleichzeitig ist es auch *deine*, und du... was...~ */
  IF ~~ THEN REPLY #52880 /* ~Echo: "Ich habe zuviel verlangt, als ich dich bat, mich zu begleiten, Deionarra. Ich habe kein Recht, dich meinetwegen in solche Gefahr zu bringen..."~ */ GOTO 9
  IF ~~ THEN REPLY #52881 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #52882 /* ~Es sind deine Worte, aber es sind die Worte eines Chirurgen, mit kalter Präzision gewählt, ohne eine SPUR von Gefühl. Mit jedem Wort spürst du dich innerlich HÖHNISCH GRINSEN, und du weißt, was das (gepeinigte) Mädchen als nächstes durch ihre (mit Sehnsucht gefüllten) Augen sehen wird, und wen. Bist du DIESE Person, dieser Mann, der sie mit deinen Worten MANIPULIERT, und nicht WEISS, wie mächtig sie für sie sind, wie die Bolzen einer Armbrust, die sich in ihre Brust bohrt, ihre... Und doch SIEHT sie nur ERLEICHTERUNG bei deiner Rückkehr. Wie... Wie kann sie FÜHLEN... und nicht wissen, daß es deine Absicht ist, zu...?~ */
  IF ~~ THEN REPLY #52883 /* ~Echo: "Ich bin gekommen, um dich um Verzeihung zu bitten, Deionarra. Ich werde zu dir zurückkehren, sobald ich in der Lage bin..."~ */ GOTO 10
  IF ~~ THEN REPLY #52884 /* ~Lös dich von der Erfahrung.~ */ GOTO 35
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #52885 /* ~Das, was du siehst, wird abermals zerrissen, verdoppelt sich und blutet, bis du wieder dich selbst ansiehst und verzweifelt versuchst zu sprechen, Deionarra zu WARNEN, daß dies kein Mann ist, sondern ein Wesen, daß für seine eigenen Bedürfnisse tötet, dem du EGAL bist, Deionarra, du bist für ihn ein WERKZEUG, ein WERKZEUG, das er braucht, um... aber Deionarra spricht, und du kannst sie nicht AUFHALTEN....~ */
  IF ~~ THEN REPLY #52886 /* ~Echo: "Ich würde mich selbst in *tausend* Gefahren begeben, es mit der Ewigkeit aufnehmen, für dich, mein Liebster! Ich habe *keine* Angst! Hör mir zu - ich werde dich begleiten, auch wenn die Ebenen selbst..."~ */ GOTO 11
  IF ~~ THEN REPLY #52887 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #52888 /* ~"...auch wenn die Ebenen selbst den Weg versperren sollten...." Du fühlst, wie du zerfällst, Erleichterung und Befriedigung - seine BEFRIEDIGUNG über ihre Worte. Er hat GEWUSST, daß sie sie sagen würde, hat es immer GEWUSST, und ihre Liebeserklärung ist wie ein Fallgitter, das auf dein Herz niederrasselt. Gefangen. Sie ist dein, aber du mußt *sicher* sein, also schlägst du den Nagel ganz ein. ~ */
  IF ~~ THEN REPLY #52889 /* ~Echo: "Der Weg ist gefährlich. Du wirst stark sein müssen... *Viel* stärker als du jetzt bist."~ */ GOTO 12
  IF ~~ THEN REPLY #52890 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #52891 /* ~Durch ihre Gedanken schwimmt Erleichterung, die Welle der Erleichterung, das Ende der Sehnsucht, doch seine Worte vergrößern die SEHNSUCHT nach ihm, sie bemerkt seine Manipulation nicht... Du mußt nur stark sein, und sein Pfad wird wie eins mit deinem sein! Deine Gedanken sind wie Feuer... Denn du kannst stark sein, stärker, als er weiß, du kennst keine Angst, du würdest für ihn STERBEN...!~ */
  IF ~~ THEN REPLY #52892 /* ~Echo: "Ich kann stark sein, mein Liebster. Ich werde -"~ */ GOTO 13
  IF ~~ THEN REPLY #52893 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #52894 /* ~Ihre Worte perlen an ihm ab wie Wasser. Die Schlange in ihrer Brust, die ihr Herz mit ihrem Gift gefüllt hat, ist durch die Schlange im Fleisch ersetzt. Sie sieht nichts davon, und seine nächsten Worte sind sorgfältig geplant, so sorgfältig...~ */
  IF ~~ THEN REPLY #52895 /* ~Echo: "Ich kann nicht sagen, ob wir erfolgreich sein werden, Deionarra, aber ich werde mein Bestes tun, um dich zu beschützen. Und ich erwarte nichts weniger als das Gleiche von dir. Du..."~ */ GOTO 14
  IF ~~ THEN REPLY #52896 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #52897 /* ~"...es könnte von dir verlangt werden, einige *Opfer* zu bringen." Bei diesem endgültigen, schrecklichen Wort spürst du, wie du ZERRISSEN wirst. Er will ihr Schaden zufügen... Er will DIR Schaden zufügen, denn du bist SIE, und es ist seine Absicht, sie zu VERLETZEN, doch ist es für dich NOTWENDIG, daß ihr Schaden zugefügt wird, und... du willst SCHREIEN, IHR ZUSCHREIEN, DASS SIE IN GEFAHR IST, LAUF, LAUF, DEIONARRA, DENN SEINE AUGEN ZERSTÖREN ALLES UND-~ */
  IF ~~ THEN REPLY #52898 /* ~Echo: "Natürlich, mein Liebster. Leben ist Aufopferung. Dies habe ich gelernt."~ */ GOTO 15
  IF ~~ THEN REPLY #52899 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #52909 /* ~Du... sie... ihr... Du sprichst die Worte und fühlst dabei, wie du innerlich stirbst. Du bist ein Zuschauer, und du hast eine Frau sterben sehen, denn die Worte sind ein Todesurteil. Und doch spricht sie noch immer, noch immer, achtlos, gleichgültig....~ */
  IF ~  Global("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52910 /* ~Echo: "Ich... habe ein Vermächtnis in der Obhut meines Vaters gelassen, mein Liebster. Frage nach dem Sechsten, dem Dritten, dem 'K' und dem 'S'. Alles darin vermache ich dir. Es ist nicht viel, doch mit ihm hinterließ ich..."~ */ DO ~SetGlobal("Know_Deionarra_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52913 /* ~Im Privaten Sinnsorium der Festhalle habe ich Deionarras letzte Tage in einem der Sinnessteine gesehen. Darin hat sie mir gesagt... demjenigen in der Erfahrung... daß sie mir etwas hinterlassen hat. Das könnte sich als nützlich erweisen...~ */ GOTO 16
  IF ~  GlobalGT("Know_Deionarra_Legacy","GLOBAL",0)
~ THEN REPLY #52911 /* ~Echo: "Ich... habe ein Vermächtnis in der Obhut meines Vaters gelassen, mein Liebster. Frage nach dem Sechsten, dem Dritten, dem 'K' und dem 'S'. Alles darin vermache ich dir. Es ist nicht viel, doch mit ihm hinterließ ich..."~ */ GOTO 16
  IF ~~ THEN REPLY #52912 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1
  SAY #52914 /* ~Du... er... Eine Welle der *Verärgerung* überkommt dich. Du beißt die Zähne zusammen, damit die Verärgerung sich nicht auf deinem Gesicht zeigt. Muß sie *immer* weiter plappern, selbst wenn du ihr kein *Stichwort* gibst?! Muß sie - aber nein - nein, halt die Verärgerung im Innern, nur ein Hauch davon dringt nach außen...~ */
  IF ~~ THEN REPLY #52915 /* ~Echo: "Komm, ich kann nicht STERBEN, Deionarra. Solche Torheit ist gar nicht NÖTIG..."~ */ GOTO 17
  IF ~~ THEN REPLY #52916 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #52917 /* ~Sie... Du... Sie wird von ANGST überwältigt, Angst, die dich anwidert, und die Angst steigt in ihr auf... in dir auf, als du siehst, wie er die Stirn runzelt, und du beeilst dich, ihn zu verbessern! Er muß die Gründe und die Weisheit hinter ihnen kennen, damit er von deiner Planung beeindruckt ist! Sprich! Sprich, bevor er sich abwendet... ~ */
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
Global("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52918 /* ~Echo: "Ich weiß, daß ich oft töricht handle, mein Liebster... Aber du hast selbst gesagt, daß du Dinge vergessen KANNST, wenn du tief verletzt bist. Es gibt Dinge in dem Vermächtnis, die dir helfen könnten, dich zu erinnern, falls du dich selbst vergißt."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52922 /* ~In dieser Erfahrung Deionarras, die ich in der Festhalle in dem Sinnesstein gesehen habe... Ich weiß, als sie vorschlug, daß ich etwas hinterlassen sollte, ist das bei meiner früheren Inkarnation auf Zustimmung gestoßen. Vielleicht hat ihn das dazu gebracht, sich selbst etwas zu hinterlassen, als Vorsichtsmaßnahme. Wenn ich nur die Nummer dafür finden könnte, dann könnte ich es zurückfordern.~ */ GOTO 18
  IF ~  Global("Memory_Nameless_Legacy","GLOBAL",0)
GlobalGT("Know_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52919 /* ~Echo: "Ich weiß, daß ich oft töricht handle, mein Liebster... Aber du hast selbst gesagt, daß du Dinge vergessen KANNST, wenn du tief verletzt bist. Es gibt Dinge in dem Vermächtnis, die dir helfen könnten, dich zu erinnern, falls du dich selbst vergißt."~ */ DO ~SetGlobal("Memory_Nameless_Legacy","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ JOURNAL #52923 /* ~In dieser Erfahrung Deionarras, die ich in der Festhalle in dem Sinnesstein gesehen habe... Ich weiß, als sie vorschlug, daß ich etwas hinterlassen sollte, ist das bei meiner früheren Inkarnation auf Zustimmung gestoßen. Das hat ihn also dazu gebracht, sich selbst etwas zu hinterlassen, als Vorsichtsmaßnahme.~ */ GOTO 18
  IF ~  GlobalGT("Memory_Nameless_Legacy","GLOBAL",0)
~ THEN REPLY #52920 /* ~Echo: "Ich weiß, daß ich oft töricht handle, mein Liebster... Aber du hast selbst gesagt, daß du Dinge vergessen KANNST, wenn du tief verletzt bist. Es gibt Dinge in dem Vermächtnis, die dir helfen könnten, dich zu erinnern, falls du dich selbst vergißt."~ */ GOTO 18
  IF ~~ THEN REPLY #52921 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1 17.2
  SAY #52924 /* ~Sie... Du betrachtest sie kalt, durch deine Augen, läßt deinen Blick über ihre gerunzelte Stirn wandern, zerfurcht vor Sorge, Verzweiflung. Sie hat so gehandelt, wie du es *erwartet* hast... Doch gibt es in dem, was sie sagt, etwas...~ */
  IF ~~ THEN REPLY #52925 /* ~Echo: "Vielleicht... Doch hoffe ich, daß nichts in diesem Vermächtnis von *Wert* ist... Ich will nicht, daß du irgendwelche Sachen, die auf unserer Reise nützlich sein könnten, hier in einem Tresor zurückläßt."~ */ GOTO 19
  IF ~~ THEN REPLY #52926 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #52927 /* ~Ihr Illusion ist zerstört, nur für einen Moment. Du beobachtest, schweigend, wie das Gefühl zu Boden fällt und wie versilbertes Glas zerspringt. "...nützlich..." Solch eine beiläufige Bemerkung, doch sogar Deionarra SIEHT, und du hoffst, nur für einen Moment, HOFFST du, daß sie ihn als das SIEHT, was er ist... die Schlange, die SCHLANGE...~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #52928 /* ~...Und deine Hoffnung stirbt, als sich in Deionnaras Augen das Gefühl wieder aufbaut, die Scherben vom Boden gehoben werden, die Illusion wieder zusammengesetzt wird, aber ein kleiner Splitter des Schmerzes bleibt. Er glaubt, daß du etwas Dummes getan hast! Doch du hast es für IHN getan! Du mußt... mußt es wiedergutmachen, aber wie?! Du mußt ihn überzeugen, daß das Vermächtnis unwichtig ist, aber es ist es NICHT, es ist es NICHT. Es ist ALLES...~ */
  IF ~~ THEN REPLY #52929 /* ~Echo: "Das Vermächtnis, mein Liebster, es... Es enthält nur einige Dinge, die dir helfen können, dich zu erinn..."~ */ GOTO 21
  IF ~~ THEN REPLY #52930 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #52931 /* ~Die Sichel der Worte fällt auf Deionarra, so schnell, so scharf, daß du ihrer geschwungenen Bewegung nicht folgen kannst. ~ */
  IF ~~ THEN REPLY #52932 /* ~Echo: "Ein Vermächtnis? Du kommst manchmal auf Ideen, Deionarra... Solch... *romantische* Gesten. Egal..."~ */ GOTO 22
  IF ~~ THEN REPLY #52933 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #52934 /* ~Nein! Sie... Du... Deionarra... Du hast ihn wieder vertrieben, genau wie in der Nacht zuvor! Du fühlst, wie sich die Schlange wieder regt, wiedergeboren, und sich um dein Herz schlingt. Ein Hauch von einem Zischen, doch er hört es nicht...~ */
  IF ~~ THEN REPLY #52935 /* ~Echo: "Würdest... Würdest du gerne ein Vermächtnis hinterlassen, mein Liebster? Für dich selbst... oder für wen auch immer du willst. Es könnte dir helfen, dich zu erinnern, wenn du etwas für dich selbst hinterlassen würdest... oder für die, die du geliebt hast..." ~ */ GOTO 23
  IF ~~ THEN REPLY #52936 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #52937 /* ~Die Sichel der Worte fällt abermals, schrecklich und schnell. Doch diesmal hält die Illusion stand, und die Schlange ist verhüllt. Die Schlange ist schlau, und sie wird sich nicht zu erkennen geben, bevor sie angreift. ~ */
  IF ~~ THEN REPLY #52938 /* ~Echo: "Ein Vermächtnis für mich selbst? Wohl kaum... Die Dinge, die ich für mich selbst hinterlassen würde, wären nicht sicher im Büro irgendeines Advokaten, Deionarra. Aber genug davon... Ich muß gehen." ~ */ GOTO 24
  IF ~~ THEN REPLY #52939 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #52940 /* ~Er geht! Du mußt ihn dazu bringen, daß er bleibt... Und die Erfahrung UMSPÜLT dich, schrecklich, der spiralförmige Sog auf die Schlußszene zu... Die FRAGE, die du... sie... stellen will, stell sie nicht, Deionarra! STELL SIE NICHT SCHWEIG, SCHWEIG~ */
  IF ~~ THEN REPLY #52941 /* ~Echo: "Mein Liebster, bevor du gehst..." ~ */ GOTO 25
  IF ~~ THEN REPLY #52942 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #52943 /* ~SEIN ZORN, SEINE VERÄGERUNG, WAS *JETZT*, MÄDCHEN, WAS *JETZT*, DU WIMMERNDE TODESFEE~ */
  IF ~~ THEN REPLY #52944 /* ~Echo: "'Bevor ich gehe'? Sieht so aus, als ob das noch ein Weilchen dauern könnte. Hör mal, Deionarra, können diese Fragen nicht bis zum Morgen warten? Es gibt viel..." ~ */ GOTO 26
  IF ~~ THEN REPLY #52945 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #52946 /* ~SIE... DU... SIE IST VERZWEIFELT ERTRINKEND SAG ES SAG ES UND SIE ... DU... SPRICH ES AUS~ */
  IF ~~ THEN REPLY #52947 /* ~Echo: "*Willst* du, daß ich mit dir komme, mein Liebster?" ~ */ GOTO 27
  IF ~~ THEN REPLY #52948 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #52949 /* ~Der Sturm der Gefühle in deinen Gedanken erstirbt. Dies ist das Ende. Die Worte, die er... du... gerade sprechen willst, sind wahr, aber die Wahrheit ist nicht die Wahrheit, die sie sieht. Es gibt keine Lügen, nur kalte Berechnung. *Natürlich* will er, daß du mit ihm kommst, Deionarra. Du versteht es sehr gut, zu gut: Er hat zuviel in dieses arme Mädchen investiert, um sie gehen zu lassen. ~ */
  IF ~~ THEN REPLY #52950 /* ~Echo: "Natürlich, Deionarra. Ich hätte dich nicht gebeten, mit mir zu kommen, wenn ich nicht deine Gesellschaft wünschte. Du *weißt*, was ich für dich empfinde..."~ */ GOTO 28
  IF ~~ THEN REPLY #52951 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #52952 /* ~In seinen Gedanken herrscht eine kalte Stille, dann pfeift ein Gedanke durch die Luft, eine Antwort, scharf und tödlich, wie die Klinge eines Dolchs. Die Lüge kommt schnell, unbelastet von Gefühlen. ~ */
  IF ~~ THEN REPLY #52953 /* ~Echo: "Ich liebe dich, Deionarra."~ */ GOTO 29
  IF ~~ THEN REPLY #52954 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #52955 /* ~Und du willst SCHREIEN, als du fühlst, wie die Lüge wie ein STRAHLEN über sie gleitet, aber sie ist ein SCHATTEN der WAHRHEIT, DER KUSS EINER SCHLANGE, UND ER WILL DIR SCHADEN ZUFÜGEN, UND SIE KANN NICHT *SEHEN*, DU WILLST LAUT RUFEN, ABER SIE WEINT VOR FREUDE, SOGAR ALS - SOGAR ALS-~ */
  IF ~~ THEN REPLY #52956 /* ~Weine vor Freude... vor Frustration... vor Freude... vor Verzweiflung...~ */ GOTO 30
  IF ~~ THEN REPLY #52957 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 35
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #52958 /* ~Du wirst von einem Gefühl überwältigt, als würdest du ertrinken, ERTRINKEN, und du mußt sprechen, du SEHNST dich danach, zu sprechen, aber du kannst nicht... und...~ */
  IF ~  NearbyDialog("DGrace")
~ THEN REPLY #52959 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 32
  IF ~  !NearbyDialog("DGrace")
NearbyDialog("DAnnah")
~ THEN REPLY #52960 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 31
  IF ~  !NearbyDialog("DGrace")
!NearbyDialog("DAnnah")
~ THEN REPLY #52961 /* ~Reiß dich von der Erfahrung los.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.1
  SAY #52962 /* ~...und du schreist, schreist, während du die Hände vom Stein reißt und blutige Tränen aus deinen Augen strömen, deine Arme hinunterrinnen, über deine Hände, und den Stein überziehen. Blut! Ihr Blut! Und... du kannst sie nicht WARNEN... und du kannst nicht aufhören zu WEINEN...~ */
  IF ~~ THEN EXTERN ~DANNAH~ 260
END

IF ~~ THEN BEGIN 32 // from: 30.0
  SAY #52963 /* ~...und du schreist, schreist, während du die Hände vom Stein reißt und blutige Tränen aus deinen Augen strömen, deine Arme hinunterrinnen, über deine Hände, und den Stein überziehen. Blut! Ihr Blut! Und... du kannst sie nicht WARNEN... und du kannst nicht aufhören zu WEINEN...~ */
  IF ~~ THEN EXTERN ~DGRACE~ 165
END

IF ~~ THEN BEGIN 33 // from: 30.2
  SAY #52964 /* ~...und du schreist, schreist, während du die Hände vom Stein reißt und blutige Tränen aus deinen Augen strömen, deine Arme hinunterrinnen, über deine Hände, und den Stein überziehen. Blut! Ihr Blut! Und... du kannst sie nicht WARNEN... und du kannst nicht aufhören zu WEINEN...~ */
  IF ~  Global("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52965 /* ~Versuch, deine Gedanken zu sammeln...~ */ DO ~SetGlobal("Memory_Deionarra_Longing","GLOBAL",1)
GiveExperience(Protagonist,2000)
~ GOTO 34
  IF ~  GlobalGT("Memory_Deionarra_Longing","GLOBAL",0)
~ THEN REPLY #52966 /* ~Versuch, deine Gedanken zu sammeln...~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0 33.1
  SAY #52967 /* ~So sehr du auch die Erinnerung an die Erfahrung abzuschütteln versuchst, hältst du sie fest, weil du weißt, daß es wichtig ist, sich daran zu erinnern. *Du* warst Teil dieser Erfahrung... es war Deionarras Erfahrung, aber weil du sie durchlebt hast, haben dich deine Erinnerungen überflutet, und du konntest beide Seiten auf einmal SPÜREN. Wer WARST du? Wer war dieser... dieser *Schatten* von dir? ~ */
  IF ~~ THEN REPLY #52968 /* ~Wende dich von dem Stein ab, geh weg.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 2.1 3.1 4.1 5.1 6.1 7.1 8.1 9.1 10.1 11.1 12.1 13.1 14.1 15.2 16.1 17.3 18.1 20.1 21.1 22.1 23.1 24.1 25.1 26.1 27.1 28.1 29.1
  SAY #52969 /* ~Du reißt dich von der Erfahrung los, aber es kostet dich viel Kraft. Du fühlst dich, als würdest du gegen einen Ozean anschwimmen, du strengst dich an, du *kämpfst*, um die Oberfläche zu erreichen. Du atmest tief ein, dein Kopf wird klar, und wieder siehst du den azurblauen Stein an, seine Oberfläche ist still und kalt. ~ */
  IF ~~ THEN REPLY #52970 /* ~Wende dich von dem Stein ab, geh weg.~ */ EXIT
END
