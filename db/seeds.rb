# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Album.destroy_all
Track.destroy_all

users = User.create([{
  username: 'guest',
  password: 'password'
}])

albums = Album.create([{
  title: "DAMN.",
  release_date: 20170414,
  musician: "Kendrick Lamar",
  image: File.open('app/assets/images/DAMN.jpg')
},{
  title: "The Infamous",
  release_date: 19950425,
  musician: "Mobb Deep",
  image: File.open('app/assets/images/the_infamous.jpg')
},{
  title: "2014 Forest Hills Drive",
  release_date: 20141209,
  musician: "J. Cole",
  image: File.open('app/assets/images/2014_forest_hills_drive.jpg')
},{
  title: "The Black Album",
  release_date: 20031114,
  musician: "JAY-Z",
  image: File.open('app/assets/images/the_black_album.jpg')
},{
  title: "My Beautiful Dark Twisted Fantasy",
  release_date: 20101122,
  musician: "Kanye West",
  image: File.open('app/assets/images/mbdtf.jpg')
},{
  title: "Beautiful Thugger Girls",
  release_date: 20170616,
  musician: "Young Thug",
  image: File.open('app/assets/images/beautiful_thugger_girls.jpg')
},{
  title: "My Name Is My Name",
  release_date: 20131007,
  musician: "Pusha T",
  image: File.open('app/assets/images/my_name_is_my_name.jpg')
},{
  title: "Tha Carter III",
  release_date: 20080610,
  musician: "Lil Wayne",
  image: File.open('app/assets/images/tha_carter_III.jpg')
},{
  title: "Illmatic",
  release_date: 19940419,
  musician: "Nas",
  image: File.open('app/assets/images/illmatic.jpg')
},{
  title: "Trey Day",
  release_date: 20071001,
  musician: "Trey Songz",
  image: File.open('app/assets/images/trey_day.jpg')}
])

tracks = Track.create([{
  album_id: Album.find_by_title("DAMN.").id,
  title: "BLOOD.",
  features: "",
  producer: ["Bēkon", "Anthony \"Top Dawg\" Tiffith"],
  lyrics: "[Intro: Bēkon]
Is it wickedness?
Is it weakness?
You decide
Are we gonna live or die?

[Verse: Kendrick Lamar]
So I was takin' a walk the other day,
and I seen a woman—a blind woman—pacin' up and down the sidewalk.
She seemed to be a bit frustrated,
as if she had dropped somethin' and havin' a hard time findin' it.
So after watchin' her struggle for a while,
I decide to go over and lend a helping hand,
you know? \"Hello, ma'am, can I be of any assistance?
It seems to me that you have lost something.
I would like to help you find it.\"
She replied: \"Oh yes, you have lost something.
You've lost... your life.\"

{Gunshot}

[Bridge: Bēkon]
Is it wickedness?

[Outro]
Lamar stated his views on police brutality with that line in the song,
quote: \"And we hate the popo, wanna kill us in the street fo' sho'…\"
Oh please, ugh, I don't like it."
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "DNA.",
  features: "",
  producer: ["Mike WiLL Made-It"],
  lyrics: "[Verse 1]
I got, I got, I got, I got
Loyalty, got royalty inside my DNA
Cocaine quarter piece, got war and peace inside my DNA
I got power, poison, pain and joy inside my DNA
I got hustle though, ambition, flow, inside my DNA
I was born like this, since one like this
Immaculate conception
I transform like this, perform like this
Was Yeshua new weapon
I don't contemplate, I meditate, then off your fucking head
This that put-the-kids-to-bed
This that I got, I got, I got, I got
Realness, I just kill shit ’cause it's in my DNA
I got millions, I got riches buildin' in my DNA
I got dark, I got evil, that rot inside my DNA
I got off, I got troublesome heart inside my DNA
I just win again, then win again like Wimbledon, I serve
Yeah, that’s him again, the sound that engine in is like a bird
You see fireworks and Corvette tire skrrt the boulevard
I know how you work, I know just who you are
See, you's a, you's a, you's a—
Bitch, your hormones prolly switch inside your DNA
Problem is, all that sucker shit inside your DNA
Daddy prolly snitched, heritage inside your DNA
Backbone don't exist, born onside a jellyfish, I gauge
See, my pedigree most definitely don't tolerate the front
Shit I've been through prolly offend you
This is Paula's oldest son
I know murder, conviction
Burners, boosters, burglars, ballers, dead, redemption
Scholars, fathers dead with kids
And I wish I was fed forgiveness
Yeah, yeah, yeah, yeah, soldier’s DNA
Born inside the beast
My expertise checked out in second grade
When I was 9, on-sale motel, we didn’t have nowhere to stay
At 29, I've done so well, hit cartwheel in my estate
And I’m gon' shine like I'm supposed to
Antisocial, extrovert
And excellent mean the extra work
And absentness what the fuck you heard
And pessimists never struck my nerve
And Nazareth gonna plead his case
The reason my power's here on earth
Salute the truth, when the prophet say

[Bridge]
I got loyalty, got royalty inside my DNA
This is why I say that hip hop has done more damage to young African Americans than racism in recent years
I got loyalty, got royalty inside my DNA
I live a better life, I’m rollin' several dice, fuck your life
I got loyalty, got royalty inside my DNA
I live a better, fuck your life
5, 4, 3, 2, 1
This is my heritage, all I'm inheritin'
Money and power, the making of marriages

[Verse 2]
Tell me somethin'
You mothafuckas can't tell me nothin'
I'd rather die than to listen to you
My DNA not for imitation
Your DNA an abomination
This how it is when you're in the Matrix
Dodgin' bullets, reapin' what you sow
And stackin' up the footage, livin' on the go
And sleepin' in a villa
Sippin' from a Grammy and walkin' in the buildin'
Diamond in the ceilin', marble on the floors
Beach inside the window, peekin' out the window
Baby in the pool, godfather goals
Only Lord knows, I've been goin' hammer
Dodgin' paparazzi, freakin' through the cameras
Eat at Four Daughters, Brock wearin' sandals
Yoga on a Monday, stretchin' to Nirvana
Watchin' all the snakes, curvin' all the fakes
Phone never on, I don't conversate
I don't compromise, I just penetrate
Sex, money, murder—these are the breaks
These are the times, level number 9
Look up in the sky, 10 is on the way
Sentence on the way, killings on the way
Motherfucker, I got winners on the way
You ain't shit without a body on your belt
You ain't shit without a ticket on your plate
You ain't sick enough to pull it on yourself
You ain't rich enough to hit the lot and skate
Tell me when destruction gonna be my fate
Gonna be your fate, gonna be our faith
Peace to the world, let it rotate
Sex, money, murder—our DNA

[Video Outro]
DNA
Gimme some ganja, gimme some ganja
DNA
Gimme some ganja
Real nigga in my DNA
Ain't no ho inside my DNA
Drippin' gold inside my DNA
Power shows inside my DNA
DNA
Gimme some ganja, gimme some ganja
Real nigga in my DNA
Ain't no ho inside my DNA"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "YAH.",
  features: "",
  producer: ["Anthony \"Top Dawg\" Tiffith", "Sounwave", "DJ DAHI"],
  lyrics: "[Intro: Kid Capri]
New shit, new Kung Fu Kenny

[Verse 1]
I got so many theories and suspicions
I'm diagnosed with real nigga conditions
Today is the day I follow my intuition
Keep the family close—get money, fuck bitches
I double parked the Aston in the red
My mama told me that I'ma work myself to death
My girl told me don't let these hoes get in my head
My world been ecstatic, I checked the signal that read—

[Chorus]
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah

[Verse 2]
Interviews wanna know my thoughts and opinions
Fox News wanna use my name for percentage
My latest muse is my niece, she worth livin'
See me on the TV and scream: \"That's Uncle Kendrick!\"
Yeah, that's the business
Somebody tell Geraldo this nigga got some ambition
I'm not a politician, I'm not 'bout a religion
I'm a Israelite, don't call me Black no mo'
That word is only a color, it ain't facts no mo'
My cousin called, my cousin Carl Duckworth
Said know my worth
And Deuteronomy say that we all been cursed
I know he walks the Earth
But it's money to get, bitches to hit, yah
Zeroes to flip, temptation is, yah
First on my list, I can't resist, yah
Everyone together now, know that we forever—

[Chorus]
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah
Buzzin', radars is buzzin'
Yah, yah, yah, yah
Yah, yah, yah, yah, yah, yah"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "ELEMENT.",
  features: "",
  producer: ["James Blake", "Sounwave" , "Ricci Riera"],
  lyrics: "[Intro: Kid Capri & Kendrick Lamar]
New Kung Fu Kenny
Ain't nobody prayin' for me
Y'all know, what happens on Earth stays on Earth
Here we go!
I don't give a fuck, I don't give a fuck
I don't give a, I don't give a, I don't give a fuck

[Verse 1]
I'm willin' to die for this shit
I done cried for this shit, might take a life for this shit
Put the Bible down and go eye for an eye for this shit
D.O.T. my enemy, won't catch a vibe for this shit, ayy
I been stomped out in front of my mama
My daddy commissary made it to commas
Bitch, all my grandmas dead
So ain't nobody prayin' for me, I'm on your head, ayy
Thirty millions later, know the feds watchin'
Auntie on my Telegram, like, \"Be cautious!\"
I be hangin' out at Tam's, I be on Stockton
I don't do it for the 'Gram, I do it for Compton
I'm willin' to die for this shit, nigga
I'll take your fuckin' life for this shit, nigga
We ain't goin' back to broke, family sellin' dope
That's why you mainey-ass rap niggas better know

[Chorus]
If I gotta slap a pussy-ass nigga, I'ma make it look sexy
If I gotta go hard on a bitch, I'ma make it look sexy
I pull up, hop out, air out, made it look sexy
They won't take me out my element
Nah, take me out my element

[Verse 2]
I'm allergic to a bitch nigga, ayy
An imaginary rich nigga, ayy
Seven figures, ho, that's slimmer than my bitch figure, ayy
Goin' digital and physical on all y'all, ayy
Bunch of criminals and money in my phone calls, ayy
We okay, we let the A1 fly
Relocate, jump on the same G5
Checkin' for me heavy 'cause I go yeah, I go yeah
They never been ready—yeah, I know yeah, know yeah
100K spread across the floor, 'cross the floor, yeah
None of y'all fuckin' with the flow yeah, the flow yeah
Years in the makin', and don't y'all mistake it
I got 'em by a landslide, we talkin' about races
You know this'll never be a tie, just look at their laces
You know careers take off, just gotta be patient
Mr. One through Five, that's the only logic
Fake my death, go to Cuba, that's the only option

[Chorus]
If I gotta slap a pussy-ass nigga, I'ma make it look sexy
If I gotta go hard on a bitch, I'ma make it look sexy
I pull up, hop out, air out, made it look sexy
They won't take me out my element
Nah, take me out my element

[Bridge]
Damned if I do, if I don't (yuhhh)
Goddamn us all if you won't (yuhhh)
Damn, damn, damn, it's a goddamn shame
You ain't frontline, get out the goddamn way

[Verse 3]
Niggas thought they wasn't gonna see me, huh?
Niggas thought that K-Dot real life
Was the same life they see on TV, huh?
Niggas wanna flex on me and be in L.A. for free, huh?
Next time they hit the 10 freeway, we need receipt, huh?
'Cause most of y'all ain't real
Most of y'all gon' squeal
Most of y'all just envy, but jealousy get you killed
Most of y'all throw rocks and try to hide your hand
Just say his name and I promise that you'll see Candyman
Because it's all in your eyes, most of y'all tell lies
Most of y'all don't fade, most of y'all been advised
Last LP I tried to lift the black artists
But it's a difference between black artists and wack artists

[Outro: Kendrick Lamar & Kid Capri]
If I gotta slap a pussy-ass nigga, I'ma make it look sexy
It's the one and only, the world's greatest, the Kid Capri
If I gotta go hard on a bitch, I'ma make it look sexy
I pull up, hop out, air out, made it look sexy
They won't take me out my element
Nah, take me out my element"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "FEEL.",
  features: "",
  producer: ["Soundwave"],
  lyrics: "[Intro: Kendrick Lamar & Chelsea Blythe]
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin' for me

[Verse 1]
I feel like a chip on my shoulders
I feel like I'm losin' my focus
I feel like I'm losin' my patience
I feel like my thoughts in the basement
Feel like, I feel like you're miseducated
Feel like I don't wanna be bothered
I feel like you may be the problem
I feel like it ain't no tomorrow, fuck the world
The world is endin', I'm done pretendin'
And fuck you if you get offended
I feel like friends been overrated
I feel like the family been fakin'
I feel like the feelings are changin'
Feel like my thought of compromise is jaded
Feel like you wanna scrutinize how I made it
Feel like I ain't feelin' you all
Feel like removin' myself, no feelings involved
I feel for you, I've been in the field for you
It's real for you, right? Shit, I feel like—

[Chorus]
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin' for me
Ain't nobody prayin'

[Verse 2]
I feel niggas been out of pocket
I feel niggas tappin' they pockets
I feel like debatin' on who the greatest can stop it
I am legend, I feel like all of y'all is peasants
I feel like all of y'all is desperate
I feel like all it take is a second to feel like
Mike Jordan whenever holdin' a real mic
I ain't feelin' your presence
Feel like I'ma learn you a lesson
Feel like only me and the music, though
I feel like your feelin' ain't mutual
I feel like the enemy you should know
Feel like the feelin' of no hope
The feelin' of bad dope
A quarter ounce manipulated from soap
The feelin', the feelin' of false freedom
I'll force-feed 'em the poison that fill 'em up in the prison
I feel like it's just me
Look, I feel like I can't breathe
Look, I feel like I can't sleep
Look, I feel heartless, often off this
Feelin' of fallin', of fallin' apart with
Darkest hours, lost it
Fillin' the void of bein' employed with ballin'
Streets is talkin', fill in the blanks with coffins
Fill up the banks with dollars
Fill up the graves with fathers
Fill up the babies with bullshit
Internet blogs and pulpit, fill 'em with gossip
I feel like this gotta be the feelin' what 'Pac was
The feelin' of an apocalypse happenin'
But nothin' is awkward, the feelin' won't prosper
The feelin' is toxic, I feel like I'm boxin' demons
Monsters, false prophets schemin'
Sponsors, industry promises
Niggas, bitches, honkies, crackers, Compton
Church, religion, token blacks in bondage
Lawsuit visits, subpoena served in concert
Fuck your feelings, I mean this for imposters
I can feel it, the phoenix sure to watch us
I can feel it, the dream is more than process
I can put a regime that forms a Loch Ness
I can feel it, the scream that haunts our logic
I feel like say somethin', I feel like take somethin'
I feel like skatin' off, I feel like waitin' for 'em
Maybe it's too late for 'em
I feel like the whole world want me to pray for 'em
But who the fuck prayin' for me?

[Outro]
Ain't nobody prayin' for me
Who prayin' for me?
Ain't nobody prayin'"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "LOYALTY.",
  features: "Rihanna",
  producer: ["Anthony \"Top Dawg\" Tiffith", "Terrace Martin", "Sounwave", "DJ Dahi"],
  lyrics: "[Intro: Mr. Talkbox]

[Pre-Chorus: DJ Dahi]
I said I'm geeked and I’m fired up (fired, fire)
All I want tonight is just to get high up (high, high, high)
Girl, you look so good, it's to die for (die for)
Ooh, that pussy good, it's to die for (on fire)

[Chorus 1: Kendrick Lamar & Rihanna]
It’s a secret society
All we ask is trust
(All we ask is trust)
All we got is us
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty

[Verse 1: Kendrick Lamar]
Kung Fu Kenny now
My resume is real enough for two millenniums
A better way to make a wave, stop defendin' them
I meditate and moderate all of my wins again
I'm hangin' on the fence again
I'm always on your mind
I put my lyric and my lifeline on the line
And ain't no limit when I might shine, might grind
You rollin' with it at the right time, right now
(Only for the dollar sign)

[Verse 2: Rihanna]
Bad girl RiRi now
Swerve, swerve, swerve, swerve, leave it now
On your pulse like it's EDM
Gas in the bitch like it’s premium
Haul ass on a bitch all in the fast lane
Been a bad bitch way before any cash came
I’m established
Hundred carats on my name
Run the atlas, I'm a natural, I’m alright

[Verse 3: Kendrick Lamar & Rihanna]
I'm a savage, I'm a asshole, I'm a king
Shimmy ya, shimmy ya, shimmy ya rock (yeah)
You can tell your nigga he can meet me outside (yeah)
You can babysit him when I leave him outside
Ain’t no other love like the one I know
I done been down so long lost hope
I done came down so hard I slowed
Honestly forever, all a real nigga want

[Pre-Chorus: DJ Dahi]
I said I'm geeked and I'm fired up (fired, fire)
All I want tonight is just to get high up (yeah)
(All I want is, all I want is)

[Chorus 2: Kendrick Lamar & Rihanna]
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty
10-4, no switchin' sides
Feel somethin' wrong
You actin' shifty, you don't ride
With me no more, I need
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty

[Verse 4: Kendrick Lamar]
Tell me who you loyal to
Is it money? Is it fame? Is it weed? Is it drink?
Is it comin' down with the loud pipes and the rain?
Big chillin', only for the power in your name
Tell me who you loyal to
Is it love for the streets when the lights get dark?
Is it unconditional when the 'Rari don't start?
Tell me when your loyalty is comin' from the heart

[Verse 5: Rihanna & Kendrick Lamar]
Tell me who you loyal to
Do it start with your woman or your man? (Mmm)
Do it end with your family and friends? (Mmm)
Or you're loyal to yourself in advance?
I said, tell me who you loyal to
Is it anybody that you would lie for?
Anybody you would slide for?
Anybody you would die for?
That's what God for

[Pre-Chorus: DJ Dahi]
I said I'm geeked and I'm fired up (fired, fire)
All I want tonight is just to get high up
(All I want is, all I want is)

[Chorus 2: Kendrick Lamar & Rihanna]
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty
10-4, no switchin' sides
Feel somethin' wrong
You actin' shifty, you don't ride
With me no more, I need
Loyalty, loyalty, loyalty
Loyalty, loyalty, loyalty

[Outro: Rihanna]
It's so hard to be humble
It's so hard to be
Lord knows I'm tryin'
Lord knows I'm dyin', baby"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "PRIDE.",
  features: "",
  producer: ["Anthony \"Top Dawg\" Tiffith", "Steve Lacy"],
  lyrics: "[Intro: Bēkon]
Love's gonna get you killed
But pride’s gonna be the death of you and you and me
And you and you and you and me
And you and you and you and me
And you and you and you and me and—

[Chorus: Steve Lacy & Kendrick Lamar]
Me, I wasn't taught to share, but care
In another life, I surely was there
Me, I wasn't taught to share, but care
I care, I care

[Verse 1: Kendrick Lamar]
Hell-raising, wheel-chasing, new worldy possessions
Flesh-making, spirit-breaking, which one would you lessen?
The better part, the human heart
You love ’em or dissect 'em
Happiness or flashiness? How do you serve the question?
See, in the perfect world, I would be perfect, world
I don't trust people enough beyond they surface, world
I don't love people enough to put my faith in men
I put my faith in these lyrics, hoping I make amend
I understand I ain't perfect
I probably won't come around
This time, I might put you down
Last time, I ain't give a fuck, I still feel the same now
My feelings might go numb, you're dealing with cold thumb
I’m willing to give up a leg and arm and show empathy from
Pity parties and functions and you and yours
A perfect world, you probably live another 24
I can’t fake humble just 'cause your ass is insecure
I can’t fake humble just 'cause your ass is insecure

[Chorus: Steve Lacy & Kendrick Lamar]
Me, I wasn't taught to share, but care
In another life, I surely was there
Me, I wasn't taught to share, but care
I care, I care

[Refrain: Kendrick Lamar & Anna Wise]
Maybe I wasn’t there
Maybe I wasn't there
Maybe I wasn't there
Maybe I wasn't there

[Verse 2: Kendrick Lamar]
Now, in a perfect world, I probably won't be insensitive
Cold as December, but never remember what Winter did
I wouldn't blame you for mistakes I made or the bed I laid
Seems like I point the finger just to make a point nowadays
Smiles and cold stares, the temperature goes there
Indigenous disposition, feel like we belong here
I know the walls, they can listen, I wish they could talk back
The hurt becomes repetition, the love almost lost that
Sick venom in men and women overcome with pride
A perfect world is never perfect, only filled with lies
Promises are broken and more resentment come alive
Race barriers make inferior of you and I
See, in a perfect world, I'll choose faith over riches
I'll choose work over bitches, I'll make schools out of prison
I'll take all the religions and put 'em all in one service
Just to tell 'em we ain't shit, but He's been perfect, world

[Chorus: Steve Lacy & Kendrick Lamar]
Me, I wasn't taught to share, but care
In another life, I surely was there
Me, I wasn't taught to share, but care
I care, I care

[Refrain: Kendrick Lamar & Anna Wise]
Maybe I wasn't there
Maybe I wasn't there
Maybe I wasn't there
Maybe I wasn't there"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "HUMBLE.",
  features: "",
  producer: ["Mike WiLL Made-It"],
  lyrics: "[Video Intro]

Wicked or weakness?
You gotta see this
Waaaaay (yeah, yeah!)

[Album Intro]
Nobody pray for me
It's been that day for me
Waaaaay (yeah, yeah!)

[Verse 1]
Ayy, I remember syrup sandwiches and crime allowances
Finesse a nigga with some counterfeits, but now I’m countin' this
Parmesan where my accountant lives; in fact, I'm downin’ this
D'USSÉ with my boo bae tastes like Kool-Aid for the analysts
Girl, I can buy yo' ass the world with my paystub
Ooh, that pussy good, won't you sit it on my taste bloods?
I get way too petty once you let me do the extras
Pull up on your block, then break it down: we playin' Tetris
A.M. to the P.M., P.M. to the A.M., funk
Piss out your per diem, you just gotta hate 'em, funk
If I quit your BM, I still ride Mercedes, funk
If I quit this season, I still be the greatest, funk
My left stroke just went viral
Right stroke put lil' baby in a spiral
Soprano C, we like to keep it on a high note
It's levels to it, you and I know

[Chorus]
Bitch, be humble (hol’ up, bitch)
Sit down (hol’ up, lil', hol’ up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil’, sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)
Be humble (hol' up, hol' up)
Sit down (hol' up, hol' up, lil', hol' up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil', sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)

[Verse 2]
Who dat nigga thinkin' that he frontin' on Man-Man? (Man-Man)
Get the fuck off my stage, I'm the Sandman (Sandman)
Get the fuck off my dick, that ain't right
I make a play fucking up your whole life
I'm so fuckin' sick and tired of the Photoshop
Show me somethin' natural like afro on Richard Pryor
Show me somethin' natural like ass with some stretch marks
Still will take you down right on your mama's couch in Polo socks
Ayy, this shit way too crazy, ayy, you do not amaze me, ayy
I blew cool from AC, ayy, Obama just paged me, ayy
I don't fabricate it, ayy, most of y'all be fakin', ayy
I stay modest 'bout it, ayy, she elaborate it, ayy
This that Grey Poupon, that Evian, that TED Talk, ayy
Watch my soul speak, you let the meds talk, ayy
If I kill a nigga, it won't be the alcohol, ayy
I'm the realest nigga after all

[Chorus]
Bitch, be humble (hol' up, bitch)
Sit down (hol' up, lil', hol' up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil', sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)
Be humble (hol' up, hol' up)
Sit down (hol' up, hol' up, lil', hol' up, lil' bitch)
Be humble (hol' up, bitch)
Sit down (hol' up, sit down, lil', sit down, lil' bitch)
Be humble (hol' up, hol' up)
Bitch, sit down (hol' up, hol' up, lil' bitch)
Be humble (lil' bitch, hol' up, bitch)
Sit down (hol' up, hol' up, hol' up, hol' up)"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "LUST.",
  features: "",
  producer: ["BADBADNOTGOOD", "Sounwave", "DJ DAHI"],
  lyrics: "[Chorus: Kendrick Lamar]
I need some water
Somethin' came over me
Way too hot to simmer down
Might as well overheat
Too close to comfort
As blood rush my favorite vein
Heartbeat racin' like a junkie's
I just need you to want me
Am I askin' too much?
Let me put the head in
Ooh, I don't want more than that
Girl, I respect the cat
I promise just a touch
Let me put the head in, if it's okay
She said, \"It's okay.\"

[Interlude: Kendrick Lamar & RAT BOY]
Yeah, I need everybody's motherfuckin' hands up right now
I need everybody's motherfuckin'—
Door and his Nike Air Rattles
Rush the fire exit, no time for battles
Well I, I never expected
This that new shit
This that new, new shit

[Verse 1: Kendrick Lamar & RAT BOY]
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Watch you a comedy, take a shit, then roll some weed up
Go hit you a lick, go fuck on a bitch
Don't go to work today, cop you a fit
Or maybe some kicks and make you—
Door in his Nike Air Rattles
Rush the fire exit, no time for battles
Well I, I never expected
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Watch you a comedy— hol' up!
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Watch you a comedy, take a shit, then roll some weed up
Go hit you a lick, go fuck on a bitch, don't go to work today
Cop you a fit or maybe some kicks and make it work today
Hang with your homies, stunt on your baby mama
Sip some lean, go get a pistol, shoot out the window
Bet your favorite team, play you some Madden
Go to the club or your mama house
Whatever you doin', just make it count
(I need some water)
Wake up in the mornin', thinkin' 'bout money, kick your feet up
Hop in the shower, put on your makeup, lace your weave up
Touch on yourself, call up your nigga, tell him he ain't shit
Credit card scam, get you a Visa, make him pay your rent
Hop on the 'Gram, flex on the bitches that be hatin' on you
Pop you a pill, call up your bitches, have 'em waitin' on you
Go to the club, have you some fun, make that ass bounce
It's whatever, just make it count

[Chorus: Kendrick Lamar]
I need some water
Somethin' came over me
Way too hot to simmer down
Might as well overheat
Too close to comfort
As blood rush my favorite vein
Heartbeat racin' like a junkie's
I just need you to want me
Am I askin' too much?
Let me put the head in
Ooh, I don't want more than that
Girl, I respect the cat
I promise just a touch
Let me put the head in, if it's okay
She said, \"It's okay.\"

[Verse 2: Kendrick Lamar]
I wake in the mornin', my head spinnin' from the last night
Both in the trance, feelings are dead — what a fast life!
Manager called, the lobby called, it's 11:30
Did this before, promised myself I'd be a hour early
Room full of clothes, bag full of money: call it loose change
Fumbled my jewelry, 100k, I lost a new chain
Hop on the bird, hit the next city for another M
Take me a nap and do it again
We all woke up, tryna tune to the daily news
Lookin' for confirmation, hopin' election wasn't true
All of us worried, all of us buried, and our feelings deep
None of us married to his proposal, make us feel cheap
Still and sad, distraught and mad, tell the neighbor 'bout it
Bet they agree, parade the streets with your voice proudly
Time passin', things change
Revertin' back to our daily programs, stuck in our ways; Lust

[Bridge: Kendrick Lamar]
Lately, I feel like I been lustin' over the fame
Lately, we lust on the same routine of shame
Lately, lately, lately, my lust been heightened (lately)
Lately, it’s all contradiction
Lately, I’m not here
Lately, I lust over self
Lust turn into fear
Lately, in James 4:4 says
Friend of the world is enemy of the Lord
Brace yourself, lust is all yours

[Chorus: Kendrick Lamar]
I need some water
Somethin' came over me
Way too high to simmer down
Might as well overheat
Too close to comfort
As blood rush my favorite vein
Heartbeat racin' like a junkie's
I just need you to want me
Am I askin' too much?
Let me put the head in
Ooh, I don't want more than that
Girl, I respect the cat
I promise just a touch
Let me put the head in, if it's okay
She said, \"It's okay.\""
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "LOVE.",
  features: "Zacari",
  producer: ["Anthony \"Top Dawg\" Tiffith", "Greg Kurstin", "Sounwave", "Teddy Walton"],
  lyrics: "[Streaming Intro: Kendrick Lamar]
Damn, love or lust
Damn, all of us

[Physical Intro: Kid Capri]
We still lettin' it spin, y’all
Here we go!

[Chorus: Zacari & Kendrick Lamar]
Give me a run for my money
There is nobody, no one to outrun me
(Another world premiere!)
So give me a run for my money
Sippin' bubbly, feelin' lovely, livin’ lovely
Just love me
I wanna be with you, ayy, I wanna be with
Just love me, just love me, just love me
I wanna be with you, ayy, I wanna be with
Love me
I wanna be with you
Love me, just love me

[Refrain: Kendrick Lamar & Zacari]
If I didn't ride blade on curb, would you still love me?
If I minimized my net worth, would you still love me?
Keep it a hundred, I'd rather you trust me than to love me
Keep it a whole one hund': don't got you, I got nothin'

[Verse 1: Kendrick Lamar]
Ayy, I got somethin'
Hol' up, we gon’ function, no assumptions
Feelin’ like Tyson with it
Knock it out twice, I'm with it
Only for the night, I’m kiddin'
Only for life, you're a homie for life
You're a homie for life, let’s get it
Hit that shoulder lean
I know what comin' over mean
Backstroke oversea
I know what you need
Already on ten, our money come in
All feeling go out, this feeling don't drought
This party won't end

[Refrain: Kendrick Lamar & Zacari]
If I didn't ride blade on curb, would you still love me?
If I minimized my net worth, would you still love me?
Keep it a hundred, I'd rather you trust me than to love me
Keep it a whole one hund': don't got you, I got nothin'

[Chorus: Zacari & Kendrick Lamar]
Give me a run for my money
There is nobody, no one to outrun me
So give me a run for my money
Sippin' bubbly, feelin' lovely, livin' lovely
Just love me
I wanna be with you, ayy, I wanna be with
Just love me, just love me, just love me
I wanna be with you, ayy, I wanna be with
Love me
I wanna be with you
Love me, just love me

[Verse 2: Kendrick Lamar]
I'm on the way
We ain't got no time to waste
Poppin' your gum on the way
Am I in the way?
I don't wan' pressure you none
I want your blessing today
Oh, by the way, open the door by the way
Told you that I'm on the way
I'm on the way, I know connection is vague
Pick up the phone for me, babe
Damn it, we jammin'
Bad attitude from yo' nanny
Curves and your hips from yo' mammy
Remember Gardena, I took the studio camera
I know Top will be mad at me
I had to do it, I want your body, your music
I bought the big one to prove it
Look what you made
Told you that I'm on the way
I'm like an exit away, yep

[Refrain: Kendrick Lamar & Zacari]
If I didn't ride blade on curb, would you still love me?
If I minimized my net worth, would you still love me?
Keep it a hundred, I'd rather you trust me than to love me
Keep it a whole one hund': don't got you, I got nothin'

[Chorus: Zacari & Kendrick Lamar]
Give me a run for my money
There is nobody, no one to outrun me
So give me a run for my money
Sippin' bubbly, feelin' lovely, livin' lovely
Just love me
I wanna be with you, ayy, I wanna be with
Just love me, just love me, just love me
I wanna be with you, ayy, I wanna be with
Love me
I wanna be with you
Love me, just love me"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "XXX.",
  features: "U2",
  producer: ["Anthony \"Top Dawg\" Tiffith", "DJ Dahi", "Sounwave", "Mike WiLL Made-It"],
  lyrics: "[Intro: Bēkon & Kid Capri]
America, God bless you if it's good to you
America, please take my hand
Can you help me underst—
New Kung Fu Kenny

[Verse 1: Kendrick Lamar]
Throw a steak off the ark
To a pool full of sharks, he'll take it
Leave him in the wilderness
With a sworn nemesis, he'll make it
Take the gratitude from him
I bet he'll show you somethin', whoa
I'll chip a nigga little bit of nothin'
I'll chip a nigga little bit of nothin'
I'll chip a nigga little bit of nothin'
I'll chip a nigga, then throw the blower in his lap
Walk myself to the court like, \"Bitch, I did that!\"
X-rated
Johnny don't wanna go to school no mo', no mo'
Johnny said books ain't cool no mo' (no mo')
Johnny wanna be a rapper like his big cousin
Johnny caught a body yesterday out hustlin'
God bless America, you know we all love him
Yesterday I got a call like from my dog like 101
Said they killed his only son because of insufficient funds
He was sobbin', he was mobbin', way belligerent and drunk
Talkin' out his head, philosophin' on what the Lord had done
He said: \"K-Dot, can you pray for me?
It been a fucked up day for me
I know that you anointed, show me how to overcome.\"
He was lookin' for some closure
Hopin' I could bring him closer
To the spiritual, my spirit do know better, but I told him
\"I can't sugarcoat the answer for you, this is how I feel:
If somebody kill my son, that mean somebody gettin' killed.\"
Tell me what you do for love, loyalty, and passion of
All the memories collected, moments you could never touch
I'll wait in front a niggas spot and watch him hit his block
I'll catch a nigga leavin' service if that's all I got
I'll chip a nigga, then throw the blower in his lap
Walk myself to the court like, \"Bitch, I did that!\"
Ain't no Black Power when your baby killed by a coward
I can't even keep the peace, don't you fuck with one of ours
It be murder in the street, it be bodies in the hour
Ghetto bird be on the street, paramedics on the dial
Let somebody touch my mama
Touch my sister, touch my woman
Touch my daddy, touch my niece
Touch my nephew, touch my brother
You should chip a nigga, then throw the blower in his lap
Matter fact, I'm 'bout to speak at this convention
Call you back—

[Interlude: Kendrick Lamar]
Alright, kids, we're gonna talk about gun control
(Pray for me) Damn!

[Chorus: Bono]
It's not a place
This country is to me a sound of drum and bass
You close your eyes to look around

[Verse 2: Kendrick Lamar]
Hail Mary, Jesus and Joseph
The great American flag
Is wrapped and dragged with explosives
Compulsive disorder, sons and daughters
Barricaded blocks and borders
Look what you taught us!
It's murder on my street, your street, back streets
Wall Street, corporate offices
Banks, employees, and bosses with
Homicidal thoughts; Donald Trump's in office
We lost Barack and promised to never doubt him again
But is America honest, or do we bask in sin?
Pass the gin, I mix it with American blood
Then bash him in, you Crippin' or you married to blood?
I'll ask again—oops—accident
It's nasty when you set us up
Then roll the dice, then bet us up
You overnight the big rifles, then tell Fox to be scared of us
Gang members or terrorists, et cetera, et cetera
America's reflections of me, that's what a mirror does

[Chorus: Bono]
It's not a place
This country is to me a sound of drum and bass
You close your eyes to look ar—"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "FEAR.",
  features: "",
  producer: ["The Alchemist"],
  lyrics: "[Intro]
Poverty's paradise
I don’t think I could find a way to make it on this earth
I've been hungry all my life

[Voicemail: Carl Duckworth]
What's up, family? Yeah, it’s yo cousin Carl, man,
just givin' you a call, man.
I know you been havin' a lot on yo mind lately,
and I know you feel like, you know,
people ain't been prayin' for you.
But you have to understand this, man, that we are a cursed people.
Deuteronomy 28:28 says,
\"The Lord shall smite thee with madness, and blindness,
and astonishment of heart.\"
See, family, that's why you feel like you feel like you got a chip on your shoulder.
Until you finally get the memo, you will always feel that way…

[Bridge: Charles Edward Sydney Isom Jr.]
Why God, why God do I gotta suffer?
Pain in my heart carry burdens full of struggle
Why God, why God do I gotta bleed?
Every stone thrown at you restin' at my feet
Why God, why God do I gotta suffer?
Earth is no more, won't you burn this muh’fucka?
I don’t think I could find a way to make it on this earth
(Reversed)

[Verse 1]
I beat yo ass, keep talkin' back
I beat yo ass, who bought you that?
You stole it, I beat yo ass if you say that game is broken
I beat yo ass if you jump on my couch
I beat yo ass if you walk in this house
With tears in your eyes, runnin’ from Poo Poo and Prentice
Go back outside, I beat yo ass, lil nigga
That homework better be finished, I beat yo ass
Your teachers better not be bitchin' 'bout you in class
That pizza better not be wasted, you eat it all
That TV better not be loud if you got it on
Them Jordans better not get dirty when I just bought 'em
Better not hear ’bout you humpin' on Keisha's daughter
Better not hear you got caught up
I beat yo ass, you better not run to your father
I beat yo ass, you know my patience runnin' thin
I got buku payments to make
County building's on my ass, tryna take my food stamps away
I beat yo ass if you tell them social workers he live here
I beat yo ass if I beat yo ass twice and you still here
Seven years old, think you run this house by yourself?
Nigga, you gon' fear me if you don't fear no one else

[Chorus]
If I could smoke fear away, I'd roll that mothafucka up
And then I'd take two puffs
I'm high now, I'm high now
I'm high now, I'm high now
Life's a bitch, pull them panties to the side now
I don't think I could find a way to make it on this earth

[Verse 2]
I'll prolly die anonymous
I'll prolly die with promises
I'll prolly die walkin' back home from the candy house
I'll prolly die because these colors are standin' out
I'll prolly die because I ain't know Demarcus was snitchin'
I'll prolly die at these house parties, fuckin' with bitches
I'll prolly die from witnesses leavin' me falsed accused
I'll prolly die from thinkin' that me and your hood was cool
Or maybe die from pressin' the line, actin' too extra
Or maybe die because these smokers are more than desperate
I'll prolly die from one of these bats and blue badges
Body slammed on black and white paint, my bones snappin'
Or maybe die from panic or die from bein' too lax
Or die from waitin' on it, die 'cause I'm movin' too fast
I'll prolly die tryna buy weed at the apartments
I'll prolly die tryna diffuse two homies arguin'
I'll prolly die 'cause that's what you do when you're 17
All worries in a hurry, I wish I controlled things

[Chorus]
If I could smoke fear away, I'd roll that mothafucka up
And then I'd take two puffs
I've been hungry all my life
I'm high now, I'm high now
I'm high now, I'm high now
Life's a bitch, pull them panties to the side now
Now…

[Verse 3]
When I was 27, I grew accustomed to more fear
Accumulated 10 times over throughout the years
My newfound life made all of me magnified
How many accolades do I need to block denial?
The shock value of my success put bolts in me
All this money, is God playin' a joke on me?
Is it for the moment, and will he see me as Job?
Take it from me and leave me worse than I was before?
At 27, my biggest fear was losin' it all
Scared to spend money, had me sleepin' from hall to hall
Scared to go back to Section 8 with my mama stressin'
30 shows a month and I still won't buy me no Lexus
What is an advisor? Somebody that's holdin' my checks
Just to fuck me over and put my finances in debt?
I read a case about Rihanna's accountant and wondered
How did the Bad Girl feel when she looked at them numbers?
The type of shit'll make me flip out and just kill somethin'
Drill somethin', get ill and fill ratchets with a lil' somethin'
I practiced runnin' from fear, guess I had some good luck
At 27 years old, my biggest fear was bein' judged
How they look at me reflect on myself, my family, my city
What they say 'bout me reveal if my reputation would miss me
What they see from me would trickle down generations in time
What they hear from me would make 'em highlight my simplest lines

[Verse 4]
I'm talkin' fear, fear of losin' creativity
I'm talkin' fear, fear of missin' out on you and me
I'm talkin' fear, fear of losin' loyalty from pride
'Cause my DNA won't let me involve in the light of God
I'm talkin' fear, fear that my humbleness is gone
I'm talkin' fear, fear that love ain't livin' here no more
I'm talkin' fear, fear that it's wickedness or weakness
Fear, whatever it is, both is distinctive
Fear, what happens on Earth stays on Earth
And I can't take these feelings with me
So hopefully they disperse
Within fourteen tracks, carried out over wax
Searchin' for resolutions until somebody get back
Fear, what happens on Earth stays on Earth
And I can't take these feelings with me
So hopefully they disperse
Within fourteen tracks, carried out over wax
Wonderin' if I'm livin' through fear or livin' through rap
Damn

[Bridge: Bēkon]
Goddamn you
Goddamn me
Goddamn us
Goddamn we
Goddamn us all

[Outro: Carl Duckworth]
Verse two says, \"You only have I known of all the families of the Earth,
therefore I will punish you for all your iniquities.\"
So until we come back to these commandments,
until you come back to these commandments,
we're gonna feel this way, we're gonna be under this curse.
Because He said He's gonna punish us, the so-called Blacks,
Hispanics, and Native American Indians, are the true children of Israel.
We are the Israelites, according to the Bible.
The children of Israel, He's gonna punish us for our iniquities,
for our disobedience, because we chose to follow other gods that aren't His son,
so the Lord, thy God, chasten thee.
So, just like you chasten your own son,
He's gonna chastise you because He loves you.
So that's why we get chastised, that's why we're in the position we're in.
Until we come back to these laws, statutes, and commandments,
and do what the Lord said, these curses are gonna be upon us.
We're gonna be at a lower state in this life that we live here in today,
in the United States of America.
I love you, son, and I pray for you. God bless you, shalom."
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "GOD.",
  features: "",
  producer: ["Bekon", "Yung Exclusive", "Anthony \"Top Dawg\" Tiffith", "Cardo", "Sounwave",
  "Ricci Riera", "DJ Dahi"],
  lyrics: "[Chorus]
This what God feel like, huh, yeah
Laughin' to the bank like, \"A-ha!\", huh, yeah
Flex on swole like, \"A-ha!\", huh, yeah
You feel some type of way, then a-ha!
Huh, yeah (a-ha-ha, a-ha-ha)

[Verse 1]
Ever since a young man
All I wanna be was a gunman
Shootin’ up the charts, better run, man
Y'all gotta see that I won, man
Slick as El DeBarge with the finger waves, work it, JT
Handle bars like a fade, watch me work it, JT
I'm at large, runnin’ plays like a circuit, JT
I'm sellin' verses, JT, watch me work it, JT
Look, look… hol' up!
Don't judge me, my mama caught me with a strap
Don't judge me, I was young, fuckin' all the brats
Don't judge me, aimin’ at your head for a stack
Don’t judge! Don't judge me!
Now my home got a Valley peak
Don’t judge me, if I press your line you a freak
Don't judge me, won't you tell a friend y'all gon’ see—

[Chorus]
This what God feel like, huh, yeah
Laughin' to the bank like, \"A-ha!\", huh, yeah
Flex on swole like, \"A-ha!\", huh, yeah
You feel some type of way, then a-ha!
Huh, yeah (a-ha-ha, a-ha-ha)

[Verse 2]
Fuck is you talkin' to?
Aye, do you know who you talkin' to?
Slide on you like fallen drapes
God toss full of carnivals
I kill 'em with kindness
Or I kill 'em with diamonds
Or I put up like fifteen hundred
Get yo' ass killed by the finest
Everything in life is a gamble
Nothin' in life I can't handle
Seen it all, done it all, felt pain more
For the cause, I done put blood on sword
Everything I do is to embrace y'all
Everything I write is a damn eight ball
Everything I touch is a damn gold mine
Everything I say is from an angel

[Bridge]
I don't rush shit, fuck shit
Always your shit, my shit
Cannonballs to ignite shit
Morning to the night shift
I'm on, I ain't sorry for it
Ask for a piece of mine, you charged me for it
I wanna see sometimes if you ignore it
I'm in the streets sometimes and can't afford it
I got a bad habit
Levitatin', duckin' haters
Oh my! My heart is rich, my heart is famous

[Chorus]
This what God feel like
Huh, yeah (this what God feel like)
Laughin' to the bank like, \"A-ha!\"
(This what God feel like)
Huh, yeah (this what God feel like)
Flex on swole like, \"A-ha!\"
(This what God feel like)
Huh, yeah (this what God feel like)
You feel some type of way, then a-ha!
(This what God feel like)
Huh, yeah (this what God feel like)
This what God feel like"
}, {
  album_id: Album.find_by_title("DAMN.").id,
  title: "DUCKWORTH.",
  features: "",
  producer: ["9th Wonder"],
  lyrics: "[Intro: Bēkon & Kid Capri]
It was always me vs the world
Until I found it's me vs me
Why, why, why, why?
Why, why, why, why?
Just remember, what happens on Earth stays on Earth!
We gon' put it in reverse

[Bridge: Ted Taylor (Sampled)]
Darling, I told you many times
And I am telling you once again
Just to remind you, sweetheart
That my—

[Verse: Kendrick Lamar]
Oh Lamar, Hail Mary and marijuana, times is hard
Pray with the hooligans, shadows all in the dark
Fellowship with demons and relatives, I'm a star
Life is one funny mothafucka
A true comedian, you gotta love him, you gotta trust him
I might be buggin', infomercials and no sleep
Introverted by my thoughts; children, listen, it gets deep
See, once upon a time inside the Nickerson Garden projects
The object was to process and digest poverty's dialect
Adaptation inevitable: gun violence, crack spot
Federal policies raid buildings and drug professionals
Anthony was the oldest of seven
Well-respected, calm and collected
Laughin' and jokin' made life easier; hard times, Momma on crack
A four-year-old tellin' his nanny he needed her
His family history: pimpin' and bangin'
He was meant to be dangerous
Clocked him a grip and start slangin'
Fifteen, scrapin' up his jeans with quarter pieces
Even got some head from a smoker last weekend
Dodged a policeman, workin' for his big homie
Small-time hustler, graduated to a brick on him
10,000 dollars out of a project housing, that's on the daily
Seen his first mil twenty years old, had a couple of babies
Had a couple of shooters
Caught a murder case, fingerprints on the gun they assumin'
But witnesses couldn't prove it
That was back when he turned his back and they killed his cousin
He beat the case and went back to hustlin'
Bird-shufflin', Anthony rang
The first in the projects with the two-tone Mustang
That 5.0 thing, they say 5-0 came
Circlin' parking lots and parking spots
And hoppin' out while harrassin' the corner blocks
Crooked cops told Anthony he should kick it; he brushed them off
And walked back to the Kentucky Fried Chicken
See, at this chicken spot
There was a light-skinned nigga that talked a lot
With a curly top and a gap in his teeth
He worked the window, his name was Ducky
He came from the streets, the Robert Taylor Homes
Southside Projects, Chiraq, the Terror Dome
Drove to California with a woman on him and 500 dollars
They had a son, hopin' that he'd see college
Hustlin' on the side with a nine-to-five to freak it
Cadillac Seville, he'd ride his son around on weekends
Three-piece special with his name on the shirt pocket
'Cross the street from the projects, Anthony planned to rob it
Stuck up the place before, back in '84
That's when affiliation was really eight gears of war
So many relatives tellin' us, sellin' us devilish works
Killin' us, crime, intelligent, felonious
Prevalent proposition with 9's
Ducky was well-aware
They robbed the manager and shot a customer last year
He figured he'd get on these niggas' good sides
Free chicken every time Anthony posted in line
Two extra biscuits, Anthony liked him and then let him slide
They didn't kill him; in fact, it look like they're the last to survive
Pay attention, that one decision changed both of they lives
One curse at a time
Reverse the manifest and good karma, and I'll tell you why
You take two strangers, and put 'em in random predicaments
Give 'em a soul, so they can make their own choices and live with it
Twenty years later, them same strangers, you make 'em meet again
Inside recording studios where they reapin' their benefits
Then you start remindin' them about that chicken incident
Whoever thought the greatest rapper would be from coincidence?
Because if Anthony killed Ducky, Top Dawg could be servin' life
While I grew up without a father and die in a gunfight

{Gunshot}

[Outro: Kendrick Lamar]
{Reversed Audio}
So, I was takin' a walk the other day…"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "The Start of Your Ending (41st Side)",
  features: "",
  producer: ["Mobb Deep"],
  lyrics: "[Intro: Havoc]
You knowhatI'msayin'?
I wanna say what's up to my man
Louie you know he's still here
Drop this one for you you know
And for those who don't know
The 41st Side


[Verse 1: Havoc]
I keep it real pack steel like my man Y.G
When a fool try to play me wet 'em up then I'm Swayze
You must be crazy, kid ran I never did
Forever wildin' that's how we live up in the Bridge
You just sit scared
Cock back the Gat then hit a nigga like a bid
25, nah kid you gettin' life
Forever burnin' in hell, niggas is trife
It's the, semi auto you can bring it on yo
I'm pullin' out strippin' niggas just like a porno flick
I'm sick the Mobb rolls thick
Cross paths with my clique and get vic
I'm on some bullshit that's how I was raised G
Each level is a stage
Have you slidin' down blades in pools of alcohol
Walk before you crawl
I'm in this to win this you gonna take a fall
The Infamous Queensbridge kid we on the scene kid
Creepin' on those who caught sleepin'
Don't ever do that I run with two macs
And plus my crew back my every move
I choose givin' crews the blues
I'm open off the Dainy
Obey me or get sprayed with the sweeper
Cause I'm my brothers keeper
The Grim Reaper holdin' with nothin' but big batters
And big heaters
Blow ya three times leave a mark like Adidas
Jig you I know how to kill you
Pretty boy niggas frontin' hard is the issue
Word to my unborn you get scolded
Old and molded when I get bent you get folded
Every rhyme is the truth that I must get cross
Put your right on your back take it to the source
No doubt I'm stuck and I can't get out
Of this lifestyle the 41st side get bent run wild
The 41st side two
You know how we do, violate motherfucker
I'ma see you, with the Linden
It's the start of your endin' settin' it again and again

[Talking]
Yeah kid, big time boy. 12th street representin' it. A big shout out to my
Man. Tear Gas, Think, Nate whole crew kid
You knowhatI'msayin'? I'm sayin' couso. Richie Fraud known to leave ya
Scarred. Big shoot out to my man Heavy L. Big Palms representing

[Verse 2: Prodigy]
Yo, it's the P. E. double push a Lex bubble in the winter
You can't come along only the hoes can enter
Told her to meet me at six on the hill at the center
Took her to the west way and bent her right over
Stay intoxicated, never sober
Faced it, violate and get lace'd
Why you wasting slugs? You ain't buckin' nothing
You better off buckin' yourself you need to stop fronting
I used to drive an Ac and kept a Mac in the engine
Littles painted it black with crack sale intentions
To blow up the whole projects the Infamous
Our sons will grow up to be murderers and terrorists
It's the nigga in me, accompanied by the cognac
You can ask around, don't fuck with the Mobb
I could've told you that, where you been at
You must have cut class
If it ain't me, another member of my crew will kick your ass (what what)
We do damage to limbs
In '91, stomping you out with black Timbs
Prodigy and the H.A.V.O.C. from the Q.B.C
Putting cowards where they're supposed to be
If I don't know your face then don't come close to me
I got too much beef for that
Drama in the 3rd degree
And to the kids you don't wanna be me
I'm up in the mix of action, where niggas wanna kill me
But it's the start of they ending my man's lending
Me his Lenden forty-two shots depending
On whether or not the clip is full to the top
We busting caps non-stop Blazing
In all the shows and even at the hoes
(nah, nah chill son)
What?

[Outro]

And it's the start of your ending
Yeah, yeah it's the start of niggas ending, youknowhatI'msayin?
And it's the start of your ending
All y'all weak-ass crews that got drama with mines, youknowhatI'msayin'
It's the start of your ending
And it's the motherfuckin' start of the ending
You know who you fuckin' with
(Yeah, yeah nigga) you know what will happen
(Recognize and realize)
41st side get bent, run wild
41st side get bent, run wild
Word up youknowhatI'msayin'?"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "The Infamous Prelude",
  features: "Prodigy of Mobb Deep",
  producer: ["Mobb Deep"],
  lyrics: "Yeah yeah yeah
Yeah yeah yeah
Hold the fuck up

We gonna take this little intermission to listen
To what the fuck I got to say, you know

I been doing this shit for years:
Holding heat, selling
Using, abusing all kinds of drugs;
Robbing niggas, running up in niggas' cribs
You know, the whole shit

So don't ever in your life get me confused
With some of them other niggas that you might see
On TV
Or hear on the radio and such
Know what I'm saying?

I mean, this is me: P
I'm speaking for my fucking self

When you see me:
At the show
Or on stage
Or on the street
I DEFINITELY got the gat on me
You know what I'm saying?

And it ain't like I'm trying to be a tough guy
Or trying to make people think I'm crazy
By sayin' all this shit

But what it is, dat:
I know how niggas gets down, alright?
I used to be in the clubs:
The Muse, The Tunnel, whatever the fuck

Niggas get they little drink on
Havin'
Fun with they little crew
(You know what I'm saying)
Start cuttin' / shootin' / whatever
Things like that
A lot of these so-called \"rap niggas\"
Ain't never seen no parts of that shit
You know what I'm saying
You dig where I'm coming from?
Word up, yo

And I know a lot of y'all niggas —
Matter of fact, all y'all niggas
Is right now listening to this shit
Is like:

\"We gonna see them Mobb Deep niggas
We gonna see what they about
Know what I'm saying, touch them niggas
We gonna see where they head is at.\"

So yo
I'm gonna let you niggas know right now:
You ain't gotta waste your time
Or your money
On your hospital bills
And if you step to me on a personal level
I don't back down easy
There's a good chance your ass is gonna get
Shot, stabbed, or knuckled down
One out of the three

So don't gamble with your life, duke
Word up
And believe me:
I know very well I could get shot, stabbed or fucked up too, whatever
— I ain't \"Super Nigga\" /, I'm a little skinny motherfucka
It's all about who gets who first, though
You know what I'm sayin?

So therefore, say no more
To all my niggas: Get the money
Frontin' niggas get deceased

And, oh yeah, to all them rap-ass niggas
With your half-assed rhymes
Talking about how much you get high, how much weed you smoke
And that crazy space shit that don't even make no sense:
Don't ever speak to me when you see me, know what I'm saying, word
I'ma have to get on some ole \"high school\" shit
Start punching niggas in they face just for living

Yo, I'm finished what I had to say
Ya'll can continue on"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Surival of the Fittest",
  features: "",
  producer: ["Havoc"],
  lyrics: "[Intro: Prodigy]
Yeah, sendin' this one out
To my man Killa B
No doubt indeed
Where that weed?
Nomsayin'? That old real shit

[Verse 1: Prodigy]
There's a war goin' on outside no man is safe from
You could run, but you can't hide forever
From these streets that we done took
You walkin' with your head down
Scared to look, you shook
‘Cause ain't no such things as halfway crooks
They never around when the beef cooks in my part of town
It's similar to Vietnam
Now we all grown up and old, and beyond the cops' control
They better have the riot gear ready
Tryin' to bag me and get rocked steady
By the MAC one-double, I touch you
And leave you with not much to go home with
My skin is thick, ‘cause I be up in the mix of action
If I'm not at home, puffin' lye, relaxin'
New York got a nigga depressed
So I wear a slug-proof underneath my Guess
God bless my soul
Before I put my foot down and begin to stroll
Into the drama I built
And all unfinished beef, you will soon be killed
Put us together, it's like mixin' vodka and milk
I'm goin out blastin', takin' my enemies with me
And if not, they scarred, so they will never forget me
Lord, forgive me
The Hennessy got me not knowin' how to act
I'm fallin' and I can't turn back
Or maybe it's the words from my man Killa Black
That I can't say so it's left a untold fact
Until my death, my goal's to stay alive
Survival of the fit, only the strong survive

[Hook: Havoc]
Yo, yo, we livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(Thug life, we still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive

[Verse 2: Havoc]
I'm trapped, in between two worlds, tryin' to get dough
Y'know, when the dough get low the jewels go
But never that, as long as fiends smoke crack
I'll be on the block hustlin', countin' my stacks
No doubt, watchin' my back and proceed with caution
Five-oh lurkin', no time to get lost in the system
Niggas usin' fake names to get out quick
My brother did it and got bagged with two ounces
I live a world where squads hit the block hard
Ask my man Twin when he got bagged
That fucked me up, God, but shit happens for a reason
You find out who's your true peoples
When you're upstate bleedin'
You can't find a shorty to troop your bid with you
Hit with a two to four is difficult
Wild on the streets, I try to maintain
Tight with my loot, ‘cause hoes like to run game
Some niggas like to trick, but I ain't with that trickin' shit
I'm like a Jew, savin' dough so I can big whip
Pushin' a Lex, now I'm set, ready to jet
No matter how much loot I get
I'm stayin' in the projects, forever
Jakes on the blocks we out-clever
If beef, we never separate and pull together
When worse comes to worst, my peoples come first
Try to react and get them motherfuckin' feelings hurt
My crew's all about loot; fuck lookin' cute!
I'm strictly Timb boots and Army certified suits
Puffin L's, laid back, enjoyin' the smell
In the Bridge, gettin' down, it ain't hard to tell
You better realize

[Hook: Mobb Deep]
Yo, yo, we livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(Thug life, we still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive
(We still livin' it)
We livin' this 'til the day that we die
Survival of the fit, only the strong survive

[Prodigy]
Open your eyes and get wise
Look alive, in '95, word up
Hypnotic thug life, get that ass paralyzed
Nomsayin? Mobb Deep and all that"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Eye for a Eye (Your Beef Is Mines)",
  features: "Raekwon & Nas",
  producer: ["Havoc"],
  lyrics: "[Chorus]
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines

[Verse 1: Prodigy]
Let me start from the beginning, at the top of the list
Know wha'mean, Hav, situation like this
Another war story from a thirsty young hustler
Won't trust ya, I'd rather bust ya, and leave your corpse
For the cops to discover, while I be pimping in the Range Rover
All jewelled like Liberace
You watch me while Jakes trying to knock me and lock me
But I'll be on the low sipping Asti Spumante
Niggas try to creep on the side of my Jeep
Stuck the heat through the window rocked they ass to sleep
Over a 3-pack, it was a small thing really, yeah
But keep letting them small things slide and be a failure
If I'm out of town one of my crew'll take care of ya
The world is ours and your team's inferior
You wanna bust caps I get all up in your area
Kidnap your children make the situation scarier
Life is a gamble, we scramble for money
I might crack a smile but ain't a damn thing funny
I'm caught up in the dirt where your hands get muddy
Plus the outcome turns out to be lovely
Got cheese in my pocket hit off my main squeeze
Push back the sunroof, let the cold air breeze
Through the butter soft leather upholestry
But mostly, keep the gat closely cause niggas wanna toast me

[Verse 2: Havoc]
A-yo I gotta get mines, no matter what the consequences
Count all my blessings, add up my weapons
Cock back the gat, let my nine serve purpose
Sling, do my thing, organized fiend service
Trying to make a mil is stress you know the deal
So we sling krills, get your cap peeled, cause everything is real
Cause I wanna chill, laid up in a jacuzzi
Sipping bubbly with my fingers on the Uzi
Try to infiltrate my fort get caught
Dead up in New York, my brain is packed with criminal thoughts
Get your life lost never found again my friend
Mission completed, watch you drop in less than ten
On my road to the riches, hitting snitches off with mad stitches
Your last resting place'll be a ditch kid
No one can stop me, try your style's sloppy
You want to be me, you're just an imitation copy
My theme is all about making the green
Living up in luxury, pushing phat whips and living comfortably

[Chorus]
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines

[Verse 3: Nas]
A drug dealer's dream:
Stash Cream, keys on a triple beam
Five hundred SL green, ninety-five nickle gleam
Condominium, thug dressed like the gentleman
Tailor made ostrich, Chanel for my women friend
Murdering, numbers on your head while I'm burglaring
Shank is serving 'em
What's up to all my niggas swerving in New York metropolis
The Bridge brings apocalypse
Shoot at the clouds feels like, the Holy Beast is watching us
Mad man my sanity is going like an hourglass
Gun inside my bad hand I sliced trying to bag grams
I got hoes that used to milk you, niggas who could've killed you
Is down with my ill crew of psychos
Nas Escobar moving on your weak production
Pumping corruption in the third world we just busting

[Verse 4: Raekwon]
Hold up and analyze the wildcats slang cracks
They swingin Ac's, the new routines, be my eyes black's
Playing corners glancing all up in your cornea
Corner ya, seen cats snatch monies up on ya
But late night, candlelight fiend with a crack pipe
It's only right, feeling higher than an airplane right
Word yo, I want to get this money then blow
Take my time, blast a nine, if you front you go
Sip beers, the German ones, hand my guns to sons
Shaolin, and Queensbridge we robbing niggas for fun
But still, write my will out to my seeds then build
Mahalia sing a tale but the real we still kill

[Chorus]
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines
As time goes by, an eye for an eye
We in this together son your beef is mines
So long as the sun shines to light up the sky
We in this together son your beef is mines

[Raekwon]
Laid back, word out
Jus' bless 'em, with the bulletproof
Mobb Deep, Nas, Chef creation
For yo' nation, YEAH!"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Just Step Prelude",
  features: "Big Noyd",
  producer: ["Mobb Deep"],
  lyrics: "[Big Noyd]
Sometimes I wish I had three different faces
I'm going to court for three cases in three places
One in Queens, Manhattan, one in Brooklyn
The way things is looking I'mma see central bookings
Facing three 3 to 9's is mad time
After ran concurrent for assault 2-9
I gotta maintain cause stress on the brain
Can lead to a motherfucking suicide thing
And plus my probation, a ill violation
How the fuck did I get in this tight situation?
I'm going all out you know moves I never fake
And fuck the jake, they can catch me at my wake
And if I die burn a bag of blade
Put the lye in the air sometimes I just don't care

[Prodigy]
Son I got plans, power movements, get on some rude shit
I keep living like this, I might lose it
My man's is coming home from doing long ass bids
What up, Kiko? I ain't seen your ass since we was kids
It's all strange; my niggas locked down thinking long range
And see their names in the Daily News third page
They sent a kite to my nigga Killer
It only took one sword to put seven holes in his squealer
A 3 to 9 spending most of his time inside the bing
Reclined, and still came home with his shine"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Give Up The Goods (Just Step)",
  features: "Big Noyd",
  producer: ["Q-Tip"],
  lyrics: "[Verse 1: Prodigy]
Ayo, Queens get the Money long time no cash
I'm caught up in the hustle when the guns go blast
The fool retaliated so I had to think fast
Pull out my heat first, he pull out his heat last
Now who the fuck you think is living to this day?
I'm tryna tell these young niggas crime don't pay
They looked at me and said \"Queen's niggas don't play
Do your thing, I'll do mine kid stay outta my way\"
It's type hard tryna survive in New York state
Can't stop 'til I'm eating off a platinum plate
Po po comes around and tries to relocate me
Lock me up forever but they can't deflate me
Cause having cash is highly addictive
Especially when you're used to having money to live with
I thought step back look at my life as a whole
Ain't no love it seems the devil done stole my soul
I'm out for delfia, selfia, P's not helping ya
I'm tryna get this Lexus up, and plus a cellular
Yo, Big Noyd! (What up cousin?) I can't cope
With all these crab niggas tryna shorten my rope

[Verse 2: Big Noyd]
Yo, it's the R-A-double-P-E-R
N-O-Y-D, niggas can't fuck with me
Coming straight outta QB
Pushing an Infiniti
You ask can I rip it constantly? Mentally?
Definitely, to the death of me, come and test me
Trust me, nigga couldn't touch me if he snuff me
So bust me, you're gonna have to, cause I'mma blast you
My lyrical like a miracle, ill spiritual
I'm born with it, I'm getting on with it
And I'mma have it 'til I'm fucking dead and gone with it
Cause I'm a what? Composer of hardcore, a lyrical destructor
Don't make me buck ya, cause I'm a wild mothafucka
You know my flow, you know my steelo
Even pack my gat when I go to see my PO
Jump out my hooptie, pass my gat and my lucci
To my shorty in case my PO try to troop me
To the island, and if I start wildin
Flipping on niggas walking around with the nice gold medallions
But she didn't violate me, so I escaped see
Back to Queen's pumping the fiends making more CREAM
Know what I mean? I'm a natural born hustler
Won't try to cut ya, pull out my 4 4 and bust ya

[Verse 3: Havoc]
Hey Yo, ain't no time for faking jacks cause brothers that fake jacks
Get laid on their backs, the streets is real
Can't roll without steel, I feel how I feel
Cause I was born to kill, do what I gotta
To eat a decent meal, brothers is starving
Don't try to find a job son, it's all about robbing
So don't be alarmed when we come through
We supposed to, if you opposed to, get your face blown dude
Off the map, cause I react, attack
A brother wasn't blessed with wealth, so I act like that
Drug dealing, only mess with shorties thats appealin
I'm fronting on the world once I start 4-wheeling
Cause back on the 41st Side, we do a ride
Sipping E&J, getting bent all night
Yo, who that? I never seen him in my whole life, step to his business
Cause it's only right, po-po ain't around so I grab my pound
Money retaliated so I hit the ground, my life is on the line
Gotta hold my projects down, can't see myself getting bodied
By a clown.....ass nigga that ain't even from my town
Hit him up in the chest and now he's laying me down dead
And up from under the benches I started hearing sirens
I stop firing, to cut ass like a diamond, jetted to the cribpiece
What a relief, stashed the heat then proceeded to peep
Out the window, call my son, \"yo son we got beef
But no question, money had a problem so I solved him\"

[Verse 4: Prodigy]
I got my mind on the stick-up, now it's time to get paid
Thinking of ways to take loot already made
There's crime in the air, ain't no time to be afraid
Give me yours and get laid, give up the goods and get sprayed
I got lots of love, for my crew that is
No love for them other crews and rival kids
All them out-of-town niggas know what time it is
And if they don't, they need to buy a watch, word up
Caught up in the cross-fire get theyself hurt up
While I be sipping gin straight in a plastic cup
On a park bench on 12th Street, my whole crew's famous
You tried to bust your gat and keep it real but you nameless
First of all slow down, you on the wrong route
Let me put you on your feet and show you what's it all about
The street life ain't nothing to play with
No jokes no games kid for years I been doing the same shit
Just drinking liquor, doing bids, extorting crack heads
And sticking up the stick-up kids"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Temperature's Rising",
  features: "Crystal Johnson",
  producer: ["Havoc & Q-Tip"],
  lyrics: "[Havoc]
Word up, son, I heard they got you on the run
For a body - now it's time to stash the guns
They probably got the phones tapped so I won't speak long
Gimme a hot second, and I'mma put you on
It's all messed up somebody snitchin on the crew
And word is on the street is they got pictures of you
Homicide came to the crib last night, six deep
Askin' on your whereabouts and where d'you sleep
They said they just wanna question you, but me and you know
That once they catch you, all they do is just arrest you
Then arraign you, hang you, I don't think so
It's a good thing you bounced for now just stay low
Once in a blue I check to see how you're doin
I know you need loot, so I send it through Western Union
They probably knock down the door
In the middle of the night, sometimes around four
Hopin to find who they lookin for but they won't succeed
All they gonna find is mad empty bags of weed
But word son, you got the projects hotter than hell
Harder for brothers, to get they thug on but oh well
Son they know too much, even the hoodrat chicks
Oh you heard who did what, no I don't know who did shit!
So stop askin, then I know I'm not goin crazy
From windows, I see lights flashin and maybe
Somebody's takin' pictures - you know who that be
Police lovers, and neighborhood snitches
They put up a G so everybody's pointin fingers
And lyin, aiyyo son, the temp is risin

[Hook: Crystal Johnson]
The temperature's risin, no there's nothin surprisin
The temperature's risin, huh and ain't nothin surprisin
The temperature's risin, huh and ain't nothin surprisin
The temperature's risin (There's nothin surprisin)

[Prodigy]
What up black? Hold your head wherever you at
On the flow from the cops with wings on your back
That snitch nigga - gave police your location
We'll chop his body up in six degrees of separation
Killer listen, shit ain't the same without you at home
Phony niggas walk around tryin to be your clone
They really fear you, when you was at home they was pale
That's why they wanna see you either dead or in jail
By the time you hear this rhyme you'll probably be locked up
Tried to hide somewhere along the lines your plans slipped up
Got caught up in a crime that you can't take back
Reminisce on how I used to pick you up in the Ac
Years ago when we was younger seemed the hood took us under very deep
Wonderin who snitched it got me losin lots of sleep
At night, you know my mouth is tight
I never sang to the cops cause that shit ain't right
Sometimes I stroll past the scene of the crime and backtrack
Damn - why the situation go down like dat?
It'll be a long time before the heat dies down
And a - couple of years 'fore we see you around
But 'til then maintain and keep your story the same
The cops is grabbin wrong niggas, lookin for someone to blame
They harrassin, strugglin to find the truth
There's a chance ya case'll get thrown out,
cause they ain't got no proof to say you're guilty, your fingerprints filthy
Deliver - me the gun, I'll tie it to a brick and throw it in the river
Make sure it sinks to the bottom
Outsmart police, snuck you out the projects, we got 'em
But still, but still, but still...

[Hook] - 3X

(Surprisin)
*repeat to fade*"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Up North Trip",
  features: "",
  producer: ["Havoc"],
  lyrics: "[Verse One: Prodigy]
It all began on the street, to the back of a blue police vehicle
Next come the bookings, the way things is lookin
It's Friday, you in for a long stay
Gettin shackled on the bus first thing come Monday
Hopin in your mind you'll be released one day
But knowin, home is a place you're not goin for a long while
Now you're up on the isle
And the position that you in got you refusin' to smile
But keep in mind there's a brighter day, after your time spent
Used to be wild, but locked up, you can't get bent
Thought you could hack it, now you're requestin PC
You're fragile, it ain't hard to see
Niggas like that don't associate with me
I'd rather, get busy to the third degree
Cause the war in population's on infinitely
If this was the street, my razor would be a mac demon
Hit you up, leave your whole face screamin'
What you in for kid - bustin nuts?
Cats heard of me in street stories told inside this trap
Who are you to look at me with your eyes like that?
Wisen up youngblood, before you make things escalate
And I would hate yo set your crooked ass straight...

[Hook]
Living the high live, make your moves at night
Pack your heat in this war zone, niggas is trife
Runnin from one time, ain't no time to slip
Make one false move and it's a up north trip
Livin the high life, make your moves at night
Pack your heat in this war zone, niggas is trife
Runnin from one time, ain't no time to slip
Make one false move and it's a up north trip

[Verse Two: Havoc]
You tried to dip, duck, but still got bucked
You talk too much shit, you shoulda kept your mouth shut
All that gossip, motherfucker don't you know my Glock kicks
Hollow tips, to your body, mad toxic
I fade you, blow you with a rusty-ass razor
Did you a favor, tried to wet you but I graze you
Pop goes the Glock when there's beef on the block
Chill for a while make them think the beef stop
Then I creep like a thief in the night, it's only right
Ain't no turnin back, it's on tonight
And if I get caught then my ass is up north
Straight on the course for upstate New York
Stress, smokin back to back cigarettes
It popped off, one point in the mess hall
But to avoid that, from head to toe, dipped in all black
Hit them niggas where they pump they cracks at
Havoc, with the murder master plan
Keep my nine up to par so my shit won't jam
God forbid if my shit do, run behind a tree
Fix my shit then hit you
Slugs in your body, mainly in your brain tissue
Witness from the scene, get ghost, stash the pistol
So simple then, watch my back, lay up and relax
Roll a sack, K-A black, find a shorty to tap

[Hook]

[Verse Three: Prodigy]
I got the power, combine wit the powder, and water
It oughta, drop in a half and hour
In the, form of oil, watch the cocaine boil
Keep my eye on it so the shit won't spoil
Then I pause... and ask God why
Did he put me on this Earth just so I could die
I sit back and build on all the things I did wrong
Why I'm still breathin, and all my friends gone
I try not to dwell on the subject for a while
Cause I might get stuck in this corrupt lifestyle
But my, heart pumps foul blood through my arteries
And I can't turn it back, it's a part of me
Too late for cryin, I'm a grown man strugglin
To reach the next level of life without fumblin
Down to foldin, I got no shoulder to lean on but my own
All alone in this danger zone
Time waits for no man, the streets grow worse
Fuck the whole world, kid, my money comes first
Cause I'm out for the gusto, and trust nobody
If you're not family, then you die by me
Cause niggas will have you locked up, the snitch be your man
Givin police the run down on your plans
We're never goin down like that
So I, shut my mouth and hold my words back
Illegal business, forever mine, fuck payin taxes
The last kid that shitted and gave police access
To my blueprints, used names as evidence
Skipped town and I haven't seen the snitch nigga ever since
The moral of the story is easy to figure out
A lesson that you can't live without

[Hook] - 2X
*Livin the high life"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Trife Life",
  features: "",
  producer: ["Havoc"],
  lyrics: "[Verse 1: Prodigy]
It's just another day, drowning my troubles with a forty
That's when I got the call from this brown skin shorty
She asked me where's my crew at, said we could do whatever
She got a crew too and said that we should get together
I said, \"Aight, just call me back in a hour
So I can take a shower and gather up the manpower\"
Then I hung up the horn
And I thought to myself that it might be on
Cause this trick ain't pick up the phone to call me in years (Why?)
Ever since I left the ho lonely in tears
Ain't no telling what her friends putting up in her ears
Ideas of setting me up I'm not trying to hear
(Check it out, Son) So we take the gats for precautions
Plus this trick live in Brooklyn, home of the coffin
She might got a whole battallion of Bucktowners
Waiting for us to get up off the train and surround us
Or maybe I'm blowing this shit out of proportion
But this shit do happen to niggas very often
So fuck it, a nigga gotta do what he meant to
My crew got my back, fuck the world is my mental
We put together five soldiers
The bitch called, my blood curdled
Told me to meet her on Myrtle
Got to the plaza, we're waiting for the G train
We put a plan together, just in case the beef came
Now we Bed Stuy bound
Far from home and on unknown ground
But together we six deep, with five heats, nothing sweet
First nigga fronting getting lifted off his fucking feet
It took eternity, we reached our destination
My heartbeat is racing like a cardiac patient
We finally got to Myrtle outside the train station
I saw not a soul, told my peoples to be patient
But hold up, that's when a black caravan rolled up
My legs didn't froze up, I grabbed my pound
Told my man, \"Eyes open 'cause it might go down\"
Said he don't like the way the shit is starting to sound
Evey angle of the car was smoked out and tinted
So we couldn't tell if the enemy was in it
It might have been TNT, I wasn't trying to wait and see, we
Jetted thru Marcy cause D's ain't bagging me
Word Son, they got us on the run, dun, see yo

[Hook]
Check it out, check it out, check it out, yo
Trife life got me thinking like an animal
No doubt, no doubt, no doubt, no doubt yo
What can kill you is what you don't know

[Verse 2: Havoc]
OK check it, you're on your way to your girl's crib
But the bitch live in the Bridge
You ain't really sweating it, cause little do you know
The niggas in the Bridge be setting it
You thought you was safe and tried to walk the back streets without heat
On the 41st Side of 12th Street
The side where niggas don't give a fuck
The side where if you come through fronting, kid you getting bucked
On your way, to apartment 3A
With a phat herringbone, let him slide, no days
Son get the heat, cause I'm about to stick him
(Fuck that shit, yo if that nigga front, yo hit him!)
Aight bet, so just hold it down
While I cock back the long three pound
You're upstairs boning, not knowing that I'm scheming
Just the right time kid, it's twelve in the evening
You're leaving out the building as you kiss your girl goodbye
Thought you was safe and got caught by surprised
\"What's goin on?\", as I reply
\"Shut the fuck up and don't make this to another homicide\"
He tried to play tough so I put one in his brain
Even though I took his life, all I wanted was his chain
Come through truck without heat, how you figure?
When you in the projects keep your fingers on the trigger
But fuck that we're juxing, if you got what we like you gets tooken
Put you on your back, send you on your way, yo good looking
Now we catching a cab to Halsey & Lewis in Brooklyn
Getting tore up from the floor up, hit the dress store up
Got the 80-0 in case a nigga wanna roll up
Get your motherfucking shit swoll up
Now it's back to Queens to serve fiends
Making Cheese by any means, my eyes on my enemies
Sipping Hennessy, with my mind on some crime shit
One-time searching me but never ever find shit
It's the everyday, get the loot then breeze
Though my goal is to leave outta state, push ki's
But all this bullshit holding me down, I can't leave
Fuck a 9-to-5, I get the loot with ease
Don't even need a degree to earn a six-digit figure
I get mines slinging on the corner with my niggas
Pulling the trigger when the drama appears
'Cause a nigga worse enemy is fear
So yo....

[Hook]
Check it out, check it out, check it out, yo
Trife life got me thinking like an animal
No doubt, no doubt, no doubt, no doubt yo
What can kill you is what you don't know"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Q.U.-Hectic",
  features: "",
  producer: ["Havoc"],
  lyrics: "[Intro]
Fuck it kid, whattup Queens in this motherfucker
(Tell you I'm bangin tonight kid)
(Yo Shorty got a FATTIE right there)
Queensbridge in the house, aiyyo wordup
Aiyyo Ty yo Ty c'mere Son
(Whattup Boo? Can I buy you a drink or something Boo?)
Whattup whattup?
Where Twins and them at yo?
(The fattie's bangin!)
I don't know (damn!)
I think Twins laid up
Aiyyo Son gimme two Hennessee
Son I want two Henessee's yo!
Straight yo, word up man!
*chaos*
Aiyyo what up with them Queens niggas man!
Hey, fuck you!
What? What the fuck, what?
Think they killers or somethin man
Ay fuck you money, whattup kid
*more chaos*

[Verse 1: Prodigy]
I open my eyes to the streets where I was raised as a man
And learned to use my hands for protection
In scuffles, throw all my blows in doubles
I'm coming from Queens motherfucker carrying guns in couples
And wilding, a Q-U soldier
From Lefrak to Rockaway back to Queensbridge
Black it's only crack sales makin niggas act like that
Back in the days we could scrap, now you lay on your back
As things changed with time I traded in my knuckles for a Mac-10
And rather live the life of crime
With my Bed-Stuy connection connected in two
It's liable to start shit too wild for you
Peace to, Baisley, Forty-P get down
And when you outta town represent your ground
Them niggas bleed just like us so show em where we come from
Queens; leavin niggas done son
The Mobb gets hectic

[Hook]
Shit is for real up in Queens we get hectic
Shit is for real we abouts to get hectic
Shit is for real we abouts to get hectic
Shit is for real we abouts to get hectic

[Verse 2: Havoc + Prodigy]
As we sling on the corners like we always do
Son get that loot quick, spending dough like I never had shit
I'm living large pushin luxury cars
Though that shit is outta reach, anybody in my way gets scarred
Permanently bed-ridden
And if you're pussy, then motherfucker get in where you fit in
As I walk around the streets
Son I got mad beef, I'mma blast you before you blast me
That's my philosophy cause nowadays you gotta be relentless
Grab my Mac and slap a nigga senseless
Don't try to play me if you do you better D.O.A. me
Son I got em shook grab a little baby for shields
You got drama run for shelter for real
Pour some beer for the ill ain't no time to chill
Hit 'em up, 'cause I'm quick to erupt like this
Wet 'em up with the MAC scratch em off my list
Show 'em, the real meaning of drama you never had it
'Til you bumped heads with the Havoc
Ain't nuttin' soft or sweet, I lift you off your feet
When I cock back the heat, whole crews retreat
Ain't nothing soft or sweet, I lift you off your feet
When I cock back the heat whole crews retreat

[Hook]
We gets hectic
Shit is for real, we abouts to get hectic
Shit is for real, we abouts to get hectic

[Verse 3: Prodigy]
Everything is real inside my mind; these days
You can't make it if you ain't affiliated with crime
A lifetime of street living
Throughout the beef I've accumulated many slugs have been given
But wilding ain't the way to be living
You're only gonna end up bloody on a floor shivering
Or locked up, caught inside the beast
Meanwhile on the street saying no more peace
My man, Sto-Bo, kid hold your own
In a cell locked down not far from home
And at the same time on the outside I'm representing
Still packin heat make you cowards keep stepping
Getting high, it's cause of the lye, I can't lie
I could move the crowd poppin slugs in the sky
Why come around if you afraid of what's over here
My man Havoc put the bug in my ear

[Havoc]
On the real, for real, but wait it gets realer
Real like an innocent child that turn killer
It's thing like that that only makes things iller
And makin cream doin sticks if you ain't a drug dealer

[Prodigy]
(It's) only facts coming out of my mouth piece
As far as I can see these streets is getting sour
Q, U, too much drama to get into
And niggas regret when they begin to
Regardless of your name or what you been through
Pause for a second, open your eyes and think, duke
Life ain't the game that it seems to be
Fuck a fantasy I'm living in reality
Caught up in this untouchable mentality
Hit you up bad, make you loose a few calories
I need to slow down, movin through life at a high speed
Watchin all the slow runners pass by me
I can see through you, due to, my Queens education
Speaking in behalf of this drug-game nation
The Foundation, the Queens nation

Up in Queens, shit is for real we abouts to get hectic
Word up
Shaolin, shit is for real we abouts to get hectic
Word up kid
The B.K., the shit is for real we abouts to get hectic
KnowhatI'msayin? (No doubt!)
And Manhattan, shit is for real we abouts to get hectic
Up in the Bronx we abouts to get hectic
Word up, knowhatI'msayin? The whole world kid
Shit is over dead, Mobb Deep say party UHH
KnowhatI'msayin? Party UHH"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Right Back At You",
  features: "Big Noyd, Raekwon, & Ghostface Killah",
  producer: ["Havoc"],
  lyrics: "[Intro: Havoc]
Now, '94 to '95, innocent without crime
Drop that shit

[Verse 1 : Prodigy]
Yeah, yeah, check it out
Now run for your life, or you wanna get your heat, whatever
We can die together
As long as I send your maggot ass to the essence
I don't give a fuck about my presence
I'm lost in the blocks of hate and can't wait
For the next crab nigga to step and meet fate
I'm lethal when I see you, there is no sequel
24/7, Mac-11 is my people
So why you wanna end your little life like this?
Cause now you bump heads with kids that's lifeless
I live by the day only if I survive
The last night, damn right, I ain't tryin' to fight
We can settle this like some grown men on the concrete floor
My slugs will put a stop to your hardcore
Ways of action, I grab the gat, then
Ain't no turning back when I start blastin'
Pick up the handle and insert the potion
Cock the shit back in a calm like motion
No signs of anger or fear cause you the one in danger
Never share your plans with a stranger, word is bond

[Hook: repeat 2X]
I put the drop on you kid, now I got you
You got the heart to get busy without your crew?
Let's get it on nigga, do what we gotta do
You buckin' me, I'm buckin' right back at you

[Verse 2 : Havoc]
Fuck where you at kid, it's where you're from
Cause where I'm from, niggas pack nothin' but the big guns
Around my way, niggas don't got remorse for out-of-towners
Come through fronting and get stuffed with the 3-pounder
The loud sounder, ear ringer
And I'm a point the finger, at all you wannabe gunslingers
You got a real ice grill but are you really real
Step to the hill and I'ma test your gun skills
Cause real niggas don't try to profile
You just a chump who needs to get drunk to buckwild
But swing that bullshit this way
And I'm a make your visit to the bridge a motherfucking short stay
Queensbridge, that's where I'm from
The place where stars are born and phony rappers get done
6 blocks and you might not make it through
What you gonna do when my whole crew is blazing at you
With macs and tecs to lend to get your dome crush
You thought that you could come around my way and beef, stupid fuck
What the hell you smoking? What the fuck possessed you
To come out your face, now I have to wet you
Throw on my Timbs, black mask and black serpent
Twist a nigga cap, then jump in the J-30

[Hook]

[Verse 3 : Rae and Ghostface]
Who's the richest nigga in the project, who got it locked
Rocking Convertibles, drop tops and mad hot
Peace to that whiz kid and playas on his team
Who's organized, all eyeballs is on CREAM
And your whole clique got nothin' but raw shit
Whip after whip, stay flashing your dick on tricks
Your whole crew's ravishing, team's untouchable
In the jungle, banging NaS, Mobb Deep and Wu
There's money out there, guns catch crumbs, those are your sons
Jums is in the mailboxes, bitches holding your guns
You know what's out there, thousands of gram, wrapped in Saran
Sealed tight, keep the freshness, that's how we expand
Masked Avenger, drop your gun, son, now surrender
Get ninjaed on the island, plus the Bridge, boy remember

[Verse 4 : Big Noyd]
My little thug's selling drugs and he's struggling
The game got him bugging, I tried to tell him slow down cousin
But he vexed and niggas getting wet up in the projects
But with no doubt, shorties out for his respect
But is his brain insane from the lye?
From smoking that 118 tiny tye
Why, a nigga just died last week
As he swore he was grown and he's a thug in the street
But it's like that, my crew pump cracks and we pack mac
His eyes is wild with the rezzy monkey on his back
But I'm stressed and he need to be blessed
With a firepack, don't even go there cause it ain't like that
Slow down baby, he said, what, you trying to play me?
You must be crazy, pulled out the heat and almost blazed me
Then he was Swayze, the shot must of dazed me
Thug selling drugs, busting slugs, but he ain't crazy"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "The Grave Prelude",
  features: "",
  producer: ["Mobb Deep"],
  lyrics: "[Raindrops]
[6 shots]
[Lightning]

[Prodigy:]
AWWW, SHIT! (You son, are you aight, son?)
You gon' be alright!
Yo, son I fuckin' got hit, man! (Come here, come here son!)
Don't worry about me, son!
Don't worry about me! (Yo son!)
Worry about Noyd! Get Noyd, man! (That's it, man! Give me that Gat!)
Yo, Big Noyd! (Hold his head, son!)
YO! OPEN YOUR FUCKIN' EYES, MAN! [smacking face]
DON'T FUCKIN' FALL ASLEEP! (HOLD THE FUCKIN' HEAD, SON!)
(DON'T FALL ASLEEP, CALL ME, MAN!)
Chill, son! I don't say nothin', man!
Be quiet, man!
Chill, man! (YO, MAN! DIAL 911!) (Oh, my God!)
Chill, man! I ain't dyin', son!
You're not gon' fuckin' die on me, man!
(HURRY THE FUCK UP, YO! HURRY THE FUCK UP, MAN!)
Fuck it, man!
(Havoc: Just wake up, man! Son, word up!) [ambulance sirens]
Cradle to the grave... (Word up, you aight?) [ambulance sirens]"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Cradle to the Grave",
  features: "",
  producer: ["Havoc"],
  lyrics: "[Verse 1: Prodigy]
Forever wild from the cradle to the grave, kid watch your back
One time's comin' always (Yeah), they lock me up for 12 days
I can't comprehend, now I'm a free man on the streets again
Chasin St.Ide's down with some Seagrams Gin
Life is like a dice game and I'm in to win

[Verse 2: Havoc]
On the scene from the 41st side of Queens
We get the cream, laid up, love-love redeem
Cause I mean what I mean, I'm out to claim king
Doin' my thing, throughout states my name'll ring

[Verse 3: Prodigy]
To all my peoples locked down comin' back to life
In the world once again though ya' bid was trife
While you was gone, we was goin' to war
And even more, saw my man layin' dead on the floor
Kid I swore that our crew will live forever, I guess I was wrong
No, until we meet again hold ya' head and stay strong (Yeah)
Yo, got my mind on a place to hide from police (Where?)
Sweatin' dogs as I'm runnin' cross 12th Street
Just as I approached the block, I spotted Jake on the creep down by Vick's weed spot (So what?)
Made a U-ey up the hill plus a change of plans
I had to hurry back so I could warn my man

[Verse 4: Havoc]
It had me stressin' little somethin'
Had my heart rapidly pumping
Niggas started cutting behind the bushes ducking
My ears rung, I plunged a clip into the guns
Got grazed in the arm, one slug hit my son
He was bleedin' from the head, I couldn't believe it
We was defeated, if it was a case I couldn't beat it
Felt like cryin', (The temperature's risin')
I saw my man helpless, damn near on the verge of dyin'
So to P I passed the iron

[Verse 5: Prodigy]
Kid you ain't lyin', I went to stash the murder weapon
Plus I'm relyin' on a door to be open
Goin' in the building, it's a trap
Police buckin' at me, they try to twist my dome back
Jetted up the staircase to the third floor
Reached behind the sink, throw the heater on the floor
Locked the door, police grabbed me up and tried to break my jaw
Said, \"where's the gun we saw? (I don't know)
We know you was there at the homicide scene(I don't know nothin')
And if it wasn't you, it was somebody from ya' team\"

[Hook]
From the cradle to the grave
(From the cradle to the grave)
(Straight from the motherfuckin' cradle to the grave)

[Verse 5: Havoc]
Yo, it's the real drama kills
Nobody move, stand still
Body you, drop that ass off in a land-field
Son bless me with the iron I got beef with some niggas from the other side over some weak shit
Load up the heaters, greet 'em with the hollow tips
Flip 'em like the Gotti clip, my crew shift the body shit
The cradle to the grave is where I'll end up
Fuck gettin' sent up North son, I'm bent up
Doin' my dirt on a low, fuckin' with the Mobb is like a trial
No doubt you gonna' blow
You never know
He didn't even have to go
There unprepared now he's six below
Y'know I'm chillin', I gots no time for catchin' feelings
Get that money I wants, some brothers wanna' act funny
But it's all good, I still die for the hood
For my peoples, yeah knock on wood

[Verse 6: Prodigy]
Triple L, rollin' dice while I put you on
To the drama what I gotta' say is short not long
This nigga that I'm beginning to dislike he got me fed
If he doesn't discontinue his bullshit he might be dead
You know him well and probably go way back
But I don't care if he's your man doin' shit like that
I hope the word gets back to him, cause I'll screw him
He shitted on my man and we got plans to do him
Lets get it over with quick, I'm tired of waiting
Ain’t no fear over here, dear, we just debating on when and how
Later or right now?
Spoke to Killa yesterday
He said to chill for a while
But it's hard acting like everything is alright
Get the chills when I see that nigga in my sight
A dead man walking, not only that he's still talkin'
About how and what he did very often
You don't know how much I fiend to put his ass in a coffin
One day my man and the next he's not
Didn't know him long anyway, so fuck it
It's funny how things change (Word up!)

[Hook]

[Outro: Prodigy]
Word up man!
Y'knowhatumsayin,we gonna die!
It's for real,kid,no games bein played"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Drink Away the Pain (Situations)",
  features: "Q-Tip",
  producer: ["Q-Tip"],
  lyrics: "[Intro-Prodigy]
Yeah, about to get my thug on
The 41st side of things

[Prodigy]
I used to be in love with this bitch named E&J
Don't fuck with her no more now I fuck with Tanqueray
Tanqueray introduced me to her first cousin Gold
Last name was English and the first name Olde
But Gold couldn't take the dick it made me lazy
We split apart and now I met this new trick Dainy
Now me and Dainy, we been together ever since
Our love combines to form a science, what is this
I bust her cherry, took her virginity in '91
Now that she's open everybody want to tap something
Go get your own don't make me have to fucking clap something
I love my shorty more than life now ain't that something
To love you Dainy more than living itself
Even though my friends tell me she ain't good for my health
When I go pick her up they tell me put her back on the shelf
They say say yo P she only wants you for one thing that's your wealth
But I don't pay attention, cos she's my baby
The Dainy you know she drive me crazy she's my number one lady
Met her back in '89 now she's 22
Acting like she 40, she said all I need is a man to support me
Besides, you from the 41st side of things
And Queensbridge niggas be acting like they kings
Pushing Lexuses, wearing fat diamond rings
My cellular phone reigns supreme, international think rational
The 12th street crew move back when we come through

[Hook]
I think the whole world's going insane
I fill my brain up with Dainy, and drink away the pain
I think the whole world's going insane
I fill my mind up with liquor, and drink away the pain
I think the whole world's losing its brain
I fill my brain up with liquor, and drink away the pain
I think the whole world's going insane
I fill my brain up with Dainy, and drink away the pain

[Q-Tip]
Tommy Hil was my nigga, and others couldn't figure
How me and Hilfiger used to move through with vigor
Had to sit and plan on how to make these seven figures
Said a Brinks is coming through, at Fashion Avenue
At Tuesday at two, now we gotta form a crew
Of motherfuckers, who ain't going out like suckers
Told me call Karl Kani, and all my other brothers
I told my sister Walker, who was the smoothest talker
Negotiate the deal with them other money stalkers
Diesel drove the the beemer, the hatchback of course
Nautica'll navigate to keep us on course
Polo's acting bolo trying to say he the Boss
I said shut the fuck up, the kid is out with the loot sack
Got a big trey pound, itching just to swoop back
Timb is on the roof with the twelve gauge rifle
Scope is on the top so you know he living Eiffel
Took the aim of Oswald, caught him North in the Face
All them other kids they had they tools aimed at space
Levi had the snub so you know they getting laced
Donna Karan was crying, cause mad shells was flying
Damn all we want is a piece of the pie and
Nike scooped the sacks cause he moves like Air
Threw them shits up in the trunk now we up out here
Got back to the mansion, to divvy up the paper
Helly Hansen was the brain of the whole entire caper
So she felt it was right, for her to get the whole slice
Everybody in the crew didn't think it was nice
I guess not, and Guess was hot, so guess what
Guess took the jigga, and jigged her in the gut

[Bridge: Q-Tip]
When you play with crime sometimes it's not too fly
Even though the goods look deceiving to the eye
The end situation could leave your ass fried
That's why you got to walk on by, walk on by
Walk on by, walk on by, walk on by

[Havoc]
My man P put me on to the shorty Henn Rock
Now Henn Rock is strong enough to make your heartbeat stop
One sip I thought the bitch was a fucking warlock
The more she started giving me the stronger I got
Pushed her off to the crew then she started getting jealous
Steamed cos I spent more cream with the fellas
Fuck them niggas spend that cheese on me
See if they be around when you need pussy
Then I thought to myself yo this trick is right
Gathered up all my dough, so I spent the night
I can't help it, she got my brain in a headlock
Niggas started riffing why you tricking yo this shit must stop
Moms like you need to see the AA
Better hope they help your ass out on the same day
But never that, I got the shakes so I need that
Son call me stressed out I just be that
But when it comes to Henn Rock dun I need that
She's my shorty for life so fuck the feedback

[Hook]
I think the whole world's going insane
I fill my brain with the Henny, and drink away the pain
I think the whole world's lost its brain
I sip away on the liquor, and drink away the pain"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Shook Ones Part II",
  features: "",
  producer: ["Havoc"],
  lyrics: "[Intro]
Word up, son, word, yeah
To all the killers and a hundred dollar billers
For real niggas who ain't got no feelings
Check it out now

[Verse 1: Prodigy]
I got you stuck off the realness, we be the infamous
You heard of us, official Queensbridge murderers
The Mobb comes equipped for warfare, beware
Of my crime family who got 'nough shots to share
For all of those who wanna profile and pose
Rock you in your face, stab your brain with your nose bone
You all alone in these streets, cousin
Every man for they self in this land we be gunnin'
And keep them shook crews runnin', like they supposed to
They come around, but they never come close to
I can see it inside your face, you're in the wrong place
Cowards like you just get they whole body laced up
With bullet holes and such
Speak the wrong words, man, and you will get touched
You can put your whole army against my team and
I guarantee you it'll be your very last time breathin'
Your simple words just don't move me: you're minor, we're major
You're all up in the game and don't deserve to be a player
Don't make me have to call your name out
Your crew is featherweight, my gunshots'll make you levitate
I'm only 19, but my mind is old
When the things get for real, my warm heart turns cold
Another nigga deceased, another story gets told
It ain't nothin' really, ayo Dun, spark the Philly
So I can get my mind off these yellow-backed niggas
Why they still alive? I don't know, go figure
Meanwhile back in Queens the realness and foundation
If I die, I couldn't choose a better location
When the slugs penetrate, you feel a burnin' sensation
Gettin' closer to God in a tight situation
Now take these words home and think it through
Or the next rhyme I write might be about you

[Hook]
Son, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look
Livin' the live that of diamonds and guns
There's numerous ways you can choose to earn funds
Some get shot, locked down, and turn nuns
Cowardly hearts and straight up shook ones, shook ones
He ain't a crook, son, he's just a shook one

[Verse 2: Havoc]
For every rhyme I write it's 25 to life
Yo, it's a must, in gats we trust, safeguardin' my life
Ain't no time for hesitation, that only leads to incarceration
You don't know me, there's no relation
Queensbridge and we don't play
I don't got time for your petty-thinkin' mind
Son, I'm bigger than those
Claimin' that you pack heat, but you're scared to hold
And once the smoke clears, you'll be left with one in your dome
Thirteen years in the projects—my mentality is what, kid?
You talk a good one, but you don't want it
Sometimes I wonder, do I deserve to live?
Or am I gonna burn in Hell for all the things I did?
No time to dwell on that, ‘cause my brain reacts
Front if you want, kid, lay on your back
I don't fake jax, kid, you know I bring it to you live
Stay in a child's place, kid, you out of line
Criminal minds thirsty for recognition
I'm sippin', E&J got my mind flippin'
I'm buggin', diggin' my ways out of holes by hustlin'
Get that loot, kid, you know my function
‘Cause long as I'm alive I'ma live illegal
And once I get on, I'ma put on all my peoples
React quick, spit lyrics like MAC's, I hit your dome up
When I roll up, don't be caught sleepin', ‘cause I'm creepin'

[Hook]
Son, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Scared to death, scared to look, they shook
‘Cause ain't no such things as halfway crooks
Livin' the live that of diamonds and guns
There's numerous ways you can choose to earn funds
Some get shot, locked down, and turn nuns
Cowardly hearts and straight up shook ones, shook ones
He ain't a crook, son, he's just a shook one

[Outro]
To all the villains and a hundred dollar billers
To real brothers who ain't got no feelings
G-yeah, the whole Bridge
Queens get the money
41st side, keepin' it real, you know
Queens get the money"
}, {
  album_id: Album.find_by_title("The Infamous").id,
  title: "Party Over",
  features: "Ty Nitty & Big Noyd",
  producer: ["Havoc"],
  lyrics: "[Intro] x3
Whatever? Party's over tell the rest of the crew
Yo P, it's on you, what you wanna do?

[Verse 1: Prodigy]:
Every day of my life since 11-2-74
On the street makin non-stop CREAM galore
Packin heat, stickin up weed stores and more
Collectin interest off of extortions to settle my score
It gets deeper when things get real
I'm down to stickin out West Bank for my mill
And I'm from Hempstead, it's close to the shacks of Park South
While I'll be outside slingin, you're always high
And don't come around to the crossroads of life
We're to the death, you and me, this beef for eternity
I'm goin out to the fullest extent
So far into my troubles it's hard for me to get back
To my everyday self and composure
Catch you when you open then I bring you to a closure
Put ice on a razor and freeze ya in ya shoulder
I went for ya grill but you dent from my boulder
I know this kid who says he knows ya because of that
Now I know where ya lay ya hat at and that's that
Say no more, I put it on you while you was yawning
Murder without warning the very next morning

[Verse 2: Havoc]
Once we step thru the door, party over, that's the endin
You and your crew'll leave out, a bunch of dead men
Bump me and I'll bump you back
You ain't tough black, niggas like you just get their life jacked
But I'mma cool nigga til you push me to the limit
But try ta play me and ya ass I get up all in it
Don't try to cop pleas now son, it's dead and done
(I gave you fair warning) So run and get your guns
It's on, time to show em how I perform
My attitude will transform, leave you dead plus wrong
Gettin the flow within, representin for Queens
Shit is real, why you hopin that it's all a dream
But you can't wake up, wettin a chest you bless
Chokin off your own blood,
don't blame me you brought your own death

[Chorus]

Aiyo Noyd, it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew
Yo Big Noyd it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew
Yo Big Noyd it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew
Yo Big Noyd it's on you, what you wanna do?
Whatever? Party's over, tell the rest of the crew

[Verse 3: Big Noyd]
My beeper kept beepin, the other numbers started leakin
'Who is this on my mind?' I was thinkin
Then I realised it was my dun playin 911
Once I seen the numbers I ran for the fuckin guns
My dun in trouble, I be there on the double
I jumped up in the bubble, yo kid where are you?
(1-14 between Manhattan and Morningside Avenue)
This happened just right out the blue
Aiyo dun, fuck that bitch, tell her get off your dick
(But she's cryin and she says she has feelins and shit)
Yo it's a set-up, them niggas got me fed up
Ty stay in the buildin, if they move fuckin buck em
Get up off the scene, you know what I mean?
And hold yourself down with them other fuckin sixteen
Glock and get off they block
Then I hung up the cellular, ready to rock
And it's on

[Verse 4: Prodigy]
You get deaded in the streets, kid set it
You gots no credit, fool you get wetted
Up with the semi-auto Mac double numbered
'Did he shoot eleven or twelve?' is what he wondered
Nigga I got one more shot, you must be drinkin
Put the heater to his head, watch him start blinkin
'Am I goin to heaven or hell?' is what he's thinkin
Switch to a bitch as his life start sinkin
Down to a level of no return
Call it the heat cos when the slugs hit it definitely burns
Now chill and think about your life for real
Every member of my crew is livin life for real
Got your self fucked into somethin that you couldn't finish
Up against the fulliest squad and get diminished
I'm from Q-U-E another E-N-S
So why you small tough talk? I'm not impressed
If I seen you in the Bridge, I'd make you undress
Give up the money, the polo especially the Guess

[Chorus]

Big Noyd! Party's over, tell the rest of the crew
Havoc! Party's over, tell the rest of the crew
Black Ice! Party's over, tell the rest of the crew
Queensbridge! Party's over, tell the rest of the crew
The Big Twins! Party's over, tell the rest of the crew
Ty! Party's over, tell the rest of the crew
Yo Black! It's over, tell the rest of the crew
My man Killer! Party's over, tell the rest of the crew
Germ! It's over, tell the rest of the crew
Karate Joe! It's over, tell the rest of the crew
Ron Gotti! It's over, tell the rest of the crew
Call Capone! Party's over, tell the rest of the crew
Rasheim! Party's over, tell the rest of the crew
Stobo! Party's over, tell the rest of the crew
Tena! Party's over, tell the rest of the crew
Skins! It's over, tell the rest of the crew
And the whole fuckin projects!
It's over, tell the rest of the crew
It's over, tell the rest of the crew
It's over, tell the rest of the crew
Party's over, tell the rest of the crew
Party's over, tell the rest of the crew
The motherfuckin party's over, tell the rest of the crew

[Outro]

Get that nappy up
Yo get that nappy up
Son get that nappy up
Queens get that nappy up
Yo get that nappy up
*talkin to fade*"
}])

annotations = Annotation.create([{
  user_id: User.find_by_username("guest").id,
  track_id: Track.find_by_title("BLOOD.").id,
  start_idx: 11,
  end_idx: 20,
  body: "testing"
},{
  user_id: User.find_by_username("guest").id,
  track_id: Track.find_by_title("BLOOD.").id,
  start_idx: 30,
  end_idx: 40,
  body: "still testing"
  }])
