# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: 'stephen', email: 'malek_stephen@yahoo.com', password: 'stephen', role: 1)
User.create!(username: 'victoria', email: 'victoria@victoria.victoria', password: 'victoria', role: 1)
User.create!(username: 'billy', email: 'billy@billy.billy', password: 'billy')
category1 = Category.create!(name: 'fashion', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/trendyatwork_5.jpg')
category2 = Category.create!(name: 'food', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/Promo-Image-Food.jpg')
category3 = Category.create!(name: 'lifestyle', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/linenduvet_2.jpg')
category4 = Category.create!(name: 'beauty', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/IMG_3731-e1489039049221.jpg')
category5 = Category.create!(name: 'fitness', image: 'http://www.via-victoria.com/wp-content/uploads/2017/06/IMG_6879.jpg')
category5.blogs.create!(created_at: Time.new(2017, 6, 2), title: "Sweat It Out + Playlist", image: 'http://www.via-victoria.com/wp-content/uploads/2017/06/IMG_6879-1080x810.jpg', body: "Whether I’m doing HIIT, resistance training, cardio, lifting…whatever the workout, I need great music to get through it. A good distraction to push past the pain is key for me because let’s be honest…if exercising was all rainbows and butterflies everyone would be in the best shape of their life, but it’s NOT. It’s really hard work and I am no exception to the rule. So I thought I would share some of my favorite gym sesh songs with you guys that keep me PUMPED (insert intense yoked face.) I like music with a good beat but it doesn’t have to be super fast or intense the entire time to keep me going at the gym. And honestly, I usually prefer when a song slows down and then picks back up throughout so that I can match my workout intensity to it (this is great for HIIT.) If you are a Spotify user click here to go directly to my playlist. If you aren’t my current favorites are listed below! 1. Tune In Tune Out (Anna Of The North Remix) by Anna Of The North, 2. Lovefool by The Cardigans, 3. Left Hand Free by Alt J, 4. The Sign by Ace of Base, 5. Dang! (feat. Anderson .Paak) by Mac Miller, 6. Omen by Disclosure, Sam Smith, 7. You & Me – Flume Remix by Disclosure, 8. To Describe You by Kungs, 9. HUMBLE. by Kendrick Lamar, 10. Never Be Like You (feat. Kai) by Flume, 11. How I Want Ya by Hudson Thames, 12. Sober by Childish Gambino, 13. Pretty Thoughts – FKJ Remix by Alina Baraz, Galimatias, 14. Waterfall – Seeb Remix by Stargate, 15. Gold by Kiiara, 16. I Get It Now (Bobby Love Remix) by Fjord, 17. Beat of My Drum by Powers, 18. Hold My Hand by Jess Glynne, 19. Runaway (U & I) by Galantis, 20. Fast Car by Jonas Blue, 21. Hey Mami by Sylvan Esso. I hope these songs keep you going! Now go sweat it out! And make really weird grunting noises so people around you stare. Byeeee.")
category4.blogs.create!(created_at: Time.new(2016, 12, 4), title: 'Dry Brushing', image: 'http://www.via-victoria.com/wp-content/uploads/2016/12/drybrushing_featuredimage-1080x720.jpg', body: "Everyone knows that once the colder weather hits our skin is more likely to become dry and itchy. Which can also lead to tiny bumps on the back of your legs and sometimes even your booty. Over the years I’ve tried to figure out how to get these little bumps and I’ve finally found a good routine that I pretty much do daily.
How to Take Care of Dry Skin
Step 1: Dry Brushing
In the past year I discovered dry brushing, which has really helped my skin! They are these cool brushes that look like the ones you take in the shower as a back scrubber, but they are meant to be used right before you jump in. I bought mine at Whole Foods but you can find them at most drug stores and Amazon. However, you will want to get one that is all-natural (not made with synthetic materials) because it is better for your skin. I love dry brushing because it leaves my skin feeling really soft and refreshed. Beware, you won’t want to do this right before bed because dry brushing can energize your skin and body so you’ll have a harder time going to sleep.

How to Dry Brush
 Get undressed and set up camp in the bathroom or even in your shower before you turn it on (I like to turn on my shower and let it warm up while I brush.)
Start at your feet and work your way up to your back and arms in long strokes or clockwise circular motions (remember to be gentle.) You’ll want to always brush towards your heart!
Be careful when brushing sensitive parts of your body; over time your skin will get used to the feeling of the bristles but in the beginning it can feel kind of funny.
Jump in the shower and cleanse as normal.
Benefits to Dry Brushing
Exfoliate dead skin
Reduces cellulite
Unclogs pores
Stimulates your lymphatic system which removes toxins from your body
Step 2: Shave Regularly
The reason we get those small bumps on our legs during the colder seasons is because we wear more layers and tight clothing to keep us warm. This leads to clogged pores and irritation. I have found that my hair follicles get more irritated when I let my hair grow out, I’m assuming because the tight clothing rubs my skin the wrong way and grown out hair doesn’t help. So even though, “no one will see my legs” (we’ve all said it) I still like to shave my legs regularly to avoid irritation.

Recently, I’ve switched over to Dr. Bronner’s pure-castile soap! I use the Hemp Peppermint one as my body wash and shaving “cream” and I love it. However, it does leave my skin with a tingling feeling and I feel a little chilled because of the peppermint. I personally love the feeling but since it’s cold outside you might consider a different scent if you think that sensation will bother you.

Also, a good friend of mine started using Harry’s razors from Target and loves them! They are men’s…but I usually prefer men’s razors anyways. Plus they are cheaper than other brands so I’m excited to try them!

Step 3: Lotion Up
I have super sensitive skin and the only lotion that hydrates, doesn’t irritate my skin, and doesn’t clog my pores is Eucerin. All of their lotion types are great but I use their Advanced Repair one in the colder months and switch to a lighter one in the summer. For some reason they switched the name of my favorite one from “Smoothing Repair” to “Advanced Repair” when they revamped their line recently—not sure why but they should be the same lotion. The more lotion you put on in the winter the better off, I try to apply a good layer right after I get out of the shower and at night before bed.

Step 4: Get Naked
The less restrictive clothing you wear the better, so when you get the chance get naked! I wear shorts or loose fitting pants and sometimes nothing at all as soon as I get home to let my skin breathe. If you are having really dry skin and bumps consider wearing 100% cotton clothing during your down time at home. Cotton is a breathable material so it doesn’t hold in your bodies heat or sweat which means your skin isn’t suffocating and during a part of the year where we wear more layers it is nice to give our skin some air.

As always, thank you for reading and feel free to comment below with any questions! I hope this blog helps you get smoother, softer, and more hydrated skin this winter!")
category3.blogs.create!(created_at: Time.new(2016, 8, 8), title: 'Linen Duvet', image: 'http://www.via-victoria.com/wp-content/uploads/2017/03/linenduvet_2-1080x720.jpg', body: "I’m all about a cozy bed and I will find any excuse to snuggle up all day long! A couple years ago I was on the hunt for the perfect duvet cover but I wasn’t having much luck, everything was so expensive or not what I was looking for. Finally, I found an image on Pinterest that lead me to H&M.

At first, I thought someone linked the wrong website, but then I realized H&M sold home goods not just clothing! I found the BEST linen duvet cover in light gray and it has made it even harder to get out of bed in the mornings. The quality is still great after just over 3 years of year round use and it is still just as cozy as ever. I am currently craving an all white bed and went back to see if that same style comes in white, and it does! They have increased their color options from two up to six in that style!

This duvet cover fastens at the foot end with metal snap fasteners that aren’t noticeable once they are clasped together! It also comes with two linen pillowcases in the same color as your duvet.

If you aren’t looking for a linen bedspread H&M has plenty of great options for you to check out. Including throw blankets, pillows, pillowcases, sheets, and more! And for the quality you can’t beat the price.")

category2.blogs.create!(created_at: Time.new(2016, 8, 18), title: 'Pork Belly “Bon Bons”', image: 'http://www.via-victoria.com/wp-content/uploads/2016/08/porkbellybonbons_featuredimage-1080x720.jpg', body: "The Denver food scene is continually growing and becoming more and more impressive. And since I moved back from NYC, where I worked for the Food Networks show Chopped, I can’t wait to keep exploring different restaurants in Denver and sharing my thoughts with all of you!

First off, the ART Hotel is amazing and the fact that their food is fantastic is just a plus! Even if I weren’t planning on eating I would love to hangout there for a glass of rosé…or three. The hotel has a fun contemporary design complimented with works of art filling the halls. The FIRE lounge and terrace have become one of my favorite spots in Denver for a perfect dining-cocktail experience. From their fine dining room and beautiful bar to the fire pits and lounge on the terrace there is no better place to relax, eat, and have a great time.

I’ve never been much of a pork eater, aside from bacon (nom nom), but these Pork Belly “Bonbons” were to die for! The perfectly cooked and fried pork belly is paired with an apple mustard and topped with radish, my mouth is watering just thinking of eating them again!

I would definitely recommend visiting the FIRE lounge and terrace at the ART hotel for a memorable night out in Denver! See their full dinner menu here. Oh and don’t forget to show your bar tender some love!")

category1.blogs.create!(created_at: Time.new(2017, 7, 21), title: 'Woven Cotton + Denim', image: 'http://www.via-victoria.com/wp-content/uploads/2017/06/FeaturedImage_WovenCottonDenim.jpg', body: "The best feeling is wearing something that makes you feel confident – and that is exactly how this look makes me feel. I don’t need the most expensive, glamorous, or brand name outfits, I just want to feel good in what I wear and I want it to feel effortless. For whatever reason I’ve never really been one to wear bright colors, or colors at all really. It’s not that I don’t like the vibrant shades of a good color pallet; I just don’t gravitate towards them. I like to consider myself a neutrals gal!

Alright, let’s get down to the details of this look. The top is from H&M and very reasonably priced! I love that it is a woven fabric so you can either dress it up or down. I’ve worn this top out with friends and in the office with my peers – a hit in both scenarios. Any piece that is versatile is a perfect for me because who wants to spend all their money on clothing for work!? I want things that work both in a professional and personal environment. As for the fit, it is a little on the looser side so you’ll want to size down if you prefer a tighter fit.

Now for the JEANS. I looooove these pants, they are one of my go-to pairs. When I found out that the boutique I got them from is no longer stocking them I almost cried – heart broken! I know I know, so dramatic but when you find clothing that fits your “trouble area” the way you want it’s a big deal. Below I’ve linked a very similar pair that I’ve found!

The final touches to this outfit are my Sonia Kashuk lipstick, OPI nail polish, bralette, nude heels and my favorite Ten Lemon limetta clutchlet! If you missed my previous post about this clutch you can read it here. Use code VIAVICTORIA for 10% off your own handcrafted and original piece!

As always, thanks for reading beauties. Leave your comments and question below, your feedback is appreciated.")

category1.blogs.create!(created_at: Time.new(2017, 12, 6), title: 'Holiday Look | Part One', image: 'http://www.via-victoria.com/wp-content/uploads/2017/12/IMG_8154-2-1080x607.jpg', body: "Finding the right look for your holiday occasions can be hard. If you are anything like me you overthink EVERYTHING. So I’ve done that part for you and found three chic and festive looks for any of your holiday parties this month. Look number is not only stunning and unique but the price is a steal, which we all know is my main focus most of the time. Who doesn’t want to be fashionable without breaking the bank? And during this time of year you are already spending so much on others that it can be hard to find spare change for yourself. Stick with me and you won’t have that problem!

I found this dress at Forever 21 for under $30! I love when I find items that look expensive when in fact…they aren’t! The amber and gold color is on point for the holiday season and gives it the appearance of a higher priced dress. And let’s talk about how perfect this dress is because of the velvet material! I am not usually one to wear velvet but there’s something about velvet during the holidays that gives any look a sophisticated, festive and sexy but chic feel. Throw on some gold hoop earrings (I got mine from Forever 21 for less than $6 because I’m allergic to real gold), dark mauve lipstick, nude heels and you are holiday party ready.
As always, thanks for reading babes and stay tuned for 3 more holiday looks!")

category1.blogs.create!(created_at: Time.new(2017, 12, 10), title: 'Holiday Look | Part Two', image: 'http://www.via-victoria.com/wp-content/uploads/2017/12/IMG_8038-1-1080x607.jpg', body: "I love when an outfit just comes together and I am clearly confident wearing it. This holiday look is on trend, chic and most importantly budget friendly. As you all know I’m all about finding ways to make the most of every dollar I spend. This “shirt” is actually a dress. I have been using this trick for years! Body con dresses are key for a 2 for 1 outfit. With this look specifically I was targeting the holidays. You can wear the long sleeve body con dress with the pleated skirt for a holiday event, such as your office Christmas party. And then wear the dress for New Years Eve! You can’t go wrong with a little black dress. Plus, when you wear the dress by itself it’s slightly saucy which is a great fit for your evening of fun to ring in the new year.

For me, accessories are usually there but I rarely do anything over the top. A touch of gold is enough of a spruce to any of my outfits – I thought some hoop earrings and a watch (I’m obsessed with my new Daniel Wellington Steve bought me) gave this look the perfect amount of sparkle! And for the shoes…I LOVE these sock booties but if they aren’t your style a simple pair of black heels will look just as great and give a bit more of a classic look.

I hope you are all having an amazing holiday season! Shop this look at the end of the post and comment any questions you have below! Thanks for reading!")

category4.blogs.create!(created_at: Time.new(2018, 4, 11), title: 'What Order to Apply Skincare Products', image: 'http://www.via-victoria.com/wp-content/uploads/2018/04/IMG_57212-1080x607.jpg', body: "I get a lot of questions about skincare. I get anything from what I use to how I use it. I think this post is important because the beauty industry can be so overwhelming. In order to have healthy skin you by no means NEED all of these products. Just put them on in the following order and skip the ones you don’t have. I’ll note what type of products I think are crucial for healthy skin! You can shop all of the products I am currently using at the bottom of this post (I’ll be doing a more in depth post about the products I use soon.)

AM Skincare
STEP 1 – TONER

I am not one to use a cleanser in the morning but I do struggle with blackheads around my nose. So after I rinse my face and pat towel dry I apply my toner with a cotton pad. This will help unclog your pores and help get rid of those ugly little blackheads that make a regular appearance. Uhhh buh-bye.

Apply in areas where you have issues with blackheads – I just apply around my nose

STEP 2 – SERUM

After the toner dries I apply a serum. Serums are a treatment made up of highly concentrated ingredients that penetrate deep into your skin and are designed to protect and repair your skin. They are anti-aging, brightening, etc. Basically, they go one step further than a moisturizer and are considered a preventative product. Different serums are designed to target different problems.

Apply to your entire face, neck and décolletage (chest)

STEP 3 – EYE CREAM (must)

The skin under your eyes is really thin, which is why using a separate product to target that area instead of just using your face moisturizer is necessary (however, if you are on a budget using your face moisturizer is better than nothing.) Because eye products are less dense than the products in the steps to follow it is important to apply it before them. If you apply the lightweight eye cream before it won’t be able to penetrate through your other products and into your skin.

Apply under your eyes, eye lids and the skin above your lip (it is just as thin!)

STEP 4 – MOISTURIZER (never skip)

No matter what skin type you have a moisturizer is crucial! This is never a product you should skip because hydrating your skin is super important. A lot of people think that if they have oily skin that a moisturizer will make it worse – but it’s the exact opposite. Usually your skin is oily if it needs moisture, so it overcompensates by producing more oil.

Apply all over your face, neck and décolletage (chest)

STEP 5 – FACIAL OIL

A common question I get is, “what is the difference between a serum and oil?” Serums are anti-aging/preventative and oils are hydrating/nutrition. The reason I use an oil is because I need another boost of hydration for my very, VERY dry skin. If you can’t afford a serum (they can be $$$) find a reasonably priced facial oil and give that a try. The added hydration will help prevent aging as well just not as intensely as a serum. Also, DO NOT use any raw oils on your face as a moisturizer (i.e. coconut oil) they will seriously clog your pores. Big no-no.

Apply all over your face, neck and décolletage (chest)

STEP 6 – SPF (never skip)

If you aren’t using an SPF on your face daily you are seriously damaging your skin. At this point I think this is common knowledge but if you aren’t using an SPF here’s why you should.

Sun spots/damage
Skin cancer
Sun burn
Fast track to aging
These are just a few BIG reasons why SPF is so important. Also, for those of you who use anything with vitamin C in your products you will 100% need to use spf.

Apply all over your face, neck and décolletage (chest)



PM Skincare
For my PM skincare I’ll only go into depth about the ones I didn’t cover above.

STEP 1 – CLEANSER

I only cleanse my face at night and rinse my face in the morning. You’ll also want to use an exfoliant 2 to 3 times a week for this step. If I wear a lot of makeup I rinse my face first, put coconut oil (love the one from Trader Joe’s) on a cotton pad and wipe off my eye makeup and then wash my face after to get rid of the oil residue.

Cleanse entire face, neck and chest

STEP 2 – TONER

I only use a toner all over my face 2 to 3 times a week, anymore and my skin gets REALLY dry. Especially right between my eyebrows/forehead and around my lips.

Apply all over face by putting product on a cottonball

STEP 3 – SPOT TREATMENT

I put a spot treatment directly on a blemish to help reduce the size, inflammation and to dry it out. It’s best to do this at night because you won’t want to put make up over it.

Apply directly on blemish with a q-tip

STEP 4 – SERUM

STEP 5 – EYE CREAM

STEP 6 – MOISTURIZER

STEP 7 – OIL

I hope this post was helpful, if you have any questions leave them in the comments below! Thank you for reading!")

category4.blogs.create!(created_at: Time.new(2018, 4, 16), title: 'Skincare for Beginners', image: 'http://www.via-victoria.com/wp-content/uploads/2018/04/SkincareBasics-1080x608.jpg', body: "I have spent years trying different beauty products to see what works and what doesn’t. And trust me, it can get overwhelming very fast. Since the beauty industry is overly congested with thousands of products it can be hard to narrow your focus because everything sounds like something you “have to have” in order to take care of your skin. But at the end of the day you don’t NEED all of these products to achieve better skin. This post is for the minimalist who wants to take care of their skin but doesn’t want to break the bank and do 7 to 8 steps with different products for morning and night (like I do).

Don’t get me wrong, I LOVE my skincare routine but it’s not for everyone. And honestly, some days I don’t want to take the time to do every step so I do a few of them and call it good. Something is better than nothing. Soooo without further rambling, here are the steps/products you can use for both your beginner morning and night skincare routine.



Minimalist Skincare

Step 1 – TULA
Rinse/Cleanser
In the morning I skip my cleanser and just rinse my face with water! I’ve found that washing my face twice a day dries out my skin. At night I love using my Tula oil cleanser to wash away my makeup and pollutants from the day. I NEVER go to bed without washing my face…even if I keep Steve up longer than he wants because I take a long time in the bathroom lol (sorry not sorry).






Step 2 – MARCELLE
Eye Cream
I use an eye cream both morning and night. The reason I think this step is for everyone and you shouldn’t just use your face moisturizer under your eyes is because the skin under our eyes and above our lips is very delicate. Most face moisturizers are too dense to penetrate the skin around our eyes. Eye cream will also help with puffiness, dark circles and aging. It’s a must in my book. Also – the metal tip applicator is amazing for depuffing in the morning.





Step 3 – CLARINS
Face Cream
Finding the right face cream for you can be hard depending on your skin type. I’ve found that this Clarins moisturizer works great for me! And it doesn’t hurt that it smells AMAZING. I use a dime size and apply it all over my face, neck and chest.








Step 4 – JOSIE MARAN
Facial Oil
Hydration is key for healthy glowing skin. I believe in using serums but if you are on a budget they can get pretty pricey. I talk about the difference between a serum and oil here and the benefits to using both. But in this case, using an oil will provide benefits at a lower cost. Hydration helps with aging…it might not undo aging or have ingredients that penetrate deeper into your skin like a serum but it’s better than just using a moisturizer. Think of it this way,  facial oil = added hydration which = aging gracefully.





Step 5 – ALGENIST
SPF
I ALWAYS use an spf during the day, especially when I know I’m going to be in the sun. How you add this into your routine is up to you. Some people like to have it in their moisturizer but I don’t. I like to have the option of wearing a moisturizer in the evening when I redo my makeup or at night without having the spf in it. I use a bottle of just spf at the end of my routine but you can have it in your moisturizer or makeup. I say use at least spf 30, I don’t believe in anything less than that 🙂








And there you have it! Five products that you can use morning and night to keep your skin looking clean, fresh, glowing and youthful. Thank you for reading and leave any comments/questions below.")

category3.blogs.create!(created_at: Time.new(2018, 3, 16), title: 'My Bedroom', image: 'http://www.via-victoria.com/wp-content/uploads/2018/03/MyBedroom_FI-1080x607.jpg', body: "For all of you homebodies out there, you know how important it is to make your home spaces comfortable, functional and (if you are anything like me) visually appealing. Some of you may know that Steve and I live in a TINY apartment. I repeat, TINY. For two people it can be a serious struggle to function in a small space together but we are working out the kinks as we go. From the beginning our main priority has been functionality because if it weren’t…we’d probably kill each other 🙂 Since we are really trying to save money and smart about our spending, we’ve been taking our time to get things put together. SO our living room and kitchen are not so cute but our bedroom has come a long way since I moved in. However, you will notice we don’t have anything on the walls, mainly because we are renting and hanging things gives us anxiety.

SO by popular demand, here are my bedroom details!

// BEDDING //
Duvet cover
Years ago I bought this duvet cover from H&M in light gray. I LOVED it (see full blog post here.) Linen is a great breathable material and easy for a low maintenance lifestyle because it is supposed to look a little wrinkly – which is a huge win for my busy schedule. The only issue was the color, I now love a crisp clean esthetic. I now have this duvet cover in white, so clearly I’m a fan. Definitely recommend!

Sheets
I can’t find the sheets I have anywhere but I found these very reasonably priced ones from Target. And they are on sale – score! Honestly, as long as they are white and soft I’m good to go. If you ask me, there’s no need to spend more than $60. So if you are on a budget – don’t stress, you can still find quality for less.

Mattress
Steve’s old mattress was very comfortable but hurt our backs – we woke up everyone morning in pain. Not ideal. So once I moved in we looked into a couple different options and landed at Tuft and Needle. I will be writing a full blog about our experience soon!

// FURNITURE //
Dresser
I know there are some Ikea haters out there but for the price their stuff is good quality. And if you follow me I’m sure you are on a budget as well. So with that being said, I love a good Ikea hack (shocker!) You can pretty much make any piece of furniture look more expensive by replacing the original hardware or painting it. In this case, I bought these knobs from Amazon and they transformed this dresser (you’ll understand if you click the link.) I got it in medium brown because lately I’ve been loving a space with warmer tones, deep woods and white accents.

Nightstand
Steve happened to already have a nightstand that matched the new dresser perfectly. He got this one a couple years back from American Furniture Warehouse and I found this one from Ikea that is very similar. I replaced the knobs with the same ones from Amazon that I used on the dresser.

// DECOR //
Jewelry Box
I don’t love a ton of clutter so I keep things pretty simple when it comes to decor. I got my geo jewelry box as a gift a couple years back but this one and this one are similar and very pretty. But if those are out of your price range you can find plenty that are cheaper that’ll look just as good, as long as you find the right material (I LOVE this one.)

Vase
I found this vase at Hobby Lobby for a very reasonable price. Tip: don’t shop at Hobby Lobby unless there is a sale – if you go back in a week the item will most likely be 40 to 50 percent off (patience!) It is called a mercury glass vase and it can be a hard item to find online. I suggest going in store for this one!

Mirrored Tray
I love a classic mirrored tray to hold my perfume. I think it’s an inexpensive way to make your dresser or bathroom shelf look more put together. Target has some great options but I especially love this gold one (very affordable).

Candles
I’m not hard to please when it comes to candles, as long as they smell great and look nice. Bath and Body Works has some great seasonal candles for Fall/Winter – my FAVORITE is Warm Apple Pie (soooo good.) But you can always find a good one at Target and you can NEVER go wrong with Anthropologie.

And that’s it – my super straight forward bedroom decor and furniture! Hopefully Steve and I will get something hung up on the wall eventually but until then we are happy and content with what we currently have.

Thanks for reading and leave your comments/questions below.

Byyyyeeeeee.

Victoria")
