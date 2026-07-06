import SwiftUI

// MARK: - Sweet-sour catalog
// Full profiles for the sweet-sour taste list (Tamarind and Calamansi live in
// FruitData.swift). Image assets use the fruit-<slug> / recipe-<slug> naming
// convention — heroes fall back gracefully until a photo is added.

// MARK: Passion Fruit

let passionFruitCurd = Recipe(
    name: "Passion Fruit Curd",
    eyebrow: "Passion fruit recipe",
    imageName: "recipe-passion-curd",
    time: "25 min", level: "Medium", cal: "95",
    lede: "The pulp's sharp perfume survives the heat — a curd that tastes like the fruit, not just like sugar and butter.",
    ingredients: [
        Ingredient(qty: 0.5,  unit: "cup", name: "passion fruit pulp (about 6 fruits)"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 3,    unit: "",    name: "egg yolks"),
        Ingredient(qty: 1,    unit: "",    name: "whole egg"),
        Ingredient(qty: 6,    unit: "tbsp",name: "cold butter, cubed"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Strain",  body: "Push the pulp through a sieve. Keep a spoonful of seeds to stir back in at the end for crunch."),
        Step(title: "Whisk",   body: "Combine juice, sugar, yolks, egg, and salt in a heatproof bowl set over barely simmering water."),
        Step(title: "Thicken", body: "Whisk 8–10 minutes until it coats the back of a spoon. Don't let it boil or the eggs scramble."),
        Step(title: "Finish",  body: "Off the heat, whisk in the butter a cube at a time. Stir in the reserved seeds and chill.")
    ],
    tips: [
        "Wrinkly fruit is riper and sweeter — smooth skin means it needs a few more days.",
        "Keeps 2 weeks refrigerated; spoon over yogurt, pavlova, or toast.",
        "Swap a quarter of the pulp for lime juice if your fruit is very sweet."
    ],
    baseYieldValue: 1.25, baseYieldUnit: "cups", baseServings: 10,
    accentColor: .lpSweetSour
)

let passionFruitFruit = Fruit(
    name: "Passion Fruit",
    latinName: "Passiflora edulis",
    imageName: "fruit-passion-fruit",
    eyebrow: "Rooted up",
    pullQuote: "A whole tropical perfume counter packed into one wrinkly shell.",
    pullQuoteHighlight: "one wrinkly shell.",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Tropical",   color: .lpTropical)
    ],
    snapshot: "The egg-sized fruit of a climbing vine, with a leathery shell around a cavity of golden, jelly-coated seeds. The aroma is intense — floral, citrusy, and unmistakably tropical.",
    loveBody: "Few fruits deliver this much flavor per gram. A single spoonful of pulp perfumes an entire bowl, drink, or dessert — and the crunchy seeds are entirely edible.",
    loveBullets: [
        "Exceptionally high in dietary fiber for a fruit",
        "A good source of vitamins A and C",
        "The seeds add crunch and are fully edible"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Halve and spoon the pulp straight from the shell, seeds and all, or strain the juice for drinks and desserts.",
        lookFor: "Heavy fruit with deeply wrinkled, dimpled skin — smooth passion fruit is underripe and sharper.",
        store: "Ripen at room temperature until wrinkly, then refrigerate up to a week. The pulp freezes beautifully."
    ),
    recipes: [
        RecipeCard(name: "Passion Fruit Curd", imageName: "recipe-passion-curd", meta: "25 min · Medium", recipe: passionFruitCurd),
        RecipeCard(name: "Passion Fruit Mousse", imageName: "recipe-passion-mousse", meta: "20 min · Easy", recipe: passionFruitMousse),
        RecipeCard(name: "Passion Fruit Iced Tea", imageName: "recipe-passion-tea", meta: "15 min · Easy", recipe: passionFruitTea),
        RecipeCard(name: "Passion Fruit Vinaigrette", imageName: "recipe-passion-vinaigrette", meta: "5 min · Easy", recipe: passionVinaigrette)
    ]
)

// MARK: Green Mango

let greenMangoSalad = Recipe(
    name: "Green Mango Salad",
    eyebrow: "Green mango recipe",
    imageName: "recipe-green-mango-salad",
    time: "15 min", level: "Easy", cal: "120",
    lede: "Crunchy, sour mango shreds carry the dressing the way ripe mango never could — this is the fruit acting as a vegetable, and thriving.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "green mangoes, julienned"),
        Ingredient(qty: 2,    unit: "tbsp",name: "fish sauce"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "palm sugar or brown sugar"),
        Ingredient(qty: 1,    unit: "",    name: "shallot, thinly sliced"),
        Ingredient(qty: 1,    unit: "",    name: "red chili, sliced"),
        Ingredient(qty: 0.25, unit: "cup", name: "roasted peanuts, crushed"),
        Ingredient(qty: 0.25, unit: "cup", name: "cilantro and mint leaves")
    ],
    steps: [
        Step(title: "Shred",   body: "Peel the mangoes and julienne into matchsticks — a mandoline or the tip of a sharp knife both work."),
        Step(title: "Dress",   body: "Whisk fish sauce, lime juice, and sugar until dissolved. Toss with the mango, shallot, and chili."),
        Step(title: "Rest",    body: "Let it sit 5 minutes so the mango softens slightly and drinks up the dressing."),
        Step(title: "Serve",   body: "Top with crushed peanuts and the herbs just before serving so everything stays crisp.")
    ],
    tips: [
        "The firmer and greener the mango, the better the crunch.",
        "Vegetarian? Swap fish sauce for soy sauce plus a pinch of salt.",
        "Add poached shrimp or grilled chicken to make it a meal."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweetSour
)

let greenMangoFruit = Fruit(
    name: "Green Mango",
    latinName: "Mangifera indica",
    imageName: "fruit-green-mango",
    eyebrow: "Rooted up",
    pullQuote: "Same tree as sweet mango — picked early, it bites back.",
    pullQuoteHighlight: "it bites back.",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Tart",       color: .lpTart)
    ],
    snapshot: "An unripe mango harvested while the flesh is still pale, firm, and sharply sour. Across South and Southeast Asia it's treated almost as a vegetable — shredded, pickled, and dipped in salt and chili.",
    loveBody: "Green mango is proof that ripeness is a choice, not a destination. The crisp flesh holds its crunch in salads and pickles, and the sourness sharpens everything it touches.",
    loveBullets: [
        "Higher in vitamin C than ripe mango",
        "Crisp texture that survives dressing and pickling",
        "The base of countless salads, pickles, and chutneys"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Slice and dip in salt, sugar, and chili; shred into salads; or simmer into a tart chutney.",
        lookFor: "Rock-hard fruit with taut green skin and no yellow blush — softness means it's already ripening.",
        store: "Refrigerate to hold it green for a week or two; room temperature lets it ripen into sweet mango."
    ),
    recipes: [
        RecipeCard(name: "Green Mango Salad", imageName: "recipe-green-mango-salad", meta: "15 min · Easy", recipe: greenMangoSalad),
        RecipeCard(name: "Green Mango Chutney", imageName: "recipe-green-mango-chutney", meta: "40 min · Easy", recipe: greenMangoChutney),
        RecipeCard(name: "Aam Panna", imageName: "recipe-aam-panna", meta: "30 min · Easy", recipe: aamPanna),
        RecipeCard(name: "Green Mango Slaw", imageName: "recipe-green-mango-slaw", meta: "15 min · Easy", recipe: greenMangoSlaw)
    ]
)

// MARK: Kiwi

let kiwiSalsa = Recipe(
    name: "Kiwi Lime Salsa",
    eyebrow: "Kiwi recipe",
    imageName: "recipe-kiwi-salsa",
    time: "10 min", level: "Easy", cal: "35",
    lede: "Kiwi's sour edge does the work lime usually does — a salsa that's bright, green, and quietly fiery.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "ripe kiwis, diced"),
        Ingredient(qty: 0.5,  unit: "",    name: "red onion, finely diced"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, minced"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.25, unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Dice",    body: "Peel and dice the kiwis into small, even cubes — ripe but firm fruit holds its shape best."),
        Step(title: "Combine", body: "Fold together kiwi, onion, jalapeño, lime juice, and cilantro. Season with the salt."),
        Step(title: "Rest",    body: "Give it 10 minutes for the flavors to knit. Serve with chips, fish tacos, or grilled chicken.")
    ],
    tips: [
        "Golden kiwis make a sweeter, milder salsa.",
        "Best the day it's made — kiwi softens as it sits.",
        "Kiwi's actinidin tenderizes meat, so it doubles as a marinade base."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweetSour
)

let kiwiFruit = Fruit(
    name: "Kiwi",
    latinName: "Actinidia deliciosa",
    imageName: "fruit-kiwi",
    eyebrow: "Rooted up",
    pullQuote: "Emerald flesh with a sour spark under all that fuzz.",
    pullQuoteHighlight: "a sour spark",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Tart",       color: .lpTart)
    ],
    snapshot: "A fuzzy brown berry from a woody vine, hiding brilliant green flesh, a pale core, and a halo of tiny black seeds. Native to China, made famous by New Zealand.",
    loveBody: "Kiwi packs more vitamin C than an orange into a fruit you can eat with a spoon. Its enzyme, actinidin, even tenderizes meat — dessert and marinade in one skin.",
    loveBullets: [
        "More vitamin C per gram than oranges",
        "Contains actinidin, a natural meat tenderizer",
        "The skin is edible — extra fiber if you're bold"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Halve and scoop with a spoon, slice into fruit salads, or blend into smoothies at the last second.",
        lookFor: "Fruit that yields to gentle pressure like a ripe peach — rock-hard kiwis are mouth-puckering.",
        store: "Ripen at room temperature (a bag with an apple speeds it up), then refrigerate up to two weeks."
    ),
    recipes: [
        RecipeCard(name: "Kiwi Lime Salsa", imageName: "recipe-kiwi-salsa", meta: "10 min · Easy", recipe: kiwiSalsa),
        RecipeCard(name: "Kiwi Green Smoothie", imageName: "recipe-kiwi-smoothie", meta: "5 min · Easy", recipe: kiwiSmoothie),
        RecipeCard(name: "Kiwi Pavlova", imageName: "recipe-kiwi-pavlova", meta: "2 hr · Medium", recipe: kiwiPavlova),
        RecipeCard(name: "Kiwi Chia Parfait", imageName: "recipe-kiwi-parfait", meta: "10 min · Easy", recipe: kiwiParfait)
    ]
)

// MARK: Pomegranate

let pomegranateMolasses = Recipe(
    name: "Pomegranate Molasses",
    eyebrow: "Pomegranate recipe",
    imageName: "recipe-pom-molasses",
    time: "1 hr", level: "Easy", cal: "60",
    lede: "Juice, reduced until it turns to garnet syrup — sweet, sour, and faintly bitter, like the fruit concentrated tenfold.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "pomegranate juice"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "lemon juice")
    ],
    steps: [
        Step(title: "Combine", body: "Stir juice, sugar, and lemon juice in a wide saucepan over medium heat until the sugar dissolves."),
        Step(title: "Reduce",  body: "Simmer gently, uncovered, 50–60 minutes. Don't stir much — just swirl the pan now and then."),
        Step(title: "Test",    body: "It's done when it coats a spoon and has reduced to about a cup. It thickens more as it cools."),
        Step(title: "Store",   body: "Pour into a clean jar. It keeps for months refrigerated and loosens with a few seconds of warmth.")
    ],
    tips: [
        "Drizzle over roasted vegetables, grilled meat, or vanilla ice cream.",
        "One tablespoon sharpens a pan sauce like good vinegar.",
        "Buy 100% juice — sweetened blends turn cloying when reduced."
    ],
    baseYieldValue: 1, baseYieldUnit: "cup", baseServings: 16,
    accentColor: .lpSweetSour
)

let pomegranateFruit = Fruit(
    name: "Pomegranate",
    latinName: "Punica granatum",
    imageName: "fruit-pomegranate",
    eyebrow: "Rooted up",
    pullQuote: "Hundreds of jewels, each one a burst of sweet-tart juice.",
    pullQuoteHighlight: "Hundreds of jewels,",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Tart",       color: .lpTart)
    ],
    snapshot: "A leathery red husk packed with translucent arils — juice-filled sacs each wrapping a crunchy seed. One of the oldest cultivated fruits, grown from Iran to California.",
    loveBody: "Pomegranate is dramatic in every direction: jewel-box looks, a sweet-tart burst that lifts sweet and savory dishes alike, and one of the highest antioxidant loads in the produce aisle.",
    loveBullets: [
        "Rich in polyphenol antioxidants like punicalagin",
        "A good source of fiber when you eat the arils whole",
        "Sweet-tart juice that works in both dessert and dinner"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Scatter arils over salads, yogurt, and rice dishes, or press for juice and reduce into molasses.",
        lookFor: "Heavy fruit with taut, deeply colored skin — weight means juice; angular sides mean packed arils.",
        store: "Whole fruit keeps a month refrigerated; seeded arils last about five days, or freeze them loose."
    ),
    recipes: [
        RecipeCard(name: "Pomegranate Molasses", imageName: "recipe-pom-molasses", meta: "1 hr · Easy", recipe: pomegranateMolasses),
        RecipeCard(name: "Pomegranate Raita", imageName: "recipe-pom-raita", meta: "10 min · Easy", recipe: pomegranateRaita),
        RecipeCard(name: "Pomegranate Spritzer", imageName: "recipe-pom-spritzer", meta: "5 min · Easy", recipe: pomegranateSpritzer),
        RecipeCard(name: "Jeweled Couscous", imageName: "recipe-pom-couscous", meta: "20 min · Easy", recipe: pomegranateCouscous)
    ]
)

// MARK: - Tamarind's remaining rail recipes

let tamarindPadThai = Recipe(
    name: "Pad Thai",
    eyebrow: "Tamarind recipe",
    imageName: "recipe-padthai",
    time: "30 min", level: "Medium", cal: "480",
    lede: "The sauce is a balancing act — tamarind pulls sour, palm sugar pulls sweet, fish sauce pulls deep. Get that trio right and the noodles take care of themselves.",
    ingredients: [
        Ingredient(qty: 8,    unit: "oz",  name: "dried rice noodles"),
        Ingredient(qty: 3,    unit: "tbsp",name: "tamarind paste"),
        Ingredient(qty: 3,    unit: "tbsp",name: "fish sauce"),
        Ingredient(qty: 3,    unit: "tbsp",name: "palm sugar"),
        Ingredient(qty: 8,    unit: "oz",  name: "shrimp or firm tofu"),
        Ingredient(qty: 2,    unit: "",    name: "eggs"),
        Ingredient(qty: 2,    unit: "cup", name: "bean sprouts"),
        Ingredient(qty: 3,    unit: "",    name: "scallions, cut in lengths"),
        Ingredient(qty: 0.33, unit: "cup", name: "roasted peanuts, crushed"),
        Ingredient(qty: 1,    unit: "",    name: "lime, in wedges")
    ],
    steps: [
        Step(title: "Soak",    body: "Soak the noodles in hot tap water for 20 minutes until pliable but still firm. Drain well."),
        Step(title: "Sauce",   body: "Warm tamarind, fish sauce, and palm sugar together until the sugar melts. Taste — it should hit sour, then sweet, then salty."),
        Step(title: "Stir-fry",body: "In a screaming-hot wok, cook the shrimp or tofu, push aside, and scramble the eggs. Add noodles and sauce and toss until the noodles drink it up."),
        Step(title: "Finish",  body: "Fold in sprouts and scallions off the heat. Serve with peanuts and a hard squeeze of lime.")
    ],
    tips: [
        "Everything happens fast — have all ingredients within arm's reach before the wok heats.",
        "Too sticky? A splash of water loosens the noodles instantly.",
        "Block tamarind soaked in hot water beats jarred concentrate for brightness."
    ],
    baseYieldValue: 4, baseYieldUnit: "plates", baseServings: 4,
    accentColor: .lpSweetSour
)

let tamarindAgua = Recipe(
    name: "Agua de Tamarindo",
    eyebrow: "Tamarind recipe",
    imageName: "recipe-agua",
    time: "10 min", level: "Easy", cal: "70",
    lede: "Mexico's answer to lemonade — earthy, sour, and endlessly refreshing over a tall glass of ice.",
    ingredients: [
        Ingredient(qty: 8,    unit: "",    name: "tamarind pods, shelled"),
        Ingredient(qty: 6,    unit: "cup", name: "water"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Simmer",  body: "Simmer the shelled pods in 2 cups of the water for 10 minutes until the pulp slumps off the seeds."),
        Step(title: "Mash",    body: "Cool slightly, then mash and work the pulp free with your hands or a whisk."),
        Step(title: "Strain",  body: "Strain into a pitcher, pressing hard on the solids. Stir in sugar, salt, and the remaining water."),
        Step(title: "Chill",   body: "Serve very cold over ice. Adjust sugar — it should stay bracingly tart.")
    ],
    tips: [
        "A dried chili in the simmer adds a gentle background heat.",
        "Concentrate keeps a week refrigerated — dilute glass by glass.",
        "Rim the glass with chili-salt for the full street-stand experience."
    ],
    baseYieldValue: 6, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweetSour
)

let tamarindRibs = Recipe(
    name: "Glazed Pork Ribs",
    eyebrow: "Tamarind recipe",
    imageName: "recipe-ribs",
    time: "2 hr", level: "Medium", cal: "520",
    lede: "Tamarind does what vinegar does in barbecue — cuts the richness — but brings its own dark caramel with it. (Yes, the pig noticed the irony.)",
    ingredients: [
        Ingredient(qty: 2,    unit: "lb",  name: "pork ribs"),
        Ingredient(qty: 0.33, unit: "cup", name: "tamarind paste"),
        Ingredient(qty: 0.25, unit: "cup", name: "honey"),
        Ingredient(qty: 3,    unit: "tbsp",name: "soy sauce"),
        Ingredient(qty: 4,    unit: "",    name: "garlic cloves, grated"),
        Ingredient(qty: 1,    unit: "tbsp",name: "grated ginger"),
        Ingredient(qty: 1,    unit: "tsp", name: "black pepper")
    ],
    steps: [
        Step(title: "Bake low", body: "Season the ribs, wrap tightly in foil, and bake at 300°F for 1½ hours until tender."),
        Step(title: "Glaze",    body: "Simmer tamarind, honey, soy, garlic, ginger, and pepper into a glossy glaze, about 5 minutes."),
        Step(title: "Lacquer",  body: "Unwrap the ribs, brush generously, and broil 3–4 minutes. Repeat once more for a deep, sticky crust."),
        Step(title: "Rest",     body: "Rest 10 minutes, cut between the bones, and brush with any remaining glaze.")
    ],
    tips: [
        "The glaze burns fast under the broiler — stay and watch it.",
        "Works just as well on cauliflower steaks for a meat-free version.",
        "Leftover glaze keeps two weeks and wakes up stir-fries."
    ],
    baseYieldValue: 1, baseYieldUnit: "rack", baseServings: 4,
    accentColor: .lpSweetSour
)

// MARK: - Calamansi's remaining rail recipes

let calamansiBars = Recipe(
    name: "Calamansi Bars",
    eyebrow: "Calamansi recipe",
    imageName: "recipe-calamansi-bars",
    time: "45 min", level: "Medium", cal: "180",
    lede: "Lemon bars, but with calamansi's floral edge — the curd sets a shade more orange and tastes a shade more interesting.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "butter, softened"),
        Ingredient(qty: 0.25, unit: "cup", name: "powdered sugar, plus more to dust"),
        Ingredient(qty: 2,    unit: "",    name: "eggs"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.33, unit: "cup", name: "calamansi juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "calamansi zest"),
        Ingredient(qty: 2,    unit: "tbsp",name: "flour, for the filling")
    ],
    steps: [
        Step(title: "Base",   body: "Press flour, butter, and powdered sugar into a lined 8-inch pan. Bake at 350°F for 15 minutes until pale gold."),
        Step(title: "Filling",body: "Whisk eggs, sugar, juice, zest, and the 2 tablespoons of flour until smooth."),
        Step(title: "Bake",   body: "Pour over the warm base and bake 18–20 minutes until just set with a slight wobble at the center."),
        Step(title: "Chill",  body: "Cool completely, chill an hour, then dust with powdered sugar and slice.")
    ],
    tips: [
        "Zest before juicing — it's nearly impossible after.",
        "Chilled bars cut cleanest with a hot, dry knife.",
        "No calamansi? Half lime, half orange juice gets close."
    ],
    baseYieldValue: 16, baseYieldUnit: "bars", baseServings: 16,
    accentColor: .lpTart
)

let calamansiMarinade = Recipe(
    name: "Calamansi Marinade",
    eyebrow: "Calamansi recipe",
    imageName: "recipe-calamansi-marinade",
    time: "10 min", level: "Easy", cal: "40",
    lede: "The classic Filipino toyomansi pairing — soy for depth, calamansi for lift — loosened into a marinade that works on nearly anything grilled.",
    ingredients: [
        Ingredient(qty: 0.33, unit: "cup", name: "calamansi juice"),
        Ingredient(qty: 0.33, unit: "cup", name: "soy sauce"),
        Ingredient(qty: 4,    unit: "",    name: "garlic cloves, crushed"),
        Ingredient(qty: 1,    unit: "tbsp",name: "brown sugar"),
        Ingredient(qty: 1,    unit: "tsp", name: "black pepper"),
        Ingredient(qty: 1,    unit: "",    name: "bay leaf")
    ],
    steps: [
        Step(title: "Whisk",   body: "Stir everything together until the sugar dissolves."),
        Step(title: "Marinate",body: "Pour over chicken, pork, or mushrooms. Thirty minutes for thin cuts, up to four hours for thick."),
        Step(title: "Grill",   body: "Grill or sear, basting with fresh (unused) marinade in the last minutes for a lacquered finish.")
    ],
    tips: [
        "Also the house dipping sauce — keep a small bowl back before marinating.",
        "Acid keeps working: don't marinate fish longer than 20 minutes.",
        "A sliced bird's-eye chili in the bowl is traditional and correct."
    ],
    baseYieldValue: 0.75, baseYieldUnit: "cup", baseServings: 4,
    accentColor: .lpTart
)

// MARK: - Additional recipes (Sweet-sour)

let passionFruitMousse = Recipe(
    name: "Passion Fruit Mousse",
    eyebrow: "Passion Fruit recipe",
    imageName: "recipe-passion-mousse",
    time: "20 min", level: "Easy", cal: "290",
    lede: "The Brazilian classic — three ingredients whipped into a cloud that bites back.",
    ingredients: [
        Ingredient(qty: 0.67, unit: "cup", name: "passion fruit pulp (about 6 fruits)"),
        Ingredient(qty: 1,    unit: "",    name: "can condensed milk (14 oz)"),
        Ingredient(qty: 1,    unit: "cup", name: "heavy cream, cold"),
        Ingredient(qty: 1,    unit: "",    name: "extra passion fruit, for the top")
    ],
    steps: [
        Step(title: "Blend", body: "Blend pulp and condensed milk; strain out half the seeds if you like."),
        Step(title: "Whip",  body: "Whip cream to soft peaks; fold in the passion mixture."),
        Step(title: "Chill", body: "Three hours in glasses; spoon fresh pulp over to serve.")
    ],
    tips: [
        "Maracujá mousse is legally required at Brazilian birthdays.",
        "The fresh pulp on top is the tart counterweight — don't skip.",
        "Sets firmer overnight."
    ],
    baseYieldValue: 6, baseYieldUnit: "glasses", baseServings: 6,
    accentColor: .lpSweetSour
)

let passionFruitTea = Recipe(
    name: "Passion Fruit Iced Tea",
    eyebrow: "Passion Fruit recipe",
    imageName: "recipe-passion-tea",
    time: "15 min", level: "Easy", cal: "80",
    lede: "Black tea gives the backbone; passion fruit brings the perfume and the attitude.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "brewed black tea, cooled"),
        Ingredient(qty: 4,    unit: "",    name: "passion fruits, pulped"),
        Ingredient(qty: 0.33, unit: "cup", name: "honey or simple syrup"),
        Ingredient(qty: 1,    unit: "",    name: "lime, in wheels"),
        Ingredient(qty: 2,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Sweeten", body: "Stir honey into the warm tea; cool completely."),
        Step(title: "Mix",     body: "Add passion pulp and lime wheels."),
        Step(title: "Pour",    body: "Over ice, seeds glittering — that's the look.")
    ],
    tips: [
        "Green tea version is lighter and just as good.",
        "Strain the seeds only if serving to skeptics.",
        "Freeze extra pulp in ice cube trays for instant future tea."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweetSour
)

let passionVinaigrette = Recipe(
    name: "Passion Fruit Vinaigrette",
    eyebrow: "Passion Fruit recipe",
    imageName: "recipe-passion-vinaigrette",
    time: "5 min", level: "Easy", cal: "110",
    lede: "Tart enough to skip the vinegar — a dressing that makes plain greens taste tropical.",
    ingredients: [
        Ingredient(qty: 0.25, unit: "cup", name: "passion fruit pulp"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "tsp", name: "honey"),
        Ingredient(qty: 1,    unit: "tsp", name: "Dijon mustard"),
        Ingredient(qty: 0.33, unit: "cup", name: "olive oil")
    ],
    steps: [
        Step(title: "Whisk",    body: "Combine pulp, lime, honey, Dijon, and a pinch of salt."),
        Step(title: "Emulsify", body: "Stream in oil, whisking to a glossy cling."),
        Step(title: "Dress",    body: "Best over avocado, shrimp, or bitter greens.")
    ],
    tips: [
        "The seeds add crunch and drama — leave them.",
        "Doubles as a marinade for fish and chicken.",
        "Keeps four days refrigerated."
    ],
    baseYieldValue: 0.75, baseYieldUnit: "cup", baseServings: 6,
    accentColor: .lpSweetSour
)

let greenMangoChutney = Recipe(
    name: "Green Mango Chutney",
    eyebrow: "Green Mango recipe",
    imageName: "recipe-green-mango-chutney",
    time: "40 min", level: "Easy", cal: "60",
    lede: "Unripe mango's sourness, simmered with sugar and spice into the condiment that improves everything.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "green mango, peeled and diced"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cider vinegar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "grated ginger"),
        Ingredient(qty: 1,    unit: "tsp", name: "nigella or mustard seeds"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "chili flakes"),
        Ingredient(qty: 1,    unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Combine", body: "Everything into a heavy pan; bring to a simmer."),
        Step(title: "Cook",    body: "30 minutes, stirring occasionally, until thick and translucent."),
        Step(title: "Jar",     body: "Cool, jar, and give it three days to find itself.")
    ],
    tips: [
        "Rock-hard mangoes are exactly right here.",
        "Serve with curries, cheese, or fried snacks.",
        "Keeps a month refrigerated."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 24,
    accentColor: .lpSweetSour
)

let aamPanna = Recipe(
    name: "Aam Panna",
    eyebrow: "Green Mango recipe",
    imageName: "recipe-aam-panna",
    time: "30 min", level: "Easy", cal: "90",
    lede: "India's heatwave answer — roasted green mango whisked into a salty-sweet-sour cooler.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "green mangoes"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar or jaggery"),
        Ingredient(qty: 1,    unit: "tsp", name: "roasted cumin powder"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "black salt"),
        Ingredient(qty: 4,    unit: "cup", name: "cold water"),
        Ingredient(qty: 10,   unit: "",    name: "mint leaves")
    ],
    steps: [
        Step(title: "Roast", body: "Roast whole mangoes at 400°F for 25 minutes (or boil 15) until collapsing; cool and squeeze out the pulp."),
        Step(title: "Blend", body: "Blend pulp with sugar, cumin, black salt, and mint."),
        Step(title: "Serve", body: "Dilute with cold water over ice; adjust salt-sweet to the weather.")
    ],
    tips: [
        "Black salt's sulfur note is traditional and correct.",
        "The concentrate keeps a week — dilute per glass.",
        "Roasting deepens flavor; boiling is faster. Both work."
    ],
    baseYieldValue: 5, baseYieldUnit: "glasses", baseServings: 5,
    accentColor: .lpSweetSour
)

let greenMangoSlaw = Recipe(
    name: "Green Mango Slaw",
    eyebrow: "Green Mango recipe",
    imageName: "recipe-green-mango-slaw",
    time: "15 min", level: "Easy", cal: "130",
    lede: "Shredded sour crunch with chili and peanuts — the slaw that wakes up grilled anything.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "green mango, julienned"),
        Ingredient(qty: 1,    unit: "cup", name: "carrot, julienned"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "fish sauce or soy"),
        Ingredient(qty: 1,    unit: "tbsp",name: "brown sugar"),
        Ingredient(qty: 1,    unit: "",    name: "red chili, sliced"),
        Ingredient(qty: 0.33, unit: "cup", name: "roasted peanuts + cilantro")
    ],
    steps: [
        Step(title: "Shred", body: "Julienne mango and carrot into long matchsticks."),
        Step(title: "Dress", body: "Whisk lime, fish sauce, sugar, and chili; toss through."),
        Step(title: "Top",   body: "Peanuts and cilantro at the end for the crunch headline.")
    ],
    tips: [
        "Dress just before serving to keep the snap.",
        "Brilliant beside grilled chicken or in fish tacos.",
        "Add shrimp and it's a main course."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweetSour
)

let kiwiSmoothie = Recipe(
    name: "Kiwi Green Smoothie",
    eyebrow: "Kiwi recipe",
    imageName: "recipe-kiwi-smoothie",
    time: "5 min", level: "Easy", cal: "180",
    lede: "Kiwi's sour edge keeps this green smoothie honest — bright, not grassy.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "ripe kiwis, peeled"),
        Ingredient(qty: 1,    unit: "",    name: "frozen banana"),
        Ingredient(qty: 1,    unit: "cup", name: "spinach"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut water"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey, optional")
    ],
    steps: [
        Step(title: "Blend",  body: "Everything until smooth and vividly green."),
        Step(title: "Taste",  body: "Sweeten only if the kiwis were fierce."),
        Step(title: "Serve",  body: "Over ice, with a kiwi wheel on the rim if you're showing off.")
    ],
    tips: [
        "Golden kiwis make a sweeter, tropical version.",
        "Don't over-blend — crushed kiwi seeds turn bitter.",
        "Frozen kiwi chunks make it a slushie."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpSweetSour
)

let kiwiPavlova = Recipe(
    name: "Kiwi Pavlova",
    eyebrow: "Kiwi recipe",
    imageName: "recipe-kiwi-pavlova",
    time: "2 hr", level: "Medium", cal: "310",
    lede: "The Antipodean showpiece — crisp shell, marshmallow middle, and kiwi doing the decorating.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "egg whites, room temp"),
        Ingredient(qty: 1,    unit: "cup", name: "superfine sugar"),
        Ingredient(qty: 1,    unit: "tsp", name: "cornstarch"),
        Ingredient(qty: 1,    unit: "tsp", name: "white vinegar"),
        Ingredient(qty: 1.5,  unit: "cup", name: "whipped cream"),
        Ingredient(qty: 4,    unit: "",    name: "kiwis, peeled and sliced")
    ],
    steps: [
        Step(title: "Whip",  body: "Beat whites to soft peaks; add sugar a spoon at a time until glossy and stiff. Fold in cornstarch and vinegar."),
        Step(title: "Bake",  body: "Shape a disc on parchment; bake 250°F for 75–90 minutes, then cool in the off oven."),
        Step(title: "Crown", body: "Whipped cream, then kiwi shingles, just before serving.")
    ],
    tips: [
        "Cracks are character, not failure.",
        "Assemble at the last minute; kiwi juice softens meringue.",
        "A speck of yolk in the whites ruins everything — separate carefully."
    ],
    baseYieldValue: 8, baseYieldUnit: "slices", baseServings: 8,
    accentColor: .lpSweetSour
)

let kiwiParfait = Recipe(
    name: "Kiwi Chia Parfait",
    eyebrow: "Kiwi recipe",
    imageName: "recipe-kiwi-parfait",
    time: "10 min", level: "Easy", cal: "240",
    lede: "Green wheels against white chia layers — breakfast that looks like it hired a stylist.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 3,    unit: "tbsp",name: "chia seeds"),
        Ingredient(qty: 1,    unit: "tbsp",name: "maple syrup"),
        Ingredient(qty: 3,    unit: "",    name: "kiwis, sliced"),
        Ingredient(qty: 0.5,  unit: "cup", name: "granola")
    ],
    steps: [
        Step(title: "Set",    body: "Whisk coconut milk, chia, and maple; refrigerate 4 hours or overnight."),
        Step(title: "Layer",  body: "Pudding, kiwi wheels pressed to the glass, granola, repeat."),
        Step(title: "Serve",  body: "Cold, with one last kiwi fan on top.")
    ],
    tips: [
        "Press kiwi slices against the glass for the magazine look.",
        "Golden and green kiwi layers alternate beautifully.",
        "Make two days of jars at once — the chia keeps."
    ],
    baseYieldValue: 2, baseYieldUnit: "parfaits", baseServings: 2,
    accentColor: .lpSweetSour
)

let pomegranateRaita = Recipe(
    name: "Pomegranate Raita",
    eyebrow: "Pomegranate recipe",
    imageName: "recipe-pom-raita",
    time: "10 min", level: "Easy", cal: "110",
    lede: "Cool yogurt with ruby detonations — the raita that steals attention from the biryani.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "plain yogurt, whisked"),
        Ingredient(qty: 1,    unit: "cup", name: "pomegranate arils"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "roasted cumin powder"),
        Ingredient(qty: 0.25, unit: "tsp", name: "black salt or salt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "cilantro or mint, chopped")
    ],
    steps: [
        Step(title: "Whisk", body: "Whisk yogurt smooth with cumin and salt."),
        Step(title: "Fold",  body: "Stir in most arils, saving a bright handful."),
        Step(title: "Top",   body: "Reserved arils and herbs over the top; serve cold.")
    ],
    tips: [
        "A pinch of sugar if your yogurt is very sour.",
        "Pairs with anything spiced, grilled, or fried.",
        "Chill the arils first — the pop is better cold."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweetSour
)

let pomegranateSpritzer = Recipe(
    name: "Pomegranate Spritzer",
    eyebrow: "Pomegranate recipe",
    imageName: "recipe-pom-spritzer",
    time: "5 min", level: "Easy", cal: "80",
    lede: "Ruby juice, lime, and fizz — a drink that photographs better than most people.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "pomegranate juice"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey syrup, to taste"),
        Ingredient(qty: 2,    unit: "cup", name: "sparkling water"),
        Ingredient(qty: 0.25, unit: "cup", name: "arils, for the glasses")
    ],
    steps: [
        Step(title: "Mix",  body: "Stir juices and honey syrup in a pitcher."),
        Step(title: "Fizz", body: "Divide over ice; top with sparkling water."),
        Step(title: "Drop", body: "A spoonful of arils in each glass — they hover like confetti.")
    ],
    tips: [
        "Fresh-squeezed juice (blend arils, strain) is worth the mess.",
        "Rosemary sprig garnish for winter occasions.",
        "Freeze arils into ice cubes for slow-motion garnish."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpSweetSour
)

let pomegranateCouscous = Recipe(
    name: "Jeweled Couscous",
    eyebrow: "Pomegranate recipe",
    imageName: "recipe-pom-couscous",
    time: "20 min", level: "Easy", cal: "280",
    lede: "Couscous studded with arils, herbs, and pistachios — a side dish dressed for the occasion.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "couscous"),
        Ingredient(qty: 1.75, unit: "cup", name: "hot vegetable stock"),
        Ingredient(qty: 1,    unit: "cup", name: "pomegranate arils"),
        Ingredient(qty: 0.5,  unit: "cup", name: "pistachios, chopped"),
        Ingredient(qty: 0.5,  unit: "cup", name: "parsley + mint, chopped"),
        Ingredient(qty: 3,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Steam", body: "Pour hot stock over couscous, cover 5 minutes, fluff with a fork."),
        Step(title: "Dress", body: "Toss with oil, lemon, salt, and pepper while warm."),
        Step(title: "Jewel", body: "Fold in arils, pistachios, and herbs just before serving.")
    ],
    tips: [
        "A drizzle of pomegranate molasses ties the room together.",
        "Serve warm or room temperature — it travels well.",
        "Feta crumbles are a welcome intruder."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweetSour
)

let toyomansiDip = Recipe(
    name: "Toyomansi Dip",
    eyebrow: "Calamansi recipe",
    imageName: "recipe-toyomansi",
    time: "5 min", level: "Easy", cal: "15",
    lede: "Soy sauce sharpened with calamansi and a chili daring you — the Filipino table's default setting.",
    ingredients: [
        Ingredient(qty: 0.33, unit: "cup", name: "soy sauce"),
        Ingredient(qty: 6,    unit: "",    name: "calamansi, halved"),
        Ingredient(qty: 1,    unit: "",    name: "siling labuyo or Thai chili, bruised"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "sugar, optional")
    ],
    steps: [
        Step(title: "Squeeze", body: "Squeeze calamansi into the soy; drop two spent halves in for the oils."),
        Step(title: "Heat",    body: "Add the bruised chili — whole for a warning, chopped for a promise."),
        Step(title: "Serve",   body: "In small saucers beside anything grilled, fried, or dumpling-shaped.")
    ],
    tips: [
        "Ratio is personal — start 2:1 soy to juice and argue from there.",
        "Lemon or lime substitutes in exile, but calamansi is the soul.",
        "Also a 10-minute marinade for pork chops or chicken."
    ],
    baseYieldValue: 0.5, baseYieldUnit: "cup", baseServings: 6,
    accentColor: .lpTart
)

// MARK: - Tier 2 fruits (Sweet-sour)

let strawberryShortcake = Recipe(
    name: "Strawberry Shortcake",
    eyebrow: "Strawberry recipe",
    imageName: "recipe-strawberry-shortcake",
    time: "45 min", level: "Medium", cal: "380",
    lede: "Biscuit, berries, cream — three layers of argument for June.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "strawberries, hulled and sliced"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar, divided"),
        Ingredient(qty: 2,    unit: "cup", name: "flour"),
        Ingredient(qty: 1,    unit: "tbsp",name: "baking powder"),
        Ingredient(qty: 6,    unit: "tbsp",name: "cold butter, cubed"),
        Ingredient(qty: 0.75, unit: "cup", name: "milk"),
        Ingredient(qty: 1.5,  unit: "cup", name: "whipped cream")
    ],
    steps: [
        Step(title: "Macerate", body: "Toss berries with half the sugar; let them juice for 30 minutes."),
        Step(title: "Bake",     body: "Cut butter into flour, baking powder, remaining sugar, and salt; stir in milk, pat out, and bake rounds at 425°F for 12–14 minutes."),
        Step(title: "Stack",    body: "Split warm biscuits; pile with berries, their syrup, and cream.")
    ],
    tips: [
        "The berry syrup soaking into the biscuit is the whole point.",
        "Don't overwork the dough — shaggy is right.",
        "A drop of balsamic in the berries deepens everything."
    ],
    baseYieldValue: 6, baseYieldUnit: "shortcakes", baseServings: 6,
    accentColor: .lpSweetSour
)

let strawberryJam = Recipe(
    name: "Strawberry Jam",
    eyebrow: "Strawberry recipe",
    imageName: "recipe-strawberry-jam",
    time: "40 min", level: "Easy", cal: "50",
    lede: "Low pectin, high reward — strawberry jam asks for patience and pays in toast.",
    ingredients: [
        Ingredient(qty: 6,    unit: "cup", name: "strawberries, hulled"),
        Ingredient(qty: 2,    unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "lemon juice")
    ],
    steps: [
        Step(title: "Macerate", body: "Crush berries roughly with sugar; rest 30 minutes until glossy."),
        Step(title: "Boil",     body: "Add lemon juice and boil hard, stirring often, 20–25 minutes to 220°F or a wrinkling plate test."),
        Step(title: "Jar",      body: "Ladle into clean jars; it thickens as it cools.")
    ],
    tips: [
        "Slightly underripe berries set better than jammy-ripe ones.",
        "Skim the pink foam — or stir in a knob of butter to dissolve it.",
        "Keeps a month refrigerated; process jars for the pantry."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 32,
    accentColor: .lpSweetSour
)

let strawberriesCream = Recipe(
    name: "Strawberries & Cream",
    eyebrow: "Strawberry recipe",
    imageName: "recipe-strawberries-cream",
    time: "10 min", level: "Easy", cal: "210",
    lede: "Wimbledon's entire dessert menu, and correct about it.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "ripe strawberries, hulled"),
        Ingredient(qty: 1,    unit: "cup", name: "heavy cream, cold"),
        Ingredient(qty: 2,    unit: "tbsp",name: "powdered sugar"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "vanilla")
    ],
    steps: [
        Step(title: "Whip",   body: "Whip cream with sugar and vanilla to soft, lazy peaks."),
        Step(title: "Halve",  body: "Halve the berries — they hold cream better cut."),
        Step(title: "Serve",  body: "Berries in bowls, cream spooned over, one grind of black pepper if you're brave.")
    ],
    tips: [
        "Room-temperature berries taste twice as loud as cold ones.",
        "Soft peaks, not stiff — it should pour, barely.",
        "Crushed meringue on top turns it into Eton mess."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweetSour
)

let strawberryLemonade = Recipe(
    name: "Strawberry Lemonade",
    eyebrow: "Strawberry recipe",
    imageName: "recipe-strawberry-lemonade",
    time: "10 min", level: "Easy", cal: "110",
    lede: "Pink for real reasons — crushed berries against sharp lemon.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "strawberries, hulled"),
        Ingredient(qty: 0.67, unit: "cup", name: "lemon juice"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 4,    unit: "cup", name: "cold water")
    ],
    steps: [
        Step(title: "Blend",  body: "Purée strawberries with sugar and one cup of water."),
        Step(title: "Strain", body: "Push through a sieve into a pitcher to lose the seeds."),
        Step(title: "Mix",    body: "Add lemon juice and remaining water; serve over ice.")
    ],
    tips: [
        "Overripe berries are perfect here.",
        "Top with soda water for a strawberry spritz.",
        "Freeze into pops — no changes needed."
    ],
    baseYieldValue: 6, baseYieldUnit: "cups", baseServings: 5,
    accentColor: .lpSweetSour
)

let strawberryFruit = Fruit(
    name: "Strawberry",
    latinName: "Fragaria × ananassa",
    imageName: "fruit-strawberry",
    eyebrow: "Rooted up",
    pullQuote: "The fruit that made red mean ripe.",
    pullQuoteHighlight: "red mean ripe",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Sweet",      color: .lpSweet)
    ],
    snapshot: "Not a true berry at all — the seeds sit on the outside, and the red flesh is the flower's swollen base. Peak season is a short, loud spring window.",
    loveBody: "Sweetness with a built-in tang, perfume you can smell across the kitchen, and zero prep beyond pulling off the green hat.",
    loveBullets: [
        "More vitamin C per serving than an orange",
        "The only fruit wearing its seeds on the outside",
        "Anthocyanins give the red its antioxidant kick"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Out of hand, sliced over yogurt or shortcake, macerated with a spoon of sugar, or blitzed into lemonade.",
        lookFor: "Fully red to the shoulders with a fresh green calyx and a smell that reaches you first — they don't ripen after picking.",
        store: "Unwashed, single layer, refrigerated, eaten within two days. Wash only at the last minute."
    ),
    recipes: [
        RecipeCard(name: "Strawberry Shortcake", imageName: "recipe-strawberry-shortcake", meta: "45 min · Medium", recipe: strawberryShortcake),
        RecipeCard(name: "Strawberry Jam", imageName: "recipe-strawberry-jam", meta: "40 min · Easy", recipe: strawberryJam),
        RecipeCard(name: "Strawberries & Cream", imageName: "recipe-strawberries-cream", meta: "10 min · Easy", recipe: strawberriesCream),
        RecipeCard(name: "Strawberry Lemonade", imageName: "recipe-strawberry-lemonade", meta: "10 min · Easy", recipe: strawberryLemonade)
    ]
)

let raspberryCoulis = Recipe(
    name: "Raspberry Coulis",
    eyebrow: "Raspberry recipe",
    imageName: "recipe-raspberry-coulis",
    time: "10 min", level: "Easy", cal: "45",
    lede: "The five-minute sauce that makes any dessert look like it has a pastry chef.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "raspberries"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Simmer", body: "Warm everything until the berries collapse, about 5 minutes."),
        Step(title: "Strain", body: "Push through a fine sieve — the seeds stay behind."),
        Step(title: "Chill",  body: "Cool; it thickens slightly and keeps a week.")
    ],
    tips: [
        "Frozen raspberries work identically.",
        "Zigzag it over cheesecake, pavlova, or plain yogurt.",
        "A splash of rosewater is a quiet luxury."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 12,
    accentColor: .lpSweetSour
)

let raspberryMuffins = Recipe(
    name: "Raspberry Muffins",
    eyebrow: "Raspberry recipe",
    imageName: "recipe-raspberry-muffins",
    time: "35 min", level: "Medium", cal: "280",
    lede: "Tart berries burst into sweet crumb — every muffin gets its own jam pockets.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "flour"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 0.75, unit: "cup", name: "milk"),
        Ingredient(qty: 0.33, unit: "cup", name: "melted butter"),
        Ingredient(qty: 1,    unit: "",    name: "egg"),
        Ingredient(qty: 1,    unit: "tsp", name: "lemon zest"),
        Ingredient(qty: 1.5,  unit: "cup", name: "raspberries")
    ],
    steps: [
        Step(title: "Whisk", body: "Dry in one bowl; milk, butter, egg, and zest in another."),
        Step(title: "Fold",  body: "Combine until barely mixed; fold berries in with two strokes."),
        Step(title: "Bake",  body: "400°F for 18–20 minutes until golden and springy.")
    ],
    tips: [
        "Frozen berries go in unthawed to limit pink streaking.",
        "Fill cups high for bakery domes.",
        "Coarse sugar on top before baking."
    ],
    baseYieldValue: 12, baseYieldUnit: "muffins", baseServings: 12,
    accentColor: .lpSweetSour
)

let raspberryChiaJam = Recipe(
    name: "Raspberry Chia Jam",
    eyebrow: "Raspberry recipe",
    imageName: "recipe-raspberry-chia-jam",
    time: "15 min", level: "Easy", cal: "35",
    lede: "Jam without the sugar mountain — chia does the setting, raspberries do the shouting.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "raspberries"),
        Ingredient(qty: 2,    unit: "tbsp",name: "maple syrup or honey"),
        Ingredient(qty: 2,    unit: "tbsp",name: "chia seeds"),
        Ingredient(qty: 1,    unit: "tsp", name: "lemon juice")
    ],
    steps: [
        Step(title: "Mash",   body: "Warm berries 5 minutes and mash to a rough pulp."),
        Step(title: "Stir",   body: "Off heat, stir in syrup, lemon, and chia."),
        Step(title: "Set",    body: "Refrigerate 30 minutes — the chia tightens it to spreadable.")
    ],
    tips: [
        "Keeps a week; not a shelf-stable jam.",
        "Works with any berry or a mix.",
        "Blend before chilling if seeds-on-seeds bothers you."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 12,
    accentColor: .lpSweetSour
)

let raspberryFool = Recipe(
    name: "Raspberry Fool",
    eyebrow: "Raspberry recipe",
    imageName: "recipe-raspberry-fool",
    time: "15 min", level: "Easy", cal: "290",
    lede: "Crushed berries folded through cream — dessert that's mostly air and entirely gone.",
    ingredients: [
        Ingredient(qty: 2.5,  unit: "cup", name: "raspberries"),
        Ingredient(qty: 3,    unit: "tbsp",name: "powdered sugar"),
        Ingredient(qty: 1.5,  unit: "cup", name: "heavy cream, cold"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "vanilla")
    ],
    steps: [
        Step(title: "Crush", body: "Mash two cups of berries with half the sugar; keep it chunky."),
        Step(title: "Whip",  body: "Whip cream with remaining sugar and vanilla to soft peaks."),
        Step(title: "Fold",  body: "Ripple the crush through the cream — streaks, not uniformity. Glass, spoon, done.")
    ],
    tips: [
        "Underfold. The marbling is the beauty.",
        "Shortbread on the side for structural support.",
        "Half yogurt, half cream makes a brighter fool."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpSweetSour
)

let raspberryFruit = Fruit(
    name: "Raspberry",
    latinName: "Rubus idaeus",
    imageName: "fruit-raspberry",
    eyebrow: "Rooted up",
    pullQuote: "A hundred tiny fruits holding hands.",
    pullQuoteHighlight: "holding hands",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Tart",       color: .lpTart)
    ],
    snapshot: "Each raspberry is a cluster of tiny drupelets around a hollow core — it leaves its stem behind when picked, which is why it crushes so easily and travels so badly.",
    loveBody: "The most perfumed of the bramble fruits, with a tart edge that keeps the sweetness honest and a texture that dissolves rather than chews.",
    loveBullets: [
        "Among the highest-fiber fruits per bite",
        "Rich in vitamin C and manganese",
        "Red, gold, and black varieties — all fair game"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "By the handful, over anything creamy, crushed into fools and coulis, or perched on a curd tart.",
        lookFor: "Plump, dry, deeply colored berries with no crush or weep at the bottom of the punnet.",
        store: "Fridge, unwashed, single layer, one to two days. They wait for no one."
    ),
    recipes: [
        RecipeCard(name: "Raspberry Coulis", imageName: "recipe-raspberry-coulis", meta: "10 min · Easy", recipe: raspberryCoulis),
        RecipeCard(name: "Raspberry Muffins", imageName: "recipe-raspberry-muffins", meta: "35 min · Medium", recipe: raspberryMuffins),
        RecipeCard(name: "Raspberry Chia Jam", imageName: "recipe-raspberry-chia-jam", meta: "15 min · Easy", recipe: raspberryChiaJam),
        RecipeCard(name: "Raspberry Fool", imageName: "recipe-raspberry-fool", meta: "15 min · Easy", recipe: raspberryFool)
    ]
)

let plumGalette = Recipe(
    name: "Plum Galette",
    eyebrow: "Plum recipe",
    imageName: "recipe-plum-galette",
    time: "1 hr", level: "Medium", cal: "320",
    lede: "A free-form tart that forgives everything except underripe plums.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "pie dough round"),
        Ingredient(qty: 5,    unit: "",    name: "plums, sliced"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar, plus more for the crust"),
        Ingredient(qty: 2,    unit: "tbsp",name: "flour or almond meal"),
        Ingredient(qty: 1,    unit: "",    name: "egg, beaten"),
        Ingredient(qty: 1,    unit: "tbsp",name: "butter, dotted")
    ],
    steps: [
        Step(title: "Fill",  body: "Dust dough with flour and sugar; shingle plums in the center leaving a 2-inch border."),
        Step(title: "Fold",  body: "Pleat the edge over the fruit, brush with egg, sugar the crust, dot the fruit with butter."),
        Step(title: "Bake",  body: "400°F for 40–45 minutes until the juice bubbles thick and the crust is bronzed.")
    ],
    tips: [
        "Leaking juice is rustic charm; parchment saves the pan.",
        "Any plum works; dark-skinned ones bleed the prettiest crimson.",
        "Cold galette for breakfast outranks most pastries."
    ],
    baseYieldValue: 8, baseYieldUnit: "slices", baseServings: 8,
    accentColor: .lpSweetSour
)

let plumsRoasted = Recipe(
    name: "Vanilla Roasted Plums",
    eyebrow: "Plum recipe",
    imageName: "recipe-plums-roasted",
    time: "25 min", level: "Easy", cal: "140",
    lede: "Halved plums roast into their own crimson syrup — dessert with the effort of a shrug.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "plums, halved and pitted"),
        Ingredient(qty: 3,    unit: "tbsp",name: "brown sugar"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1,    unit: "",    name: "cinnamon stick"),
        Ingredient(qty: 1,    unit: "cup", name: "Greek yogurt or ice cream, to serve")
    ],
    steps: [
        Step(title: "Arrange", body: "Plums cut-side up in a snug dish; sugar, vanilla, and cinnamon over."),
        Step(title: "Roast",   body: "400°F for 18–20 minutes until slumped and syrupy."),
        Step(title: "Serve",   body: "Warm, with the pan syrup spooned over something cold and creamy.")
    ],
    tips: [
        "Firm plums hold their shape; ripe ones melt — both delicious.",
        "A splash of red wine in the pan makes it dinner-party.",
        "Leftovers are tomorrow's porridge topping."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpSweetSour
)

let plumSauce = Recipe(
    name: "Chinese Plum Sauce",
    eyebrow: "Plum recipe",
    imageName: "recipe-plum-sauce",
    time: "35 min", level: "Easy", cal: "60",
    lede: "Sweet-sour plums cooked down with ginger and five spice — duck's favorite condiment, homemade.",
    ingredients: [
        Ingredient(qty: 5,    unit: "cup", name: "plums, chopped"),
        Ingredient(qty: 0.5,  unit: "cup", name: "brown sugar"),
        Ingredient(qty: 0.33, unit: "cup", name: "rice vinegar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "grated ginger"),
        Ingredient(qty: 2,    unit: "",    name: "garlic cloves, minced"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "five-spice powder")
    ],
    steps: [
        Step(title: "Simmer", body: "Everything in a pot, 25 minutes, until the plums fully surrender."),
        Step(title: "Blend",  body: "Purée smooth; simmer 5 more minutes to gloss."),
        Step(title: "Jar",    body: "Cool and refrigerate — it improves for days.")
    ],
    tips: [
        "Tart plums need no extra vinegar; sweet ones want a splash more.",
        "Brush on roast duck, pork, or crispy tofu.",
        "Keeps three weeks refrigerated."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 20,
    accentColor: .lpSweetSour
)

let plumCake = Recipe(
    name: "German Plum Cake",
    eyebrow: "Plum recipe",
    imageName: "recipe-plum-cake",
    time: "1 hr", level: "Medium", cal: "290",
    lede: "Zwetschgenkuchen logic: pack the plums so tight the cake is mostly fruit, then don't apologize.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "flour"),
        Ingredient(qty: 0.67, unit: "cup", name: "sugar, divided"),
        Ingredient(qty: 0.5,  unit: "cup", name: "soft butter"),
        Ingredient(qty: 2,    unit: "",    name: "eggs"),
        Ingredient(qty: 1.5,  unit: "tsp", name: "baking powder"),
        Ingredient(qty: 10,   unit: "",    name: "plums, quartered"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "cinnamon")
    ],
    steps: [
        Step(title: "Batter",  body: "Cream butter and most of the sugar; beat in eggs, then flour and baking powder."),
        Step(title: "Shingle", body: "Spread thin in a pan; stand plum quarters upright in tight rows, cut side up."),
        Step(title: "Bake",    body: "350°F for 40–45 minutes; dust with cinnamon sugar while warm.")
    ],
    tips: [
        "Italian prune plums are traditional and hold best.",
        "The fruit sinks a little — that's the architecture.",
        "Whipped cream is not optional in Bavaria."
    ],
    baseYieldValue: 9, baseYieldUnit: "squares", baseServings: 9,
    accentColor: .lpSweetSour
)

let plumFruit = Fruit(
    name: "Plum",
    latinName: "Prunus domestica",
    imageName: "fruit-plum",
    eyebrow: "Rooted up",
    pullQuote: "Sweet flesh, sour skin — a two-act play in one bite.",
    pullQuoteHighlight: "two-act play in one bite",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Sweet",      color: .lpSweet)
    ],
    snapshot: "A stone fruit in a thousand costumes — crimson, gold, damson-blue — with a dusty bloom on the skin that marks it fresh off the tree. The skin's tartness against the honeyed flesh is the whole signature.",
    loveBody: "The most varied stone fruit going: eat one out of hand, roast the firm ones, jam the surplus, and dry the rest into prunes.",
    loveBullets: [
        "Skin-on means extra fiber and antioxidants",
        "Dozens of varieties from tart damsons to candy-sweet gages",
        "Dried, it becomes a different (and famous) fruit entirely"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Out of hand over a sink, roasted with vanilla, shingled into galettes and German cakes, or simmered into sauce for duck.",
        lookFor: "Heavy fruit with intact bloom that gives slightly at the tip — rock-hard plums were picked in a hurry.",
        store: "Ripen on the counter in a paper bag; refrigerate ripe fruit up to four days."
    ),
    recipes: [
        RecipeCard(name: "Plum Galette", imageName: "recipe-plum-galette", meta: "1 hr · Medium", recipe: plumGalette),
        RecipeCard(name: "Vanilla Roasted Plums", imageName: "recipe-plums-roasted", meta: "25 min · Easy", recipe: plumsRoasted),
        RecipeCard(name: "Chinese Plum Sauce", imageName: "recipe-plum-sauce", meta: "35 min · Easy", recipe: plumSauce),
        RecipeCard(name: "German Plum Cake", imageName: "recipe-plum-cake", meta: "1 hr · Medium", recipe: plumCake)
    ]
)

let apricotJam = Recipe(
    name: "Apricot Jam",
    eyebrow: "Apricot recipe",
    imageName: "recipe-apricot-jam",
    time: "45 min", level: "Easy", cal: "50",
    lede: "The pastry kitchen's secret weapon — half the croissants you've admired were glazed with this.",
    ingredients: [
        Ingredient(qty: 6,    unit: "cup", name: "apricots, pitted and quartered"),
        Ingredient(qty: 2.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "lemon juice")
    ],
    steps: [
        Step(title: "Macerate", body: "Toss apricots and sugar; rest an hour until juicy."),
        Step(title: "Boil",     body: "Add lemon and boil, stirring, 20–25 minutes to a thick amber."),
        Step(title: "Jar",      body: "Skim, jar, and admire the color you can't buy.")
    ],
    tips: [
        "A few pits simmered in a muslin bag add a bitter-almond depth.",
        "Slightly firm apricots have the most pectin.",
        "Warm and strained, it's the glaze for any fruit tart."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 32,
    accentColor: .lpSweetSour
)

let apricotsGrilled = Recipe(
    name: "Grilled Apricots & Honey",
    eyebrow: "Apricot recipe",
    imageName: "recipe-apricots-grilled",
    time: "15 min", level: "Easy", cal: "150",
    lede: "Two minutes on the grill and an apricot admits everything it was hiding.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "apricots, halved and pitted"),
        Ingredient(qty: 1,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 0.5,  unit: "cup", name: "ricotta or mascarpone"),
        Ingredient(qty: 2,    unit: "tbsp",name: "chopped pistachios")
    ],
    steps: [
        Step(title: "Brush", body: "Oil the cut sides lightly."),
        Step(title: "Grill", body: "Cut-side down over high heat 2–3 minutes until marked and juicy."),
        Step(title: "Plate", body: "Over ricotta, honey ribboned across, pistachios thrown like confetti.")
    ],
    tips: [
        "Slightly firm apricots grill; ripe ones collapse.",
        "A grill pan indoors works identically.",
        "Also excellent beside pork chops or on a cheese board."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweetSour
)

let apricotTagine = Recipe(
    name: "Apricot Chicken Tagine",
    eyebrow: "Apricot recipe",
    imageName: "recipe-apricot-tagine",
    time: "1 hr", level: "Medium", cal: "460",
    lede: "Sweet-sour apricots melting into saffron onions — the tagine that converts fruit-in-dinner skeptics.",
    ingredients: [
        Ingredient(qty: 2,    unit: "lb",  name: "chicken thighs"),
        Ingredient(qty: 1,    unit: "cup", name: "dried apricots"),
        Ingredient(qty: 2,    unit: "",    name: "onions, sliced"),
        Ingredient(qty: 2,    unit: "tsp", name: "ras el hanout"),
        Ingredient(qty: 1,    unit: "tsp", name: "ground ginger + cinnamon"),
        Ingredient(qty: 1.5,  unit: "cup", name: "chicken stock"),
        Ingredient(qty: 0.33, unit: "cup", name: "toasted almonds")
    ],
    steps: [
        Step(title: "Brown",  body: "Sear seasoned chicken; set aside. Soften onions with the spices in the same pot."),
        Step(title: "Braise", body: "Return chicken with stock and apricots; simmer covered 35–40 minutes."),
        Step(title: "Finish", body: "Uncover, reduce the sauce to a glaze, scatter almonds, serve over couscous.")
    ],
    tips: [
        "Fresh apricots work in season — add them in the last 15 minutes.",
        "The jeweled couscous from the pomegranate page is the natural bed.",
        "Better the next day, as tagines are."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweetSour
)

let apricotCrumble = Recipe(
    name: "Apricot Almond Crumble",
    eyebrow: "Apricot recipe",
    imageName: "recipe-apricot-crumble",
    time: "45 min", level: "Medium", cal: "330",
    lede: "Apricot and almond are cousins, and this crumble is the family reunion.",
    ingredients: [
        Ingredient(qty: 8,    unit: "",    name: "apricots, quartered"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cornstarch"),
        Ingredient(qty: 0.75, unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sliced almonds"),
        Ingredient(qty: 0.5,  unit: "cup", name: "brown sugar"),
        Ingredient(qty: 6,    unit: "tbsp",name: "cold butter"),
        Ingredient(qty: 0.25, unit: "tsp", name: "almond extract")
    ],
    steps: [
        Step(title: "Toss",  body: "Apricots, sugar, cornstarch, and almond extract into the dish."),
        Step(title: "Crumb", body: "Rub flour, brown sugar, and butter to rubble; fold in almonds; blanket the fruit."),
        Step(title: "Bake",  body: "375°F for 35 minutes until golden and bubbling at the borders.")
    ],
    tips: [
        "Underripe apricots turn gloriously tart when baked — use them.",
        "Crème fraîche beats ice cream here; the tang belongs.",
        "Same formula loves peaches and plums."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpSweetSour
)

let apricotFruit = Fruit(
    name: "Apricot",
    latinName: "Prunus armeniaca",
    imageName: "fruit-apricot",
    eyebrow: "Rooted up",
    pullQuote: "A peach that learned restraint.",
    pullQuoteHighlight: "learned restraint",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Sweet",      color: .lpSweet)
    ],
    snapshot: "Small, velvet-skinned, and blushing orange, the apricot ripens early and bruises easily — a short-season stone fruit that rewards catching it at exactly the right week.",
    loveBody: "Tarter and more perfumed than its peach cousin, it's the stone fruit that cooks best: jam, tagines, crumbles, and the glaze on every proper fruit tart.",
    loveBullets: [
        "Rich in beta-carotene — the orange is doing work",
        "One of the earliest cultivated fruits, via the Silk Road",
        "Dried apricots concentrate everything fivefold"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Ripe out of hand, grilled with honey, simmered into tagines, or jammed while the season lasts.",
        lookFor: "Deep orange with a rosy blush, fragrant at the stem, yielding like a ripe avocado — avoid pale, hard fruit.",
        store: "Counter until fragrant and soft, then refrigerate up to three days. They ripen fast; check daily."
    ),
    recipes: [
        RecipeCard(name: "Apricot Jam", imageName: "recipe-apricot-jam", meta: "45 min · Easy", recipe: apricotJam),
        RecipeCard(name: "Grilled Apricots & Honey", imageName: "recipe-apricots-grilled", meta: "15 min · Easy", recipe: apricotsGrilled),
        RecipeCard(name: "Apricot Chicken Tagine", imageName: "recipe-apricot-tagine", meta: "1 hr · Medium", recipe: apricotTagine),
        RecipeCard(name: "Apricot Almond Crumble", imageName: "recipe-apricot-crumble", meta: "45 min · Medium", recipe: apricotCrumble)
    ]
)
