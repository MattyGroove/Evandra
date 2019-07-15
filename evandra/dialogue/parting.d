APPEND RH#EVAP

IF ~Global("rh#EvaJoined","GLOBAL",1)~ p1
 SAY @0 /* Is this to be it, then? Have you no further need of my company? */
	+ ~!Dead("Lavok02")~ + @1 /* I do not. Go back to the main chamber and wait for me there. */ + p2
 	+ ~Dead("Lavok02") !Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%) !Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @2 /* I do not. I think it's best if we part ways now. */ + p3
 	+ ~Dead("Lavok") OR(3) Global("Chapter","GLOBAL",%bg2_chapter_4%) Global("Chapter","GLOBAL",%bg2_chapter_5%) Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @2 /* I do not. I think it's best if we part ways now. */ + p4
 	++ @3 /* It was a misunderstanding, nothing more. Let's continue on. */ + p5
END

IF ~~ p2
 SAY @4 /* Very well... as you would have it. */
IF ~~ DO ~SetGlobal("rh#EvaLeftParty","GLOBAL",1) SetGlobal("RH#EvaJoined","GLOBAL",0) EscapeAreaMove("AR0411",2792,2267,3)~ EXIT
END

IF ~~ p3
 SAY @5 /* As you would have it. If you change your mind, I expect you'll find me away from the noise of the city. Perhaps a visit to the circus would be welcome right about now. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",0) EscapeAreaMove("AR0700",3457,1482,10)~ EXIT
END

IF ~~ p4
 SAY @6 /* As you would have it... though at present I've no great desire to stay here. Perhaps we shall meet again. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",0) EscapeAreaMove("AR0700",3457,1482,10)~ EXIT
END

IF ~~ p5
 SAY @7 /* As you would have it. */
IF ~~ DO ~JoinParty()~ EXIT
END

// Waukeen's Promenade

IF ~Global("rh#EvaJoined","GLOBAL",0) AreaCheck("AR0700")~ p6
 SAY @8 /* Well met, <CHARNAME>. Is there anything I can do for you? */
 	++ @9 /* Actually, there is. Would you care to join me again? */ + p7
 	++ @10 /* No, I was just stopping by to say hello. */ + p8
END

IF ~~ p7
 SAY @11 /* I'd like nothing better. Shall we be off? */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p8
 SAY @12 /* Well, I'm glad for your company all the same, fleeting though it may be. */
IF ~~ EXIT
END
END

// ToB

BEGIN RH#EV25P

IF ~Global("rh#EvaJoined","GLOBAL",1)~ p1
 SAY @0 /* Is this to be it, then? Have you no further need of my company? */
 	+ ~!AreaCheck("AR4500") GlobalLT("chapter","GLOBAL",%bg2_chapter_9%)~ + @2 /* I do not. I think it's best if we part ways now. */ + p2
 	+ ~!AreaCheck("AR4500") GlobalGT("chapter","GLOBAL",%bg2_chapter_8%)~ + @2 /* I do not. I think it's best if we part ways now. */ + p3
 	+ ~AreaCheck("AR4500")~ + @2 /* I do not. I think it's best if we part ways now. */ + p4
 	++ @3 /* It was a misunderstanding, nothing more. Let's continue on. */ + p5
END

IF ~~ p2
 SAY @13 /* Part ways, you say... very well. I'll see if I can't make myself useful elsewhere. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",0)  EscapeAreaMove("AR5003",870,550,3)~ EXIT
END

IF ~~ p3
 SAY @13 /* Part ways, you say... very well. I'll see if I can't make myself useful elsewhere. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",0)  EscapeAreaMove("AR5501",650,248,9)~ EXIT
END

IF ~~ p4
 SAY @14 /* Part ways, you say... it doesn't look as if there's much of anywhere for me to go. But so be it, at least for the moment. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",0)~ EXIT
END

IF ~~ p5
 SAY @7 /* As you would have it. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~Global("rh#EvaJoined","GLOBAL",0) AreaCheck("AR4500")~ p6
 SAY @15 /* Well met, <CHARNAME>. I trust you've a need for me now? */
 	++ @16 /* I do. Would you care to join me again? */ + p7
 	++ @10 /* No, I was just stopping by to say hello. */ + p8
END

IF ~~ p7
 SAY @17 /* As much as I enjoy being stranded in the Abyss... yes, I suppose I could make some time for you. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p8
 SAY @18 /* How kind of you to relieve the monotony of this place somewhat. If we're quite finished here, I was in the middle of something. */
IF ~~ EXIT
END

IF ~Global("rh#EvaJoined","GLOBAL",0) !AreaCheck("AR4500")~ p9
 SAY @8 /* Well met, <CHARNAME>. Is there anything I can do for you? */
 	++ @9 /* Actually, there is. Would you care to join me again? */ + p10
 	++ @10 /* No, I was just stopping by to say hello. */ + p11
END

IF ~~ p10
 SAY @19 /* Certainly. I'd prefer not to be a mere spectator in this strange tale of yours. Shall we be off? */
IF ~~ DO ~SetGlobal("rh#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ p11
 SAY @20 /* I'm glad for your company all the same, fleeting though it may be. */
IF ~~ EXIT
END