import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';



class ReadController extends GetxController {
  // having five pages will be enough for MVP.
    // the variable to hold the current page
  var currentPage = 0.obs;

  List<String> pages = [
"""
I begin my story with an event from the time when I 
was ten years old, attending the local grammar school 
in our small country town. 

I can still catch the fragrance of many things which 
stir me with feelings of melancholy and send delicious 
shivers of delight through me — dark and sunlit streets, 
houses and towers, clock chimes and people’s faces, rooms
full of comfort and warm hospitality, rooms full of 
secret and profound, ghostly fears. It is a world that 
savours of warm corners, rabbits, servant girls, household 
remedies and dried fruit. It was the meeting-place of two 
worlds; day and night came thither from two opposite 
poles. 

There was the world of my parents' house, or rather it 
was even more circumscribed and embraced only my 
parents themselves. This world was familiar to me in 
almost every aspect — it meant mother and father, love 
and severity, model behaviour and school. It was a world 
of quiet brilliance, clarity and cleanliness; in it gentle 
and friendly conversation, washed hands, clean clothes 
and good manners were the order of the day. In this 
world the morning hymn was sung, Christmas celebrated. 
Through it ran straight lines and paths that led into the 
future; here were duty and guilt, bad conscience and
confessions, forgiveness and good resolutions, love and 
reverence, wisdom and Bible readings. In this world you 
had to conduct yourself so that life should be pure, 
unsullied, beautiful and Well-ordered. 

The other world, however, also began in the middle 
of our own house and was completely different; it smelt 
different, spoke a different language, made different 
claims and promises. This second world was peopled 
with servant girls and workmen, ghost stories and scan- 
dalous rumours, a gay tide of monstrous, intriguing, 
frightful, mysterious things; it included the slaughter- 
house and the prison, drunken and scolding women, 
cows in labour, foundered horses, tales of housebreaking, 
murder and suicide. All these attractive and hideous, 
wild and cruel things were on every side, in the next 
street, the neighbouring house. Policemen and tramps 
moved about in it, drunkards beat their wives, bunches 
of young women poured out of the factories in the even- 
ing, old women could put a spell on you and make you 
ill; thieves lived in the wood; incendiaries were caught 
by mounted gendarmes. Everywhere you could smell this 
vigorous, second world — everywhere, that is, except in 
our house where my mother and father lived. There it 
was all goodness. It was wonderful to be living in a 
house in a reign of peace, order, tranquillity, duty and 
good conscience, forgiveness and love — but it was no less 
wonderful to know there was the other, the loud and 
shrill, sullen and violent world from which you could 
dart back to your mother in one leap. 
""",
"""
The odd thing about it was that these worlds should 
border on each other so closely. When, for example, our
servant Lina sat by the door in the living-room at even- 
ing prayers and joined in the hymn in her dear voice, 
her freshly washed hands folded on her smoothed down 
pinafore, she belonged wholly and utterly to mother 
and father, to us, the world of light and righteousness. 
But when in the kitchen or woodshed immediately after- 
wards she told me the story of the little headless man or 
started bickering with her neighbours in the little 
butcher’s shop, she became a different person, belonged 
to another world and was veiled in mystery. And it was 
the same with everybody, most of all with myself. Doubt- 
less I was part of the world of light and righteousness 
as the child of my parents, but wherever I listened or 
directed my gaze I found the other thing and I lived 
half in the other world, although it was often strangely 
alien to me and I inevitably suffered from panic and a 
bad conscience. Indeed at times I preferred life in the 
forbidden world and my return to the world of light — 
necessary and worthy though it might be — was often 
almost like a return something less attractive, some- 
thing both more drab and tedious. I was often conscious 
that my destiny in life was to become like my father 
and mother; pure, righteous and disciplined; but that 
was a long way ahead; first one had to sit studying at 
school, do tests and examinations, and the way always 
led through and past the other, dark world and it was 
not impossible that one might remain permanently in 
it. I had read, with passionate interest, stories of prodigal 
sons to whom this had happened. There was always the 
return to their father and the path of righteousness that 
was so fine and redeeming that I felt convinced that this 
alone was the right, good, worthy thing; and yet I found 
the part of the story which was played among the wicked 
and lost souls far more, alluring. *If it had been per- 
missible to speak out and confess, I should have admitted 
that it often seemed a shame to me that the Prodigal 
Son should atone and be ‘found’ again — though this 
feeling was only vaguely present deep down within me 
like a presentiment or possibility. When I pictured the 
devil to myself, I found no difficulty in visualizing him 
in the street below, disguised or undisguised, or at the 
fair or in a tavern but never at home. 

My sisters belonged likewise to the world of light. It 
often seemed to me that they were closer in temperament 
to father and mother, better and more refined and with 
fewer faults than I. Of course they had their defects and 
their vagaries but these did not appear to me to go very 
deep. It was not as with me whose contact with evil 
could become so oppressive and painful and to whom 
the dark world lay so much closer. My sisters, like my 
parents, were to be spared and respected, and if one 
quarrelled with them one always felt in the wrong after- 
wards; as if one were the instigator, who must crave 
forgiveness. For in offending my sisters, I was offending 
my parents, which made me guilty of a breach of good 
conduct. There were secrets that I would have been less 
reluctant to tell the most reprobate street urchin than 
my sisters. On good days when everything seemed light 
and my conscience in good order, I enjoyed playing 
with them, being good and kind to them and seeing 
myself sharing their aura of nobility. It was like a fore- 
taste of being an angel I That was the highest thing we
could conceive of and we thought it would be sweet 
and wonderful to be angels, surrounded with sweet 
music and fragrance reminiscent of Christmas and happi- 
ness. How rarely did such hours and days come along!
""",
"""
I would often be engaged in some harmless and author- 
ized game which became too exciting and vigorous for 
my sisters and led to squabbles and misery, and when I 
lost my temper I was terrible and did and said things 
that seemed so depraved to me that they seared my heart 
even as I was in the act of doing and saying them. These 
occasions were followed by gloomy hours of sorrow and 
penitence and the painful moment when I begged for- 
giveness and then, once again, a beam of light, a tran- 
quil, grateful unclouded goodness for hours — or mom- 
ents as the case might be. 

I attended the local grammar school. The mayor’s 
son and the head forester’s son were in my class and 
sometimes joined me. They were wild fellows, yet they 
belonged to the ‘respectable’ world. But I also had dose 
relations with neighbours’ sons, village lads on whom 
we normally looked down. It is with one of these that 
my story begins 

One half-holiday — I was little more than ten years old 
— I was playing around with two boys from the neigh- 
bourhood. A bigger boy joined us, a rough, burly lad of 
about thirteen from the village school, the tailor’s son. 
His father drank, and the whole family had a bad name. 
I knew Franz Kromer well, and went about in fear of 
him so that I felt very uneasy when he came along. He 
had already acquired grown-up ways and imitated the 
walk and speech of the young factory workers. With him
as ringleader we climbed down the river bank near the 
bridge and hid ourselves away from the world under the 
first arch. The narrow strip between the vaulted bridge 
and the lazily flowing river consisted of nothing but 
general rubbish and broken pots, tangles of rusty barbed 
wire and similar jetsam. Occasionally we came across 
things we could make use of. We had to comb these 
stretches of bank under Franz Kromer’s orders and show 
him our discoveries. These he either kept himself or 
threw into the water. We were told to notice whether 
there were any items made of lead, brass or tin He 
retained these together with an old comb made of horn. 
I was very uncomfortable in his presence, not because I 
knew my father would forbid this relationship but out 
of fear of Franz himself, but I was grateful for being 
included, and treated like the others. He gave the orders 
and we obeyed as if it was an old custom, although it 
was my first time. 

At length we sat down on the ground; Franz spat into 
the water and looked like a grown-up; he spat through a 
gap between his teeth and scored a hit wherever he 
aimed. A conversation started and the boys boasted 
about their grand deeds and beastly tricks. I remained 
silent and yet feared to offend by my silence and incur 
Kromer’s wrath. Both my comrades had made up to 
him, and avoided me from the start. I was a stranger 
among them and felt that my clothes and manners were 
taken as a kind of challenge. Franz could not possibly 
have any love for me, a grammar schoor boy and a 
gentleman’s son and I was in no doubt that the other 
two, if it came to it, would disown and desert me.

Finally, out of sheer nervousness, I began to talk. I 
invented a long story of robbery, in which I featured as 
the hero. One night in the corner by the mill a friend 
and I had stolen a whole sackful of apples, not just 
ordinary apples but pippins, golden pippins of the best 
kind at that. I was taking refuge in my story from the 
dangers of the moment and found no difficulty in invent- 
ing and relating it. In order not to dry up too soon and 
perhaps become involved in something worse, I gave full 
rein to my narrative powers. One of us, I reported, had 
always stood guard while the other sat in the tree and 
chucked the apples down, and the sack had got so heavy 
that in the end we had to open it and leave half behind, 
but we came back half an hour later and fetched them 
too. 

I hoped for some applause at the end of my story; I 
had warmed up to the narrative at last, carried away by 
my own eloquence. The two smaller boys were silent, 
waiting, but Franz Kromer gave me a penetrating look 
through his narrowH. eyes. "Is that yarn true?” he 
asked in a menacing tone. 
""",
"""
"Yes,” I said. 

"Really and truly?” 

“Yes, really and truly,” I asserted defiantly while I 
choked inwardly with fear. 

"Can you swear to it?” 

I was very afraid but I said ‘Yes’ without hesitation. 

"Hand on your heart?” 

"Hand on my heart;” 

"Right then,” he said and turned away. 

I thought this was all very satisfactory and I was glad
when he got up and turned to go home. When we were 
on the bridge I ventured timidly that I must go home. 

"No desperate hurry/’ Franz laughed. "We go the 
same way." 

He sauntered along slowly and I did not dare to go 
.ahead, but he was in fact going in the direction of our 
house. When we arrived, and I saw our front door and 
the fat doorknocker, the sun in the windows and the 
curtains in my mother’s room, I breathed a sigh of 
relief. Back home I O good, blessed home-coming back 
to the world of light and peace I 

When I had quickly opened the door and slipped in 
ready to slam it behind me, Franz Kromer edged in too. 
In the cool, gloomy paved passage which was lit solely 
from the courtyard he stood close to me and said in a 
low voice, "No hurry, you I ” 

I looked at him terrified. His grip on my arm was 
like a vice. I tried to guess what was going on in his 
mind and whether he was going to do me some mischief. 
If I were to let out a loud and vigorous shriek would 
some one above be quick enough to save me? But I 
gave up the idea. 

“What is it?” I asked, “what do you want?” 

"Oh nothing much, I merely wanted to ask you some- 
thing. The others needn’t hear.” 

"Well? What do you want me to tell you? I must go 
up, you know.” 

“I suppose you know who owns the orchard by the 
corner mill?” 

"No, I don’t. The miller I think.” 

Franz had put his arm round me and drawn me close
to him so that I couldn’t avoid looking into his, face at 
close range. He had an evil gleam in his eyes and he 
gave an ugly laugh. His face was full of cruelty and 
sense of power. 

“Yes, kid, I can tell you who owns the orchard. I’ve 
known for a long time that people have been stealing 
apples and I also know that the man in question said he 
would give two marks reward to anyone who could tell 
him who stole the fruit.” 

“Heavens!” I exclaimed. “But you wouldn’t let on to 
him?” 

I felt that it would be futile to appeal to his sense of 
honour. He belonged to the ’other’ world; betrayal was 
no crime as far as he was concerned. That much was 
clear to me. The people of the ‘other’ world were not 
like us in these matters. 

“Not let on ! My dear fellow, do you think I can mint 
my own money and produce a couple of marks out of a 
hat? I’m poor. I haven’t a rich father like you and if I 
can earn two marks I’ve got to earn them. He might even 
give me more.” 

He suddenly left me. Our house passage no longer 
smelt of peace and safety; the world was tumbling about 
my ears. He would denounce me as a criminal; they 
would inform my father, perhaps the police would come. 
All the horror of Chaos' threatened me; the outlook for 
me was horrible and dangerous. The fact that I had not 
committed a theft was a mere detail. I had sworn that 
I had. God in heaven! Tears welled in my eyes. I felt 
that I should have to buy myself out and I groped 
desperately. Not an apple, not a pen-knife; nothing. 
""",
"""
Then I remembered my watch. It was a silver watch but 
it did not go. I just wore it 'like that.’ It came to me from 
my grandmother. I quickly drew it out. 

"Kromer,” I said, “You mustn’t tell; it would be a 
beastly thing to do. Look, I’ll give you my watch; un- 
luckily it’s the only thing I have, but you can have it. 
It’s made of silver,’’ I added nervously. “It’s good work- 
manship and it’s only got some slight defect which can 
easily be put right.’’ 

He smiled and took the watch in his large hand. I 
looked at that hand and felt how rough and hostile it 
was towards me and how it was trying to tighten its grip 
on my life and peace of mind. 

"It’s silver,” I repeated nervously. 

“I don’t give a damn for your silver and your old 
watch ! ” he said with withering scorn. "Get it repaired 
yourself I” 

"But Franz,” I exclaimed, trembling with fear lest he 
walk off. "Just wait a moment! Take the watch 1 It 
really is made of silver, honestly. And I haven't got 
anything else.” 

He gave me a cold, scornful look. 

"Well, you know who I’m going to see. Or I might 
even inform the police. The sergeant is a friend of 
mine.” 

He turned as if to go. I held him back by his coat 
sleeve. He must not go. I would much rather die than 
have to suffer what would happen if he went off like 
that. 

"Franz,” I implored, hot with emotion, "don’t do any- 
thing stupid! It is a joke, isn’t it?”

“It’s a joke all right, but it might be an expensive one 
for you.” 

“Just tell me, Franz, what I am to do and I’ll do what- 
ever you like ! ” 

His eyes narrowed and he laughed again. 

"Don’t be a fool I” he said with false good humour. 
"You know as well as I do. I can earn two marks and 
I’m not rich; you know I can’t afford to chuck them 
away. But you’re rich; you’ve got a watch. You’ve only 
got to give me two marks and everything will be all 
right.” 

I grasped his logic. But two marks! It was far away 
beyond my means and as unattainable as ten, a hundred, 
a thousand marks. I did not have any money. There was 
a money-box which mother kept for me and it contained 
a few ten and five pfennig pieces put in by uncles when 
they came to visit us and by other family Mends on 
similar occasions. Apart from that I had nothing. I was 
not given any pocket money at that age. 

"I haven’t got an. hing, honestly,” I said gloomily. 
"I haven’t any money. But I’ll give you anything else. 
I’ve got a book about Indians and soldiers and a com- 
pass. I’ll fetch it for you.” 

Kromer merely contracted his lips in an evil sneer 
and spat on the ground. 

"Talk sense!” he commanded. "You can keep your 
stupid rubbish. A compass! Don’t make me angry, do 
you hear, and hand over the money ! ” 

"But I haven’t any. They don’t give me any. I can’t 
do anything about it!” 

"Bring me two marks tomorrow morning then. I’ll 
wait for them downstairs after school. See you ^bpve them 
ready, or you’ll find out what happens if you don’t.” 

"Yes, but where am I\ going to get them from when 
I haven’t got any?” 

“There’s plenty of money in your house. That’s up to 
you. Tomorrow after school then. And I tell you ... if 
you don’t bring it . . .” he flashed an intimidating 
glance at me, spat again and vanished like a shadow. 


I felt unable to go upstairs. My life was wrecked. I 
thought vaguely of running away and never returning or 
of drowning myself. I sat down in the dark on the 
bottom step of our outside staircase, withdrew into my- 
self and abandoned myself to my misery. Lina found 
me there weeping when she came down with a basket 
to collect some firewood. 

1 begged her to say nothing about it, and went up- 
stairs. On the right of the glazed door hung father’s hat 
and mother’s sunshade; an atmosphere of homeliness 
and affection hung about all these things; my heart 
warmed to them gratefully as that of the Prodigal Son 
must have done when he was confronted with the sight 
and smell of the old familiar rooms of his house. But 
none of this was mine any longer; it all belonged to the 
world of my parents and I was deeply and guiltily en- 
gulfed in the alien tide. I was involved in excitement and 
wrong-doing, threatened by the enemy, beset by dangers, 
fear and scandal. The hat and the sunshade, the good 
old sandstone floor, the large picture over the hall cup- 
board and the voices of my elder sisters coming from the
living-room, it was all more moving and precious 
than ever but it had ceased to be a comfort and some- 
thing I could rely on and had become a kind of re- 
proach. This was no longer my world; I could have no 
part in its cheerfulness and peace. My feet were defiled; 
I could not wipe them on the mat; I was accompanied 
by shadows of which this world of home knew nothing. 
I had had plenty of secrets, plenty of scares before but 
it had all been light-hearted compared with what I was 
bringing back with me that day. Fate was tracking me 
down, hands were reaching for me from which my 
mother could not protect me; of which she knew no- 
thing. What my crime was — theft or lying — (had I not 
sworn a false oath by God and everything that was 
sacred?) — did not come into it. My sin was not this or 
that; my sin was that I was in league with the Devil. Why 
had 1 associated with him? Why had 1 listened to Kromer 
more than I had ever done to my father? Why had I 
lied about that theft, fathered myself with crime as if it 
had been a heroic deed? And now the Devil held me in 
his clutches, the enemy was at my shoulder. 
""",
"""
For the time being my fear was not of the next day, 
it was the horrible certainty that I was treading the 
downhill path that led into darkness. I felt that my first 
lapse was bound to be followed by others and that my 
presence among my brothers and sisters, my demonstra- 
tions 'of affection towards my parents were a lie, that I 
was living a fate and a lie that 1 was hiding from them. 

For a moment a flash of confidence and hope lit inside 
me as I stood looking at my father’s hat. I would tell 
him the whole story, the judgment he passed and the 
punishment he meted out would make him into my 
confident and saviour. It would only mean the kind of 
penance I had done often enough, a difficult and painful 
hour, a difficult and rueful request for forgiveness. 

How sweet it all sounded. How tempting it was ! But 
it was no use. I knew that I would not do it. I knew that 
I now had a secret, a debt which I had to work out for 
myself. Perhaps I was at the parting of the ways, perhaps 
from now on I would always belong to the wicked, 
depend on them, obey them, become one of their num- 
ber. I had played the man and hero and now I must 
bear the consequences. 

I was glad that my father upbraided me about my 
muddy shoes. It side-stepped the issue, the graver sin 
passed unnoticed and I got away with a reproach which 
I secretly transferred to the other affair. In so doing, a 
strange new feeling lit up inside me, an unpleasant, 
ruthless feeling, full of barbs — I felt superior to my 
father! For the moment I despised his ignorance; his 
reprimand about the muddy boots seemed trivial. “If 
you only knew,” I thought, and felt like the criminal 
who is being tried for stealing a loaf of bread when he 
has confessed to a murder. It was an odious, hostile 
feeling but it was strong and it somehow fascinated me 
and took a firmer hold of me than any other aspect of 
my secret and my guilt. Perhaps, I thought, Kromer has 
already gone to the police and denounced me and while 
I am being treated here as a small child, storm? are 
gathering above my head! 

This was the all-important and permanent element in 
the whole experience as I have related it. It was the first
crack in the sacronsanct person of my father, a first in- 
cision in the pillar on which my childhood's life had 
rested but which every man must destroy before he can 
become his own true self. The real, inner line of our 
fate consists of these experiences which are hidden from 
other people. A gash or wound of this kind grows 
together again; it is healed and forgotten, but in the 
inner recesses of our minds it lives on and bleeds. 

I was so horrified by this new feeling that I would 
willingly have fallen at my father’s feet and begged for- 
giveness. But you cannot crave forgiveness for anything 
fundamental and a child is as deeply aware of that as 
any wise man. 

I felt the need to reflect on my problem and plan out 
my course for the next day; but I failed completely. It 
was as much as I could do the whole evening to try and 
acclimatise myself to the different atmosphere in our 
sitting-room. Wall-clock and table, Bible and mirror, 
bookshelf and pictures were likewise leaving me behind, 
and I had to gaze at them with a frozen heart as I saw 
my world, my good, happy life becoming a thing of the 
past and breaking away from me. There was no escaping 
the fact that new tap-roots held me firmly anchored in 
a dark and alien land. For the first time in my life I was 
tasting death, and death tastes bitter — for it is birth 
pangs, fear and dread before some terrible renewal. 

I was relieved when at length I found myself in bed. 
Just before, as a final torment, I had been subjected to 
family prayers an(l we had sung one of my favourite 
hymns. But I could not join in; every note was gall and 
bitterness. Nor could I join in the prayers when my
father pronounced the blessing, and when he ended 
“God keep us all ..." I felt rejected from the family 
circle. The grace of Gpd was with them but not with 
me. I went up, cold and exhausted. 

When I had lain in bed for a while in warmth and 
comfort, my heart once more turned back in fear and 
hovered in a panic round the events of the day. Mother 
had said her usual good-night, her step still sounded in 
the room, her candle still glowed through a chink in 
the door. Now I thought, she is coming back — she has 
guessed — and she will give me a good-night kiss and 
question me sympathetically about it all and then I can 
cry and the lump in my- throat will meh and then I'll 
hug her and tell everything and it will be all right again 
and I shall be saved. After the chink in the door had 
become dark again, I listened for a while, feeling that 
it must and would happen. 

Then my mind went back to the incident and I 
seemed to be looking my enemy in the face. I could see 
him clearly; he had screwed up one eye and his lips 
were twisted in a leer And even as I watched, I was 
consumed by the inescapable truth and he became big- 
ger and uglier and a fiendish glint lit up his eye. He 
stood dose beside me until I fell asleep but then 1 
dreamed not of him and the day that was over but that 
we were travelling in a boat, my parents, my sisters and 
myself and we were surrounded by the peaceful and 
heightened glow of a day’s holiday. I woke up in the 
middle of the night still conscious of the after-taste of 
that blessedness and my sisters’ white summer-dresses 
still shining in the sun when I fell from Paradise back 
into reality and once more stood face to face with the 
enemy with the ‘evil eye.'
""",
"""
Next day when mother came hurrying up and called 
out that it was late and asked why I was still in bed, I 
must have looked ill and when she asked if anything 
was the matter with me, I had a fit of vomiting. 

It was something gained. It was wonderful to be 
slightly ill and allowed to lie in bed and drink camo- 
mile tea and listen to mother tidying up in the next 
room and Lina dealing with the butcher in the hall 
outside. A morning off from school was something magic 
and fairylike, the sun played in the room but it was 
not the same sun they shut out with the green curtains 
at school. But even that I could not enjoy today; it had 
a false ring about it. 

If I could only diet But, as on so many occasions, I 
was only slightly ill and nothing happened. It saved me 
from school but not from Kromer who was waiting for 
me in the market place at eleven o’clock. And my 
mother’s amiability bt ought me no comfort; it was heavy 
and distressing. I pretended to be asleep while I pon- 
dered over it all again. It was no use; I had to be at the 
market at eleven o’clock. So I got up quietly at ten and 
said that I was feeling better. It meant, as usual in such 
cases, that I must either go to bed again or return to 
school in the afternoon. I said that I wanted to go to 
school. I had made a plan. 

I could not go to Kromer empty-handed. I must get 
hold of the little money-box that belonged to me. I knew 
there was not nearly enough money in it; but it was, 
something and I felt that something was better than
nothing and that Kromer at all costs must be appeased. 

I felt guilty when I crept into my mother's room in 
my stockinged feet and took my money-box from her 
writing-table, but my conscience troubled me less than 
on the previous day. My heart beat so fast that I nearly 
suffocated and the situation was not improved when I 
discovered on first examining it at the bottom of the 
staircase that the box was locked. But it was not difficult 
to force; it was merely a matter of breaking a thin tin- 
plate grid. I felt terrible about breaking it — I was com- 
mitting a theft. Before this I had done nothing worse 
than pilfer lumps of sugar or fruit. But this was stealing 
although it was my own money. I realized defiantly that 
I was taking a step nearer to Kromer and his world and 
that it was so easy to go down bit by bit. The Devil 
might come for me now; there was no way back. I 
counted the money nervously; it had sounded so much 
in the box and was so painfully little in my hand. It 
came to sixty-five pfennig. I concealed the box on the 
ground floor, clasped the money in my hand and left 
the house without passing through the gateway. I 
thought I heard somebody upstairs shouting after me, 
but I hurried away. 

There was still plenty of time; I crept off by round- 
about ways through the alleys of a transformed town 
under clouds such as I had never seen before, past 
houses which stared at me and men who eyed me with 
suspicion. It occurred to me en route that one of my 
school-friends had once found a florin in the Cattle- 
Market. I wished I could pray that God might perform 
a miracle and allow me to make a similar find. But I
had forfeited the right to pray. And in any case it would 
not have mended the box. 

Franz Kromer spied me coming from a distance but 
he sauntered slowly towards me without appearing to 
notice me. When he was close, he beckoned me imper- 
iously to follow him and went quickly on down the 
Strohgasse and across the road without once turning 
round until he finally stopped before a new building 
among the last houses. It had not yet been completed, 
the walls stood bare; there were no doors or windows. 
Kromer looked all around him hnd went in through the 
gap for the door, and I followed. He beckoned to me 
behind the wall and stretched out his hand. 

“Have you got it?” he asked coldly. 

I drew my clenched hand out of my pocket and 
emptied my money into his flat palm. He had counted 
it before the last five-pfennig piece had rattled out. 

“There’s sixty-five pfennig here,” he said looking at 
me hard. 

“Yes,” I said nervously. "That’s all I have; I know it’s 
not enough. But it’s all I have.” 

"I didn’t think you were such a fool,” he reproved, 
almost mildly, “things should be done right and proper 
between men of honour. I won’t take anything from 
you that isn’t correct, see. Take your nickel coins back, 
there 1 The other chap — you know who— doesn’t try to 
beat me down. He pays up.” 

“But I haven’t any morel It was my money-box.” 

“That’s your affair. But I won’t upset you. You can 
still owe me one mark thirty-five. When shall I get it?” 

“Oh, you’ll get it all right, Kromer. I can’t quite say
now — perhaps ill have some more money tomorrow or 
the day after. You realise that I can’t breathe a word to 
my father about this.” . 

"That’s nothing to do with me. I’m not one to do you 
harm. I could have my money by midday, you know, and 
I’m poor. You’ve got good clothes on and get better 
meals than me. But I won’t say anything. I’m prepared 
to wait a bit. The day after tomorrow I’ll give you a 
whistle at midday and then you can settle with me. You 
know my whistle?” 

He let me hear it, though I had heard it often enough. 

"Yes,” I said, "I know it." 

He went off as if I had nothing to do with him. It 
had been a business transaction between us; nothing 
more. 


I think Kromer’s whistle would frighten me even 
to-day if I suddenly heard it. It seemed to me that I 
heard it, repeatedly. There was no place, game, work or 
thought which his whistle did not penetrate, the whistle 
which made me his slave and had become my fate. I 
frequently went into our small flower garden pf which 
I was very fond on those mild, colourful autumn after- 
noons, and a strange urge prompted me to return to 
some of the games of my earlier boyhood. I was playing 
the part of someone younger than myself who was good, 
frank, innocent and secure, but in the midst of all this, 
always expected and yet horribly surprising and frighten- 
ing, Kromer’s whistle would sound from somewhere, 
interrupting my games and shattering my dreams. Then 
I had to go and follow my tormentor to odious places, 
render him an account and let myself be pressed for 
payment. The whole affair had probably not lasted 
more than a few weeks but to me they seemed years, an 
eternity. Only rarely was I able to produce an odd five- 
pfennig piece or a groschen stolen from the kitchen 
table when Lina had left the shopping-basket there. 
Each time I received a reprimand from Kromer who 
heaped scorn on my head; I was cheating him, trying to 
do him out of his rightful property. I was robbing him; 
making him miserable 1 Rarely have I felt so distressed 
in my life, never more desperate or so much in some one 
else’s clutches. No one inquired about the money-box 
which I had filled with counters and restored to its 
place. But the scandal might break over my head any 
day I was even more frightened of my mother when she 
crept quietly up to me than of Kromer’s strident whistle 
— was she coming to ask about the box? 

As I had appeared before my persecutor without 
money on many occasions, he began to find other means 
of torturing me. He made me work for him. He had to 
do various errands for his father which I had to do for 
him. Or he required me to execute some difficult feat — 
hop for ten minutes on one leg, attach a scrap of paper 
to the overcoat of some passer-by. These tortures con- 
tinued many a night in my dreams as 1 lay in the sweat 
of a nightmare. 

I began to feel ill. I kept having fits of sickness, and 
was easily chilled but at nights I sweated again. Mother ' 
suspected some hidden reason and showed me a great 
deal of sympathetic solicitude which only made me feel
worse since I could not respond to her confidence. 

One night she brought a piece of chocolate up to me 
when I was in bed. It was an echo of earlier years when 
I had often been vouchsafed similar little treats at night 
if I had been good. Now she stood there, holding out the 
chocolate. I felt so ill that I could only shake my head. 
She asked me what was the matter and stroked my hair. 
But I could only jerk out, “No. Nol I don’t want any- 
thing 1 ’’ She deposited the chocolate on the bedside-table 
and left me. When she tried to find out the reason for 
my behaviour next day, I pretended not to understand. 
On one occasion she sent for the doctor who examined 
me and prescribed cold ablutions in the mornings. 

My condition at that time was a kind of delirium. I 
lived in the midst of the ordered peace of our house, 
nervous and tormented like a ghost, with no part in the 
life of the others and rarely able to forget my troubles 
even for an hour. Towards my father who was often 
irritated and called me to account, I was cold and 
uncommunicative. 
"""
  ].obs;

  @override
  void onInit() {
    // this is available only on flutter upto 2.9.0
    try {
        BrowserContextMenu.disableContextMenu();
    }on AssertionError {
      // just ignore the error
    }
    super.onInit();
  }

  incrementPage() {
    if (currentPage < pages.length - 1) {
      currentPage++;
    }

  }

  decrementPage() {
    if (currentPage > 0) {
      currentPage--;
    }
  }
}

class ReadPage extends StatelessWidget {
  ReadPage({super.key});

  final ReadController controller = Get.put(ReadController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nonskip Classic"),
      ),
      body: Obx(
        () => Column(
          children: [
            // The name of the chapter
            const Text("Chapter 1 - Two Realms",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            // this is where the contents are in
            Expanded(
              child: SingleChildScrollView(
                child: CustomSelectableText(
                      controller.pages[controller.currentPage.value],
                      scrollPhysics: const BouncingScrollPhysics(),
                      style: const TextStyle(
                        fontSize: 20,
                        ),
                      items: [
                        CustomSelectableTextItem(
                          label: "무슨 뜻이야?",
                          controlType: SelectionControlType.other,
                          onPressed: (text) {
                            Get.toNamed(
                            '/understandchat', 
                            arguments: {'context': controller.pages[controller.currentPage.value], 'selectedText': text, 'for': "understand"},
                            );
                          }
                        ),
                      ],
                    )
                ),
            ),
            // three buttons: 이전, 다음, 챕터 끝내기
            const SizedBox(height: 30),
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        controller.decrementPage();
                      },
                      child: const Text("이전"),
                    ),
                    const SizedBox(width: 10),
                    Text("${controller.currentPage}/${controller.pages.length - 1}"),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        controller.incrementPage();
                      },
                      child: const Text("다음"),
                    ),
                  ],
                ),
            const SizedBox(height: 30),
            ElevatedButton(
            onPressed: () => Get.toNamed('/reflectchat', arguments: {'for': "reflect"}),
            child: const Text("[해세]와 함께 챕터 회고하기 🤔"),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
