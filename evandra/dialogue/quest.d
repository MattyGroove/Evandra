// ---------------------------------------------
// Chapter 5
// ---------------------------------------------

// Philomena

BEGIN RH#MENA

CHAIN IF ~Global("rh#EvaPhilomenaTask","GLOBAL",0)~ THEN RH#MENA q1
@0 /* Hold a moment! You're the adventurers that Goldander has asked to dispose of the hellfiend, are you not? I'd like a word with you, if I may. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",1)~
END
	++ @1 /* I am. Is there something I can do for you? */ + q1.1
	++ @2 /* Who are you? You don't appear to be from around here yourself. */ + q1.2
	++ @3 /* Make it quick. I have little time to spare. */ + q1.3

CHAIN RH#MENA q1.1
@4 /* I most certainly hope so. */
END
IF ~~ + q1.4

CHAIN RH#MENA q1.2
@5 /* No... no, I most certainly am not. */
END
IF ~~ + q1.4

CHAIN RH#MENA q1.3
@6 /* Very well. I'll be as brief as I can. */
END
IF ~~ + q1.4

CHAIN RH#MENA q1.4
@7 /* My name is Philomena Moonborn, and I'm afraid I've found myself farther from home than I'd ever thought possible. Farther than you can imagine, perhaps. */
== RH#EVAJ @8 /* Mm, you might be surprised. I know an elf of Silvanesti when I see one. */
== RH#MENA @9 /* Then... I see. By your colors, I take you for the Red Robed wizard who disappeared a year ago. */
== RH#EVAJ @10 /* Only a year, is it? Time moves so strangely at times. */
== RH#MENA @11 /* Perhaps it has been longer by now. I myself couldn't say how much time has passed since my own capture at the hands of those terrible... creatures... that make their home in this dark realm. */
= @12 /* Elves I would call them, but they are like no elves I have ever known. */
END
	++ @13 /* You must be speaking of the drow. They have a city nearby. */ + q1.5
	++ @14 /* How did you come to be captured by drow? I didn't think they raided other planes. */ + q1.6
	++ @15 /* Yes, yes, I'm sure. Why are you bothering me about this? */ + q1.7

CHAIN RH#MENA q1.5
@16 /* Yes... a terrible place I count myself lucky to have escaped from. */
END
IF ~~ + q1.8

CHAIN RH#MENA q1.6
@17 /* The ones I fell afoul of certainly seemed to be consummate Planeswalkers. */
END
IF ~~ + q1.8

CHAIN RH#MENA q1.7
@18 /* Because I have need of aid that I believe you might be in a position to offer. */
END
IF ~~ + q1.8

CHAIN RH#MENA q1.8
@19 /* I was attacked some time ago, just outside of the forests of my homeland, by the crew of a Spelljammer ship. I'd never seen such a thing before, and I dearly hope to never see one again. Why they took me alive, I could not say. Never have I seen such darkness in any being's heart, much less that of an elf. */
= @20 /* Perhaps I should be grateful that their many... perversities... afforded me with an opportunity to escape. They knew me for a mage, but had thought that without my spellbook, I was powerless. In that they were quite mistaken, though I fear my situation has not improved as much as I would like. */
END
	++ @21 /* If you're looking for a way to the surface, I assure you, so are we. */ + q1.9
	++ @22 /* I sympathize with your plight, but what exactly does this have to do with me? */ + q1.10
	++ @23 /* Tragic, I'm sure, but I really don't have time for this. */ EXTERN RH#EVAJ q1.11

CHAIN RH#MENA q1.9
@24 /* No, child. What I'm looking for is a way back to Ansalon, and for that I need my spellbook. */
END
IF ~~ EXTERN RH#EVAJ q1.12

CHAIN RH#MENA q1.10
@25 /* That is quite simple, child. I'd like to find my way back to Ansalon, and for that I need my spellbook. */
END
IF ~~ EXTERN RH#EVAJ q1.12

CHAIN RH#EVAJ q1.11
@26 /* Come now, <CHARNAME>. You have at least a moment or two to spare for her story. What aid were you hoping for, Philomena? */
== RH#MENA @27 /* Aid in returning to Ansalon, and for that I need my spellbook. */
END
IF ~~ EXTERN RH#EVAJ q1.12

CHAIN RH#EVAJ q1.12
@28 /* Your... spellbook? Then I take it you've knowledge of a spell that could return us home? */
== RH#MENA @29 /* I did, yes, at least in theory. House Mystic has access to a great many arcane secrets, though this one I'm afraid is now in the hands of one of those beastly... creatures. */
= @30 /* I dare not set foot in that terrible city again, but I have heard from Goldander that your group is hoping to find a way into the city, so it may be that we can be of mutual use to each other. */
END
	++ @31 /* Perhaps we can be. What do you propose? */ EXTERN RH#MENA q1.13
	++ @32 /* You don't seem to be in a position to offer anything in return. */ EXTERN RH#MENA q1.14
	++ @33 /* I have more important things to do right now, elf. */ EXTERN RH#EVAJ q1.15

CHAIN RH#MENA q1.13
@34 /* I would have you hunt down the drow wizard who stole my spellbook and retrieve it from him. Violently, if necessary... and part of me hopes that it is. */
END
	++ @35 /* First I need to find a way into the city. Could you be of any help there? */ + q1.16
	++ @36 /* I can't make any promises, but I'll look into this if I can. */ + q1.17
	++ @37 /* There has to be an easier way to get your hands on the spell you need. */ + q1.18
	++ @38 /* I've got enough to worry about, lady. I'm not interested. */ EXTERN RH#EVAJ q1.19

CHAIN RH#MENA q1.14
@39 /* You would be surprised. I have any number of items I could offer you in return, though I would need access to my spells to even access the dimension I've locked them away in. */
END
IF ~~ + q1.13

CHAIN RH#EVAJ q1.15
@40 /* That may be true, but the tasks may ultimately be linked. What would you have us do, Philomena? */
END
IF ~~ EXTERN RH#MENA q1.13

CHAIN RH#MENA q1.16
@41 /* You have an illusionist at your side as it is. If her skills are not sufficient for the task, you will need to rely upon whatever solution Goldander means to provide. */
END
	++ @42 /* Very well. I can't make any promises, but I'll look into this if I can. */ + q1.17
	++ @37 /* There has to be an easier way to get your hands on the spell you need. */ + q1.18
	++ @38 /* I've got enough to worry about, lady. I'm not interested. */ EXTERN RH#EVAJ q1.19

CHAIN RH#MENA q1.17
@43 /* I'm glad to hear it. I don't know where in the city the wizard might be, but you may find some clue to his whereabouts by speaking with the captain of the spelljammer ship in the upper level of the city. The fiend will be looking for new crew members, no doubt, after what happened to the old ones. */
= @44 /* Good luck, and if you discover anything, you will be able to find me here, at least for the moment. */ 
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",2)
AddJournalEntry(@45 /* An Unlikely Encounter

An elven woman called Philomena has asked for my help in retrieving her stolen spellbook. I have agreed to look for it. */,QUEST)~
EXIT

CHAIN RH#MENA q1.18
@46 /* I couldn't say. This is the only means I know of. */
END
	++ @35 /* First I need to find a way into the city. Could you be of any help there? */ + q1.16
	++ @36 /* I can't make any promises, but I'll look into this if I can. */ + q1.17
	++ @38 /* I've got enough to worry about, lady. I'm not interested. */ EXTERN RH#EVAJ q1.19

CHAIN RH#EVAJ q1.19
@47 /* You may not be, <CHARNAME>, but if there's a planar transportation spell in her spellbook, I most certainly am. */
END
	++ @48 /* Oh, very well. I suppose it wouldn't hurt to try. */ EXTERN RH#MENA q1.17
	++ @49 /* We can hunt down the spell she's talking about after Irenicus is dealt with. */ + q1.20

CHAIN RH#EVAJ q1.20
@50 /* I... very well. I do hope it's as easy as you seem to think it is. */ 
== RH#MENA @51 /* If that is your decision, so be it. I shall seek out what I need elsewhere. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",20)
AddJournalEntry(@52 /* An Unlikely Encounter

An elven woman called Philomena asked for my help in retrieving her stolen spellbook. I turned her down. */,QUEST_DONE) EscapeAreaDestroy(5)~
EXIT

// Evandra

CHAIN IF ~Global("rh#EvaPhilomenaTalks","GLOBAL",2)~ THEN RH#EVAJ q2
@53 /* Philomena Moonborn... the Silvanesti are reclusive at the best of times, but this one I do remember. I'm surprised she was willing to treat with us at all. */
DO ~SetGlobal("rh#EvaPhilomenaTalks","GLOBAL",3)~
END
	++ @54 /* Why wouldn't she have been? Do you know her? */ + q2.1
	++ @55 /* I thought you'd be happier to meet one of your long lost people. */ + q2.2
	++ @56 /* I don't think she had much in the way of alternatives. */ + q2.3
	++ @57 /* If you could deliberate on it in silence, I'd much appreciate it. */ + q2.4

APPEND RH#EVAJ

IF ~~ q2.1
 SAY @58 /* Oh, yes. At least by reputation. */
IF ~~ + q2.5
END

IF ~~ q2.2
 SAY @59 /* A Silvanesti elf hardly counts, and Philomena... I remember her being even less tolerable than many. */
IF ~~ + q2.5
END

IF ~~ q2.3
 SAY @60 /* No, I suppose not. How unfortunate for her. */
IF ~~ + q2.5
END

IF ~~ q2.4
 SAY @61 /* I... very well. As you wish. */
IF ~~ EXIT
END

IF ~~ q2.5
 SAY @62 /* I only met her once, several decades ago, right after I'd been assigned the responsibility of overseeing the Testing of young elven candidates. It's always the Red Robed illusionists who craft the Test, you see, and I was the first elf in living memory to dedicate myself to such... questionable... magics. That made me the ideal option for such a role. */
 = @63 /* The elves didn't see it like that, of course. They were scandalized, particularly the Silvanesti. They seldom step foot out of their forests, but Philomena... oh, she came to complain about the decision in person. It didn't change anything, but I'm sure it made her feel sufficiently righteous. */
 = @64 /* She refused to so much as look at me then. Strange how different things seem now. */
	++ @65 /* You sound bitter, Evandra. Very bitter. */ + q2.6
	++ @66 /* We don't need to help her if you don't want to. */ + q2.7
	++ @67 /* Maybe this will be an opportunity to make her see things differently. */ + q2.8
	++ @68 /* Enough. What matters now is finishing this task for Goldander. */ + q2.9
END

IF ~~ q2.6
 SAY @69 /* About Philomena? Not really. Amused, more likely. I enjoy the irony. */
IF ~~ + q2.10
END

IF ~~ q2.7
 SAY @70 /* Oh, I do want to, <CHARNAME>. I enjoy the irony. */
IF ~~ + q2.10
END

IF ~~ q2.8
 SAY @71 /* Oh, I very much doubt it, but I can still enjoy the irony. */
IF ~~ + q2.10
END

IF ~~ q2.9
 SAY @72 /* I... of course. We can deal with this afterwards. */
IF ~~ EXIT
END

IF ~~ q2.10
 SAY @73 /* To have someone like this in my debt, and to obtain access to some of the secret magic of House Mystic in the process... that's a tantalizing prospect, to say the very least. */
 = @335 /* I'm sure that sounds very petty, and I won't deny that it is, but this is not the sort of thing that happens to me every day. For it to happen here of all places... your world grows stranger by the minute. */
	++ @336 /* As do your motivations, Evandra. You ought to reconsider them. */ + q2.11
	++ @337 /* Well, I'm glad you've found something to enjoy down here */ + q2.12
	++ @338 /* This isn't the time to get distracted by figments of the past. */ + q2.13
END

IF ~~ q2.11
 SAY @339 /* Perhaps eventually, but not just yet. */
IF ~~ EXIT
END

IF ~~ q2.12
 SAY @340 /* For the moment, at least. I doubt retrieving her spellbook is going to be all that enjoyable at all. */
IF ~~ EXIT
END

IF ~~ q2.13
 SAY @341 /* Perhaps not, but it's hard to avoid in situations like this. */
IF ~~ EXIT
END
END

// Spelljammer Drow

CHAIN IF WEIGHT #-1 ~Global("rh#EvaPhilomenaTask","GLOBAL",2)~ THEN DADROW18 q3
@74 /* Greetings to you, <MALEFEMALE>. You like the look of my ship? A fine astral vessel. Been working the flows since I hijacked this rig in Krynnspace twenty years ago. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",3)~
= @75 /* Just came back from another raid in Krynn myself. Fair booty, although the ship took more damage than expected. Ah, after some repairs, she'll be fine. */
= @76 /* You the adventuring sort, <MALEFEMALE>? If you're still in Ust Natha in a month or so, maybe you'll join up? After what happened with that blasted Krynnish elf, I could use a turnover in my crew. */
END
	++ @77 /* I might be interested. What can I expect? */ + q3.1
	++ @78 /* Have you had problems with your current crew? */ + q3.2
	++ @79 /* I have other matters to attend to right now. */ + 3

CHAIN DADROW18 q3.1
@80 /* Loot beyond your wildest dreams, <MALEFEMALE>, and sometimes a bit of good sport to go with it. You look like the sort who'd appreciate a good challenge, and not cry when you bite off more than you can chew. */ 
END
IF ~~ + q3.3

CHAIN DADROW18 q3.2
@81 /* They cost me a great deal of face with the Handmaidens, and I didn't have much to spare in the first place. You look like a more sensible sort, <MALEFEMALE>, though I've been wrong before. */
END
IF ~~ + q3.3

CHAIN DADROW18 q3.3
@82 /* I'll tell you what. Go speak to my second if you're thinking this might be the life for you. Iymril's his name, and you should be able to find the bastard trading stories in the tavern this time of day. */
= @83 /* He'll have better advice for a rookie than I could offer. The days when I thought the Underdark was all there was to the world are long behind me now. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",4)
AddJournalEntry(@84 /* An Unlikely Encounter

The Spelljammer drow has recommended that I go to the Ust Natha tavern and speak to a drow called Iymril, if I wish to join his crew in the future. This may be an opportunity to find out where Philomena's spellbook has ended up. */,QUEST)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#EvaPhilomenaTask","GLOBAL",3)~ THEN DADROW18 q3.4
@85 /* Greetings to you, <MALEFEMALE>. Come to look at my ship again, have you? A finer astral vessel you won't be able to find. */
= @86 /* Have you put more thought into joining up one of these days? I could use the extra crew. */
END
	++ @77 /* I might be interested. What can I expect? */ + q3.1
	++ @78 /* Have you had problems with your current crew? */ + q3.2
	++ @79 /* I have other matters to attend to right now. */ + 3

// Iymril & Tebryn

BEGIN RH#DROW1
BEGIN RH#DROW2

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",0)~ THEN RH#DROW1 q4
@87 /* Greetings, <MALEFEMALE>. Whatever you want, it can wait until I've finished my drink. If I put it down now, my good friend here will no doubt finish it for me. */
== RH#DROW2 @88 /* Pfeh. I have as little interest in your drink as I do your company, Iymril. */
== RH#DROW1 @89 /* Still sulking about that elven bitch that got away? One day you'll offend the wrong person with your sullenness. */
DO ~SetGlobal("rh#EvaTebrynIymril","GLOBAL",1)~
END
	++ @90 /* That day may come sooner than either of you think. I came here seeking information, not foolish banter. */ + q4.1
	++ @91 /* You are Iymril, are you not? I was told to speak to you about joining the spelljamming crew. */ + q4.2
	++ @92 /* I think I'll go find someone else to talk to. */ EXTERN RH#DROW2 q4.3

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",0)~ THEN RH#DROW2 q4
@93 /* Whatever you want, <MALEFEMALE>, I suggest you seek it elsewhere. I'm not in the mood for conversation. */
EXIT

CHAIN RH#DROW1 q4.1
@94 /* Hah! The Nasadran has some teeth, I see. Very well. If I don't have to worry about my drink disappearing, I might as well trade some words with you. */
END
IF ~~ + q4.2

CHAIN RH#DROW1 q4.2
@95 /* If the captain told you to seek me out, that must mean he's seriously considering taking you on. Usually he makes his own decisions about his crew, but having us put you to the test isn't a bad strategy. */
== RH#DROW2 @96 /* Indeed. If he'd shown that wisdom the last time he decided to hire new crewmates, our last voyage wouldn't have been such a disaster. */
== RH#DROW1 @97 /* Aside from the trouble caused by your runaway slave, there was no disaster at all. */
END
	++ @98 /* What type of drow mage can't keep a lowly slave from escaping? */ EXTERN RH#DROW2 q4.4
	++ @99 /* Successful in what way? What type of loot can be expected from these spelljamming adventures? */ EXTERN RH#DROW1 q4.5
	++ @100 /* What happened on your last adventure? Nothing good, from the looks of it. */ EXTERN RH#DROW1 q4.6

CHAIN RH#DROW2 q4.3
@101 /* Yes, you do that. */
EXIT

CHAIN RH#DROW2 q4.4
@102 /* The type that you're going to have to impress if you want a place on the captain's ship, fool. */
== RH#DROW1 @103 /* Hah! There are other ways for an up-and-comer to prove <HIMHER>self, Tebryn. Ways that you might not like so much. */
END
	++ @104 /* Why would I want to? What type of loot can be expected from these spelljamming adventures? */ EXTERN RH#DROW1 q4.5
	++ @105 /* The wizard doesn't seem to like much of anything. Was your last voyage really that fruitless? */ EXTERN RH#DROW1 q4.6

CHAIN RH#DROW1 q4.5
@106 /* Anything you could imagine, <MALEFEMALE>. Our last trip was to a world called Krynn... the place was rich in gold and magic, but poorer in defense than you might assume. */
END
IF ~~ + q4.7

CHAIN RH#DROW1 q4.6
@107 /* Don't let Tebryn's foul mood fool you, <MALEFEMALE>. Our last trip was to a world called Krynn... the place was rich in gold and magic, but poorer in defense than you might assume. */
END
IF ~~ + q4.7

CHAIN RH#DROW1 q4.7
@108 /* We made our way to the edge of an elven forest, and the scum was as satisfying a prey on that distant world as they would have been on our own. They didn't know who we were, of course, but if I have my way, one day knowledge and fear of the drow will be common on all planes, not just this one. */
= @109 /* Is that something you think you'd be interested in, <MALEFEMALE>? */
END
	++ @110 /* That depends on the spoils. What did you find of interest on Krynn? */ + q4.8
	++ @111 /* What I'm interested in is my position in this city. What recognition does your crew have? */ + q4.9
	++ @112 /* You paint an intriguing picture, Iymril. There must be some catch. */ + q4.10

CHAIN RH#DROW1 q4.8
@113 /* Magical items, slaves... most of whom we sold to the markets, though Tebryn here kept one, hoping to torture arcane secrets out of her. That didn't end well. */
END
IF ~~ EXTERN RH#DROW2 q4.11

CHAIN RH#DROW1 q4.9
@114 /* Pfeh. Not as much as we deserve, but the benefits usually outweigh the costs. Except for Tebryn here, who thought he could torture arcane secrets out of an elven mage. That didn't end well. */
END
IF ~~ EXTERN RH#DROW2 q4.11

CHAIN RH#DROW1 q4.10
@115 /* No catch, or at least not most of the time. The benefits usually outweigh the costs, unless you're a fool like Tebryn here, who thought he could torture arcane secrets out of an elven mage. That didn't end well. */
END
IF ~~ EXTERN RH#DROW2 q4.11

CHAIN RH#DROW2 q4.11
@116 /* If you're trying to goad me into a fight, you may yet succeed. Perhaps it's high time that the captain appointed a new second in command. */
DO ~SetGlobal("rh#EvaTebrynIymril","GLOBAL",2)~
== RH#DROW1 @117 /* You'd need to redeem yourself in his eyes first, Tebryn, but it seems that an opportunity has presented itself. Veldrin of Ched Nasad, if you'd like a place on our spelljamming crew, prove that you deserve one. Have a mage of your own face off against mine in the fighting pits and we'll see just how things play out. */
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN @118 /* I would be more than willing to take up this particular challenge, Veldrin. */
== RH#DROW2 @119 /* So be it. I'll destroy one of the Nasadran sycophants, and then we'll have a nice, long talk of our own, Iymril. */
END
	+ ~Class(Player1,MAGE_ALL)~ + @120 /* You'll regret your words, scum. I will see to that myself. */ EXTERN RH#DROW1 q4.12
	+ ~Class(Player2,MAGE_ALL)~ + @121 /* Very well. <PLAYER2> will accept your challenge. */  EXTERN RH#DROW1 q4.13
	+ ~Class(Player3,MAGE_ALL)~ + @122 /* Very well. <PLAYER3> will accept your challenge. */  EXTERN RH#DROW1 q4.14
	+ ~Class(Player4,MAGE_ALL)~ + @123 /* Very well. <PLAYER4> will accept your challenge. */  EXTERN RH#DROW1 q4.15
	+ ~Class(Player5,MAGE_ALL)~ + @124 /* Very well. <PLAYER5> will accept your challenge. */  EXTERN RH#DROW1 q4.16
	+ ~Class(Player6,MAGE_ALL)~ + @125 /* Very well. <PLAYER6> will accept your challenge. */  EXTERN RH#DROW1 q4.17
	++ @126 /* I'm not interested in a duel at this time. */ EXTERN RH#DROW2 q4.18

CHAIN RH#DROW1 q4.12
@127 /* As you wish. I'll inform Sondal that he has a most unexpected treat in store. */
DO ~StartCutSceneMode()
SetGlobal("DuelOn","AR2202",1)
SetGlobal("rh#PlayerDuelingTebryn","GLOBAL",1)
SetGlobal("rh#EvaTebrynIymril","GLOBAL",3)
StartCombatCounter()
FadeToColor([20.0],0)
Wait(1)
ActionOverride("rh#drow2",JumpToPoint([744.1305]))
ActionOverride(Player1,JumpToPoint([949.1338]))
ActionOverride("rh#drow2",Enemy())
Wait(1)
MoveViewPoint([949.1338],100)
FadeFromColor([20.0],0)
EndCutSceneMode()~
EXIT

CHAIN RH#DROW1 q4.13
@127 /* As you wish. I'll inform Sondal that he has a most unexpected treat in store. */
DO ~StartCutSceneMode()
SetGlobal("DuelOn","AR2202",1)
SetGlobal("rh#PlayerDuelingTebryn","GLOBAL",2)
SetGlobal("rh#EvaTebrynIymril","GLOBAL",3)
StartCombatCounter()
FadeToColor([20.0],0)
Wait(1)
ActionOverride("rh#drow2",JumpToPoint([744.1305]))
ActionOverride(Player2,JumpToPoint([949.1338]))
ActionOverride("rh#drow2",Enemy())
Wait(1)
MoveViewPoint([949.1338],100)
FadeFromColor([20.0],0)
EndCutSceneMode()~
EXIT

CHAIN RH#DROW1 q4.14
@127 /* As you wish. I'll inform Sondal that he has a most unexpected treat in store. */
DO ~StartCutSceneMode()
SetGlobal("DuelOn","AR2202",1)
SetGlobal("rh#PlayerDuelingTebryn","GLOBAL",3)
SetGlobal("rh#EvaTebrynIymril","GLOBAL",3)
StartCombatCounter()
FadeToColor([20.0],0)
Wait(1)
ActionOverride("rh#drow2",JumpToPoint([744.1305]))
ActionOverride(Player3,JumpToPoint([949.1338]))
ActionOverride("rh#drow2",Enemy())
Wait(1)
MoveViewPoint([949.1338],100)
FadeFromColor([20.0],0)
EndCutSceneMode()~
EXIT

CHAIN RH#DROW1 q4.15
@127 /* As you wish. I'll inform Sondal that he has a most unexpected treat in store. */
DO ~StartCutSceneMode()
SetGlobal("DuelOn","AR2202",1)
SetGlobal("rh#PlayerDuelingTebryn","GLOBAL",4)
SetGlobal("rh#EvaTebrynIymril","GLOBAL",3)
StartCombatCounter()
FadeToColor([20.0],0)
Wait(1)
ActionOverride("rh#drow2",JumpToPoint([744.1305]))
ActionOverride(Player4,JumpToPoint([949.1338]))
ActionOverride("rh#drow2",Enemy())
Wait(1)
MoveViewPoint([949.1338],100)
FadeFromColor([20.0],0)
EndCutSceneMode()~
EXIT

CHAIN RH#DROW1 q4.16
@127 /* As you wish. I'll inform Sondal that he has a most unexpected treat in store. */
DO ~StartCutSceneMode()
SetGlobal("DuelOn","AR2202",1)
SetGlobal("rh#PlayerDuelingTebryn","GLOBAL",5)
SetGlobal("rh#EvaTebrynIymril","GLOBAL",3)
StartCombatCounter()
FadeToColor([20.0],0)
Wait(1)
ActionOverride("rh#drow2",JumpToPoint([744.1305]))
ActionOverride(Player5,JumpToPoint([949.1338]))
ActionOverride("rh#drow2",Enemy())
Wait(1)
MoveViewPoint([949.1338],100)
FadeFromColor([20.0],0)
EndCutSceneMode()~
EXIT

CHAIN RH#DROW1 q4.17
@127 /* As you wish. I'll inform Sondal that he has a most unexpected treat in store. */
DO ~StartCutSceneMode()
SetGlobal("DuelOn","AR2202",1)
SetGlobal("rh#PlayerDuelingTebryn","GLOBAL",6)
SetGlobal("rh#EvaTebrynIymril","GLOBAL",3)
StartCombatCounter()
FadeToColor([20.0],0)
Wait(1)
ActionOverride("rh#drow2",JumpToPoint([744.1305]))
ActionOverride(Player6,JumpToPoint([949.1338]))
ActionOverride("rh#drow2",Enemy())
Wait(1)
MoveViewPoint([949.1338],100)
FadeFromColor([20.0],0)
EndCutSceneMode()~
EXIT

CHAIN RH#DROW2 q4.18
@128 /* Pfeh. You are as cowardly as I expected. If you change your mind, you know where to find me. */
EXIT

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",1)~ THEN RH#DROW2 q4.19
@129 /* I'm no more interested in your company than I was before, Nasadran. */
END
IF ~~ EXTERN RH#DROW1 q4.19

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",1)~ THEN RH#DROW1 q4.19
@130 /* I take it you want something, <MALEFEMALE>? */
END
	++ @131 /* You're Iymril, are you not? I was told to speak to you about joining the spelljamming crew. */ + q4.2
	++ @132 /* Not at all. I was just leaving. */ EXTERN RH#DROW2 q4.3

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",2)~ THEN RH#DROW1 q4.20
@133 /* I had hoped to see you again, Veldrin. Have you reconsidered my challenge? */
== RH#DROW2 @134 /* The fool will no doubt see fit to crawl away from it again. */
END
	+ ~Class(Player1,MAGE_ALL)~ + @120 /* You'll regret your words, scum. I will see to that myself. */ EXTERN RH#DROW1 q4.12
	+ ~Class(Player2,MAGE_ALL)~ + @121 /* Very well. <PLAYER2> will accept your challenge. */  EXTERN RH#DROW1 q4.13
	+ ~Class(Player3,MAGE_ALL)~ + @122 /* Very well. <PLAYER3> will accept your challenge. */  EXTERN RH#DROW1 q4.14
	+ ~Class(Player4,MAGE_ALL)~ + @123 /* Very well. <PLAYER4> will accept your challenge. */  EXTERN RH#DROW1 q4.15
	+ ~Class(Player5,MAGE_ALL)~ + @124 /* Very well. <PLAYER5> will accept your challenge. */  EXTERN RH#DROW1 q4.16
	+ ~Class(Player6,MAGE_ALL)~ + @125 /* Very well. <PLAYER6> will accept your challenge. */  EXTERN RH#DROW1 q4.17
	++ @126 /* I'm not interested in a duel at this time. */ EXTERN RH#DROW2 q4.18

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",2)~ THEN RH#DROW2 q4.20
@135 /* You're back. Did you bring your backbone with you this time, or will you see fit to crawl away from a challenge again? */
END
	+ ~Class(Player1,MAGE_ALL)~ + @120 /* You'll regret your words, scum. I will see to that myself. */ EXTERN RH#DROW1 q4.12
	+ ~Class(Player2,MAGE_ALL)~ + @136 /* Very well. <Player2> will accept your challenge. */  EXTERN RH#DROW1 q4.13
	+ ~Class(Player3,MAGE_ALL)~ + @137 /* Very well. <Player3> will accept your challenge. */  EXTERN RH#DROW1 q4.14
	+ ~Class(Player4,MAGE_ALL)~ + @138 /* Very well. <Player4> will accept your challenge. */  EXTERN RH#DROW1 q4.15
	+ ~Class(Player5,MAGE_ALL)~ + @139 /* Very well. <Player5> will accept your challenge. */  EXTERN RH#DROW1 q4.16
	+ ~Class(Player6,MAGE_ALL)~ + @140 /* Very well. <Player6> will accept your challenge. */  EXTERN RH#DROW1 q4.17
	++ @126 /* I'm not interested in a duel at this time. */ EXTERN RH#DROW2 q4.18

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",4)~ THEN RH#DROW1 q4.21
@141 /* It seems we've finally found a wizard worthy of replacing Tebryn, and not a day too soon. The fool was a liability, but too valuable to let go to waste. */
= @142 /* You have my congratulations, and you're also welcome to Tebryn's possessions. Consider it your first share of the loot we're sure to reap together. */
END
	++ @143 /* This was a set up from the beginning, wasn't it? */ + q4.22
	++ @144 /* I have other business to attend to. Your ship will have to wait. */ + q4.23
	++ @145 /* How soon can we leave? There are places I'd like to see. */ + q4.24

CHAIN RH#DROW1 q4.22
@146 /* It was a test, and you've managed to pass it. Now I suggest you iron out the details with the captain. */
END
IF ~~ + q4.25

CHAIN RH#DROW1 q4.23
@147 /* Our ship will not be ready to take off for some time yet, but I suggest you iron out the details with the captain. */
END
IF ~~ + q4.25

CHAIN RH#DROW1 q4.24
@148 /* Hah! I like your attitude, but our ship won't be ready to take off for some time yet. In the meantime, I suggest you iron out the details with the captain. */
END
IF ~~ + q4.25

CHAIN RH#DROW1 q4.25
@149 /* We'll meet again soon enough, <MALEFEMALE>, and then may all the planes quake in fear. */
DO ~SetGlobal("rh#EvaTebrynIymril","GLOBAL",5)
GiveItemCreate("rh#mena",Player1,1,0,0)
GiveItemCreate("scrl7t",Player1,1,0,0)
GiveItemCreate("scrl7o",Player1,1,0,0)
AddJournalEntry(@150 /* An Unlikely Encounter

The wizard Tebryn has been defeated and Philomena's spellbook retrieved. I shall need to return to the svirfneblin village to inform her of what has happened. */,QUEST)
EscapeAreaDestroy(5)~
EXIT

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",7)~ THEN RH#DROW2 q4.26
@151 /* Pathetic, as I expected. If Iymril wishes to further waste his time on you fools, he's welcome to do so, but it's high time that I had a word with my captain. */
DO ~SetGlobal("rh#EvaTebrynIymril","GLOBAL",8)
AddJournalEntry(@152 /* An Unlikely Encounter

I was challenged to a duel by the crew of the drow astral ship, and I lost. I'm unlikely to get another chance to retrieve Philomena's spellbook. I shall need to inform her of what has happened. */,QUEST)
EscapeAreaDestroy(5)~
EXIT

CHAIN IF ~Global("rh#EvaTebrynIymril","GLOBAL",8)~ THEN RH#DROW1 q4.27
@153 /* I have no further interest in you, <MALEFEMALE>. Begone. */
EXIT

// Spelljammer Drow

CHAIN IF WEIGHT #-1 ~Global("rh#EvaTebrynIymril","GLOBAL",5)~ THEN DADROW18 q4.28
@154 /* Ahh, Veldrin. Iymril has told me that you'll make a fine replacement for that fool wizard. Come back in a month or so and this ship of mine should be ready to fly. Until then, I've got work to do here. */
DO ~SetGlobal("rh#EvaTebrynIymril","GLOBAL",6)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("rh#EvaTebrynIymril","GLOBAL",8)~ THEN DADROW18 q4.29
@155 /* I remember you, <MALEFEMALE>. Tebryn told me you challenged him to a spot on my ship and lost. I don't have much use for failures, so you'll need to find work elsewhere. */
DO ~SetGlobal("rh#EvaTebrynIymril","GLOBAL",9)~
EXIT

// Evandra

CHAIN IF ~Global("rh#EvaPhilomenaTalks","GLOBAL",4)~ THEN RH#EVAJ q5
@156 /* By Lunitari, I could put up with this constant intrigue for a tenday or two, but I can't imagine spending a lifetime playing these games. */
DO ~SetGlobal("rh#EvaPhilomenaTalks","GLOBAL",5)~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @157 /* The machinations of a handful of males hardly count as intrigue, female. You have seen precious little of what it means to be drow today. */
== RH#EVAJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @158 /* Perhaps not, but I've seen all I need to. */
== RH#EVAJ @159 /* But never mind that. This spellbook of Philomena's... with a bit of luck I might be able to decipher it in time, but I'm not overly optimistic. And truth be told, I would feel too much like that drow wizard we just faced if I tried. */
= @160 /* We might as well return it to Philomena. I'm sure she's getting anxious by now anyway. */
END
	++ @161 /* Are you alright? You didn't seem very happy back there. */ + q5.1
	++ @162 /* If you want to study it, we don't need to return it at all. */ + q5.2
	++ @163 /* We'll pay Philomena a visit as soon as we can. */ + q5.3
	++ @164 /* This isn't the time or place for a conversation, Evandra. */ + q5.4

APPEND RH#EVAJ

IF ~~ q5.1
 SAY @165 /* I'm fine, Veldrin. This city is simply... troubling. */
IF ~~ + q5.5
END

IF ~~ q5.2
 SAY @166 /* I... no. Under other circumstances, I might have, but not here. */
IF ~~ + q5.5
END

IF ~~ q5.3
 SAY @167 /* I'm glad to hear it. This place is making me feel... almost ill. */
IF ~~ + q5.5
END

IF ~~ q5.4
 SAY @168 /* I... you're right, of course. My apologies, Veldrin. */
IF ~~ EXIT
END

IF ~~ q5.5
 SAY @169 /* It's strange to think of how lucky I was, how gentle my own arrival on this plane was compared to what it might have been. I'd been relishing the idea of having a Silvanesti mage in my debt, of seeing her knocked down a rung or two, but now... */
 = @170 /* I wonder if there are others here. Other elven victims of this spelljammer raid, trapped within this city... unable to get away like Philomena did. */
	++ @171 /* If there are, there's nothing we can do about it. */ + q5.6
	++ @172 /* I'm sorry to say it, but I doubt they're still alive. */ + q5.7
	++ @173 /* We can visit the slave pens, if you want to look. */ + q5.8
	++ @174 /* I wish we could save all the slaves in this city. */ + q5.9
END

IF ~~ q5.6
 SAY @175 /* I know. I wish it were otherwise, but I know how high the stakes are here. */
IF ~~ + q5.10
END

IF ~~ q5.7
 SAY @176 /* I know. And perhaps... perhaps that is for the best, in the end. */
IF ~~ + q5.10
END

IF ~~ q5.8
 SAY @177 /* I... I doubt there's much hope. Not at this point. */
IF ~~ + q5.10
END

IF ~~ q5.9
 SAY @178 /* A noble goal, though not a very realistic one, I'm afraid. */
IF ~~ + q5.10
END

IF ~~ q5.10
 SAY @179 /* If we can get away from the city for a short time, I think I would appreciate that. And if we can return this book to Philomena in the process, I'd appreciate that even more. */
IF ~~ EXIT
END
END

// Return to Philomena

CHAIN IF ~!Global("PlayerLooksLikeDrow","GLOBAL",1) InParty("rh#Eva") IsGabber("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaMena","GLOBAL",0)~ THEN RH#MENA q6
@180 /* I thank you for your assistance, Mistress Evandra, but you know as well as I do that any further discourse between the two of us would be... inappropriate. */
DO ~SetGlobal("rh#EvaMena","GLOBAL",1)~
== RH#EVAJ @181 /* Yes... yes. I understand that all too well. */
== RH#MENA @182 /* I'm sure you do. Excuse me. */
EXIT

CHAIN IF ~Global("PlayerLooksLikeDrow","GLOBAL",1) Global("rh#PhilomenaDrow","GLOBAL",0)~ THEN RH#MENA q6.1
@183 /* Yet more of you vicious creatures!? If you think to take me by surprise again, I assure you, you're sorely mistaken! */
DO ~SetGlobal("rh#PhilomenaDrow","GLOBAL",1)~
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN @184 /* Philomena, calm down. This is an illusion, nothing more. You do remember who we are, don't you? */
== RH#MENA IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ THEN @185 /* I... yes. Yes, of course. My apologies for the... confusion. */
END
	+ ~OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + @186 /* Pay no attention to the illusion. I'm still <CHARNAME>. */ + q6.2
	+ ~OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + @187 /* Let's not be rash, now. Did you want your spellbook back or not? */ + q6.2
	IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + q6.3

CHAIN RH#MENA q6.2
@188 /* You... <CHARNAME>? I... of course. My apologies for the... confusion. */
END
IF ~~ + q6.3

CHAIN IF ~OR(2) !Global("PlayerLooksLikeDrow","GLOBAL",1) Global("rh#PhilomenaDrow","GLOBAL",1)~ THEN RH#MENA q6.3
@189 /* Have you any news for me? I hope that your presence here is more than a mere courtesy visit. */
END
	+ ~PartyHasItem("rh#mena")~ + @190 /* I do. The drow mage is dead and your spellbook recovered. */ + q6.4
	+ ~PartyHasItem("rh#mena")~ + @191 /* I have your spellbook, though it seems quite valuable. What can you offer in exchange? */ + q6.5
	+ ~GlobalGT("rh#EvaTebrynIymril","GLOBAL",6)~ + @192 /* We challenged the drow wizard to a duel and failed. I don't expect to get a second chance. */ + q6.6
	+ ~!PartyHasItem("rh#mena")~ + @193 /* Not at present, I'm afraid. */ + q6.7

CHAIN RH#MENA q6.4
@194 /* I... I see. I couldn't say which piece of news gladdens me more, but if you'll return my spellbook now, I would be happy to reward you for your troubles. */ 
END
	IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ EXTERN RH#EVAJ q6.8
	IF ~OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + q6.9

CHAIN RH#MENA q6.5
@195 /* I... see. I hadn't expected you to be so mercenary, but you needn't be concerned about your reward. I'm more than willing to compensate you for your troubles. */ 
END
	IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ EXTERN RH#EVAJ q6.8
	IF ~OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + q6.9

CHAIN RH#MENA q6.6
@196 /* I see. That is... unfortunate. Thank you for letting me know, but I suppose there's nothing more to be said. I shall need to find my own way home. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",30)
EraseJournalEntry(@45)
EraseJournalEntry(@84)
EraseJournalEntry(@150)
EraseJournalEntry(@152)
AddJournalEntry(@197 /* An Unlikely Encounter

I was unable to help Philomena retrieve her stolen spellbook. She has chosen to seek her own way home. */,QUEST_DONE) EscapeAreaDestroy(5)~
EXIT

CHAIN RH#MENA q6.7
@198 /* I see. In that case, I don't think there's much more to be said right now. */ 
EXIT

CHAIN RH#EVAJ q6.8
@199 /* I trust that includes sharing with us whatever spell you mean to use to return to Ansalon. I would be lying if I said I wasn't *deeply* interested. */
== RH#MENA @200 /* Divulging any secret of House Mystic to a dark elf... you ask a great deal, exile. */
== RH#EVAJ @201 /* I could always keep the entire book instead. */
== RH#MENA @202 /* I... very well. I suppose a compromise would be reasonable here. */
= @203 /* A spell for the Red Robe and a Tome of Clear Thought for the rest of the party. Do we have an agreement? */
END
	++ @204 /* Yes, that would be more than acceptable. */ DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",10)~  EXTERN RH#MENA q6.10
	++ @205 /* I'm afraid not, Philomena. You're on your own. */ EXTERN RH#MENA q6.13

CHAIN RH#MENA q6.9
@206 /* I can offer you a Tome of Clear Thought in exchange, as soon as I have my spellbook back. Do we have an agreement? */ 
END
	++ @204 /* Yes, that would be more than acceptable. */ DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",15)~ + q6.10
	++ @205 /* I'm afraid not, Philomena. You're on your own. */ + q6.13

CHAIN RH#MENA q6.10
@207 /* Marvelous. My thanks once again, <CHARNAME>... I hadn't expected to find allies in a world as alien as this one. I'm grateful to have been proven wrong. */
DO ~TakePartyItem("rh#mena") GiveItemCreate("book06",Player1,1,0,0)~
END
IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + q6.11
IF ~OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ + q6.12

CHAIN RH#MENA q6.11
@208 /* As for you, Evandra... I'll teach you the spell, though keep in mind that planar transportation requires a focus to work properly. For our world, any piece of metal will do, as long as it has been bathed in the breath of a dragon. */
== RH#EVAJ @209 /* I see. That is... quite the complication. */
== RH#MENA IF ~Dead("udsilver")~ THEN @210 /* Given that your group slew the silver dragon that lived not far from here, yes, I dare say it is. */
== RH#MENA IF ~!Dead("udsilver")~ THEN @211 /* I've been to speak with the silver dragon that lives not too far from here. She's amenable to helping, but in your case, she requires that you complete her task first. */
== RH#EVAJ IF ~!Dead("udsilver")~ THEN @212 /* Yes, she does seem very good at guarding her interests. */
== RH#MENA IF ~!Dead("udsilver")~ THEN @213 /* So it would seem. */
END
IF ~~ + q6.12

CHAIN RH#MENA q6.12
@214 /* Now if you'll excuse me, it's time that I take my leave of you now. Another moment in this strange, darkened realm would be one too many. */
DO ~EraseJournalEntry(@45)
EraseJournalEntry(@84)
EraseJournalEntry(@150)
EraseJournalEntry(@152)
AddJournalEntry(@215 /* An Unlikely Encounter

I have returned Philomena's spellbook to her, and she has presumably returned to her own world. I do not expect to see her again. */,QUEST_DONE)
ForceSpell(Myself,DRYAD_TELEPORT)~
EXIT

CHAIN RH#MENA q6.13
@216 /* That is... unfortunate. I'd thought better of you, but I am not so desperate that I would attempt to change your mind. I shall need to find my own way home. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",25)
EraseJournalEntry(@45)
EraseJournalEntry(@84)
EraseJournalEntry(@150)
EraseJournalEntry(@152)
AddJournalEntry(@217 /* An Unlikely Encounter

I have chosen to keep Philomena's spellbook for myself. I shall need to decide whether to sell it or attempt to unlock its secrets. */,QUEST_DONE)
EscapeAreaDestroy(5)~
END
IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID)~ EXTERN RH#EVAJ q6.14
IF ~OR(3) !InParty("rh#Eva") !InMyArea("rh#Eva") StateCheck("rh#Eva",CD_STATE_NOTVALID)~ EXIT 

CHAIN RH#EVAJ q6.14
@218 /* Perhaps in time I'll be able to make sense of her spellbook, but I have my doubts. I hope you have a good reason for this decision, <CHARNAME>, as you may well have just condemned the both of us. */
EXIT

// Evandra

CHAIN IF WEIGHT #-1 ~Global("rh#EvaPhilomenaTalks","GLOBAL",6)~ THEN RH#EVAJ q7
@219 /* What a strange encounter. I would have expected to feel somewhat more nostalgic about it now, but... I don't know, <CHARNAME>. I suppose I'm just glad that it's over. */
DO ~SetGlobal("rh#EvaPhilomenaTalks","GLOBAL",7)~
END
	++ @220 /* What do you mean? What was strange about it? */ + q7.1
	++ @221 /* Perhaps you've already used up all your nostalgia. */ + q7.2
	++ @222 /* Just a little bit longer and you'll be able to go home yourself. */ + q7.3
	++ @223 /* So am I. There are other things we need to focus on. */ + q7.4

APPEND RH#EVAJ

IF ~~ q7.1
 SAY @224 /* Aside from the obvious... I'm not quite sure where to start. */
IF ~Race(Player1,ELF)~ + q7.5
IF ~!Race(Player1,ELF)~ + q7.6
END

IF ~~ q7.2
 SAY @225 /* (laugh) I would not have thought that possible, but you may be right. */
IF ~Race(Player1,ELF)~ + q7.5
IF ~!Race(Player1,ELF)~ + q7.6
END

IF ~~ q7.3
 SAY @226 /* Yes... and that is almost as strange a thought in its own way. */
IF ~Race(Player1,ELF)~ + q7.5
IF ~!Race(Player1,ELF)~ + q7.6
END

IF ~~ q7.4
 SAY @227 /* Yes... yes. I suppose there are. */
IF ~~ EXIT
END

IF ~~ q7.5
 SAY @228 /* I don't know when it happened, <CHARNAME>, but I look at you and then I look at Philomena, and it's *you* that I feel the stronger bonds of kinship with. I wouldn't have expected that to happen, much less so quickly, but I can't deny that it has. */
IF ~~ + q7.6
END

IF ~~ q7.6
 SAY @229 /* Perhaps it would be different if it had been one of my own people instead of our Silvanesti cousins who needed help, but... I don't know how to describe it, except to say that there's a disconnect there now. */
	++ @230 /* Are you no longer sure that you want to go back at all? */ + q7.7
	++ @231 /* You didn't seem to feel like this when we first met her. */ + q7.8
	++ @232 /* It looks to me like there always was a disconnect there. */ + q7.9
	++ @233 /* What do you expect? She was barely willing to talk to you. */ + q7.10
END

IF ~~ q7.7
 SAY @234 /* Go back to what? That is what I'm wondering now. */
IF ~~ + q7.11
END

IF ~~ q7.8
 SAY @235 /* I didn't. Not at first, and not in the drow city, but now... hm. */
IF ~~ + q7.11
END

IF ~~ q7.9
 SAY @236 /* Of a sort, yes, there always was, but now... hm. */
IF ~~ + q7.11
END

IF ~~ q7.10
 SAY @237 /* That would have bothered me more once, but now... hm. */
IF ~~ + q7.11
END

IF ~~ q7.11
 SAY @238 /* Here I am, so close to being able to return home, and yet Ansalon has never felt so far away, <CHARNAME>, so much like a distant dream. I'm not sure how else to describe it. */
 = @239 /* She called me dark elf, and I didn't even care. Once upon a time, I would have. */
	++ @240 /* I would call this an improvement, Evandra. */ + q7.12
	++ @241 /* Well, I certainly cared on your behalf. */ + q7.13
	++ @242 /* You don't need to make any decisions. Not yet. */ + q7.14
	++ @243 /* Does this mean no more stories about Ansalon? */ + q7.15
END

IF ~~ q7.12
 SAY @244 /* Would you? Hopefully you're right about that. */
IF ~~ + q7.16
END

IF ~~ q7.13
 SAY @245 /* Did you? That is kind, but... really unnecessary. */
IF ~~ + q7.16
END

IF ~~ q7.14
 SAY @246 /* I know. And I'm not planning to. */
IF ~~ + q7.16
END

IF ~~ q7.15
 SAY @247 /* I... I don't know. It certainly might mean less of them. */
IF ~~ + q7.16
END

IF ~~ q7.16
 SAY @248 /* But come, there's no need to stand here and worry about something like this. I know that there's plenty more to do before our tasks down here are finished. */
IF ~~ EXIT
END
END

// Adalon

I_C_T UDSILVER 43 adalon
== RH#EVAJ IF ~InParty("rh#Eva") InMyArea("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaPhilomenaTask","GLOBAL",10)~ THEN
@249 /* If I might interject, my lady, I would ask for an additional boon... I've need of your help if I mean to travel back to Ansalon. */
== UDSILVER @250 /* So I have heard. I shall grant you your request as well, and then we shall put this behind us once and for all. */
DO ~SetGlobal("rh#EvaPhilomenaTask","GLOBAL",11)
SetGlobal("rh#EvaKnightsTask","GLOBAL",1)~ 
END

// ---------------------------------------------
// Chapter 6
// ---------------------------------------------

CHAIN IF WEIGHT #-1 ~Global("rh#EvaKnights","GLOBAL",2)~ THEN RH#EVAJ q8
@251 /* It's a pity Philomena wasn't still here to meet Elhan... she might have found it instructive. With suspicion like that, I would almost think I was back home in Ansalon again. */
DO ~SetGlobal("rh#EvaKnights","GLOBAL",3)~ 
END
	++ @252 /* There was a reason for it this time, at least. */ + q8.1
	++ @253 /* Don't expect much courtesy from the elves of this realm either. */ + q8.2
	++ @254 /* Did they order you to do chores for them there too? */ + q8.3
	++ @255 /* We don't have time to talk. We need to find Bodhi. */ + q8.4

APPEND RH#EVAJ

IF ~~ q8.1
 SAY @256 /* Perhaps, but it still caught me almost by surprise. */
IF ~Race(Player1,ELF)~ + q8.5
IF ~!Race(Player1,ELF)~ + q8.16
END

IF ~~ q8.2
 SAY @257 /* Mm, perhaps in the end there isn't much difference between them and my own people. */
IF ~Race(Player1,ELF)~ + q8.5
IF ~!Race(Player1,ELF)~ + q8.16
END

IF ~~ q8.3
 SAY @258 /* Well... no. Not exactly. There was never any need for that. */
IF ~Race(Player1,ELF)~ + q8.5
IF ~!Race(Player1,ELF)~ + q8.16
END

IF ~~ q8.4
 SAY @259 /* I know, but before we do that, I do have a request. */
 = @260 /* If we've a moment to spare once we get to Athkatla, I'd like to visit the Radiant Heart. I've no intention of returning to Ansalon just yet myself, but the Knights of Solamnia have been here long enough. */
IF ~~ + q8.17
END

IF ~~ q8.5
 SAY @261 /* I would like to give Elhan and his people the benefit of the doubt, to think that they would have shown better manners to their own kin under more favorable circumstances, but it's a poor first impression all the same. */
 = @262 /* I wonder if they can tell just by looking at us that we're not exactly typical elves of this realm. */
	++ @263 /* I don't think it would have mattered one way or the other. */ + q8.6
	++ @264 /* Well, neither of us could pass for a wood elf of Suldanessellar. */ + q8.7
	++ @265 /* Hopefully they'll be more accomodating in the future. */ + q8.8
	++ @266 /* I wouldn't want to be a typical elf. Or a typical anything. */ + q8.9
END

IF ~~ q8.6
 SAY @267 /* All things considered, I suppose not. */
IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.10
IF ~!Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.16
END

IF ~~ q8.7
 SAY @268 /* Hm. I suppose that's a good point as well. */
IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.10
IF ~!Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.16
END

IF ~~ q8.8
 SAY @269 /* For your sake as well as mine, I hope so as well. */
IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.10
IF ~!Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.16
END

IF ~~ q8.9
 SAY @270 /* (laugh) No, I suppose not. */
IF ~Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.10
IF ~!Global("rh#EvaRomanceActive","GLOBAL",2)~ + q8.16
END

IF ~~ q8.10
 SAY @271 /* Once we retrieve your soul from Irenicus, <CHARNAME>... I'd like to think that we'll both find some welcome amongst the elves of your realm, but I'm beginning to wonder if that's not overly optimistic. It may well be that wandering and exile is all either of us can really hope for, in the end. */
 = @272 /* In a way, perhaps that would even be easier. If there were nothing to tie us anywhere in particular, and if you were interested as well, this spell that the Lady Adalon gave me... I wouldn't think twice about using it. */
	++ @273 /* An intriguing option. We'll need to consider it. */ + q8.11
	++ @274 /* I think we're getting ahead of ourselves a little bit, Evandra. */ + q8.12
	++ @275 /* Are you inviting me to return to Ansalon with you? */ + q8.13
	++ @276 /* One beleaguered city is unfriendly and you're ready to leave Faerûn? */ + q8.14
END

IF ~~ q8.11
 SAY @277 /* Yes, I imagine we will. */
IF ~~ + q8.15
END

IF ~~ q8.12
 SAY @278 /* Probably, but it's an option worth considering all the same. */
IF ~~ + q8.15
END

IF ~~ q8.13
 SAY @279 /* I might be. At the very least, it's an option worth considering. */
IF ~~ + q8.15
END

IF ~~ q8.14
 SAY @280 /* Not quite yet, but I think it's an option worth considering. */
IF ~~ + q8.15
END

IF ~~ q8.15
 SAY @281 /* But for now, it's one I'd like to offer to someone a little different. If we've a moment to spare once we get to Athkatla, I'd like to visit the Radiant Heart. You and I can discuss this later, but the Knights of Solamnia have been here long enough. */
IF ~~ + q8.17
END

IF ~~ q8.16
 SAY @282 /* Regardless, Suldanessellar is something to be worried about later. For now, if we've a moment to spare once we get to Athkatla, I'd like to visit the Radiant Heart. I've no intention of returning to Ansalon just yet myself, but the Knights of Solamnia have been here long enough. */
IF ~~ + q8.17
END

IF ~~ q8.17
 SAY @283 /* It's time, I think, to send them home. */
IF ~~ DO ~AddJournalEntry(@284 /* Homecoming

Evandra wishes to pay the Knights of Solamnia a visit at the Order of the Radiant Heart. If all goes to plan, she will be able to send them home. */,QUEST)~ EXIT
END
END

// Prelate

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaKnights","GLOBAL",3) Global("PaladinOrder","GLOBAL",1)~ THEN HPRELATE q9
@285 /* <CHARNAME>... I am pleased to welcome a member of the Order back amongst us. You seem well. Have you business with me? */
DO ~IncrementGlobal("rh#EvaKnights","GLOBAL",1)~
END
IF ~~ THEN EXTERN RH#EVAJ q9.3

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaKnights","GLOBAL",3) !Global("PaladinOrder","GLOBAL",1)
ReputationGT(LastTalkedToBy,9)~ THEN HPRELATE q9.1
@286 /* Ah, <CHARNAME>... I greet you on behalf of the Order of the Radiant Heart. Be welcome here in our hall. Do you have business with the Order? */
DO ~IncrementGlobal("rh#EvaKnights","GLOBAL",1)~
END
IF ~~ THEN EXTERN RH#EVAJ q9.3

CHAIN IF WEIGHT #-1 ~InParty("rh#Eva") !StateCheck("rh#Eva",CD_STATE_NOTVALID) Global("rh#EvaKnights","GLOBAL",3) !Global("PaladinOrder","GLOBAL",1) 
ReputationLT(LastTalkedToBy,10)~ THEN HPRELATE q9.2
@287 /* <CHARNAME>. I greet a slithering viper with the promise of justice by my blade. Give me one good reason why you should not be cut down where you stand! */
DO ~IncrementGlobal("rh#EvaKnights","GLOBAL",1)~
== RH#EVAJ @288 /* Ah... I asked <PRO_HIMHER> to come here, Prelate. We've tidings for the Knights of Solamnia. Are they in Athkatla at present? */
== HPRELATE @289 /* Tidings, you say. They are here, though they have little enough reason to pay heed to anything a company as disreputable as yours might say. */
== RH#EVAJ @290 /* They can decide that for themselves, I'm sure. */
END
IF ~~ THEN EXTERN HPRELATE q9.4

CHAIN RH#EVAJ q9.3
@291 /* I happen to, actually, though specifically with the Knights of Solamnia. Are they in Athkatla at present? */
== HPRELATE @292 /* You are in luck, as they only just returned from their first mission with the Order and have not yet been dispatched again. Would you have them summoned here? */
== RH#EVAJ @293 /* I would, thank you. */
END
IF ~~ THEN EXTERN HPRELATE q9.4

CHAIN HPRELATE q9.4
@294 /* Very well. Wait here a moment longer while I send for them. */
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#evct1")~
EXIT

// Knights of Solamnia

BEGIN RH#SOL01
BEGIN RH#SOL02
BEGIN RH#SOL03

CHAIN IF ~Global("rh#EvaKnights","GLOBAL",5)~ THEN RH#SOL01 q10
@295 /* Mistress Evandra. Forgive my bewilderment, but I had not expected to see you again so soon... if at all. */
DO ~IncrementGlobal("rh#EvaKnights","GLOBAL",1)~
== RH#EVAJ @296 /* I've been elevated to "Mistress Evandra," have I? Once upon a time, you wouldn't have even wanted to use my name. */
== RH#SOL01 @297 /* Much has changed, Evandra. I trust that your visit here to<DAYNIGHT> is about more than rekindling old grudges? */
== RH#EVAJ @298 /* Perhaps... but perhaps not. I have such a difficult time with this type of decision, you know. */
== RH#SOL03 @299 /* Ladies, if you please. This bickering is most unbecoming. */
== KELDORJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID) InMyArea("Keldorn")~ THEN @300 /* Aye, particularly in the headquarters of the Radiant Heart. Evandra, you are better than this. */
== RH#EVAJ @301 /* I... of course. My apologies. */
= @302 /* Reyna, Onvo, Ancan, I came here to let you know that I've discovered the means to return you all to Ansalon... if that is still your wish, of course. */
== RH#SOL01 @303 /* It is. Whatever good we can do with the Order of the Radiant Heart, it is not where we belong. */
== RH#EVAJ @304 /* Hm. I almost envy you the ease of your decision. */
== RH#SOL02 @305 /* Evandra, do you not mean to return home yourself as well? */
== RH#EVAJ @306 /* I've other matters to attend to at the moment, Onvo. After that... well, one thing at a time. */
= @307 /* <CHARNAME>, it may take some time to properly prepare this ritual. If you'd rather not wait, you needn't feel obligated to stay. */
END
	+ ~Class(Player1,MAGE_ALL)~ + @308 /* Perhaps it would go quicker if I helped you. */ EXTERN RH#EVAJ q10.1
	++ @309 /* I would rather not separate the group at this point. I can wait. */ EXTERN RH#EVAJ q10.2
	++ @310 /* Very well, I'll see you again once you've finished here. */ EXTERN RH#EVAJ q10.3

CHAIN RH#EVAJ q10.1
@311 /* Yes, I suppose it would. Now, if you're ready to begin, we can get started. */
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#evct2")~
EXIT

CHAIN RH#EVAJ q10.2
@312 /* Good. I was hoping you would say that. Now, I suppose it's time to begin. */
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("rh#evct3")~
EXIT

CHAIN RH#EVAJ q10.3
@313 /* As you wish. Farewell, <CHARNAME>. Once I'm finished here, look for me in Waukeen's Promenade. A bit of diversion would be welcome right about now. */
DO ~SetGlobal("RH#EvaJoined","GLOBAL",0) SetGlobal("rh#EvaKnights","GLOBAL",10) LeaveParty() ActionOverride("rh#sol01",EscapeAreaDestroy(5)) ActionOverride("rh#sol02",EscapeAreaDestroy(5)) ActionOverride("rh#sol03",EscapeAreaDestroy(5)) EscapeAreaMove("AR0700",3457,1482,10)
EraseJournalEntry(@284)
AddJournalEntry(@314 /* Homecoming

Evandra has returned the Knights of Solamnia to their homeworld, though I did not have the time to stay around and watch. */,QUEST_DONE)~
EXIT

CHAIN RH#EVAJ q10.4
@314 /* Homecoming

Evandra has returned the Knights of Solamnia to their homeworld, though I did not have the time to stay around and watch. */
EXIT

// Evandra
CHAIN IF WEIGHT #-1 ~Global("rh#EvaKnights","GLOBAL",7)~ THEN RH#EVAJ q11
@315 /* That was simpler than I expected it to be... simpler and considerably neater. I can tell that it was successful, though: Reyna and the others have returned to Ansalon now. */
= @316 /* First Philomena, and now these three as well... I almost feel like I've been left behind, <CHARNAME>. Or perhaps it's the other way around in the end. */
DO ~IncrementGlobal("rh#EvaKnights","GLOBAL",1)
AddexperienceParty(60000)
EraseJournalEntry(@284)
AddJournalEntry(@317 /* Homecoming

The Knights of Solamnia have been returned to their homeworld, thanks to the ritual that Evandra learned in the Underdark. */,QUEST_DONE)~
END
	++ @318 /* You could have returned and told them yourself, Evandra. */ + q11.1
	+ ~Global("OrderFightBodhi","GLOBAL",0) !Dead("c6bodhi")~ + @319 /* That's finished, then. I suppose we can move on now? */ + q11.2
	+ ~OR(2) GlobalGT("OrderFightBodhi","GLOBAL",0) Dead("c6bodhi")~ + @319 /* That's finished, then. I suppose we can move on now? */ + q11.3

CHAIN RH#EVAJ q11.1
@320 /* And missed the chance to see the city of the elves? Even if I were willing to abandon you, <CHARNAME>, I would like to see Suldanessellar first. */
== RH#EVAJ IF ~Global("OrderFightBodhi","GLOBAL",0) !Dead("c6bodhi")~ THEN @321 /* Though before that, there is the matter of the vampire. I'd suggest speaking with the prelate again--he may be willing to offer us help. */
EXIT

APPEND RH#EVAJ

IF ~~ q11.2
 SAY @322 /* Yes, though I would suggest speaking with the prelate again first. He may be willing to offer help in the fight against Bodhi. */
IF ~~ EXIT
END

IF ~~ q11.3
 SAY @323 /* With pleasure, <CHARNAME>. There's nothing I'd like to see more than Suldanessellar right now. */
IF ~~ EXIT
END
END

// Prelate
CHAIN IF WEIGHT #-1 ~Global("rh#EvaKnights","GLOBAL",8)~ THEN HPRELATE q12
@324 /* Your actions this day have been very noble, my friends. The Solamnics were skilled warriors, and we shall miss their service, but I expect that their own world has need of them as well. */
END
IF ~OR(2) GlobalGT("OrderFightBodhi","GLOBAL",0) Dead("c6bodhi")~ THEN EXTERN HPRELATE q12.1
IF ~Global("OrderFightBodhi","GLOBAL",0) !Dead("c6bodhi")~ THEN EXTERN HPRELATE q12.2

CHAIN HPRELATE q12.1
@325 /* If there is nothing else, I bid you farewell. */
EXIT

CHAIN HPRELATE q12.2
@326 /* Was there anything else I could help you with? */
END
+ ~Global("WorkingForBodhi","GLOBAL",0)~ + @327 /* There was. I must do battle with a powerful coven of vampires in this city, and I ask for the Order's assistance. */ + 35
+ ~Global("WorkingForBodhi","GLOBAL",1)~ + @327 /* There was. I must do battle with a powerful coven of vampires in this city, and I ask for the Order's assistance. */ + 36
++ @328 /* There was nothing else. Another time, Prelate. */ + 37

// Waukeen's Promenade

CHAIN IF WEIGHT #-1 ~Global("rh#EvaJoined","GLOBAL",0) Global("rh#EvaKnights","GLOBAL",10)~ THEN RH#EVAP q13
@329 /* Well met, <CHARNAME>. I was wondering when I would see you. You missed quite the ritual, but all that matters is that it was successful in the end. */
DO ~SetGlobal("rh#EvaKnights","GLOBAL",11)~
= @330 /* In any case, I suppose it's time to be off once more. */
END
	++ @331 /* Indeed, it is. Let's get going. */ + q13.1
	++ @332 /* I'm afraid not. Stay here a while longer. */ + q13.2

APPEND RH#EVAP

IF ~~ q13.1
 SAY @333 /* Gladly. */
IF ~~ DO ~SetGlobal("RH#EvaJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ q13.2
 SAY @334 /* Very well... if that's what you desire. */
IF ~~ EXIT
END
END