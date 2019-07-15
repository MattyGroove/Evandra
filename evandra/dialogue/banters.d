BEGIN BRH#EVA

// ---------------------------------------------
// Evandra Initiated
// ---------------------------------------------

// Minsc #2
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType([FOREST])
Global("rh#EvaMinsc2","GLOBAL",0)~ THEN BRH#EVA minsc2
@0 /* Ahh, the forest is always such a pleasant change of scenery. Would that we could come here more often. */
DO ~SetGlobal("rh#EvaMinsc2","GLOBAL",1)~
== BMINSC @1 /* Do you hear that, Boo? The little elf likes the forest almost as much as you do! */
== BRH#EVA @2 /* (laugh) Be careful with him here. If he scurried off into the brush, I dare say we'd never find him again. */
== BMINSC @3 /* Aye, if he were to get lost... it worries me sometimes. */
== BRH#EVA @4 /* Perhaps a tracking spell of some sort... */
== BMINSC @5 /* A spell, you say? I do not know, my friend. I do not think it wise to enchant a giant space hamster. */
== BRH#EVA @6 /* As you wish. It was just a thought. */
== BMINSC @7 /* And I thank you for it, but come! Boo wishes to see those flowers a little closer... */
EXIT

// Edwina
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Gender("Edwin",FEMALE)
Global("rh#EvaEdwina","GLOBAL",0)~ THEN BRH#EVA edwina
@8 /* Edwin, come here a moment. I wanted to show you something. */
DO ~SetGlobal("rh#EvaEdwina","GLOBAL",1)~
== BEDWIN @9 /* Whatever clever remark you intend to make about my condition, wench, I assure you, I am NOT interested. */
== BRH#EVA @10 /* Your--? Oh, yes, I'd almost forgotten. I'd have dispelled that by now, but to each her own, I suppose. */
== BEDWIN @11 /* Do you think I haven't TRIED to dispell it, you imbecile?! And what do you mean, you'd almost forgotten? */
== BRH#EVA @12 /* I mean I don't particularly care. */
== BEDWIN @13 /* Gah! I would almost prefer mockery to this... this insipid indifference! How can you not particularly care?! */
== BRH#EVA @14 /* If you really want mockery, I'm sure I could oblige. Though I imagine you've already learned to be careful what you wish for. */
== BEDWIN @15 /* Enough! Away with you, you elven trollop! (How long will I have to PUT UP with this?!) */
EXIT

// Aerie #2
CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaAerie2","GLOBAL",0)~ THEN BRH#EVA aerie2
@16 /* Aerie, dear, do stop shuffling your feet so. You're a mage, not a frightened child. Could you not try to act the part? */
DO ~SetGlobal("rh#EvaAerie2","GLOBAL",1)~
== BAERIE @17 /* I-I'm sorry! I try to be dignified, but it's so hard sometimes. */ 
== BRH#EVA @18 /* I know, but that's when it's most important. */
= @19 /* We're strangers in a land that loathes magic, Aerie--never forget that. Show weakness and they will bury you for it. */
== BAERIE @20 /* That's a sad way of looking at things. */
== BRH#EVA @21 /* People fear what they do not understand, and often enough we give them good reason for that. */
== BAERIE @22 /* Shouldn't we be trying to change that? */
== BRH#EVA @23 /* To what end? It only takes one wizard of the sort <CHARNAME> is hunting to remind everyone what we're truly capable of. */
== BAERIE @24 /* B-but that doesn't mean we shouldn't try. */
== BRH#EVA @25 /* My advice stands either way--they won't respect you if you don't first give them reason to. */ 
== BAERIE @26 /* I... I'll try to remember that. */
EXIT

// Anomen #2
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Alignment("Anomen",LAWFUL_NEUTRAL)
Global("rh#EvaAnomen2","GLOBAL",0)~ THEN BRH#EVA anomen2
@27 /* I know little of the ways of knights. This test of yours, what form does it take? */
DO ~SetGlobal("rh#EvaAnomen2","GLOBAL",1)~
== BANOMEN @28 /* Your curiosity does you credit, my lady. The road to knighthood is long indeed, but the trial itself is a simple thing, or so I have been told. */
= @29 /* When the time comes, I shall present myself before the prelate, and he shall pass judgment on whether I merit knighthood. */
== BRH#EVA @30 /* I see. I admit, I was expecting something more along the lines of trial by combat. */
== BANOMEN @31 /* By Helm, woman! We are not barbarians. A squire must prove himself through his deeds before he is even invited to be tested, but the trial is of his spirit, not his skill. */
== BRH#EVA @32 /* Then there is no penalty for failure? */
== BANOMEN @33 /* Aye, one who fails is cast out of the Order. An ignominious fate, to be sure, but the standards of the Radiant Heart are most demanding. */
== BRH#EVA @34 /* Hm. I'd assumed it was more than a formality, but I suppose there is some sense in that as well. */
== BANOMEN @35 /* Bah! 'Tis far more than mere formality, though I suppose I must forgive you your ignorance of such matters. */
= @36 /* But come, the hour grows late, and we have wasted enough time here as it is. */
EXIT

// Viconia #2
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(OUTDOOR)
TimeOfDay(DAY)
Global("rh#EvaViconia2","GLOBAL",0)~ THEN BRH#EVA viconia2
@37 /* Never have I seen someone flinch away from the sky like you do, Viconia. */
DO ~SetGlobal("rh#EvaViconia2","GLOBAL",1)~
== BVICONI @38 /* I do not flinch, girl. */
== BRH#EVA @39 /* You certainly don't seem to like it. */
== BVICONI @40 /* Hmph. What is there to like? Your sun tears the mystery from your world, leaving it dull and barren. */
= @41 /* That surfacers could find such a thing beautiful... pfeh! The rivvin know not what true beauty is. */
== BRH#EVA @42 /* A strange sentiment. */
== BVICONI @43 /* You will find much about me strange, darthiir. I suggest you get used to it. */
EXIT

// Valygar #2
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaValygar2","GLOBAL",0)~ THEN BRH#EVA valygar2
@44 /* Your family must have a great number of magical artifacts, Valygar. */
DO ~SetGlobal("rh#EvaValygar2","GLOBAL",1)~
== BVALYGA @45 /* We did, yes. */
== BRH#EVA @46 /* But no longer, I take it. */
== BVALYGA @47 /* No. */
== BRH#EVA @48 /* Are you always this... expressive? */
== BVALYGA @49 /* I don't trust your interest, elf. */
== BRH#EVA @50 /* Wizards like your ancestor are a danger, Valygar. To everyone. The more we know about them, the better we can prepare. */
== BVALYGA @51 /* Hmm. */
== BRH#EVA @52 /* I see. I'll... give you time to think about it, I suppose. */
EXIT

// Keldorn #1
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaKeldorn","GLOBAL",0)~ THEN BRH#EVA keldorn1
@53 /* Keldorn, if you please... your eyes are resting on me far more often than I would like. */
DO ~SetGlobal("rh#EvaKeldorn","GLOBAL",1)~
== BKELDOR @54 /* I pay you no more mind than I would any of our companions, my lady. Perhaps there is something weighing on your conscience? */
== BRH#EVA @55 /* My conscience is clearer than you might think. */
== BKELDOR @56 /* Then you should take my regard for what it is: concern for a comrade in arms and nothing more. */
== BRH#EVA @57 /* You've no fear of magic? */
== BKELDOR @58 /* Nay, a wizard may serve either good or evil, but magic itself is a mere tool. This land's demeanor towards mages is unwise, I fear. */
== BRH#EVA @59 /* You are... not what I was expecting. */
== BKELDOR @60 /* I know little of the world you left behind, Evandra, but if there is aught I can do to ease your transition to this one, you need only ask. */
EXIT

// Nalia #2
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaNalia2","GLOBAL",0)~ THEN BRH#EVA nalia2
@61 /* Nalia, how extensively have you been trained in magical theory? */
DO ~SetGlobal("rh#EvaNalia2","GLOBAL",1)~
== BNALIA @62 /* Quite extensively, of course. Why do you ask? */
== BRH#EVA @63 /* Because the source of magic appears to be somewhat... different here than in my own realm. */
= @64 /* I haven't drawn on power without knowing what I was doing since I was a child. It's disconcerting. */
== BNALIA @65 /* Do you mean to tell me that you don't have the Weave in your world? */
== BRH#EVA @66 /* No, we don't. As I said, magic works differently here. Any light you could shed on the matter would be quite appreciated. */
== BNALIA @67 /* Oh! Oh, I see. Of course, Evandra, I would be happy to help you in whatever way I can. */
EXIT

// Haerdalis #2
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHaerdalis","GLOBAL",1)~ THEN BRH#EVA haerdalis2
@68 /* They say that to travel the planes is to travel the innermost reaches of one's own mind, to know oneself as surely as one knows the multiverse. Have you found that to be true? */
DO ~SetGlobal("rh#EvaHaerdalis","GLOBAL",2)~ 
== BHAERDA @69 /* Why, 'twould depend upon the plane. There are some that are born of madness, dangling over the edge of chaos, and to visit them would be to lose one's very self. */
= @70 /* But what one learns in the losing... aye, there is some truth to what you say, I think. */ 
== BRH#EVA @71 /* Hm. I had not thought of it that way before. */
== BHAERDA @72 /* Your gaze grows most thoughtful, my mockingbird. I dare say that something you understand of what I speak. */
== BRH#EVA @73 /* Something, yes. I've always thought that knowledge was worth any price, but listening to you... I'm no longer so sure. */
= @74 /* Truly, Haer'dalis, you're unlike any bard I've ever met before. */
== BHAERDA @75 /* Aye, half-elven though I be, this sparrow sings a song far removed from any one might hear in yon woodland realm. */
= @76 /* But come, let us away. The hour grows late, and there is yet much to do before this <DAYNIGHT> is through. */
EXIT

// Yoshimo #2
CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaYoshimo","GLOBAL",1)~ THEN BRH#EVA yoshimo2
@77 /* Where did you get that ring? I don't believe I've seen it before. */
DO ~SetGlobal("rh#EvaYoshimo","GLOBAL",2)~
== BYOSHIM @78 /* Ahh... nowhere in particular, m'lady. */
== BRH#EVA @79 /* No-one in particular, you mean. */
= @80 /* It's a useful skill, I think. I can trick and charm my way into and out of problems, but if I tried to slip my hand into someone's pocket, I doubt it would end very well. */
== BYOSHIM @81 /* Ha! Remind me not to play cards with you, my friend. I have a feeling the numbers might change before my very eyes. */
== BRH#EVA @82 /* Ohh, I am better at cheating than that. */
== BYOSHIM @83 /* Then I must consider myself doubly warned! You are a tricky one, dear elf. */
== BRH#EVA @84 /* High praise, I think, given the source. */
== BYOSHIM @85 /* Most high praise, indeed. But come, my lovely, let us see if I can teach you something of the rogue's trade, and may the gods have mercy upon us all! */
EXIT

// Anomen #3a
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",LAWFUL_GOOD)
Global("rh#EvaAnomenCheck","GLOBAL",1)
Global("rh#EvaAnomen1","GLOBAL",1)
Global("rh#EvaAnomen3","GLOBAL",0)~ THEN BRH#EVA anomen3a
@86 /* I've never seen a knighting before, Anomen. For all your talk, I must say I was expecting something rather more... grandiose. */
DO ~SetGlobal("rh#EvaAnomen3","GLOBAL",1)~
== BANOMEN @87 /* Aye, there is often considerably more ceremony involved, but I fear the Order's resources are spread thinly at the moment. */ 
== BRH#EVA @88 /* That's unfortunate, though I suppose it can't be help. */
== BANOMEN @89 /* Indeed it cannot, though your interest is flattering all the same. Am I to understand that you would have liked to attend such a celebration? */
== BRH#EVA @90 /* Most certainly. I find human functions of all types intriguing, and something like this... well. I can't imagine ever being invited to one. */
== BANOMEN @91 /* By Helm, my lady, you speak of us as if we were beasts to be studied! Such comments are most unworthy of you. */ 
== BRH#EVA @92 /* I would think they were just worthy enough, but come, let's move on, lest I scandalize you further. */
EXIT

// Anomen #3b
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",CHAOTIC_NEUTRAL)
Global("rh#EvaAnomenCheck","GLOBAL",1)
Global("rh#EvaAnomen1","GLOBAL",1)
Global("rh#EvaAnomen3","GLOBAL",0)~ THEN BRH#EVA anomen3b
@93 /* Self-knowledge is a bitter thing, isn't it? */
DO ~SetGlobal("rh#EvaAnomen3","GLOBAL",1)~
== BANOMEN @94 /* Bah! What would you know of it? */
== BRH#EVA @95 /* More than you might realize, my friend. */
== BANOMEN @96 /* You would call me friend, Evandra? After such terrible failure? I do not need your charity. */
== BRH#EVA @97 /* Nor my advice, I'm sure, but as long as we share a party you shall have them both. */
== BANOMEN @98 /* Pfeh! I will hear no more of this. Leave me in peace, woman. */
EXIT

// Cernd #2
CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaCernd2","GLOBAL",0)~ THEN BRH#EVA cernd2
@99 /* I seldom meet humans as devoted to the wilds as you are, Cernd. Particularly amongst city-folk. */ 
DO ~SetGlobal("rh#EvaCernd2","GLOBAL",1)~
== BCERND @100 /* Children of the great cities seldom hear the Earthmother's call. I fear that many of the ills that plague them stem from this deafness. */
== BRH#EVA @101 /* When I was younger, I would have agreed with that. Now... I'm not so sure. */
== BCERND @102 /* An unusual sentiment, coming from an elf. */
== BRH#EVA @103 /* We're far from perfect, you know. At best, I think we simply trade one set of ills for another. */
== BCERND @104 /* There is a harmony to all things, my friend. All is interconnected, and it may well be that disbalance in one area has a deeper effect than we could imagine. */ 
== BRH#EVA @105 /* Hmm. An interesting hypothesis, to be sure. If only there were a way to test it. */
EXIT

// Jan #2
CHAIN IF ~InParty("Jan")
See("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaJan2","GLOBAL",0)~ THEN BRH#EVA jan2
@106 /* Jan! You... what are you doing? */
DO ~SetGlobal("rh#EvaJan2","GLOBAL",1)~
== BJAN @107 /* Why, I'm glad you asked, my dear girl. You see, this here is one of my newest inventions: the clabbertrap, I call it. */
== BRH#EVA @108 /* Yes, but... what is it? What does it do? */
== BJAN @109 /* What does it do, she asks! What do you think it does? */
== BRH#EVA @110 /* I haven't a clue. If I did, I wouldn't be asking. */
== BJAN @111 /* I say, Evie, I would have expected more imagination from you. But I suppose my great aunt Griselda had the right of it when she questioned what they were teaching at all these secretive mage academies. A homegrown wizard, she used to say, would always end up with twice the practical education of a tower trained mage. */
= @112 /* A truly terrible thing, what happened to her. */ 
== BRH#EVA @113 /* What happened to her? */
== BJAN @114 /* Why, nothing, of course. Lived to the ripe old age of 387 and died in her sleep. */
== BRH#EVA @115 /* What's so terrible about that? */
== BJAN @116 /* Really, Evie, why does everything have to be terrible with you? Not every story ends in tragedy, you know. */
== BRH#EVA @117 /* I... no. I don't care. I've heard enough. */
== BJAN @118 /* Are you sure you didn't want to try out the clabbertrap? */
= @119 /* Huh. I guess not. */
EXIT

// Edwin #2
CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Gender("Edwin",MALE)
Global("rh#EvaEdwin","GLOBAL",1)~ THEN BRH#EVA edwin2
@120 /* Edwin, I've heard that your country is ruled by wizards. Is that common in Faerûn? */
DO ~SetGlobal("rh#EvaEdwin","GLOBAL",2)~
== BEDWIN @121 /* Not as common as it ought to be, but even that failing will no doubt be remedied in time. (Yes, one day they shall all bow.) */
== BRH#EVA @122 /* I see. That seems like it would be an awful lot of work and distraction for no real gain. */
== BEDWIN @123 /* What are you babbling about, woman? */
== BRH#EVA @124 /* Our power lies in our magic, not in how many kingdoms we can wrap around our fingers. I've really never seen the point of such nonsense. Better to stand apart, I think. */
== BEDWIN @125 /* Hmph. And when those kingdoms decide that magic poses a threat and come to stamp it out? How well does your ridiculous policy of isolation work then, girl? */
== BRH#EVA @126 /* ... Not terribly well, I admit. */
== BEDWIN @127 /* I didn't think so. */
EXIT

// Nalia #3
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
OR(3)
Global("Chapter","GLOBAL",%bg2_chapter_2%)
Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("Chapter","GLOBAL",%bg2_chapter_6%)
Global("rh#EvaNalia1","GLOBAL",1)
Global("rh#EvaNalia2","GLOBAL",1)
Global("rh#EvaNalia3","GLOBAL",0)~ THEN BRH#EVA nalia3
@128 /* This can't have been a very pleasant place to grow up studying the Art, Nalia. Particularly for one of your station. */
DO ~SetGlobal("rh#EvaNalia3","GLOBAL",1)~
== BNALIA @129 /* If it weren't for my station, I wouldn't have been able to afford my studies in the first place. The poor don't have the means to buy off the Cowled Wizards. */
== BRH#EVA @130 /* And nobody has ever questioned your choice of vocation? */
== BNALIA @131 /* Well, I wouldn't say that. According to Aunty, needlepoint would have been a far more appropriate hobby to take up, and plenty of people agreed with her. */
== BRH#EVA @132 /* (laugh) Strange that anyone would consider it a hobby. */
== BNALIA @133 /* If you knew the nobility better, you wouldn't think it strange at all. Everything is a game of one sort or another. */
== BRH#EVA @134 /* Mm. That would explain any number of things. */
== BNALIA @135 /* About the state of this country? Yes, I'm sure it would. */
EXIT

// Mazzy #2
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaMazzy","GLOBAL",1)~ THEN BRH#EVA mazzy2
@136 /* I haven't met many halflings in this realm yet, Mazzy. Are you typical for your race? */
DO ~SetGlobal("rh#EvaMazzy","GLOBAL",2)~
== BMAZZY @137 /* By your tone I take it we have the same reputation for mischief in your world as we do in this one. */
== BRH#EVA @138 /* Mm, the kender are quite peculiar, to say the least. */
= @139 /* Peculiar enough that I'd hardly be surprised to find one trying to join the Knights of Solamnia on a lark, but... not like this. */
== BMAZZY @140 /* Indeed, I take my calling very seriously, difficult as it may be for some to understand that. */
== BRH#EVA @141 /* That part I understand well enough. */
= @142 /* Why anyone would actually *wish* to be a knight, on the other hand... that truly baffles me. A more bigoted group I've never met. */ 
== BMAZZY @143 /* That is not fair, Evandra. */
== BRH#EVA @144 /* I dare say you're living proof that it is. */
== BMAZZY @145 /* 'Tis true that tradition binds us all, and not always for the best, but I have faith that all injustice will in time be overcome. Even that which plagues our most cherished institutions. */
== BRH#EVA @146 /* Would that it were so. */
EXIT

// Jaheira #2
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaJaheira","GLOBAL",1)~ THEN BRH#EVA jaheira2
@147 /* I take it you've known <CHARNAME> for quite some time. */
DO ~SetGlobal("rh#EvaJaheira","GLOBAL",2)~
== BJAHEIR @148 /* Aye, we have traveled together extensively, <PRO_HESHE> and I, though we have both seen better days. */  
== BRH#EVA @149 /* I'll have to take your word for it. You both seem to lead rather hectic lives. */
== BJAHEIR @150 /* Hmph. Active lives, certainly. Shall I assume that you have led yours shut away in a mage's tower? */
== BRH#EVA @151 /* Some of it, certainly. Less of it than one might imagine. */
== BJAHEIR @152 /* That is good. In the days to come you will need whatever experience you can bring to bear. */
== BRH#EVA @153 /* Yes, I suspect you're right. */
EXIT

// Korgan #2
CHAIN IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaKorgan2","GLOBAL",0)~ THEN BRH#EVA korgan2
@154 /* Korgan, that bottle of ale you're drinking from... */
DO ~SetGlobal("rh#EvaKorgan2","GLOBAL",1)~
== BKORGAN @155 /* Aye, what of it? */
== BRH#EVA @156 /* I could have sworn I saw you pick it up from one of our fallen enemies a ways back. */
== BKORGAN @157 /* Ye noticed that, did ye? Nae point in lettin' it go to waste. */
== BRH#EVA @158 /* That's ghoulish, even for you. */
== BKORGAN @159 /* Pfeh. Ye about to start swoonin' on me now? */
== BRH#EVA @160 /* If anyone could drive me to it, it would be you. */
== BKORGAN @161 /* An' don't ye forget it, lassie. Don't ye forget it. */
EXIT

// Haerdalis #3
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHaerdalis","GLOBAL",2)~ THEN BRH#EVA haerdalis3
@162 /* Sometimes I envy you, Haer'dalis. */
DO ~SetGlobal("rh#EvaHaerdalis","GLOBAL",3)~ 
== BHAERDA @163 /* That is not a sentiment that this sparrow hears often. What troubles you, my dear? */
== BRH#EVA @164 /* (laugh) Nothing ever troubles me, of course, but you... you wear the mask of careless whimsy far better than I do. */
== BHAERDA @165 /* A mask, is it? */
== BRH#EVA @166 /* My art lies in appearances, Haer'dalis. I know a mask when I see it. Though with you, I'm never quite sure. */
== BHAERDA @167 /* And so you wonder if there is more to this sparrow than meets the eye. */
== BRH#EVA @168 /* You're not the first Planeswalker I've met. There's always more to you than meets the eye. */
== BHAERDA @169 /* Aye, we Sigilians are a most peculiar lot, I will grant you that. But you Primes are no less so, in your own way. */
== BRH#EVA @170 /* We're as exotic to you as you are to us, I take it. */
== BHAERDA @171 /* On occasion, my mockingbird, I dare say you are even more so. */
EXIT

// Edwin #3
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Gender("Edwin",MALE)
Global("rh#EvaEdwin","GLOBAL",2)~ THEN BEDWIN edwin3
@172 /* Tell me, elf, did you always know which school of magic you wished to specialize in? */
DO ~SetGlobal("rh#EvaEdwin","GLOBAL",3)~
== BRH#EVA @173 /* Actually, I originally meant to be a diviner... and you needn't look so disgusted. Obviously that didn't work out. */
== BEDWIN @174 /* Hmph. Then perhaps I should congratulate you on the sliver of intelligence you have demonstrated in steering clear of such an inferior career, though good sense evidently only reaches so far. */
== BRH#EVA @175 /* You don't care for illusion magic? I've always thought it suited me well. */
== BEDWIN @176 /* It has its uses, limited though they may be. True masters of the Art, of course, know where real power is to be found. */
== BRH#EVA @177 /* Mm, in enchantment, I dare say. */
= @178 /* It is a most popular school amongst our Black Robes, you see, and some of them are really quite... gifted, to say the least. */
== BEDWIN @179 /* Ahh... excuse me? */
== BRH#EVA @180 /* They tend to know what they want and how to get it. Usually what they want, of course, is power and influence. */
= @181 /* (smile) Wherever has your mind wandered off to, Edwin? */
== BEDWIN @182 /* Bah! Higher places than your meager intellect can follow, no doubt. (The wench thinks she can play games with me, does she?) */
EXIT

// Anomen #4
CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Alignment("Anomen",MASK_LAWFUL)
Global("rh#EvaAnomen1","GLOBAL",1)
Global("rh#EvaAnomen4","GLOBAL",0)~ THEN BRH#EVA anomen4
@183 /* Anomen, could you hold this for a moment? I seem to have misplaced some of my spell components. */
DO ~SetGlobal("rh#EvaAnomen4","GLOBAL",1)~
== BANOMEN @184 /* Of course, my lady. I am at your service for anything you might require. */
== BRH#EVA @185 /* Truly? That is encouraging. The knights of Ansalon are not an overly chivalrous group, to say the least. I'm pleased to see Amnian ones are somewhat better mannered. */
== BANOMEN @186 /* Aye, the Order of the Radiant Heart prides itself upon its fair conduct amongst the common folk. */
== BRH#EVA @187 /* Common, am I? */
== BANOMEN @188 /* I... of course not, Lady Evandra. I meant to imply no such thing. */
== BRH#EVA @189 /* Relax, Anomen. It was only a jest. But come, let us move on. */
== BANOMEN @190 /* Ah... my lady? Your pack, if you would. */
== BRH#EVA @191 /* Er, yes. Yes... of course. Thank you, Anomen. */
EXIT

// Viconia #3
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaViconia1","GLOBAL",1)
Global("rh#EvaViconia2","GLOBAL",1)
Global("rh#EvaViconia3","GLOBAL",0)~ THEN BRH#EVA viconia3
@192 /* Your goddess, Shar. What does her faith consist of, exactly? */
DO ~SetGlobal("rh#EvaViconia3","GLOBAL",1)~
== BVICONI @193 /* That is a dangerous question, darthiir. */
== BRH#EVA @194 /* Is it? I'd think the divinities of this realm were common knowledge. */
== BVICONI @195 /* Perhaps, but if it were common knowledge you sought, you would not first come to me, I think. */
== BRH#EVA @196 /* Common knowledge is usually inaccurate knowledge. I tend to prefer the truth. */
== BVICONI @197 /* And you think to get it from me? */
== BRH#EVA @198 /* I'd expect to get one side of a very complicated story from you. I wouldn't mistake that for the truth. */
== BVICONI @199 /* (chuckle) You are a strange one, jalil. But if you wish to hear of the Nightsinger, I would be remiss to leave you in ignorance. */
= @200 /* Come, girl, let us step aside to speak privately for a moment. */
EXIT

// Minsc #3
CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaMinsc3","GLOBAL",0)~ THEN BRH#EVA minsc3
@201 /* Minsc, if you would please stand still for a moment...? */
DO ~SetGlobal("rh#EvaMinsc3","GLOBAL",1)~
== BMINSC @202 /* Minsc does not stand still. Not when there is evil afoot that needs a good kicking! */
== BRH#EVA @203 /* Indeed, but you'll give it a much better kicking if you don't trip over your own feet. You've managed to get yourself a bit tangled up. */
== BMINSC @204 /* Ah! I did not notice... and neither did Boo! How strange. Usually he does. */ 
== BRH#EVA @205 /* He hardly has the best view right now. */
== BMINSC @206 /* Yes, that must be it. */
= @207 /* There, Boo. You can sit here now, and the next time evil tries to creep up upon us, you will be the first to see it coming! */
EXIT

// Keldorn #4
CHAIN IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaKeldorn","GLOBAL",1)
OR(2)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)
Global("rh#EvaKeldorn","GLOBAL",3)~ THEN BRH#EVA keldorn4
@208 /* You've given your whole life to your order, haven't you, Keldorn? */
DO ~SetGlobal("rh#EvaKeldorn","GLOBAL",4)~
== BKELDOR @209 /* Close enough, my lady. Close enough. */
== BRH#EVA @210 /* I hadn't realized it was such a demanding calling. Your lot is showered in accolades wherever you go... one forgets the sacrifices that go with it. */
== BKELDOR @211 /* You misjudge matters, I fear. A knight can face as much mistrust as a wizard, even from otherwise goodly folk. */
== BRH#EVA @212 /* Mistrust of quite a different nature, I should think. */
== BKELDOR @213 /* As I understand it, a wizard of your realm announces their allegiance by the color of their robes. */
= @214 /* Neutrality is uncertainty, ambivalence. You have great power, Evandra. If people fear you, 'tis because they do not know what you will do with it. */
== BRH#EVA @215 /* If we fall, it is usually because we are pushed. */
== BKELDOR @216 /* Perhaps you would do better to not stand so close to the ledge. */
== BRH#EVA @217 /* I've seen that ledge call out to the noblest of people, Keldorn. I'm in no more danger than anyone else. */
== BKELDOR @218 /* I pray that you are correct, my lady. Truly, I do. */
EXIT

// Haer'dalis #4
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHaerdalis","GLOBAL",3)~ THEN BRH#EVA haerdalis4
@219 /* Sometimes, Haer'dalis, I find myself wondering whether you've seen too much death or too little. */
DO ~SetGlobal("rh#EvaHaerdalis","GLOBAL",4)~ 
== BHAERDA @220 /* Why, my mockingbird, this sparrow is flattered to be the object of such keen speculation! But leave me not in suspense--what are your thoughts on the matter? */
== BRH#EVA @221 /* And risk offending you with illfounded assumptions? */
== BHAERDA @222 /* Nay, there is little danger of that. Proud I may be, but my ego is not so fragile that it cannot withstand the slightest affront. */
== BRH#EVA @223 /* Mm, very well. In that case, my guess would be... too little. */
= @224 /* Oh, don't look so dubious, bard. For all that you've no doubt seen, you've a certain way of floating above the concerns of the world, untouched. */
== BHAERDA @225 /* Aye, that may be so, but coming from one such as you, my maid of Lunitari, 'tis an unexpected charge indeed. */
== BRH#EVA @226 /* No, I suppose we illusionists aren't overly known for our firm grasp on reality either. */
== BHAERDA @227 /* Ha! From any other lips I would indeed take that as an insult, but you, Evandra... I dare say you know of what you speak. */
== BRH#EVA @228 /* (laugh) More often than not, I should think. But enough--if I've not offended you yet, perhaps we ought to move on before that changes. */
EXIT

// Valygar #4
CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaValygar1","GLOBAL",1)
Global("rh#EvaValygar2","GLOBAL",1)
Global("rh#EvaValygar4","GLOBAL",0)~ THEN BRH#EVA valygar2
@229 /* You know, Valygar, they say it's dangerous for a person with magical talent to forego training. */
DO ~SetGlobal("rh#EvaValygar4","GLOBAL",1)~
== BVALYGA @230 /* Is that so? */
== BRH#EVA @231 /* I have heard... stories... of what can happen to people who try to suppress their gift for the Art. */
== BVALYGA @232 /* Hmph. In my experience, nurturing it is the far more dangerous course of action. */
== BRH#EVA @233 /* Much as you'd like to believe otherwise, your experience is somewhat limited. */
== BVALYGA @234 /* (sigh) What do you want? */
== BRH#EVA @235 /* You've magic in your blood, Valygar. Whether or not you'd care to admit it. You'll need to accept it eventually. */
== BVALYGA @236 /* Do us both a favor, wizard, and mind your own affairs. */
EXIT

// Mazzy #4
CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaMazzy","GLOBAL",3)~ THEN BRH#EVA mazzy4
@237 /* The way people look at you sometimes, Mazzy, humans and halflings alike... I imagine it must rankle. */
DO ~SetGlobal("rh#EvaMazzy","GLOBAL",4)~
== BMAZZY @238 /* You are not wrong, though there is little I can do save challenge their preconceptions. We are all responsible for our own prejudices, Evandra. */
== BRH#EVA @239 /* And myself no less than any. */
= @240 /* I have been... somewhat cool to you, Mazzy. Cooler than you deserve, I think. */
== BMAZZY @241 /* It is good of you to admit as much, my friend. Sometimes I suspect there is more honor in you than you might care to admit. */
== BRH#EVA @242 /* Mm. I don't recall ever having actually *denied* that, you know. */
== BMAZZY @243 /* I... of course not. I did not mean to imply that you were in any way dishonorable-- */
== BRH#EVA @244 /* (laugh) Just inclined to twisting people into knots for my own amusement, no doubt. Like right now. */
== BMAZZY @245 /* If nothing else, you still have a most wretched sense of humor, Evandra. Perhaps in time we can do something to improve that as well. */
EXIT

// Imoen #2
CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaImoen2","GLOBAL",0)~ THEN BRH#EVA imoen2
@246 /* You have a remarkable skill for magic for someone who just picked it up on the road. */
DO ~SetGlobal("rh#EvaImoen2","GLOBAL",1)~
== BIMOEN2 @247 /* Well, we can't all be big bad Wizards of... High Sorcery, was it? The rest of us just get by as we can. */
== BRH#EVA @248 /* I'm sorry. I really didn't mean it like that. */
== BIMOEN2 @249 /* Yeah, I shouldn't have snapped either. I just... I don't feel that great these days. */
== BRH#EVA @250 /* It's still true, you know. You're extraordinarily talented. For anyone. */
== BIMOEN2 @251 /* Thanks. I just wish it did me more good. */
EXIT

// Jaheira #4
CHAIN IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaTalks","GLOBAL",14)
Global("rh#EvaJaheira","GLOBAL",3)~ THEN BRH#EVA jaheira4
@252 /* Jaheira, if I might ask, did you grow up amongst your human or elven kin? */
DO ~SetGlobal("rh#EvaJaheira","GLOBAL",4)~
== BJAHEIR @253 /* I do not see what possible relevance that could have. */
== BRH#EVA @254 /* I know very little about the elves of this realm. I can't help but wonder how they compare to my own people. */
== BJAHEIR @255 /* With any luck, you will have the opportunity to meet them, but if you hope to find here what you lost in your own world, I fear you will be disappointed. */
== BRH#EVA @256 /* What do you mean? */
== BJAHEIR @257 /* I mean that you will always be an outsider, despite your elven blood. */
== BRH#EVA @258 /* Always? Surely if I were to remain for a century or so-- */
== BJAHEIR @259 /* Would a century make you forget your homeland? */
== BRH#EVA @260 /* ... No. */
== BJAHEIR @261 /* Then an outsider you would remain, by your own doing. */
= @262 /* I do not say this to be cruel, Evandra. There are those who would take you in, I have no doubt, but do not expect it to ever be the same. */
== BRH#EVA @263 /* It's still a lovely dream, if nothing else. */
== BJAHEIR @264 /* Aye, but dreams come to an end, and it is the harshness of day that we must face. */
EXIT

// Nalia #4
CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaNalia3","GLOBAL",1)
Global("rh#EvaNalia4","GLOBAL",0)~ THEN BRH#EVA nalia4
@265 /* For all your power, Nalia, your mindset often still strikes me as very... hmm. How exactly to put it...? */
DO ~SetGlobal("rh#EvaNalia4","GLOBAL",1)~
== BNALIA @266 /* If you're about to accuse me of being childish or some such nonsense, simply because I happen to care about other people, I really do not want to hear it. */
== BRH#EVA @267 /* No. Noble, I was going to say. You seem inclined to solve problems as a noblewoman would, not as a wizard might. */
== BNALIA @268 /* I *am* a noblewoman, in case you hadn't noticed. */
== BRH#EVA @269 /* You're a mage first. Or at least you ought to be. */
= @270 /* You can toss a handful of coin at all the world's problems, or you can try to be somewhat more... creative. The latter approach may prove more successful. */
== BNALIA @271 /* Please, Evandra, everyone knows that you don't care about the world's problems one way or the other. I don't know why you think you're qualified to give me any advice at all. */
== BRH#EVA @272 /* I've known many an idealistic wizard that I admired, Nalia. You could be one of the best, if you applied yourself properly. */
== BNALIA @273 /* Thank you... I think... but if I wanted a lecture, I could just as easily go home. I'm not a child, nor an apprentice, so I'd appreciate it if you didn't treat me like one. */
= @274 /* Now, if we're quite finished here, I think it's time to move on. */
EXIT

// Viconia #5
CHAIN IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("chapter","GLOBAL",%bg2_chapter_5%)
Global("rh#EvaViconia5","GLOBAL",0)~ THEN BRH#EVA viconia5
@275 /* You know, Viconia, I never entirely believed that your Underdark was a real place. Not until seeing it with my own eyes. */ 
DO ~SetGlobal("rh#EvaViconia5","GLOBAL",1)~
== BVICONI @276 /* You display a disappointing lack of imagination, jalil. */
== BRH#EVA @277 /* Perhaps so, but the whole way of life seems rather... impractical. Unworkable. How that city survives from one year to another is quite beyond me. */
== BVICONI @278 /* Hmph. It survives because the Spider Queen wishes it to. There is nothing more to it than that. */
== BRH#EVA @279 /* You mean to say that your entire civilization is a toy in the hands of a mad goddess? */
== BVICONI @280 /* I would have once slain you for those words, but you are not wrong. */
== BRH#EVA @281 /* I... see. And to think that I used to assume our situations were somewhat similar. */
== BVICONI @282 /* You saw what you wished to see, dobluth. In that you are no different from the rest of the surface scum. */
= @283 /* Now leave me be. I would speak of this no more. */
EXIT

// ---------------------------------------------
// Bioware Initiated
// ---------------------------------------------

// Aerie

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaAerie1","GLOBAL",0)~ THEN BAERIE aerie1
@284 /* W-what was your world like, Evandra? */
DO ~SetGlobal("rh#EvaAerie1","GLOBAL",1)~
== BRH#EVA @285 /* Like any other, I'm sure. Full of wonders and terrors and everything in between... though more terrors in recent years, I'm afraid. */
== BAERIE @286 /* That... that seems to always be the the case. */
== BRH#EVA @287 /* More often than not, as far as I can tell. */ 
== BAERIE @288 /* But still... don't you miss it? */
== BRH#EVA @289 /* There was precious little to miss. */
== BAERIE @290 /* That's a sad thing to say. */
== BRH#EVA @291 /* It is what it is. */
== BAERIE @292 /* I... I guess so. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
AreaType(OUTDOOR)
Global("rh#EvaAerie1","GLOBAL",1)
Global("rh#EvaAerie2","GLOBAL",1)
Global("rh#EvaAerie3","GLOBAL",0)~ THEN BAERIE aerie3
@293 /* It's nice to be out traveling like this, isn't it? I-I spent so long cooped up in the circus... */
DO ~SetGlobal("rh#EvaAerie3","GLOBAL",1)~
== BRH#EVA @294 /* It's a fine change from that cursed sphere as well. I wasn't sure I was ever going to see the sky again. */
== BAERIE @295 /* Oh! I hadn't thought about that. */
== BRH#EVA @296 /* I don't think about it all that often anymore either. */
== BAERIE @297 /* I-I wish I could do that. Not think about bad things. I try, but... the memories don't go away. */
== BRH#EVA @298 /* Memories like yours take a long time to fade, Aerie. But you can start by focusing on what's around you, here and now. */
= @299 /* For instance... do you hear that? */
== BAERIE @300 /* The birds, you mean? */
== BRH#EVA @301 /* Yes, though I can't say I've ever heard this particular melody before. */
== BAERIE @302 /* Quayle taught me the different birdsongs, but I don't... I don't think I remember this one. */
== BRH#EVA @303 /* Well, if you hear something you recognize, please do point it out for me. */
== BAERIE @304 /* I-I'll do that. Thank you, Evandra. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaAerie1","GLOBAL",1)
Global("rh#EvaAerie2","GLOBAL",1)
Global("rh#EvaAerie4","GLOBAL",0)~ THEN BAERIE aerie4
@305 /* Evandra, that song you were just humming. W-what was it? */
DO ~SetGlobal("rh#EvaAerie4","GLOBAL",1)~
== BRH#EVA @306 /* I... hm. My apologies. I hadn't realized I was humming anything at all. */
== BAERIE @307 /* You don't need to be sorry, I do that sometimes too. Mostly... mostly when I'm lonely. */
== BRH#EVA @308 /* Yours are quite lovely, Aerie. Sad, but lovely. */
== BAERIE @309 /* I-I don't know. I don't sing them like a true avariel minstrel would. */
== BRH#EVA @310 /* I'm no Qualinesti bard myself, you know. I wouldn't notice a couple of false notes. */
== BAERIE @311 /* (giggle) I guess that's true. */
= @312 /* Are yours... are yours also from home? */
== BRH#EVA @313 /* They are, yes. For the most part, anyway. */ 
== BAERIE @314 /* Could you teach me one of them? They're really pretty. */
== BRH#EVA @315 /* It would be my pleasure, Aerie. */
EXIT

// Anomen

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaAnomen1","GLOBAL",0)~ THEN BANOMEN anomen1
@316 /* Your trickery and illusions are ill befitting the honorable field of battle, my lady. There is no glory in such slippery conduct. */
DO ~SetGlobal("rh#EvaAnomen1","GLOBAL",1)~
== BRH#EVA @317 /* Glory has never been a terribly high priority of mine. */
== BANOMEN @318 /* Hmph. That much is evident. A failing of the race, perhaps. They say that elves are fickle, thoughtless creatures. */
== BRH#EVA @319 /* They also say that the brief lives of humans leave them grasping for the wind, always seeking more. */
== BANOMEN @320 /* Be that as it may, 'tis better to seek than to idle about in mediocrity. You would do well to think more closely upon that, Lady Evandra. */
== BRH#EVA @321 /* Idling about in mediocrity, is it? I hadn't realized I was doing any such thing. Or any other elf, for that matter. */
== BANOMEN @322 /* I know little of your people, my lady. I know only what I see, and what I see is a most underhanded display of magic. */
= @323 /* But enough. I can only hope that in my company you shall come to recognize the merits of a nobler course of action. */
EXIT

// Cernd

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaCernd1","GLOBAL",0)~ THEN BCERND cernd1
@324 /* Do you have much knowledge of herb-lore, my friend? I have seen you collect leaves from time to time. */
DO ~SetGlobal("rh#EvaCernd1","GLOBAL",1)~
== BRH#EVA @325 /* I do, though it does me little good here. Few of the plants bear any resemblance to the ones I'm familiar with. */
== BCERND @326 /* Take care with your experiments, in that case. I would not want to see you come to harm. */
== BRH#EVA @327 /* You needn't worry, Cernd. I don't know enough to risk experimenting at all. */
== BCERND @328 /* If you wish it, it would be my pleasure to teach you about the plants of this world. */
== BRH#EVA @329 /* I'd appreciate that. Thank you. */
EXIT

// Edwin

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Gender("Edwin",MALE)
Global("rh#EvaEdwin","GLOBAL",0)~ THEN BEDWIN edwin1
@330 /* Evandra, you have the look of one who is not afraid of getting her hands dirty... if the rewards justify the risks. */
DO ~SetGlobal("rh#EvaEdwin","GLOBAL",1)~
== BRH#EVA @331 /* I have that look, do I? And what look, pray tell, is that? */
== BEDWIN @332 /* One that is quite common in Thay--the look of a woman who doesn't care which side of the bed she sleeps on. */
== BRH#EVA @333 /* That's no less cryptic, Edwin. */
== BEDWIN @334 /* Play coy if you must, but remember that in the right company, the rewards will be great indeed. (The wench may be of use yet.) */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Gender("Edwin",MALE)
Global("rh#EvaEdwin","GLOBAL",2)~ THEN BEDWIN edwin3
@172 /* Tell me, elf, did you always know which school of magic you wished to specialize in? */
DO ~SetGlobal("rh#EvaEdwin","GLOBAL",3)~
== BRH#EVA @173 /* Actually, I originally meant to be a diviner... and you needn't look so disgusted. Obviously that didn't work out. */
== BEDWIN @174 /* Hmph. Then perhaps I should congratulate you on the sliver of intelligence you have demonstrated in steering clear of such an inferior career, though good sense evidently only reaches so far. */
== BRH#EVA @175 /* You don't care for illusion magic? I've always thought it suited me well. */
== BEDWIN @176 /* It has its uses, limited though they may be. True masters of the Art, of course, know where real power is to be found. */
== BRH#EVA @177 /* Mm, in enchantment, I dare say. */
= @178 /* It is a most popular school amongst our Black Robes, you see, and some of them are really quite... gifted, to say the least. */
== BEDWIN @179 /* Ahh... excuse me? */
== BRH#EVA @180 /* They tend to know what they want and how to get it. Usually what they want, of course, is power and influence. */
= @181 /* (smile) Wherever has your mind wandered off to, Edwin? */
== BEDWIN @182 /* Bah! Higher places than your meager intellect can follow, no doubt. (The wench thinks she can play games with me, does she?) */
EXIT

// Haer'dalis

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaHaerdalis","GLOBAL",0)~ THEN BHAERDA haerdalis1
@335 /* Ah, 'tis a delight that destiny should draw together two such as us: travelers from lands farther afield than the mind can imagine. */
DO ~SetGlobal("rh#EvaHaerdalis","GLOBAL",1)~ 
== BRH#EVA @336 /* My world is not so different from this one, Haer'dalis. Cities and forests, humans and elves and dwarves. And dragons, sooner or later. */
== BHAERDA @337 /* Aye, but the stars are different, are they not? */
= @338 /* I visited your world once upon a moon, my maid of Lunitari. I do not envy you the life you must have lived. */
== BRH#EVA @339 /* It was a better life than it might have been, whatever its struggles. I have no regrets. */
== BHAERDA @340 /* Nay, those who would splash ink across the pages of the role they were given seldom have much use for regret, I should think. */
== BRH#EVA @341 /* Regret, no. Darker emotions... those have their place, more often than not. */
== BHAERDA @342 /* The past is the past, and the future shall be so soon enough as well. Revel in your story, for its twists and turns only add to its delight. */
EXIT

// 5.
CHAIN IF ~InParty("Haerdalis")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHaerdalis","GLOBAL",4)~ THEN BHAERDA haerdalis5
@343 /* Ahh, Evandra, my mockingbird, you are looking altogether too pensive. Perhaps a song would lighten your mood. */
DO ~SetGlobal("rh#EvaHaerdalis","GLOBAL",5)~ 
== BRH#EVA @344 /* (laugh) I fear your favorites would do little to lighten anyone's mood. */
== BHAERDA @345 /* Aye, you Primes have such strange sensibilities, 'tis all this poor sparrow can do to keep them straight at times! */
== BRH#EVA @346 /* Oh, we're not as mysterious as that. Whatever you find appealing... why, just sing about the opposite. */
== BHAERDA @347 /* Ha! I have heard too many tales of this realm to believe we are truly as different as that. Nay, a good tragedy is appreciated on any plane I have ever visited. */
== BRH#EVA @348 /* That may be so, but I thought you meant to lighten the mood somewhat, not darken it further. */
== BHAERDA @349 /* So I did, my dear... so I did. And I think I have succeeded somewhat, if not in the way I had hoped. */
== BRH#EVA @350 /* My mood was never as dark as that, Haer'dalis. */
== BHAERDA @351 /* Then truly have I misjudged you to<DAYNIGHT>. But come, let us rejoin the others, and I shall regale you all with one of the tales from your own home realm... */
EXIT

// Imoen

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaImoen1","GLOBAL",0)~ THEN BIMOEN2 imoen1
@352 /* It looks like <CHARNAME>'s companions are getting more and more exotic these days. I guess I should've seen that coming. */
DO ~SetGlobal("rh#EvaImoen1","GLOBAL",1)~
== BRH#EVA @353 /* What are you talking about? */
== BIMOEN2 @354 /* Well, I'm not surprised <PRO_HESHE>'d pick up another mage, but one that's not even from this world? That's a little unexpected. */
== BIMOEN2 IF ~InParty("Haerdalis")~ THEN @355 /* And then there's Haer'dalis. From the sounds of it, he's not even really from any world at all. */ 
== BIMOEN2 @356 /* It wasn't too long ago that we were just hanging around Candlekeep, leading almost normal lives. Now... I barely remember what it was like. */
== BRH#EVA @357 /* If it's any consolation, I can barely remember what *yesterday* was like anymore. */
== BIMOEN2 @358 /* Yeah, I guess you have a point. I just can't see it ever being like it was before, you know? */
== BRH#EVA @359 /* I do. */
== BIMOEN2 @360 /* Right. Well... I guess we might as well get on with it. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("chapter","GLOBAL",%bg2_chapter_5%)
Global("ElhanFinishedSpeaking","GLOBAL",1)
Global("rh#EvaImoen3","GLOBAL",0)~ THEN BIMOEN2 imoen3
@361 /* Well, I guess you've met your people now, Evandra. */
DO ~SetGlobal("rh#EvaImoen3","GLOBAL",1)~
== BRH#EVA @362 /* Elhan, you mean? He was quite... abrupt. */
== BIMOEN2 @363 /* That's one way to put it. */
= @364 /* You know, I always loved the tales about old elven kingdoms--I thought I'd be more excited about the prospect of getting to see one. */
== BIMOEN2 IF ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @365 /* And now here we are, and I really just want it to be over. */
== BRH#EVA IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN @366 /* Assuming they let us past the gates. */
== BIMOEN2 IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ THEN @367 /* Yeah, there is that. Either way, I just want all of this to be over. */
== BRH#EVA @368 /* It won't be much longer, Imoen. We'll get through this. */
== BIMOEN2 @369 /* Yeah, I... I guess so. I hope so, at least. */
EXIT

// Jaheira

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaJaheira","GLOBAL",0)~ THEN BJAHEIR jaheira1
@370 /* You mustn't wallow about in distraction, Evandra. Danger could be lurking around any corner. */
DO ~SetGlobal("rh#EvaJaheira","GLOBAL",1)~
== BRH#EVA @371 /* I know, it's just... I'm still getting used to this world. Everything about it is slightly off. */
== BJAHEIR @372 /* How so? */
== BRH#EVA @373 /* The colors are just a shade different, for one. It took some time to notice that, and now it's taking even longer to *stop* noticing it. */
== BJAHEIR @374 /* Hmph. Perhaps an adventuring party is not the best place for you at present. */ 
== BRH#EVA @375 /* I can carry my own weight, Jaheira. */
== BJAHEIR @376 /* You will have to. We do not have the luxury of second chances. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaJaheira","GLOBAL",2)~ THEN BJAHEIR jaheira3
@377 /* You are adjusting better than I had expected you would. */
DO ~SetGlobal("rh#EvaJaheira","GLOBAL",3)~
== BRH#EVA @378 /* Thank you. I think. */
== BJAHEIR @379 /* 'Twas a compliment, Evandra. Elves are seldom known to embrace change easily, and if I am not mistaken, you are somewhat past the restless days of youth. */
== BRH#EVA @380 /* Somewhat, yes, though I am surprised you can tell. */
== BJAHEIR @381 /* There are signs for those who are sensitive to such things. You exhibit more than a few of them. */
== BRH#EVA @382 /* Really, Jaheira. I'm still decades short of 200. */
== BJAHEIR @383 /* Hm. I would have thought you older, but perhaps matters are different on your world. */ 
== BRH#EVA @384 /* (laugh) Your compliment is getting more and more barbed. Come, shall we move on while it's still a compliment at all? */
EXIT

// 5.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaJaheira","GLOBAL",4)~ THEN BJAHEIR jaheira5
@385 /* I would not have thought you timid, Evandra. If there is a reason for your constant glances, I would know it. */
DO ~SetGlobal("rh#EvaJaheira","GLOBAL",5)~
== BRH#EVA @386 /* I hadn't realized I was quite so obvious about it. */ 
== BJAHEIR @387 /* Hmph. You are not as discreet as you might think, nor as good at diverting a question. */
== BRH#EVA @388 /* (laugh) Will it surprise you to hear that I was thinking about my people? */
== BRH#EVA IF ~!Race(Player1,HALF_ELF)~ THEN @389 /* I've admittedly never given much thought to half-elves before, but being here with you... I wonder how much talent we don't toss away by rejecting you so. */
== BRH#EVA IF ~Race(Player1,HALF_ELF)~ THEN @390 /* I've admittedly never given much thought to half-elves before, but being here with you, with <CHARNAME>... I wonder how much talent we don't toss away by rejecting you so. */
== BJAHEIR @391 /* I have heard of half-elves turned away by their elven kin, but it is not as common here as you might think. */
== BRH#EVA @392 /* There are worse things that can be done to a person than turning them away. */
== BJAHEIR @393 /* That is true, unfortunately, though you needn't worry about my own wellbeing. */
== BRH#EVA @394 /* I wouldn't dare, Jaheira. Truly, I wouldn't. */
== BJAHEIR @395 /* Good. Then you are learning. */
EXIT

// Jan

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaJan1","GLOBAL",0)~ THEN BJAN jan1
@396 /* You know, Evandra, I never did meet an elven illusionist before. Are you sure you don't have gnomish blood anywhere in your family tree? */
DO ~SetGlobal("rh#EvaJan1","GLOBAL",1)~
== BRH#EVA @397 /* If I did, I'm sure I would have heard about it. */
== BJAN @398 /* Well, you never can tell. As my Aunt Marigold made all too clear, you don't always know what an illusionist is just by looking at her. Dear old Marigold had a thing for orcs, you see. She once even went so far as to disguise herself as one and go looking for a husband. */
== BRH#EVA @399 /* I'm sure that went well for her. */
== BJAN @400 /* Well enough up until the point my cousin Daisy was born. Not your typical half-orc, poor Daisy. Alas, she and her dear mother met a tragic end at the tribe's hands. */
== BRH#EVA @401 /* And yet somehow the tale has reached your ears anyway. */
== BJAN @402 /* That should surprise no-one, Evie, my dear. The way those orcs boasted about their wicked deed, half of Amn must have heard about what had happened. You wouldn't believe the number of condolences we received after that. */
== BRH#EVA @403 /* You're right about that part, at least. */
== BJAN @404 /* In any case, it just goes to show, you never can tell what might show up in your family tree. I'll need to see if I can think of any Jansen who has ever gone planeswalking... we might even be related, you know! */
== BRH#EVA @405 /* Yes, I'm sure. */
EXIT

// Keldorn

// 2.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaKeldorn","GLOBAL",1)~ THEN BKELDOR keldorn2
@406 /* Have you given much thought to what you will do here if you cannot return to your own world, Evandra? */
DO ~SetGlobal("rh#EvaKeldorn","GLOBAL",2)~
== BRH#EVA @407 /* I take it you have some suggestions? */
== BKELDOR @408 /* If I am not mistaken, you have spent your life in the service of magic. There are several goodly churches that might prove a decent fit for you. */
== BRH#EVA @409 /* I already have a goddess, Keldorn. I'm not ready to abandon her for another just yet. */
== BKELDOR @410 /* Nor should you, though you must look to the future rather than the past. You might consider how best her goals might be achieved in this realm. */
== BRH#EVA @411 /* (smile) You assume you would approve of my goddess's goals. */
== BKELDOR @412 /* You are as dedicated to the responsible use of magic as any Mystran, Evandra. I expect there is a reason for that. */
= @413 /* But come, we have spoken long enough. Think on what I have said, my friend. That is all I can ask. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaTalks","GLOBAL",8)
OR(2)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
Global("rh#EvaKeldorn","GLOBAL",2)~ THEN BKELDOR keldorn3
@414 /* Have you received word from the Knights of Solamnia recently, Evandra? I understand that you maintain something of a correspondence with them. */
DO ~SetGlobal("rh#EvaKeldorn","GLOBAL",3)~
== BRH#EVA @415 /* Nothing so formal as that, I'm afraid. Our relationship is... rocky, to say the least. */ 
== BKELDOR @416 /* I'm sorry to hear that. They seemed fine guardians of justice and righteousness. The Order shall be grateful for their service. */
== BRH#EVA @417 /* Well, your Order is certainly welcome to them. */
== BKELDOR @418 /* Whatever trouble lies between you, if they are willing to now put it aside, perhaps you would be wise to do so as well. */
== BRH#EVA @419 /* Would that it were so easy. */
== BKELDOR @420 /* I see no reason why it should not be. I would not so quickly set aside the last link that connects you to your homeworld. */
== BRH#EVA @421 /* (sigh) They're leaves in the wind to me, Keldorn. There is no connection there, even if I might wish it. */
== BKELDOR @422 /* As you would have it, though I fear you're being somewhat shortsighted in this. */
EXIT

// Korgan

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaKorgan1","GLOBAL",0)~ THEN BKORGAN korgan1
@423 /* Yer prancin' about is beginnin' to get on me nerves, elf girl. What's the use of a mage if all ye've got up yer sleeve is tricks? */
DO ~SetGlobal("rh#EvaKorgan1","GLOBAL",1)~
== BRH#EVA @424 /* It was one of those tricks that saved your life in that last battle. */
== BKORGAN @425 /* Bah! 'Twas my axe that felled the fool. Ye did naught but get in the way. */
== BRH#EVA @426 /* You have a very selective memory, dwarf. */
== BKORGAN @427 /* Ye've befundled yourself, lassie. Too much of that mind muddlin' magic has gone to yer head. */
EXIT

// Mazzy

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaMazzy","GLOBAL",0)~ THEN BMAZZY mazzy1
@428 /* I must confess, Evandra, there is something about your manner that sets me ill at ease. I cannot quite place it. */
DO ~SetGlobal("rh#EvaMazzy","GLOBAL",1)~
== BRH#EVA @429 /* If magic makes you nervous, I really have heard it all before. */
== BMAZZY @430 /* I have no quarrel with wizards, so long as their motives be pure. Yours are unclear, I fear. */
== BRH#EVA @431 /* I imagine they would be for one who sees the world in black and white. */
== BMAZZY @432 /* And you, I take it, see the world in color? */
== BRH#EVA @433 /* (smile) In red, mostly. */
== BRH#EVA IF ~InParty("Jaheira")~ THEN @434 /* Never mind. Think of me as you would Jaheira--a champion of balance, one who understands that the greater picture is more complicated than the individual parts. */
== BRH#EVA IF ~!InParty("Jaheira") InParty("Cernd")~ THEN @435 /* Never mind. Think of me as you would Cernd--a champion of balance, one who understands that the greater picture is more complicated than the individual parts. */
== BRH#EVA IF ~!InParty("Jaheira") !InParty("Cernd")~ THEN @436 /* Never mind. Think of me as you would a druid--a champion of balance, one who understands that the greater picture is more complicated than the individual parts. */
== BMAZZY @437 /* Never have I heard of a wizard with such a calling. You do not serve nature, Evandra. Your values are your own. */
== BRH#EVA @438 /* On that much, at least, we agree. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaMazzy","GLOBAL",2)~ THEN BMAZZY mazzy3
@439 /* I say, but the road becomes wearisome. Surely, Lady Evandra, a tale of distant Ansalon would ease the monotony somewhat. */
DO ~SetGlobal("rh#EvaMazzy","GLOBAL",3)~
== BRH#EVA @440 /* (laugh) We have tales aplenty, certainly, but I am no storyteller. */
== BMAZZY @441 /* I would beg to differ, but I shall not press you if you are unwilling. */
== BRH#EVA @442 /* Tell me, why the sudden interest? */ 
== BMAZZY @443 /* I have noticed the effort that you make to know our history better, and I fear sometimes that we do not reciprocate as we ought. */
== BRH#EVA @444 /* I learn because I must, Mazzy. Unless you hope to visit Krynn, you've no need to do the same. */
== BMAZZY @445 /* Perhaps not, but I suspect that I would understand *you* better if I knew something of your world. */
== BRH#EVA @446 /* Ahh. I see. I appreciate the thought, truly, but I fear some distances are too far to be bridged. */
== BMAZZY @447 /* That may be so, but by all that is good, I hope otherwise. */
EXIT

// Minsc

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaMinsc1","GLOBAL",0)~ THEN BMINSC minsc1
@448 /* Boo says you can be trusted, but I do not like it. You are sure you are not a Red Wizard? */
DO ~SetGlobal("rh#EvaMinsc1","GLOBAL",1)~
== BRH#EVA @449 /* I'm a Wizard of the Red Robes. We have no connection to any organization in this world. */ 
== BMINSC @450 /* Minsc is glad to hear it, but red is still a most evil color. Would a deep forest green not suit you better? */
== BRH#EVA @451 /* I've worn red for the better part of a century, Minsc. */
== BMINSC @452 /* And it has not made you... wish to be evil? */ 
== BRH#EVA @453 /* (laugh) Oh, if I had a copper for every time I've heard *that* question. */
== BMINSC @454 /* Your words are strange, but Boo says that you mean well. I think we will keep an eye on you anyway, though. Just in case. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaMinsc1","GLOBAL",1)
Global("rh#EvaMinsc3","GLOBAL",1)
Global("rh#EvaMinsc4","GLOBAL",0)~ THEN BMINSC minsc4
@455 /* We were not sure at first, little Evandra, but Boo says we will make a proper witch of you yet! Is it not a wonderful thought? */
DO ~SetGlobal("rh#EvaMinsc4","GLOBAL",1)~
== BRH#EVA @456 /* Most wonderful, I'm sure, though you'd need to first tell me what that entails. */
== BMINSC @457 /* Of course, you are from far away, Boo says... farther even than Minsc, so you cannot be expected to have heard of the Witches of Rashemen. */
== BRH#EVA @458 /* That is where you're from, isn't it? I've heard the name once or twice, but it all sounds... rather fanciful. */
== BMINSC @459 /* Ahh, yes, it is the stuff of dreams, my friend... but then again you shape them, do you not? I know little of the ways of wizards, but Boo tells me that is what illusionists do. */
== BRH#EVA @460 /* Boo is awfully clever for a hamster. Cleverer than some humans, I dare say. */
== BMINSC @461 /* Aye, and more so than many elves also, he would add. */
== BRH#EVA @462 /* (laugh) Yes, I'd grant him that one as well. */
EXIT

// Nalia

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaNalia1","GLOBAL",0)~ THEN BNALIA nalia1
@463 /* Those robes must have cost you a small fortune, Evandra. */
DO ~SetGlobal("rh#EvaNalia1","GLOBAL",1)~
== BRH#EVA @464 /* What of it? It would hardly reflect well upon the state of magic to wander about dressed like a pauper. */
== BNALIA @465 /* Is that all that matters to you? How well things reflect? */
== BRH#EVA @466 /* Appearances do make a difference, my dear. Learn to play to expectations and your goals will be a good deal easier to achieve. */
== BNALIA @467 /* My goals are clearly somewhat nobler than yours. */
== BRH#EVA @468 /* There's no goal so noble that this advice doesn't apply. */
EXIT

// Valygar

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaValygar1","GLOBAL",0)~ THEN BVALYGA valygar1
@469 /* I don't know what to make of you, Evandra. You're as much a victim of Lavok as anyone, but you at least should have known better. */
DO ~SetGlobal("rh#EvaValygar1","GLOBAL",1)~
== BRH#EVA @470 /* Known not to walk right into an interplanar traveling device, I assume you mean. */
== BVALYGA @471 /* Yes. Why did you do it? */
== BRH#EVA @472 /* Because I wanted to know what it was. Does that really surprise you? */
== BVALYGA @473 /* Why would it? Wizards never know when to leave well enough alone. */
== BRH#EVA @474 /* We're hardly unique in that regard. */
== BVALYGA @475 /* I'd beg to differ, elf. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
GlobalGT("rh#EvaTalks","GLOBAL",4)
Global("rh#EvaValygar1","GLOBAL",1)
Global("rh#EvaValygar2","GLOBAL",1)
Global("rh#EvaValygar3","GLOBAL",0)~ THEN BVALYGA valygar3
@476 /* Your order, Evandra. You've said that chasing dangerous mages is something you do. */
DO ~SetGlobal("rh#EvaValygar3","GLOBAL",1)~
== BRH#EVA @477 /* That would be one of our functions, yes. */
== BVALYGA @478 /* And this arrangement works? */
== BRH#EVA @479 /* We've the responsibility of protecting the world from the dangers of magic, and we take that very seriously. */
= @480 /* You look skeptical. */
== BVALYGA @481 /* Sending one wizard after another seems like a poor choice. What's to stop the one from corrupting the other? */
== BRH#EVA @482 /* We're hardly that weak-willed, Valygar. */
== BVALYGA @483 /* That's not what I've seen. A wizard always thinks he can master magic, but in the end he is the one who's mastered. */
== BRH#EVA @484 /* Tell me, would you have me lecture you on swordsmanship? */
== BVALYGA @485 /* You've seen Lavok. You know that I don't speak out of ignorance. */
EXIT

// 5.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaValygar3","GLOBAL",1)
Global("rh#EvaValygar4","GLOBAL",1)
Global("rh#EvaValygar5","GLOBAL",0)~ THEN BVALYGA valygar5
@486 /* There's something I've noticed, Evandra. For all of your magic, I've never seen you use necromancy. */
DO ~SetGlobal("rh#EvaValygar5","GLOBAL",1)~
== BRH#EVA @487 /* I don't have much more love for the school than you do. */
== BVALYGA @488 /* You're the first mage I've ever met who felt that way. */
== BRH#EVA @489 /* It's a common enough sentiment amongst elves, you know. We're not unaware of the dangers that the darker side of magic presents. */
== BVALYGA @490 /* And yet you still practice magic anyway, knowing what it can do. How it can corrupt. That I can't understand at all. */
== BRH#EVA @491 /* I've drawn close enough to that darker side to know that there's nothing there that interests me, Valygar. I'm in no more danger than you are. Less, probably. */
== BVALYGA @492 /* I hope you're right. For your sake as much as anyone else's. */
EXIT

// Viconia

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaViconia1","GLOBAL",0)~ THEN BVICONI viconia1
@493 /* I can feel your eyes upon me, darthiir. Am I truly such an exotic sight that you must stare so? */
DO ~SetGlobal("rh#EvaViconia1","GLOBAL",1)~
== BRH#EVA @494 /* I... forgive me, Viconia. I've never seen the term "dark elf" given quite so literal a meaning before. */
= @495 /* Did you come by this appearance as part of your rite of exile? */
== BVICONI @496 /* What are you babbling about, jalil? */
== BRH#EVA @497 /* You're an exile from your people, are you not? I assumed that such a physical manifestation would have been part of the ritual. */
== BVICONI @498 /* Your foolish assumptions do not interest me, nor do the customs of whatever backwater realm you come from. Leave me be. */
EXIT

// 4.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaViconia3","GLOBAL",1)
Global("rh#EvaViconia4","GLOBAL",0)~ THEN BVICONI viconia4
@499 /* Tell me, Evandra, is Faerûn all you had thought it would be, or does the stench of the rivvin disgust you as much as it does me? */
DO ~SetGlobal("rh#EvaViconia4","GLOBAL",1)~ 
== BRH#EVA @500 /* We have humans aplenty in my world as well. They're considerably better company than my own people. */
== BVICONI @501 /* Would your own people kill you on sight? */
== BRH#EVA @502 /* Well... no. Not exactly. */
== BVICONI @503 /* Then you have little to complain about, jalil. */
== BRH#EVA @504 /* Really, Viconia, you must be the most bitter creature I've ever had the pleasure of meeting, and there's a fair amount of competition for that distinction. */
== BVICONI @505 /* Hmph. I acknowledge life for what it is. Vapid cheerfulness I leave to the darthiir. */
== BRH#EVA @506 /* Vapidly cheerful, am I? */
== BVICONI @507 /* You're no more darthiir than I am, dobluth. In time you will learn that. */
EXIT

// Yoshimo

// 1.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Dead("Lavok02")
Global("rh#EvaYoshimo","GLOBAL",0)~ THEN BYOSHIM yoshimo1
@508 /* Tell me, Lady Evandra, I would not have expected a wizardess to so easily take to the road. Have you been adventuring for some time? */
DO ~SetGlobal("rh#EvaYoshimo","GLOBAL",1)~
== BRH#EVA @509 /* It's been decades since I traveled extensively, but it's not a skill one forgets too quickly. */
== BYOSHIM @510 /* Ah, yes. The long lives of the elves... you have such a young way about you, my friend, it is easy to forget. */
== BRH#EVA @511 /* There are many ways to measure age, and even for elves-- especially for elves, perhaps--years are not always the best. */
== BYOSHIM @512 /* And what metric would you prefer? */
== BRH#EVA @513 /* Deeds, I think. Experiences. Mistakes. */
== BYOSHIM @514 /* Surely you are not so old as to have made many of those. */
== BRH#EVA @515 /* (laugh) Do you think I would tell you if I had? */
== BYOSHIM @516 /* Nay, mistress. I expect you to keep your mysteries close about you. */
== BRH#EVA @517 /* Mm, then I shan't disappoint you. */
EXIT

// 3.
CHAIN IF ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaYoshimo","GLOBAL",2)~ THEN BYOSHIM yoshimo3
@518 /* Ahh, another fine attempt, m'lady, but if you do not mind...? */
DO ~SetGlobal("rh#EvaYoshimo","GLOBAL",3)~
== BRH#EVA @519 /* By Astra's harp, you noticed again? */
== BYOSHIM @520 /* It is no small thing to try to pickpocket a thief. */
== BRH#EVA @521 /* (sigh) Thank you for trying, but I don't think I am ever going to be very good at this. */
== BYOSHIM @522 /* You are quick enough with your fingers, I think, but you do not yet have the instincts. That only comes with time. */
== BRH#EVA @523 /* Time that would be better spent in other pursuits, no doubt. I haven't the patience for this. */
== BYOSHIM @524 /* Ha! I was surprised you had the patience to try at all, truth be told. A mighty wizard, stooping to such simple techniques. */
== BRH#EVA @525 /* It was a passing fancy, I suppose. But come, we've wasted enough time for one <DAYNIGHT>, I think. */
EXIT

// ---------------------------------------------
// ToB
// ---------------------------------------------

BEGIN BRH#EV25

// Mazzy

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaMazzyToB","GLOBAL",0)~ THEN BRH#EV25 mazzy
@526 /* What will you do once this is over, Mazzy? Great deeds are all well and good, but after something like this... I can't imagine what might compare. */
DO ~SetGlobal("rh#EvaMazzyToB","GLOBAL",1)~
== BMAZZY25 @527 /* Why should it need to, my friend? You speak as if glory were my main concern... surely by now you realize that is not so. */
== BRH#EV25 @528 /* You'd really be content taking up minor tasks again? I can't picture you clearing the countryside of bandits, Mazzy. Not anymore. */
== BMAZZY25 @529 /* And if I might ask, how would you picture me instead? */
== BRH#EV25 @530 /* Hmm. Settled down, perhaps... at least until the next catastrophe, whatever it might be. */
== BMAZZY25 @531 /* And is that a prediction or a suggestion? */
== BRH#EV25 @532 /* (laugh) A bit of both, I suppose. Why, is it not to your liking? */
== BMAZZY25 @533 /* I... I do not know, truth be told. Though I see little point in contemplating futures that may or may not ever come to pass. */
== BRH#EV25 @534 /* One day at a time, is it to be? */
== BMAZZY25 @535 /* Aye, I believe that is the wiser course of action. */
EXIT

// Anomen

CHAIN IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaAnomenToB","GLOBAL",0)~ THEN BRH#EV25 anomen
@536 /* All those tales of glory you used to tell, Anomen... they certainly pale in comparison to the reality, don't they? */
DO ~SetGlobal("rh#EvaAnomenToB","GLOBAL",1)~
END
IF ~Alignment("Anomen",MASK_LAWFUL)~ THEN EXTERN BANOME25 anomen1
IF ~!Alignment("Anomen",MASK_LAWFUL)~ THEN EXTERN BANOME25 anomen2

CHAIN BANOME25 anomen1
@537 /* You have the right of it, my lady. If I could speak to my younger self now and tell him what was to come, I would scarce know where to even begin. */
== BRH#EV25 @538 /* That is normal, I think. Particularly in situations like this. */
== BANOME25 @539 /* There are not many situations like this, Evandra. Faerûn seldom sees destruction of this level, thank Helm. */
== BRH#EV25 @540 /* (laugh) I suppose I've just been particularly unlucky, then. */
END
IF ~~ THEN EXTERN BRH#EV25 anomen3

CHAIN BANOME25 anomen2
@541 /* Pfeh, do not remind me of the pompous fool I used to be. Those days are long behind me now. */
== BRH#EV25 @542 /* Perhaps, but we all carry our past alongside us. Even you, even me. */
== BANOME25 @543 /* You, Evandra? You outran your past so completely that you ended up on a different plane. */
== BRH#EV25 @544 /* (laugh) That's certainly one way to look at it. */
END
IF ~~ THEN EXTERN BRH#EV25 anomen3

CHAIN BRH#EV25 anomen3
@545 /* I didn't even know who Bhaal was before meeting <CHARNAME>, you know. To be a part of something like this... it's indescribable. */
== BANOME25 @546 /* Aye, I can believe that easily enough, though there is little point in dwelling upon it overmuch. */
== BRH#EV25 @547 /* I suppose that's true enough. */
EXIT

// Cernd

CHAIN IF ~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaCerndToB","GLOBAL",0)~ THEN BRH#EV25 cernd
@548 /* There's nothing like a war of this magnitude to make a person long for the waters and the wild. I imagine you must feel similarly, Cernd. */
DO ~SetGlobal("rh#EvaCerndToB","GLOBAL",1)~
== BCERND25 @549 /* It is for those very waters and wilds that we must now fight, my friend. In the face of such destructive forces, little that grows upon this earth is truly safe. */
== BRH#EV25 @550 /* Wise words, I think, if not entirely to my liking. */
== BCERND25 @551 /* You miss Suldanessellar, do you not? */
== BRH#EV25 @552 /* Is it so obvious? */
== BCERND25 @553 /* The moon may wear a dozen different faces, but never does it waver in its path, Evandra. */
== BRH#EV25 @554 /* And neither do I, I take it? Hm. Perhaps you're right. */
EXIT

// Sarevok

CHAIN IF ~InParty("Sarevok")
See("Sarevok")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaSarevokToB","GLOBAL",0)~ THEN BRH#EV25 sarevok
@555 /* So many turns in <CHARNAME>'s story have taken me by surprise, but you, Sarevok... you're the strangest by far. */
DO ~SetGlobal("rh#EvaSarevokToB","GLOBAL",1)~
== BSAREV25 @556 /* And you think your insipid observations interest me, elf? */
== BRH#EV25 @557 /* I haven't the slightest idea what interests you. I can't even determine what you actually are, much less what might motivate you. */
== BSAREV25 @558 /* Enough, woman. I have even less interest in your arcane musings than in whatever else you might have to say. */
== BRH#EV25 @559 /* Truly? If I'd managed to do what you have here, I'd want nothing more than to know precisely how it worked. */
== BSAREV25 @560 /* Pfeh. That is why you will never accomplish anything of any true worth, wizard. If <CHARNAME> did not have a use for you, you would no doubt be locked away in a library. */
== BRH#EV25 @561 /* Mm, perhaps, but better that than in some hell, I'm sure. */
EXIT

// Edwin

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaEdwinToB","GLOBAL",0)~ THEN BRH#EV25 edwin
@562 /* I have to admit, Edwin, sometimes I'm surprised that you're still here at all. I'd have expected you to have someplace better to be by now. */
DO ~SetGlobal("rh#EvaEdwinToB","GLOBAL",1)~
== BEDWIN25 @563 /* Bah! Says the woman who might as easily flit off to another plane at a moment's notice. */
== BRH#EV25 @564 /* Oh, I'm not quite as impulsive as that, I think. In any case, I rather like this strange world of yours. */
== BEDWIN25 @565 /* Yes, yes, of course. And what exactly makes you think this is a conversation I am interested in having? */
== BRH#EV25 @566 /* Why, your continued presence here, of course. */
== BEDWIN25 @567 /* Pfeh. If there is power to be found, it will be in <CHARNAME>'s wake. It is as simple as that. Now leave me be, wench. */
== BRH#EV25 @568 /* Hm. No insults, no propositions... that's really quite unlike you, Edwin. Are you feeling unwell? */ 
== BEDWIN25 @569 /* Enough, fool! I have considerably more important matters to consider at present than your inanities, so go find someone else to bother! */
== BRH#EV25 @570 /* Ahh, that's more like it. Suit yourself, then. */
EXIT

// Aerie

CHAIN IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaAerieToB","GLOBAL",0)~ THEN BRH#EV25 aerie
@571 /* The type of magic we have at our command... sometimes I wonder what exactly I was doing with my life up until now. */
DO ~SetGlobal("rh#EvaAerieToB","GLOBAL",1)~
== BAERIE25 @572 /* (giggle) That's silly, Evandra. You were living it, of course. */
== BRH#EV25 @573 /* In a manner of speaking, I suppose. But still... not like this. */
== BAERIE25 @574 /* Is it really so strange to you? You dedicated your whole life to magic a long time ago... isn't this what you were always preparing for? */
== BRH#EV25 @575 /* I'm not sure anyone ever prepares for power like this. */
== BAERIE25 @576 /* That's good to hear. I thought I was the only one who found the sorts of things we can do now a bit... overwhelming. */
== BRH#EV25 @577 /* You're not, Aerie. Not at all. */
EXIT

// Haer'dalis

CHAIN IF ~InParty("rh#Eva")
See("Haerdalis")
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaHaerdalisToB","GLOBAL",0)~ THEN BHAERD25 haerdalis
@578 /* 'Tis truly an epic finale laid out before us, a fitting conclusion to a tale as tortuous as our raven's, would you not agree? */
DO ~SetGlobal("rh#EvaHaerdalisToB","GLOBAL",1)~
== BRH#EV25 @579 /* Mm. Chaos and destruction, as far as the eye can see... I imagine you must be in your element these days, Haer'dalis. */
== BHAERD25 @580 /* Aye, in all the realms this sparrow would be hard pressed to find a finer study for a Doomguard, and I do not say that lightly. */
== BRH#EV25 @581 /* I'm surprised to hear you say it at all. I'd thought the planes in all ways more dramatic than the Prime. */
== BHAERD25 @582 /* Normally you would have the right of it, but exceptions are always to be expected, and this... */ 
= @583 /* 'Tis almost an understatement to call it an exception at all. */
== BRH#EV25 @584 /* And to think of the strange twist of fate that landed you here, in the midst of it all. */
== BHAERD25 @585 /* Aye, my mockingbird, though much the same could be said for you. */
== BRH#EV25 @586 /* Perhaps, but war-torn Tethyr is not quite the dream come true for me that it is for you, bard. */
== BHAERD25 @587 /* And yet I would wager that a few tendays ago in fair Suldanessellar you would have spoken very differently. */
= @588 /* But come, we begin to trail behind the others, and fascinating though the scenery may be, I have no wish to be left behind entirely! */
EXIT

// Imoen

CHAIN IF WEIGHT #10 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaImoenToB","GLOBAL",0)~ THEN BIMOEN25 imoen
@589 /* Are these from your world, Evandra? I don't think I've ever seen anything like them before. */
DO ~SetGlobal("rh#EvaImoenToB","GLOBAL",1)~
== BRH#EV25 @590 /* I... by Astra's Harp, Imoen. I see you've taken to stealing from me again. */
== BIMOEN25 @591 /* Nah, I wouldn't have said anything if I were going to keep them. You can't blame a girl for being curious, though. */
== BRH#EV25 @592 /* As a matter of fact, I certainly could. */
== BIMOEN25 @593 /* Aww, come on, Evandra. You don't need to get all high and mighty with little old me. */
= @594 /* Anyway, you are going to tell me what these are, right? They're really pretty. Kind of remind me of some of the art we came across in Suldanessellar. */
== BRH#EV25 @595 /* They're keepsakes. From home. */
== BIMOEN25 @596 /* By home, you mean that elven city, don't you? It must have been nice. */
== BRH#EV25 @597 /* It was, at least for a time. */
== BIMOEN25 @598 /* Right. Well, you can have these back. I won't go snooping around your things again, I promise. */
== BRH#EV25 @599 /* I'm glad to hear it, Imoen. */
EXIT

// Jaheira

CHAIN IF WEIGHT #15 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaJaheiraToB","GLOBAL",0)~ THEN BJAHEI25 jaheira
@600 /* You will have a difficult decision to make someday soon, Evandra. Have you put any thought into whether you will stay in Faerûn or return home? */
DO ~SetGlobal("rh#EvaJaheiraToB","GLOBAL",1)~
== BRH#EV25 @601 /* Really, Jaheira, you should know me better than to need to ask that. */
== BJAHEI25 @602 /* Hmph. I know you well enough to doubt that you have come to any sort of conclusion just yet. */
== BRH#EV25 @603 /* (laugh) Whereas you're so quick to make decisions that sometimes I forget that you're half-elven at all. */
== BJAHEI25 @604 /* I am a Harper, Evandra. Decisive action has always been our way. */
== BRH#EV25 @605 /* Mm, amongst other things. So I've noticed. */ 
= @606 /* But tell me, Jaheira, what would you do in my situation? Stay or go? */
== BJAHEI25 @607 /* I can only suggest that you consider carefully what you have here. I know little of what you left behind. */
== BRH#EV25 @608 /* True enough, if not terribly helpful. */
== BJAHEI25 @609 /* I cannot make your decisions for you, Evandra. I can only help you assess your options. You know this as well as I. */
== BRH#EV25 @610 /* I do. And you have my thanks all the same. */
EXIT

// Jan

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaJanToB","GLOBAL",0)~ THEN BJAN25 jan
@611 /* Evandra, lass, have I ever told you about my third cousin, Cindy Rivenstone? */
DO ~SetGlobal("rh#EvaJanToB","GLOBAL",1)~
== BRH#EV25 @612 /* Twice, actually. */
== BJAN25 @613 /* Really? You must be mistaken... Cindy was such an extraordinary young lady--not to mention enterprising, except for that business in Saerloon--that I would surely remember telling the story. */
== BRH#EV25 @614 /* This was the snake handler, if I recall. */
== BJAN25 @615 /* In that case, you are definitely mistaken, my dear elf. You see, Cindy was deathly afraid of snakes. Would never go near the things-- */
== BRH#EV25 @616 /* I remember quite well, Jan. She was absolutely a snake handler. You said she'd learned the art from a kender called Thistleknot--a fine fellow, as I recall, though with a bit of a weakness for Abanasinian ale. */
== BJAN25 @617 /* You're not making a lick of sense, Evie, you know that? */
== BRH#EV25 @618 /* Well, it's hardly my fault if you can't keep your stories straight. */
EXIT

// Keldorn

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaKeldornToB","GLOBAL",0)~ THEN BKELDO25 keldorn
@619 /* It seems that this strange quest finally nears its end, though what that end may be, perhaps not even the gods could say. */
DO ~SetGlobal("rh#EvaKeldornToB","GLOBAL",1)~
== BRH#EV25 @620 /* A fine last campaign for your career, I imagine. */
== BKELDO25 @621 /* Aye, that it is. And an equally fitting first adventure on this plane for you, my lady. */
== BRH#EV25 @622 /* (laugh) It has been educational, I'll give you that much. */
== BKELDO25 @623 /* You have seen corners of Faerûn that most people know of only in song, Evandra. Whatever you might choose to do next, you're no longer a stranger to this realm. */
== BRH#EV25 @624 /* Perhaps not, but it often enough still feels like it. */
== BKELDO25 @625 /* Even after Suldanessellar? */
== BRH#EV25 @626 /* I... honestly, I'm not sure. Not yet. */
== BKELDO25 @627 /* That is understandable, though you will need to find your answers in time. These questions will not go away. */
== BRH#EV25 @628 /* I know. I'll keep that in mind, Keldorn. */
EXIT

// Korgan

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaKorganToB","GLOBAL",0)~ THEN BKORGA25 korgan
@629 /* Ye've gone soft, lassie. A couple o' tendays with them elves and ye're all but frolickin' in the starlight yerself. */
DO ~SetGlobal("rh#EvaKorganToB","GLOBAL",1)~
== BRH#EV25 @630 /* I don't recall any "frolicking" happening in Suldanessellar, dwarf, starlit, sunlit, or otherwise. */
== BKORGA25 @631 /* Bah! 'Twas a figure of speech, nothin' more. */
== BRH#EV25 @632 /* A figure of speech, Korgan? From you? Why, we'll make a wordsmith of you yet. */
== BKORGA25 @633 /* Pfeh. Don't be gettin' yer hopes up, girlie. */
EXIT

// Minsc

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaMinscToB","GLOBAL",0)~ THEN BMINSC25 minsc
@634 /* Little Evandra, Boo says that you are watching him most intently. He is beginning to grow uncomfortable with your stare. */
DO ~SetGlobal("rh#EvaMinscToB","GLOBAL",1)~
== BRH#EV25 @635 /* He noticed that, did he? */
== BMINSC25 @636 /* Giant space hamsters have sharp senses, my friend! Very little escapes his attention. */
== BRH#EV25 @637 /* I must admit, I'm surprised he's still with us. I was expecting him to scamper off... or worse... some time ago. That he hasn't... hm. It's certainly intriguing. */
== BMINSC25 @638 /* Intriguing, you say? Boo does not like the way you are eyeing him now! */
== BRH#EV25 @639 /* (laugh) Worry not, Minsc. If I wished for a familiar, I would summon one of my own. You and Boo... well. I have no intention of getting between you, even for the sake of research. */
== BMINSC25 @640 /* Ehh... that is good, I think, though Boo would prefer to keep his distance all the same. */
EXIT

// Nalia

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaNaliaToB","GLOBAL",0)~ THEN BNALIA25 nalia
@641 /* Evandra, I have been putting some thought into your situation. Your exile from your people, I mean. */
DO ~SetGlobal("rh#EvaNaliaToB","GLOBAL",1)~
== BRH#EV25 @642 /* I appreciate your concern, but there are far more pressing matters at hand than that. */
== BNALIA25 @643 /* Yes, but injustice is injustice, and what was done to you... it doesn't seem right. */
== BRH#EV25 @644 /* Our customs are what they are, Nalia. */
== BNALIA25 @645 /* Customs can change, if we make them change. You and I, Evandra... we're archmages. If we do not force society to be as it should, who will? */
== BRH#EV25 @646 /* Hm. An intriguing thought, but even if I could force a change in policy, I'm not sure I would want to return to a place I was not welcome. */
== BNALIA25 @647 /* And the next time a young mage chooses red instead of white? There is more at stake than just you. */
== BRH#EV25 @648 /* Your passion is admirable, Nalia, but I'm not you, and Qualinesti is not Amn. If elven society is to change, it will have to be on its own time. */
== BNALIA25 @649 /* Perhaps, but I still think you're making excuses. */
EXIT

// Valygar

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaValygarToB","GLOBAL",0)~ THEN BVALYG25 valygar
@650 /* There's something I've never understood, Evandra. How is it that a people as close to nature as yours can also be drawn to magic? */
DO ~SetGlobal("rh#EvaValygarToB","GLOBAL",1)~
== BRH#EV25 @651 /* I take it you've been thinking about Suldanessellar? */
== BVALYG25 @652 /* More than I'd like. I'd always known that the elves were skilled in magic, but seeing it firsthand... */
== BRH#EV25 @653 /* If you could view magic as an art instead of a weapon, I think you'd better understand our fascination for it. */
== BVALYG25 @654 /* Hmph. I once thought perhaps your people were less suceptible to the dangers than mine, but Irenicus made it clear that you're not. */
== BRH#EV25 @655 /* Irenicus was... something of an exception to the rule. */
== BVALYG25 @656 /* He was an elf. Disowning him did not change that. */
== BRH#EV25 @657 /* And so you'd judge all of us based on one man's madness? */
== BVALYG25 @658 /* No, but I'd remind you that you're no more immune to corruption than he was. */
EXIT

// Viconia

CHAIN IF WEIGHT #30 ~InParty("rh#Eva")
See("rh#Eva")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("rh#Eva",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
Global("rh#EvaViconiaToB","GLOBAL",0)~ THEN BVICON25 viconia
@659 /* Evandra, the longer you remain in this realm, the more darthiir you become. It is sickening to watch. */
DO ~SetGlobal("rh#EvaViconiaToB","GLOBAL",0)~
== BRH#EV25 @660 /* I hadn't realized you were paying such close attention to me. */
== BVICON25 @661 /* Hmph. I once thought you had potential, but your displays in Suldanessellar turned even my stomach. */
== BRH#EV25 @662 /* I'm not sure I know what you're talking about. */
== BVICON25 @663 /* No? It is clear for anyone to see that you seek their approval, wael, simply because they are darthiir. They will end up collaring you if you let them. */
== BRH#EV25 @664 /* I... see. Tell me, Viconia, do you really think I've sold myself too cheaply, or did you simply like me better when I was isolated? */
== BVICON25 @665 /* (chuckle) You think you are not still isolated, jalil? */
== BRH#EV25 @666 /* I think... I think I know better than to have this particular conversation with you. */
== BVICON25 @667 /* Then crawl away, if you so wish. You have begun to bore me anyway. */
EXIT