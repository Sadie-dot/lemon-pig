import SwiftUI

// MARK: - Tropical catalog

let mangoLassi = Recipe(
    name: "Mango Lassi",
    eyebrow: "Mango recipe",
    imageName: "recipe-mango-lassi",
    time: "5 min", level: "Easy", cal: "210",
    lede: "Ripe mango needs almost nothing — yogurt for body, cardamom for perfume, ice for mercy on a hot day.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "ripe mango, cubed"),
        Ingredient(qty: 1,    unit: "cup", name: "plain yogurt"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cold milk"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey or sugar"),
        Ingredient(qty: 0.25, unit: "tsp", name: "ground cardamom"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend mango, yogurt, milk, honey, and cardamom until completely smooth."),
        Step(title: "Ice",    body: "Add the ice and blend again until frosty and thick."),
        Step(title: "Serve",  body: "Pour into cold glasses and dust with a little extra cardamom.")
    ],
    tips: [
        "Alphonso or Ataulfo mangoes make the silkiest lassi.",
        "Frozen mango works — skip the ice and add more milk.",
        "A pinch of saffron bloomed in warm milk makes it festive."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTropical
)

let mangoFruit = Fruit(
    name: "Mango",
    latinName: "Mangifera indica",
    imageName: "fruit-mango",
    eyebrow: "Rooted up",
    pullQuote: "Sunshine you can slice — honeyed, fragrant, and dripping.",
    pullQuoteHighlight: "Sunshine you can slice",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Sweet",    color: .lpSweet)
    ],
    snapshot: "The world's most-eaten tropical fruit, cultivated in India for over four thousand years. A flat central stone is wrapped in dense golden flesh that ranges from silky to lightly fibrous.",
    loveBody: "A great mango is dessert straight off the tree — honey-sweet with pine and citrus around the edges. Hundreds of varieties mean a whole spectrum of flavor to explore.",
    loveBullets: [
        "Rich in vitamins A and C",
        "Hundreds of cultivars, each with its own character",
        "Sweet enough for dessert, firm enough for salsa"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Cut cheeks off the flat stone, cross-hatch, and turn inside out — or just eat over the sink.",
        lookFor: "Judge by smell and give, not color: a fruity aroma at the stem and flesh that yields slightly.",
        store: "Ripen at room temperature, then refrigerate up to five days. Cubed mango freezes well."
    ),
    recipes: [
        RecipeCard(name: "Mango Lassi", imageName: "recipe-mango-lassi", meta: "5 min · Easy", recipe: mangoLassi),
        RecipeCard(name: "Mango Sticky Rice", imageName: "recipe-mango-sticky-rice", meta: "40 min · Medium", recipe: mangoStickyRice),
        RecipeCard(name: "Mango Salsa", imageName: "recipe-mango-salsa", meta: "10 min · Easy", recipe: mangoSalsa),
        RecipeCard(name: "Mango Sorbet", imageName: "recipe-mango-sorbet", meta: "10 min · Easy", recipe: mangoSorbet)
    ]
)

let pineappleGrilled = Recipe(
    name: "Grilled Pineapple",
    eyebrow: "Pineapple recipe",
    imageName: "recipe-grilled-pineapple",
    time: "15 min", level: "Easy", cal: "90",
    lede: "Heat concentrates the sugar and softens the bite — pineapple's tang turns to caramel at the grill grates.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "ripe pineapple"),
        Ingredient(qty: 2,    unit: "tbsp",name: "brown sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.25, unit: "tsp", name: "chili powder"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Cut",    body: "Peel and core the pineapple; slice into rings or long wedges about an inch thick."),
        Step(title: "Glaze",  body: "Stir brown sugar, lime juice, chili, and salt; brush over the fruit."),
        Step(title: "Grill",  body: "Grill over medium-high 3–4 minutes per side until deeply marked and caramelized."),
        Step(title: "Serve",  body: "Serve warm — alone, over ice cream, or beside anything grilled.")
    ],
    tips: [
        "A ripe pineapple smells sweet at the base — that's the test.",
        "A grill pan indoors works just as well as coals.",
        "Leftovers are excellent chopped into salsa or fried rice."
    ],
    baseYieldValue: 8, baseYieldUnit: "wedges", baseServings: 4,
    accentColor: .lpTropical
)

let pineappleFruit = Fruit(
    name: "Pineapple",
    latinName: "Ananas comosus",
    imageName: "fruit-pineapple",
    eyebrow: "Rooted up",
    pullQuote: "Two years of patience for one armored burst of candy-tang.",
    pullQuoteHighlight: "one armored burst",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour)
    ],
    snapshot: "Not one fruit but dozens fused together — each 'eye' on the shell is a separate berry. The plant takes nearly two years to produce a single pineapple.",
    loveBody: "Pineapple runs sweet and sharp at once, with an enzyme, bromelain, that tenderizes meat and gives fresh pineapple its famous tongue-tingle.",
    loveBullets: [
        "Bromelain aids digestion and tenderizes meat",
        "An excellent source of vitamin C and manganese",
        "Every part earns its keep — even the core flavors drinks"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Eat fresh in spears, grill until caramelized, or blend the core into smoothies.",
        lookFor: "A sweet smell at the base, heavy weight, and a leaf that pulls free with light resistance.",
        store: "Whole at room temperature two days; cut fruit refrigerated up to five in its juice."
    ),
    recipes: [
        RecipeCard(name: "Grilled Pineapple", imageName: "recipe-grilled-pineapple", meta: "15 min · Easy", recipe: pineappleGrilled),
        RecipeCard(name: "Pineapple Fried Rice", imageName: "recipe-pineapple-fried-rice", meta: "20 min · Easy", recipe: pineappleFriedRice),
        RecipeCard(name: "Piña Coconut Smoothie", imageName: "recipe-pineapple-smoothie", meta: "5 min · Easy", recipe: pineappleSmoothie),
        RecipeCard(name: "Charred Pineapple Salsa", imageName: "recipe-pineapple-salsa", meta: "15 min · Easy", recipe: pineappleSalsa)
    ]
)

let papayaBowl = Recipe(
    name: "Papaya Lime Bowl",
    eyebrow: "Papaya recipe",
    imageName: "recipe-papaya-bowl",
    time: "5 min", level: "Easy", cal: "80",
    lede: "Papaya's soft muskiness wants acid — a hard squeeze of lime flips it from mellow to bright.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "ripe papaya"),
        Ingredient(qty: 2,    unit: "",    name: "limes"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted coconut flakes"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt")
    ],
    steps: [
        Step(title: "Halve",  body: "Halve the papaya lengthwise and scoop out the peppery black seeds."),
        Step(title: "Dress",  body: "Squeeze a whole lime over each half and drizzle with honey."),
        Step(title: "Finish", body: "Scatter with coconut and a little salt. Eat straight from the shell with a spoon.")
    ],
    tips: [
        "The seeds are edible — peppery, like mustard greens. Try a few.",
        "Underripe papaya? Treat it like green mango and shred it into salad.",
        "Chill the fruit first; cold papaya with lime is a different food."
    ],
    baseYieldValue: 2, baseYieldUnit: "halves", baseServings: 2,
    accentColor: .lpTropical
)

let papayaFruit = Fruit(
    name: "Papaya",
    latinName: "Carica papaya",
    imageName: "fruit-papaya",
    eyebrow: "Rooted up",
    pullQuote: "Soft as custard, musky as melon — built for a lime's sharp edge.",
    pullQuoteHighlight: "built for a lime's sharp edge.",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Creamy",   color: .lpCreamy)
    ],
    snapshot: "A fast-growing tropical tree fruit with butter-soft orange flesh and a central pocket of peppery seeds. Ripe in months, not years — one of the most productive fruits on earth.",
    loveBody: "Papaya's gentle sweetness and spoonable texture make it breakfast royalty across the tropics, and its enzyme papain is so good at breaking down protein it's sold as a tenderizer.",
    loveBullets: [
        "Papain supports digestion and tenderizes meat",
        "Very high in vitamin C and carotenoids",
        "The seeds are edible with a mustardy bite"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Scoop chilled with lime, cube into fruit plates, or shred green papaya into som tam.",
        lookFor: "Skin turning from green to amber that yields to a gentle press — avoid bruises and wet spots.",
        store: "Ripen at room temperature; refrigerate ripe fruit and eat within three days."
    ),
    recipes: [
        RecipeCard(name: "Papaya Lime Bowl", imageName: "recipe-papaya-bowl", meta: "5 min · Easy", recipe: papayaBowl),
        RecipeCard(name: "Green Papaya Salad", imageName: "recipe-papaya-salad", meta: "20 min · Medium", recipe: papayaSalad),
        RecipeCard(name: "Papaya Batido", imageName: "recipe-papaya-batido", meta: "5 min · Easy", recipe: papayaBatido),
        RecipeCard(name: "Papaya-Lime Sorbet", imageName: "recipe-papaya-sorbet", meta: "15 min · Easy", recipe: papayaSorbet)
    ]
)

let lycheeSorbet = Recipe(
    name: "Lychee Sorbet",
    eyebrow: "Lychee recipe",
    imageName: "recipe-lychee-sorbet",
    time: "20 min + freeze", level: "Easy", cal: "110",
    lede: "Lychee's rose-grape perfume is fragile — freezing it into sorbet locks the flowers in.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "peeled, pitted lychees"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "cup", name: "water"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Syrup",  body: "Dissolve sugar in the water over low heat; cool completely."),
        Step(title: "Blend",  body: "Purée lychees with the syrup, lime juice, and salt until silky."),
        Step(title: "Freeze", body: "Churn in an ice cream maker, or freeze in a tray and blitz the frozen cubes until creamy."),
        Step(title: "Ripen",  body: "Freeze 2 hours more for scoopable texture. Soften 5 minutes before serving.")
    ],
    tips: [
        "Canned lychees work — use their syrup and halve the sugar.",
        "A few raspberries blended in turn it blush-pink and add tang.",
        "Serve with cold sparkling wine poured over for an instant float."
    ],
    baseYieldValue: 1, baseYieldUnit: "quart", baseServings: 6,
    accentColor: .lpTropical
)

let lycheeFruit = Fruit(
    name: "Lychee",
    latinName: "Litchi chinensis",
    imageName: "fruit-lychee",
    eyebrow: "Rooted up",
    pullQuote: "A grape that went to finishing school and came back wearing roses.",
    pullQuoteHighlight: "came back wearing roses.",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Sweet",    color: .lpSweet)
    ],
    snapshot: "A bumpy crimson shell peels away to translucent white flesh around a glossy seed. Cultivated in southern China for two millennia and still a symbol of luxury there.",
    loveBody: "Lychee tastes like a grape crossed with a rose garden — floral, juicy, and delicately sweet. The shell peels with a thumbnail, which makes stopping at ten a genuine challenge.",
    loveBullets: [
        "Very high in vitamin C",
        "Distinctive floral aroma unlike any other fruit",
        "Peels in seconds — nature's snack packaging"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Peel and eat chilled, drop into drinks and fruit salads, or freeze into sorbet.",
        lookFor: "Shells with red still in them that give slightly — brown, dry, or cracked shells are past it.",
        store: "Refrigerate in a bag up to a week; they lose perfume fast at room temperature."
    ),
    recipes: [
        RecipeCard(name: "Lychee Sorbet", imageName: "recipe-lychee-sorbet", meta: "20 min · Easy", recipe: lycheeSorbet),
        RecipeCard(name: "Lychee Iced Tea", imageName: "recipe-lychee-iced-tea", meta: "15 min · Easy", recipe: lycheeIcedTea),
        RecipeCard(name: "Lychee Panna Cotta", imageName: "recipe-lychee-panna-cotta", meta: "30 min · Medium", recipe: lycheePannaCotta),
        RecipeCard(name: "Lychee & Mint Salad", imageName: "recipe-lychee-salad", meta: "10 min · Easy", recipe: lycheeSalad)
    ]
)

let guavaPaste = Recipe(
    name: "Guava Paste",
    eyebrow: "Guava recipe",
    imageName: "recipe-guava-paste",
    time: "1.5 hr", level: "Medium", cal: "70",
    lede: "Slow-cooked until it slices — the Latin pantry classic that turns guava's perfume into something you can serve with cheese.",
    ingredients: [
        Ingredient(qty: 2,    unit: "lb",  name: "ripe guavas"),
        Ingredient(qty: 2,    unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Cook",   body: "Simmer chopped guavas with a splash of water until collapsed, about 15 minutes."),
        Step(title: "Sieve",  body: "Purée and push through a sieve to remove the hard seeds."),
        Step(title: "Reduce", body: "Cook the purée with sugar, lime, and salt over low heat, stirring, 45–60 minutes until it pulls from the pan."),
        Step(title: "Set",    body: "Spread into a lined pan and cool overnight until firm enough to slice.")
    ],
    tips: [
        "Serve the classic way: a slice of paste on a slice of salty white cheese.",
        "Stir constantly at the end — it spits like lava when thick.",
        "Keeps for months wrapped and refrigerated."
    ],
    baseYieldValue: 1, baseYieldUnit: "loaf", baseServings: 20,
    accentColor: .lpTropical
)

let guavaFruit = Fruit(
    name: "Guava",
    latinName: "Psidium guajava",
    imageName: "fruit-guava",
    eyebrow: "Rooted up",
    pullQuote: "One fruit perfumes the whole room — sweet, musky, unmistakable.",
    pullQuoteHighlight: "perfumes the whole room",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Sweet",    color: .lpSweet)
    ],
    snapshot: "A round tropical fruit with green-to-yellow skin and flesh from cream to deep pink, studded with hard little seeds. Its fragrance carries further than almost any fruit.",
    loveBody: "Guava is a nutrition heavyweight dressed as candy — several times the vitamin C of an orange, with a grainy-sweet flesh that shines fresh, juiced, or slow-cooked into paste.",
    loveBullets: [
        "Several times the vitamin C of an orange",
        "High in fiber, especially eaten skin-on",
        "Fresh, juiced, or as paste — it never wastes"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Eat skin-on like an apple, blend into juice, or reduce into the classic sliceable paste.",
        lookFor: "Fragrant fruit that yields like a ripe avocado; a strong smell means a ripe guava.",
        store: "Ripen at room temperature, then refrigerate up to four days."
    ),
    recipes: [
        RecipeCard(name: "Guava Paste", imageName: "recipe-guava-paste", meta: "1.5 hr · Medium", recipe: guavaPaste),
        RecipeCard(name: "Guava Pastelitos", imageName: "recipe-guava-pastelitos", meta: "30 min · Medium", recipe: guavaPastelitos),
        RecipeCard(name: "Guava Agua Fresca", imageName: "recipe-guava-agua", meta: "10 min · Easy", recipe: guavaAguaFresca),
        RecipeCard(name: "Guava BBQ Glaze", imageName: "recipe-guava-glaze", meta: "15 min · Easy", recipe: guavaGlaze)
    ]
)

let dragonBowl = Recipe(
    name: "Dragon Fruit Bowl",
    eyebrow: "Dragon fruit recipe",
    imageName: "recipe-dragon-bowl",
    time: "10 min", level: "Easy", cal: "190",
    lede: "Dragon fruit is mild on its own — blended thick and topped with crunch, its color does the talking and the toppings do the tasting.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "red-fleshed dragon fruit, frozen in chunks"),
        Ingredient(qty: 1,    unit: "",    name: "frozen banana"),
        Ingredient(qty: 0.5,  unit: "cup", name: "coconut milk"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 0.25, unit: "cup", name: "granola"),
        Ingredient(qty: 1,    unit: "",    name: "kiwi, sliced")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend dragon fruit, banana, coconut milk, and honey until thick — spoon-standing thick."),
        Step(title: "Bowl",   body: "Scrape into bowls and smooth the top."),
        Step(title: "Top",    body: "Finish with granola, kiwi, and anything crunchy. Eat immediately, magenta-first.")
    ],
    tips: [
        "Red-fleshed varieties give the shocking pink; white-fleshed taste the same but photograph quieter.",
        "Keep everything frozen — room-temp fruit makes soup, not a bowl.",
        "The skin is a natural bowl if you scoop carefully."
    ],
    baseYieldValue: 2, baseYieldUnit: "bowls", baseServings: 2,
    accentColor: .lpTropical
)

let dragonFruitFruit = Fruit(
    name: "Dragon Fruit",
    latinName: "Selenicereus undatus",
    imageName: "fruit-dragon-fruit",
    eyebrow: "Rooted up",
    pullQuote: "A cactus flower's one-night bloom, caught and kept as fruit.",
    pullQuoteHighlight: "one-night bloom,",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Sweet",    color: .lpSweet)
    ],
    snapshot: "The fruit of a night-blooming climbing cactus — flame-pink scales outside, kiwi-textured flesh inside, white or magenta, freckled with tiny black seeds.",
    loveBody: "Dragon fruit is gentle where it counts: subtly sweet, softly crunchy, endlessly photogenic. It hydrates like melon and plays supporting cast to bolder flavors.",
    loveBullets: [
        "Rich in antioxidant betalains (the magenta ones)",
        "High water content — a dessert that hydrates",
        "Mild flavor that pairs with anything bright"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Halve and scoop, cube into fruit salads, or blend frozen into vivid smoothie bowls.",
        lookFor: "Even, bright skin that gives slightly; brown-tipped scales are fine, soft spots are not.",
        store: "Room temperature a day or two; refrigerated up to five days."
    ),
    recipes: [
        RecipeCard(name: "Dragon Fruit Bowl", imageName: "recipe-dragon-bowl", meta: "10 min · Easy", recipe: dragonBowl),
        RecipeCard(name: "Dragon Fruit Salsa", imageName: "recipe-dragon-salsa", meta: "10 min · Easy", recipe: dragonFruitSalsa),
        RecipeCard(name: "Dragon Fruit Lemonade", imageName: "recipe-dragon-lemonade", meta: "10 min · Easy", recipe: dragonFruitLemonade),
        RecipeCard(name: "Dragon Fruit Chia Pudding", imageName: "recipe-dragon-chia", meta: "10 min · Easy", recipe: dragonFruitChia)
    ]
)

// MARK: - Tart catalog

let greenAppleSlaw = Recipe(
    name: "Green Apple Slaw",
    eyebrow: "Green apple recipe",
    imageName: "recipe-apple-slaw",
    time: "15 min", level: "Easy", cal: "95",
    lede: "Granny Smith's snap and sour make it the backbone of a slaw that stays crunchy for days.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "green apples, julienned"),
        Ingredient(qty: 0.25, unit: "",    name: "green cabbage, shredded"),
        Ingredient(qty: 0.33, unit: "cup", name: "yogurt or mayonnaise"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cider vinegar"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted walnuts"),
        Ingredient(qty: 2,    unit: "tbsp",name: "chopped chives")
    ],
    steps: [
        Step(title: "Cut",    body: "Julienne the apples (skin on) and shred the cabbage finely."),
        Step(title: "Dress",  body: "Whisk yogurt, vinegar, honey, salt, and pepper; toss with apples and cabbage."),
        Step(title: "Finish", body: "Fold in walnuts and chives just before serving.")
    ],
    tips: [
        "Toss cut apples in the dressing immediately — the acid stops browning.",
        "Excellent under pulled pork or beside anything fried.",
        "Swap walnuts for pepitas to make it lunchbox-safe."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTart
)

let greenAppleFruit = Fruit(
    name: "Green Apple",
    latinName: "Malus domestica",
    imageName: "fruit-green-apple",
    eyebrow: "Rooted up",
    pullQuote: "The snap you hear is the sour arriving a half-second early.",
    pullQuoteHighlight: "the sour arriving",
    flavors: [
        FlavorTag(label: "Tart",  color: .lpTart),
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "Green apples — Granny Smith above all — stay grass-green and hard-fleshed at full ripeness, trading sugar for acidity and an unmistakable crunch.",
    loveBody: "The green apple is the kitchen's utility player: sour enough to sharpen a salad, sturdy enough to hold shape in a pie, crisp enough to eat loudly out of hand.",
    loveBullets: [
        "Holds texture in baking better than sweet varieties",
        "High in fiber, especially with the peel on",
        "Bright acidity that balances rich dishes"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Eat out of hand, slice thin into salads and slaws, or bake where structure matters.",
        lookFor: "Hard, heavy fruit with taut, waxy skin — any give at all means mealiness ahead.",
        store: "The crisper drawer, always; apples soften ten times faster at room temperature."
    ),
    recipes: [
        RecipeCard(name: "Green Apple Slaw", imageName: "recipe-apple-slaw", meta: "15 min · Easy", recipe: greenAppleSlaw),
        RecipeCard(name: "Green Apple Crisp", imageName: "recipe-apple-crisp", meta: "50 min · Medium", recipe: appleCrisp),
        RecipeCard(name: "Spiced Applesauce", imageName: "recipe-applesauce", meta: "30 min · Easy", recipe: applesauceSpiced),
        RecipeCard(name: "Crunchy Waldorf Salad", imageName: "recipe-apple-waldorf", meta: "15 min · Easy", recipe: appleWaldorf)
    ]
)

let rhubarbCompote = Recipe(
    name: "Rhubarb Compote",
    eyebrow: "Rhubarb recipe",
    imageName: "recipe-rhubarb-compote",
    time: "20 min", level: "Easy", cal: "85",
    lede: "Ten minutes of gentle heat and rhubarb's aggressive sour relaxes into something rosy, jammy, and spoonable.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "rhubarb, in 1-inch pieces"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tbsp",name: "orange juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "orange zest"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "vanilla extract")
    ],
    steps: [
        Step(title: "Macerate", body: "Toss rhubarb with sugar and let it sit 10 minutes to pull out juice."),
        Step(title: "Simmer",   body: "Add orange juice and zest; simmer gently 8–10 minutes until the pieces just collapse."),
        Step(title: "Finish",   body: "Off the heat, stir in the vanilla. Cool — it thickens as it sits.")
    ],
    tips: [
        "Stop cooking early if you want distinct pieces; a minute more gives you jam.",
        "Spoon over yogurt, oatmeal, cheesecake, or roast pork.",
        "Only the stalks are edible — rhubarb leaves are toxic. Always discard them."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 8,
    accentColor: .lpTart
)

let rhubarbFruit = Fruit(
    name: "Rhubarb",
    latinName: "Rheum rhabarbarum",
    imageName: "fruit-rhubarb",
    eyebrow: "Rooted up",
    pullQuote: "Technically a vegetable, legally a fruit, spiritually a lemon.",
    pullQuoteHighlight: "spiritually a lemon.",
    flavors: [
        FlavorTag(label: "Tart", color: .lpTart)
    ],
    snapshot: "Crimson celery-like stalks with a bracing sourness. Botanically a vegetable — a 1947 US court ruled it a fruit because that's how it's eaten. The leaves are toxic; the stalks are the prize.",
    loveBody: "Rhubarb brings acidity that fruit desserts usually have to borrow from citrus. Give it sugar and heat and it collapses into rosy silk while keeping its spine of sour.",
    loveBullets: [
        "One of the first 'fruits' of spring",
        "A good source of vitamin K and fiber",
        "Pairs famously with strawberries — sour meets sweet"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Always cooked and sweetened — compotes, crumbles, pies, and syrups for cocktails.",
        lookFor: "Firm, glossy, deeply colored stalks that snap cleanly; limp stalks are past their best.",
        store: "Wrap in a damp towel and refrigerate up to a week; chopped stalks freeze raw."
    ),
    recipes: [
        RecipeCard(name: "Rhubarb Compote", imageName: "recipe-rhubarb-compote", meta: "20 min · Easy", recipe: rhubarbCompote),
        RecipeCard(name: "Rhubarb Crumble", imageName: "recipe-rhubarb-crumble", meta: "50 min · Medium", recipe: rhubarbCrumble),
        RecipeCard(name: "Rhubarb Syrup", imageName: "recipe-rhubarb-syrup", meta: "25 min · Easy", recipe: rhubarbSyrup),
        RecipeCard(name: "Roasted Rhubarb & Yogurt", imageName: "recipe-rhubarb-roasted", meta: "25 min · Easy", recipe: rhubarbRoasted)
    ]
)

let cranberrySauce = Recipe(
    name: "Cranberry Sauce",
    eyebrow: "Cranberry recipe",
    imageName: "recipe-cranberry-sauce",
    time: "15 min", level: "Easy", cal: "90",
    lede: "The berries pop, the pectin sets, and fifteen minutes later you understand why this fruit earned a permanent seat at the table.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "fresh or frozen cranberries"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.75, unit: "cup", name: "orange juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "orange zest"),
        Ingredient(qty: 1,    unit: "",    name: "cinnamon stick")
    ],
    steps: [
        Step(title: "Combine", body: "Bring everything to a simmer in a saucepan over medium heat."),
        Step(title: "Pop",     body: "Cook 10–12 minutes as the berries burst and the sauce turns glossy."),
        Step(title: "Rest",    body: "Fish out the cinnamon stick and cool — natural pectin sets it as it cools.")
    ],
    tips: [
        "Stop early for a loose, whole-berry sauce; cook longer for jammy.",
        "A splash of port or a grating of ginger makes it grown-up.",
        "Keeps two weeks refrigerated — great on sandwiches long after the holiday."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 10,
    accentColor: .lpTart
)

let cranberryFruit = Fruit(
    name: "Cranberry",
    latinName: "Vaccinium macrocarpon",
    imageName: "fruit-cranberry",
    eyebrow: "Rooted up",
    pullQuote: "So sour it bounces — literally. Fresh ones bounce like rubber.",
    pullQuoteHighlight: "it bounces",
    flavors: [
        FlavorTag(label: "Tart", color: .lpTart)
    ],
    snapshot: "A North American bog berry so firm and air-filled that growers float and bounce them to sort quality. Raw, they're mouth-puckeringly astringent; cooked, they turn ruby and jammy.",
    loveBody: "Cranberries are almost all acid and pectin — which is exactly why they're magic in the kitchen, setting into sauces and cutting through the richest food on the menu.",
    loveBullets: [
        "Rich in proanthocyanidins, studied for urinary health",
        "Natural pectin sets sauces without help",
        "Freeze beautifully — buy fresh, freeze for the year"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Simmer into sauce, fold dried into baking, or blend raw into relishes with orange.",
        lookFor: "Firm, deep-red berries; a fresh cranberry bounces when dropped.",
        store: "Refrigerated a month, frozen a year — straight in the bag they came in."
    ),
    recipes: [
        RecipeCard(name: "Cranberry Sauce", imageName: "recipe-cranberry-sauce", meta: "15 min · Easy", recipe: cranberrySauce),
        RecipeCard(name: "Cranberry Orange Muffins", imageName: "recipe-cranberry-muffins", meta: "35 min · Medium", recipe: cranberryMuffins),
        RecipeCard(name: "Raw Cranberry Relish", imageName: "recipe-cranberry-relish", meta: "10 min · Easy", recipe: cranberryRelish),
        RecipeCard(name: "Cranberry Lime Spritzer", imageName: "recipe-cranberry-spritzer", meta: "10 min · Easy", recipe: cranberrySpritzer)
    ]
)

let sourCherryPie = Recipe(
    name: "Sour Cherry Pie",
    eyebrow: "Sour cherry recipe",
    imageName: "recipe-cherry-pie",
    time: "1.5 hr", level: "Medium", cal: "340",
    lede: "Sweet cherries make a flat pie; sour cherries make the pie — bright, deep red, and worth the pitting.",
    ingredients: [
        Ingredient(qty: 5,    unit: "cup", name: "pitted sour cherries"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "cornstarch"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice"),
        Ingredient(qty: 0.25, unit: "tsp", name: "almond extract"),
        Ingredient(qty: 2,    unit: "",    name: "pie crusts (top and bottom)"),
        Ingredient(qty: 1,    unit: "tbsp",name: "butter, in bits")
    ],
    steps: [
        Step(title: "Fill",   body: "Toss cherries with sugar, cornstarch, lemon juice, and almond extract."),
        Step(title: "Build",  body: "Pile into the bottom crust, dot with butter, and lid with the second crust. Cut vents."),
        Step(title: "Bake",   body: "Bake at 425°F for 20 minutes, then 350°F for 35–40 more, until the filling bubbles thickly through the vents."),
        Step(title: "Wait",   body: "Cool at least 3 hours — cutting early pours the filling out. Patience is the last ingredient.")
    ],
    tips: [
        "Bubbling filling is the doneness test, not crust color.",
        "Frozen sour cherries work — don't thaw, add 10 minutes.",
        "Almond extract is sour cherry's soulmate; don't skip it."
    ],
    baseYieldValue: 1, baseYieldUnit: "pie", baseServings: 8,
    accentColor: .lpTart
)

let sourCherryFruit = Fruit(
    name: "Sour Cherry",
    latinName: "Prunus cerasus",
    imageName: "fruit-sour-cherry",
    eyebrow: "Rooted up",
    pullQuote: "The cherry bakers whisper about — too tart to snack, too good to skip.",
    pullQuoteHighlight: "too good to skip.",
    flavors: [
        FlavorTag(label: "Tart", color: .lpTart)
    ],
    snapshot: "Smaller, softer, and brighter than sweet cherries, with translucent scarlet juice. Mostly grown for pies, preserves, and Eastern European sour-cherry soup — and fiercely seasonal.",
    loveBody: "Where sweet cherries flatten under heat, sour cherries concentrate — their acidity carries through baking, which is why nearly every legendary cherry dessert starts here.",
    loveBullets: [
        "High in anthocyanins and melatonin precursors",
        "Flavor intensifies rather than fades when cooked",
        "The traditional cherry for pie, strudel, and preserves"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Bake into pies and crumbles, preserve as jam or syrup, or dry them for trail mix with attitude.",
        lookFor: "Glossy, plump fruit with fresh green stems; the season is short — usually just weeks in summer.",
        store: "Refrigerate and use within days, or pit and freeze flat for the rest of the year."
    ),
    recipes: [
        RecipeCard(name: "Sour Cherry Pie", imageName: "recipe-cherry-pie", meta: "1.5 hr · Medium", recipe: sourCherryPie),
        RecipeCard(name: "Sour Cherry Clafoutis", imageName: "recipe-cherry-clafoutis", meta: "50 min · Medium", recipe: cherryClafoutis),
        RecipeCard(name: "Sour Cherry Compote", imageName: "recipe-cherry-compote", meta: "15 min · Easy", recipe: cherryCompote),
        RecipeCard(name: "Sour Cherry Soda", imageName: "recipe-cherry-soda", meta: "20 min · Easy", recipe: cherrySoda)
    ]
)

let gooseberryFool = Recipe(
    name: "Gooseberry Fool",
    eyebrow: "Gooseberry recipe",
    imageName: "recipe-gooseberry-fool",
    time: "25 min", level: "Easy", cal: "220",
    lede: "The oldest English dessert trick: fold sharp fruit through soft cream and let the two argue deliciously.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "gooseberries, topped and tailed"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tbsp",name: "water"),
        Ingredient(qty: 1.25, unit: "cup", name: "cold heavy cream"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla extract")
    ],
    steps: [
        Step(title: "Stew",   body: "Simmer gooseberries with sugar and water until they burst, about 8 minutes. Crush lightly and chill."),
        Step(title: "Whip",   body: "Whip the cream with vanilla to soft, floppy peaks."),
        Step(title: "Fold",   body: "Ripple the chilled fruit through the cream — streaky, not uniform. Spoon into glasses and chill 30 minutes.")
    ],
    tips: [
        "Streaks are the point; overfolding makes it beige.",
        "A splash of elderflower cordial in the fruit is the classic upgrade.",
        "Works with any sharp fruit — rhubarb and sour cherry both fool well."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpTart
)

let gooseberryFruit = Fruit(
    name: "Gooseberry",
    latinName: "Ribes uva-crispa",
    imageName: "fruit-gooseberry",
    eyebrow: "Rooted up",
    pullQuote: "A translucent little lantern lit from inside with sour.",
    pullQuoteHighlight: "lit from inside with sour.",
    flavors: [
        FlavorTag(label: "Tart", color: .lpTart)
    ],
    snapshot: "Striped, translucent berries from a thorny northern shrub, ranging green to dusky red. A cottage-garden staple in Britain and northern Europe, eaten sharp or sugared.",
    loveBody: "Green gooseberries are as tart as any fruit going, ripening toward muscat sweetness — one bush covers the whole sweet-sour spectrum across a season.",
    loveBullets: [
        "High in vitamin C and fiber",
        "Green-to-red spectrum spans sour to sweet",
        "The original 'fool' fruit of English desserts"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Stew green ones with sugar for fools and crumbles; eat fully ripe red ones straight off the bush.",
        lookFor: "Firm, glossy berries with visible veining; red-blushed ones eat sweeter raw.",
        store: "Refrigerate up to two weeks — one of the sturdier soft fruits — or freeze whole."
    ),
    recipes: [
        RecipeCard(name: "Gooseberry Fool", imageName: "recipe-gooseberry-fool", meta: "25 min · Easy", recipe: gooseberryFool),
        RecipeCard(name: "Gooseberry Jam", imageName: "recipe-gooseberry-jam", meta: "40 min · Medium", recipe: gooseberryJam),
        RecipeCard(name: "Gooseberry Crumble", imageName: "recipe-gooseberry-crumble", meta: "45 min · Medium", recipe: gooseberryCrumble),
        RecipeCard(name: "Gooseberry Chutney", imageName: "recipe-gooseberry-chutney", meta: "45 min · Easy", recipe: gooseberryChutney)
    ]
)

let yuzuPonzu = Recipe(
    name: "Yuzu Ponzu",
    eyebrow: "Yuzu recipe",
    imageName: "recipe-yuzu-ponzu",
    time: "10 min + steep", level: "Easy", cal: "15",
    lede: "Japan's everything-sauce — yuzu's haunting aroma folded into soy, sharpened with vinegar, deepened with kombu.",
    ingredients: [
        Ingredient(qty: 0.25, unit: "cup", name: "yuzu juice"),
        Ingredient(qty: 0.5,  unit: "cup", name: "soy sauce"),
        Ingredient(qty: 2,    unit: "tbsp",name: "rice vinegar"),
        Ingredient(qty: 2,    unit: "tbsp",name: "mirin"),
        Ingredient(qty: 1,    unit: "",    name: "piece kombu (2-inch)"),
        Ingredient(qty: 0.25, unit: "cup", name: "bonito flakes (optional)")
    ],
    steps: [
        Step(title: "Combine", body: "Stir everything together in a jar."),
        Step(title: "Steep",   body: "Refrigerate at least 24 hours — the kombu and bonito round out the citrus edge."),
        Step(title: "Strain",  body: "Strain into a clean bottle. Use on dumplings, grilled fish, cold noodles, or anything that needs waking up.")
    ],
    tips: [
        "Bottled yuzu juice is a pantry-legitimate substitute for fresh.",
        "Keeps a month refrigerated and improves for the first week.",
        "Cut 1:1 with melted butter for an absurdly good sauce for shellfish."
    ],
    baseYieldValue: 1, baseYieldUnit: "cup", baseServings: 16,
    accentColor: .lpTart
)

let yuzuFruit = Fruit(
    name: "Yuzu",
    latinName: "Citrus × junos",
    imageName: "fruit-yuzu",
    eyebrow: "Rooted up",
    pullQuote: "Smells like lemon, lime, and grapefruit agreed to share one rind.",
    pullQuoteHighlight: "share one rind.",
    flavors: [
        FlavorTag(label: "Tart",    color: .lpTart),
        FlavorTag(label: "Citrusy", color: .lpCitrusy)
    ],
    snapshot: "A knobbly, aromatic East Asian citrus, hardy enough to fruit through snow. Too sour and seedy to eat out of hand — prized instead for its juice and intensely perfumed zest.",
    loveBody: "Yuzu is the perfumer's citrus: a few drops of juice or a grating of zest transforms a dish the way no lemon quite can. In Japan it even scents the winter solstice bath.",
    loveBullets: [
        "Zest and juice both intensely aromatic",
        "Backbone of ponzu, yuzu kosho, and yuzu tea",
        "Cold-hardy — the citrus that laughs at frost"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Use juice and zest as a finishing citrus — ponzu, dressings, hot honey-yuzu tea, desserts.",
        lookFor: "Fragrant, heavy fruit; bumpy yellow skin is correct, not a flaw. Bottled juice is a fine stand-in.",
        store: "Refrigerate whole fruit up to two weeks; zest freezes well in a sealed jar."
    ),
    recipes: [
        RecipeCard(name: "Yuzu Ponzu", imageName: "recipe-yuzu-ponzu", meta: "10 min · Easy", recipe: yuzuPonzu),
        RecipeCard(name: "Yuzu Honey Tea", imageName: "recipe-yuzu-tea", meta: "20 min · Easy", recipe: yuzuTea),
        RecipeCard(name: "Yuzu Vinaigrette", imageName: "recipe-yuzu-vinaigrette", meta: "5 min · Easy", recipe: yuzuVinaigrette),
        RecipeCard(name: "Yuzu Curd", imageName: "recipe-yuzu-curd", meta: "20 min · Medium", recipe: yuzuCurd)
    ]
)

// MARK: - Additional recipes (Tropical)

let mangoStickyRice = Recipe(
    name: "Mango Sticky Rice",
    eyebrow: "Mango recipe",
    imageName: "recipe-mango-sticky-rice",
    time: "40 min", level: "Medium", cal: "390",
    lede: "Thailand's dessert argument-settler: warm coconut rice, cold ripe mango, salty-sweet cream on top.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "glutinous (sweet) rice, soaked 1 hour"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt"),
        Ingredient(qty: 2,    unit: "",    name: "ripe mangoes, sliced"),
        Ingredient(qty: 1,    unit: "tbsp",name: "toasted sesame or mung beans")
    ],
    steps: [
        Step(title: "Steam",  body: "Steam the soaked rice over cloth or a fine sieve for 20–25 minutes until translucent and tender."),
        Step(title: "Season", body: "Warm the coconut milk with sugar and salt; stir two-thirds into the hot rice, cover, and let it drink for 15 minutes."),
        Step(title: "Serve",  body: "Plate rice with cold mango slices, pour over the reserved coconut cream, and scatter the crunchy bits.")
    ],
    tips: [
        "Don't skip the salt — it's what makes the coconut taste like dessert.",
        "Rice too firm? Sprinkle water and steam five more minutes.",
        "Ataulfo mangoes are the classic pairing."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpTropical
)

let mangoSalsa = Recipe(
    name: "Mango Salsa",
    eyebrow: "Mango recipe",
    imageName: "recipe-mango-salsa",
    time: "10 min", level: "Easy", cal: "60",
    lede: "Sweet heat in a bowl — the salsa that makes grilled fish and tortilla chips fight over it.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "ripe mango, diced"),
        Ingredient(qty: 0.5,  unit: "cup", name: "red onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, seeded and minced"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Dice",  body: "Cut everything roughly the same small size so each chip gets the full argument."),
        Step(title: "Toss",  body: "Combine with lime juice and salt. Taste — it should snap."),
        Step(title: "Rest",  body: "Let it sit 10 minutes so the flavors settle their differences.")
    ],
    tips: [
        "Firm-ripe mango holds its shape better than fully soft fruit.",
        "Add diced avocado just before serving for a richer scoop.",
        "Great over tacos, grilled chicken, or coconut rice."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTropical
)

let mangoSorbet = Recipe(
    name: "Two-Ingredient Mango Sorbet",
    eyebrow: "Mango recipe",
    imageName: "recipe-mango-sorbet",
    time: "10 min", level: "Easy", cal: "120",
    lede: "Frozen mango is already 90% of a sorbet — the blender just makes it official.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "frozen mango chunks"),
        Ingredient(qty: 0.33, unit: "cup", name: "cold water or coconut water"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey, to taste")
    ],
    steps: [
        Step(title: "Blend",  body: "Pulse mango with the liquid, scraping down often, until it turns to velvet."),
        Step(title: "Adjust", body: "Blend in lime juice and honey. Taste; ripe mango may need no honey at all."),
        Step(title: "Freeze", body: "Serve soft immediately, or firm it up in the freezer for 30 minutes.")
    ],
    tips: [
        "A food processor handles frozen fruit better than a weak blender.",
        "Swap the water for coconut milk and it becomes a creamsicle.",
        "Refreeze leftovers in a shallow pan for easy re-scooping."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let pineappleFriedRice = Recipe(
    name: "Pineapple Fried Rice",
    eyebrow: "Pineapple recipe",
    imageName: "recipe-pineapple-fried-rice",
    time: "20 min", level: "Easy", cal: "420",
    lede: "Sweet-sharp pineapple against smoky rice — the wok dish that converts fried-rice purists.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "cold cooked jasmine rice"),
        Ingredient(qty: 1.5,  unit: "cup", name: "pineapple chunks"),
        Ingredient(qty: 2,    unit: "",    name: "eggs, beaten"),
        Ingredient(qty: 0.5,  unit: "cup", name: "peas and diced carrot"),
        Ingredient(qty: 2,    unit: "tbsp",name: "soy sauce"),
        Ingredient(qty: 1,    unit: "tsp", name: "curry powder"),
        Ingredient(qty: 2,    unit: "tbsp",name: "oil, plus scallions to finish")
    ],
    steps: [
        Step(title: "Scramble", body: "Heat half the oil, scramble the eggs to soft folds, and set aside."),
        Step(title: "Fry",      body: "In the rest of the oil, sear pineapple until edges caramelize, then add vegetables, rice, curry powder, and soy."),
        Step(title: "Toss",     body: "Return the eggs, toss everything over high heat, and finish with scallions.")
    ],
    tips: [
        "Day-old rice fries; fresh rice steams. Plan ahead.",
        "Serve in the hollowed pineapple half if you're feeling theatrical.",
        "Cashews or shrimp make it dinner-party grade."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpTropical
)

let pineappleSmoothie = Recipe(
    name: "Piña Coconut Smoothie",
    eyebrow: "Pineapple recipe",
    imageName: "recipe-pineapple-smoothie",
    time: "5 min", level: "Easy", cal: "230",
    lede: "The beach cocktail's responsible sibling — all the sunshine, none of the umbrella.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "frozen pineapple chunks"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 0.5,  unit: "cup", name: "orange juice"),
        Ingredient(qty: 1,    unit: "",    name: "banana"),
        Ingredient(qty: 1,    unit: "tsp", name: "lime juice")
    ],
    steps: [
        Step(title: "Blend", body: "Everything in the blender until completely smooth and pale gold."),
        Step(title: "Check", body: "Too thick, add juice; too thin, add more frozen pineapple."),
        Step(title: "Pour",  body: "Serve immediately with a pineapple wedge on the rim.")
    ],
    tips: [
        "Toasted coconut flakes on top add crunch.",
        "Swap coconut milk for yogurt to make it a lassi cousin.",
        "Freeze leftovers into ice pops."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTropical
)

let pineappleSalsa = Recipe(
    name: "Charred Pineapple Salsa",
    eyebrow: "Pineapple recipe",
    imageName: "recipe-pineapple-salsa",
    time: "15 min", level: "Easy", cal: "50",
    lede: "A quick char turns pineapple's sugar into smoke — then lime and chili pick a friendly fight.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "pineapple, thick slices"),
        Ingredient(qty: 0.33, unit: "cup", name: "red onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "serrano or jalapeño, minced"),
        Ingredient(qty: 0.33, unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Char", body: "Sear pineapple slices in a screaming-hot dry pan or grill until deeply marked, 2–3 minutes a side."),
        Step(title: "Dice", body: "Cool slightly, then dice small along with the onion and chili."),
        Step(title: "Toss", body: "Mix with cilantro, lime, and salt. Rest 10 minutes before serving.")
    ],
    tips: [
        "Perfect with fish tacos and anything smoky.",
        "Canned pineapple works in a pinch — pat it very dry first.",
        "Add a splash of the tamarind chutney for depth."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTropical
)

let papayaSalad = Recipe(
    name: "Green Papaya Salad",
    eyebrow: "Papaya recipe",
    imageName: "recipe-papaya-salad",
    time: "20 min", level: "Medium", cal: "150",
    lede: "Som tam logic: unripe papaya is a vegetable with better manners — crunchy, cool, and built for chili-lime.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "green papaya, shredded"),
        Ingredient(qty: 1,    unit: "cup", name: "cherry tomatoes, halved"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1.5,  unit: "tbsp",name: "fish sauce"),
        Ingredient(qty: 1,    unit: "tbsp",name: "palm or brown sugar"),
        Ingredient(qty: 1,    unit: "",    name: "Thai chili, to taste"),
        Ingredient(qty: 0.25, unit: "cup", name: "roasted peanuts, crushed")
    ],
    steps: [
        Step(title: "Pound", body: "Bruise the chili with sugar in a large bowl or mortar; add fish sauce and lime to make the dressing."),
        Step(title: "Toss",  body: "Add papaya and tomatoes and lightly pound or massage so the shreds drink the dressing."),
        Step(title: "Serve", body: "Top with peanuts and serve immediately, while it still crunches.")
    ],
    tips: [
        "A julienne peeler stands in fine for a mortar-and-cleaver setup.",
        "Vegetarian? Swap fish sauce for soy plus a pinch of salt.",
        "Green beans and dried shrimp are traditional add-ins."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpTropical
)

let papayaBatido = Recipe(
    name: "Papaya Batido",
    eyebrow: "Papaya recipe",
    imageName: "recipe-papaya-batido",
    time: "5 min", level: "Easy", cal: "190",
    lede: "The Cuban milkshake that treats papaya's mellow sweetness to milk, lime, and a whir of ice.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "ripe papaya, cubed"),
        Ingredient(qty: 1,    unit: "cup", name: "cold milk"),
        Ingredient(qty: 2,    unit: "tbsp",name: "sugar or honey"),
        Ingredient(qty: 1,    unit: "tsp", name: "lime juice"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Blend", body: "Blend papaya, milk, sweetener, and lime until silky."),
        Step(title: "Ice",   body: "Add ice and blend until frothy."),
        Step(title: "Serve", body: "Pour tall and drink cold — a squeeze more lime wakes it up.")
    ],
    tips: [
        "A drop of vanilla makes it taste like a creamsicle.",
        "Swap milk for coconut milk for a dairy-free version.",
        "Very ripe papaya needs almost no sugar."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTropical
)

let papayaSorbet = Recipe(
    name: "Papaya-Lime Sorbet",
    eyebrow: "Papaya recipe",
    imageName: "recipe-papaya-sorbet",
    time: "15 min", level: "Easy", cal: "110",
    lede: "Papaya's soft flesh freezes into instant velvet — lime keeps it honest.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "frozen papaya chunks"),
        Ingredient(qty: 0.33, unit: "cup", name: "lime juice"),
        Ingredient(qty: 0.33, unit: "cup", name: "honey or simple syrup"),
        Ingredient(qty: 0.25, unit: "cup", name: "cold water")
    ],
    steps: [
        Step(title: "Blend",  body: "Process frozen papaya with lime, honey, and water, scraping down until smooth."),
        Step(title: "Taste",  body: "Papaya runs mild — it should taste slightly too limey before freezing."),
        Step(title: "Freeze", body: "Firm up 30 minutes, or serve straight away as soft-serve.")
    ],
    tips: [
        "A pinch of salt rounds out papaya's muskiness.",
        "Chili-lime rim on the glass if you're serving it fancy.",
        "Overripe papaya is perfect here — freeze it before it goes."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let lycheeIcedTea = Recipe(
    name: "Lychee Iced Tea",
    eyebrow: "Lychee recipe",
    imageName: "recipe-lychee-iced-tea",
    time: "15 min", level: "Easy", cal: "90",
    lede: "Perfume meets tannin — lychee sweetens black tea the way roses wish they could.",
    ingredients: [
        Ingredient(qty: 12,   unit: "",    name: "lychees, peeled and pitted"),
        Ingredient(qty: 3,    unit: "cup", name: "brewed black tea, cooled"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey or lychee syrup"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Muddle", body: "Crush half the lychees with honey in the bottom of a pitcher."),
        Step(title: "Stir",   body: "Add tea, lime juice, and the whole lychees; stir well."),
        Step(title: "Chill",  body: "Pour over ice and let it sit two minutes so the perfume spreads.")
    ],
    tips: [
        "Canned lychees work — use their syrup instead of honey.",
        "Jasmine tea instead of black doubles the florals.",
        "Freeze lychees inside ice cubes for a slow-release garnish."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let lycheePannaCotta = Recipe(
    name: "Lychee Panna Cotta",
    eyebrow: "Lychee recipe",
    imageName: "recipe-lychee-panna-cotta",
    time: "30 min", level: "Medium", cal: "280",
    lede: "A barely-set cream that lets lychee's rose-grape perfume do all the talking.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "heavy cream"),
        Ingredient(qty: 1,    unit: "cup", name: "lychee purée (about 15 fruits)"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tsp", name: "gelatin, bloomed in 2 tbsp water"),
        Ingredient(qty: 6,    unit: "",    name: "lychees, halved, to top")
    ],
    steps: [
        Step(title: "Warm",  body: "Heat cream and sugar until steaming; whisk in the bloomed gelatin off the heat."),
        Step(title: "Blend", body: "Stir in the lychee purée and divide among six glasses."),
        Step(title: "Set",   body: "Chill at least 4 hours; top with halved lychees to serve.")
    ],
    tips: [
        "It should wobble like it's nervous — don't over-gelatin.",
        "A spoon of raspberry purée on top is a classic contrast.",
        "Canned lychees blend beautifully; drain them well."
    ],
    baseYieldValue: 6, baseYieldUnit: "glasses", baseServings: 6,
    accentColor: .lpTropical
)

let lycheeSalad = Recipe(
    name: "Lychee & Mint Fruit Salad",
    eyebrow: "Lychee recipe",
    imageName: "recipe-lychee-salad",
    time: "10 min", level: "Easy", cal: "95",
    lede: "Peeled lychees are nature's palate cleanser — mint and lime just sharpen the point.",
    ingredients: [
        Ingredient(qty: 20,   unit: "",    name: "lychees, peeled and pitted"),
        Ingredient(qty: 1,    unit: "cup", name: "strawberries, quartered"),
        Ingredient(qty: 1,    unit: "cup", name: "cucumber, thin half-moons"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 10,   unit: "",    name: "mint leaves, torn")
    ],
    steps: [
        Step(title: "Whisk", body: "Stir lime juice and honey into a quick dressing."),
        Step(title: "Toss",  body: "Combine fruit and cucumber; fold in the dressing gently."),
        Step(title: "Chill", body: "Ten minutes in the fridge, then scatter mint and serve cold.")
    ],
    tips: [
        "Serve in the cucumber's own chill — everything cold from the start.",
        "A pinch of flaky salt makes the lychee taste sweeter.",
        "Swap strawberries for dragon fruit for a pastel version."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let guavaPastelitos = Recipe(
    name: "Guava Pastelitos",
    eyebrow: "Guava recipe",
    imageName: "recipe-guava-pastelitos",
    time: "30 min", level: "Medium", cal: "310",
    lede: "Miami's bakery classic — molten guava paste in puff pastry, no passport required.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "sheet puff pastry, thawed"),
        Ingredient(qty: 8,    unit: "oz",  name: "guava paste, sliced"),
        Ingredient(qty: 4,    unit: "oz",  name: "cream cheese"),
        Ingredient(qty: 1,    unit: "",    name: "egg, beaten"),
        Ingredient(qty: 1,    unit: "tbsp",name: "coarse sugar")
    ],
    steps: [
        Step(title: "Fill",  body: "Cut pastry into squares; top half with guava paste and cream cheese, cap with the rest."),
        Step(title: "Seal",  body: "Crimp edges with a fork, brush with egg, and sprinkle sugar."),
        Step(title: "Bake",  body: "425°F for 15–18 minutes until puffed and deeply golden. Cool before the molten guava bites back.")
    ],
    tips: [
        "Chill assembled pastries 10 minutes for the tallest puff.",
        "Guava paste (goiabada) keeps for months — a brick in the pantry is never wasted.",
        "Cafecito on the side is basically mandatory."
    ],
    baseYieldValue: 9, baseYieldUnit: "pastries", baseServings: 9,
    accentColor: .lpTropical
)

let guavaAguaFresca = Recipe(
    name: "Guava Agua Fresca",
    eyebrow: "Guava recipe",
    imageName: "recipe-guava-agua",
    time: "10 min", level: "Easy", cal: "80",
    lede: "Blend, strain, chill — the whole perfume of a guava in a sweating glass.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "ripe guavas, chopped"),
        Ingredient(qty: 4,    unit: "cup", name: "cold water"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar, to taste"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend guavas with half the water until smooth."),
        Step(title: "Strain", body: "Push through a sieve to catch the hard seeds; stir in remaining water, sugar, and lime."),
        Step(title: "Chill",  body: "Serve over plenty of ice — it drinks best very cold.")
    ],
    tips: [
        "Pink guavas make the prettiest glass.",
        "Adjust sugar after chilling; cold mutes sweetness.",
        "Add sparkling water at the end for a guava soda."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let guavaGlaze = Recipe(
    name: "Guava BBQ Glaze",
    eyebrow: "Guava recipe",
    imageName: "recipe-guava-glaze",
    time: "15 min", level: "Easy", cal: "70",
    lede: "Guava paste melts into a sticky-sweet lacquer that makes chicken and ribs blush.",
    ingredients: [
        Ingredient(qty: 6,    unit: "oz",  name: "guava paste, cubed"),
        Ingredient(qty: 0.25, unit: "cup", name: "ketchup"),
        Ingredient(qty: 2,    unit: "tbsp",name: "apple cider vinegar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "soy sauce"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated ginger"),
        Ingredient(qty: 0.25, unit: "tsp", name: "cayenne")
    ],
    steps: [
        Step(title: "Melt",   body: "Warm everything in a small pan, whisking as the guava paste dissolves."),
        Step(title: "Simmer", body: "Five gentle minutes until glossy and spoon-coating."),
        Step(title: "Brush",  body: "Lacquer onto grilled meat in the last minutes of cooking so it caramelizes, not burns.")
    ],
    tips: [
        "Thin with water if it tightens as it cools.",
        "Keeps two weeks refrigerated.",
        "Also excellent stirred into meatball glaze or wings."
    ],
    baseYieldValue: 1, baseYieldUnit: "cup", baseServings: 8,
    accentColor: .lpTropical
)

let dragonFruitSalsa = Recipe(
    name: "Dragon Fruit Salsa",
    eyebrow: "Dragon Fruit recipe",
    imageName: "recipe-dragon-salsa",
    time: "10 min", level: "Easy", cal: "45",
    lede: "The showiest salsa on the table — magenta cubes that taste cool while the chili runs hot.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "dragon fruit, diced"),
        Ingredient(qty: 0.5,  unit: "cup", name: "mango, diced"),
        Ingredient(qty: 0.25, unit: "cup", name: "red onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, minced"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "tbsp",name: "cilantro, chopped")
    ],
    steps: [
        Step(title: "Dice",  body: "Halve the dragon fruit, scoop, and dice — save the shells as serving bowls."),
        Step(title: "Toss",  body: "Fold everything together gently; dragon fruit bruises if bullied."),
        Step(title: "Serve", body: "Salt at the last second and serve with chips or over grilled fish.")
    ],
    tips: [
        "Red-fleshed dragon fruit stains everything pink — embrace it.",
        "It's mild by design; the lime and chili carry the flavor.",
        "Best eaten the day it's made."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTropical
)

let dragonFruitLemonade = Recipe(
    name: "Dragon Fruit Lemonade",
    eyebrow: "Dragon Fruit recipe",
    imageName: "recipe-dragon-lemonade",
    time: "10 min", level: "Easy", cal: "100",
    lede: "Hot-pink lemonade with no food coloring in sight — the dragon does its own dyeing.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "red dragon fruit, cubed"),
        Ingredient(qty: 0.75, unit: "cup", name: "lemon juice"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 4,    unit: "cup", name: "cold water")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend dragon fruit with one cup of the water; strain if you mind the seeds."),
        Step(title: "Mix",    body: "Stir with lemon juice, sugar, and remaining water until dissolved."),
        Step(title: "Chill",  body: "Serve over ice with a lemon wheel — sunglasses optional.")
    ],
    tips: [
        "White-fleshed dragon fruit works but skips the fireworks.",
        "Top with soda water for a sparkling version.",
        "Freeze into popsicles for the full summer program."
    ],
    baseYieldValue: 6, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTropical
)

let dragonFruitChia = Recipe(
    name: "Dragon Fruit Chia Pudding",
    eyebrow: "Dragon Fruit recipe",
    imageName: "recipe-dragon-chia",
    time: "10 min", level: "Easy", cal: "220",
    lede: "An overnight pudding that wakes up magenta — breakfast with main-character energy.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "red dragon fruit, puréed"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 0.25, unit: "cup", name: "chia seeds"),
        Ingredient(qty: 1,    unit: "tbsp",name: "maple syrup"),
        Ingredient(qty: 0.5,  unit: "cup", name: "diced fruit, to top")
    ],
    steps: [
        Step(title: "Whisk", body: "Stir purée, coconut milk, chia, and maple until no clumps remain."),
        Step(title: "Rest",  body: "Refrigerate at least 4 hours or overnight; stir once after the first 30 minutes."),
        Step(title: "Top",   body: "Crown with diced dragon fruit, kiwi, or toasted coconut.")
    ],
    tips: [
        "Ratio rule: 1 cup liquid to 3–4 tablespoons chia.",
        "Blend the finished pudding for a smooth mousse texture.",
        "Keeps three days in jars — breakfast, solved."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTropical
)

// MARK: - Additional recipes (Tart)

let appleCrisp = Recipe(
    name: "Green Apple Crisp",
    eyebrow: "Green Apple recipe",
    imageName: "recipe-apple-crisp",
    time: "50 min", level: "Medium", cal: "340",
    lede: "Granny Smiths hold their nerve under heat — tart fruit below, butter-oat rubble above.",
    ingredients: [
        Ingredient(qty: 5,    unit: "",    name: "green apples, peeled and sliced"),
        Ingredient(qty: 0.25, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 0.75, unit: "cup", name: "rolled oats"),
        Ingredient(qty: 0.5,  unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "brown sugar"),
        Ingredient(qty: 6,    unit: "tbsp",name: "cold butter, cubed")
    ],
    steps: [
        Step(title: "Toss",   body: "Mix apples with sugar, lemon, and cinnamon in a baking dish."),
        Step(title: "Crumb",  body: "Rub oats, flour, brown sugar, and butter into clumps; blanket the apples."),
        Step(title: "Bake",   body: "375°F for 35–40 minutes until bubbling at the edges and brown on top.")
    ],
    tips: [
        "Underbaked crisp is just warm salad — wait for the bubble.",
        "A scoop of vanilla ice cream is structurally required.",
        "Add chopped pecans to the topping for crunch."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpTart
)

let applesauceSpiced = Recipe(
    name: "Spiced Applesauce",
    eyebrow: "Green Apple recipe",
    imageName: "recipe-applesauce",
    time: "30 min", level: "Easy", cal: "120",
    lede: "Tart apples collapse into a sauce that doesn't need much sugar — just heat, patience, and cinnamon.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "green apples, peeled and chopped"),
        Ingredient(qty: 0.33, unit: "cup", name: "water"),
        Ingredient(qty: 3,    unit: "tbsp",name: "brown sugar, to taste"),
        Ingredient(qty: 1,    unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 1,    unit: "",    name: "strip of lemon peel")
    ],
    steps: [
        Step(title: "Simmer", body: "Cook everything covered over medium-low, stirring now and then, 20–25 minutes."),
        Step(title: "Mash",   body: "Fish out the lemon peel; mash chunky or blend smooth."),
        Step(title: "Adjust", body: "Sweeten to taste while warm — tart apples ask for less than you think.")
    ],
    tips: [
        "Keeps a week refrigerated, months frozen.",
        "Warm over pancakes, cold over yogurt, secret ingredient in cakes.",
        "A knob of butter at the end makes it dessert."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTart
)

let appleWaldorf = Recipe(
    name: "Crunchy Waldorf Salad",
    eyebrow: "Green Apple recipe",
    imageName: "recipe-apple-waldorf",
    time: "15 min", level: "Easy", cal: "260",
    lede: "The hotel classic, rebalanced — extra apple snap, lighter dressing, same celery-walnut crunch.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "green apples, diced"),
        Ingredient(qty: 1,    unit: "cup", name: "celery, sliced"),
        Ingredient(qty: 1,    unit: "cup", name: "grapes, halved"),
        Ingredient(qty: 0.5,  unit: "cup", name: "toasted walnuts"),
        Ingredient(qty: 0.33, unit: "cup", name: "Greek yogurt"),
        Ingredient(qty: 1,    unit: "tbsp",name: "mayonnaise"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Dress", body: "Whisk yogurt, mayo, lemon juice, and a pinch of salt."),
        Step(title: "Toss",  body: "Fold in apples, celery, and grapes until coated."),
        Step(title: "Top",   body: "Scatter walnuts just before serving so they stay loud.")
    ],
    tips: [
        "Serve on butter lettuce for the full 1950s effect.",
        "Add shredded chicken to make it lunch.",
        "Toss apples in the lemon first if prepping ahead."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTart
)

let rhubarbCrumble = Recipe(
    name: "Rhubarb Crumble",
    eyebrow: "Rhubarb recipe",
    imageName: "recipe-rhubarb-crumble",
    time: "50 min", level: "Medium", cal: "330",
    lede: "Rhubarb's sourness is a feature — sugar and a butter-crumb roof turn it into an argument for spring.",
    ingredients: [
        Ingredient(qty: 5,    unit: "cup", name: "rhubarb, 1-inch pieces"),
        Ingredient(qty: 0.67, unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tbsp",name: "cornstarch"),
        Ingredient(qty: 1,    unit: "tsp", name: "orange zest"),
        Ingredient(qty: 1,    unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "brown sugar"),
        Ingredient(qty: 7,    unit: "tbsp",name: "cold butter")
    ],
    steps: [
        Step(title: "Toss",  body: "Mix rhubarb with sugar, cornstarch, and zest in a baking dish."),
        Step(title: "Crumb", body: "Rub flour, brown sugar, butter, and a pinch of salt into coarse crumbs; cover the fruit."),
        Step(title: "Bake",  body: "375°F for 40 minutes until the juices bubble thick and pink at the edges.")
    ],
    tips: [
        "Strawberries in the mix is the beloved cliché — do it.",
        "Cold crumble for breakfast is a rite of spring.",
        "Never eat the leaves; stalks only."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpTart
)

let rhubarbSyrup = Recipe(
    name: "Rhubarb Syrup",
    eyebrow: "Rhubarb recipe",
    imageName: "recipe-rhubarb-syrup",
    time: "25 min", level: "Easy", cal: "50",
    lede: "A pink syrup that turns soda water, lemonade, and plain yogurt into rhubarb propaganda.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "rhubarb, chopped"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "",    name: "strip of lemon peel")
    ],
    steps: [
        Step(title: "Simmer", body: "Cook everything 15 minutes until the rhubarb has surrendered completely."),
        Step(title: "Strain", body: "Pour through a fine sieve without pressing hard — clarity is the prize."),
        Step(title: "Bottle", body: "Cool and refrigerate up to three weeks.")
    ],
    tips: [
        "The redder the stalks, the pinker the syrup.",
        "Save the strained pulp for yogurt or oatmeal.",
        "Two tablespoons + soda water + lime = instant rhubarb spritz."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 12,
    accentColor: .lpTart
)

let rhubarbRoasted = Recipe(
    name: "Roasted Rhubarb & Yogurt",
    eyebrow: "Rhubarb recipe",
    imageName: "recipe-rhubarb-roasted",
    time: "25 min", level: "Easy", cal: "180",
    lede: "Roasting keeps the batons intact — glossy, jammy, and unbowed over cold yogurt.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "rhubarb, 2-inch batons"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1,    unit: "",    name: "orange, zest and juice"),
        Ingredient(qty: 2,    unit: "cup", name: "Greek yogurt")
    ],
    steps: [
        Step(title: "Toss",  body: "Arrange rhubarb in one layer; toss with sugar, vanilla, zest, and juice."),
        Step(title: "Roast", body: "350°F for 15–18 minutes until tender but holding shape — no stirring."),
        Step(title: "Serve", body: "Spoon warm batons and syrup over cold yogurt.")
    ],
    tips: [
        "The no-stirring rule is the whole recipe.",
        "Also great on ice cream, porridge, or pavlova.",
        "Add a star anise to the pan for a quiet spice note."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpTart
)

let cranberryMuffins = Recipe(
    name: "Cranberry Orange Muffins",
    eyebrow: "Cranberry recipe",
    imageName: "recipe-cranberry-muffins",
    time: "35 min", level: "Medium", cal: "290",
    lede: "Sour berries baked into sweet crumb — every bite argues with itself, deliciously.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "flour"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 1,    unit: "",    name: "orange, zest and juice"),
        Ingredient(qty: 0.5,  unit: "cup", name: "milk"),
        Ingredient(qty: 0.33, unit: "cup", name: "melted butter"),
        Ingredient(qty: 1,    unit: "",    name: "egg"),
        Ingredient(qty: 1.5,  unit: "cup", name: "cranberries, halved if large")
    ],
    steps: [
        Step(title: "Whisk", body: "Dry ingredients in one bowl; egg, milk, butter, juice, and zest in another."),
        Step(title: "Fold",  body: "Combine until just barely mixed, then fold in cranberries."),
        Step(title: "Bake",  body: "400°F for 18–20 minutes until golden and springy.")
    ],
    tips: [
        "Frozen cranberries go in straight from the freezer.",
        "Lumps in the batter are good manners, not mistakes.",
        "Coarse sugar on top before baking adds sparkle."
    ],
    baseYieldValue: 12, baseYieldUnit: "muffins", baseServings: 12,
    accentColor: .lpTart
)

let cranberryRelish = Recipe(
    name: "Raw Cranberry Relish",
    eyebrow: "Cranberry recipe",
    imageName: "recipe-cranberry-relish",
    time: "10 min", level: "Easy", cal: "90",
    lede: "No cooking, no collapse — just cranberries, orange, and sugar pulsed into a bright, crunchy relish.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "fresh cranberries"),
        Ingredient(qty: 1,    unit: "",    name: "whole orange, quartered, peel on"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted pecans, optional")
    ],
    steps: [
        Step(title: "Pulse", body: "Pulse cranberries and orange (yes, peel and all) to a coarse confetti."),
        Step(title: "Sweeten", body: "Stir in sugar and let it sit 30 minutes to dissolve and mellow."),
        Step(title: "Serve", body: "Fold in pecans and serve cold — it only improves overnight.")
    ],
    tips: [
        "The orange peel is the genius part; don't skip it.",
        "Excellent on turkey sandwiches and morning toast alike.",
        "Keeps a week refrigerated."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 10,
    accentColor: .lpTart
)

let cranberrySpritzer = Recipe(
    name: "Cranberry Lime Spritzer",
    eyebrow: "Cranberry recipe",
    imageName: "recipe-cranberry-spritzer",
    time: "10 min", level: "Easy", cal: "70",
    lede: "Homemade cranberry syrup plus fizz — the holiday drink that works all year.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "cranberries"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "cup", name: "water"),
        Ingredient(qty: 0.25, unit: "cup", name: "lime juice"),
        Ingredient(qty: 3,    unit: "cup", name: "sparkling water")
    ],
    steps: [
        Step(title: "Pop",    body: "Simmer cranberries, sugar, and water until the berries burst, about 8 minutes."),
        Step(title: "Strain", body: "Press through a sieve; cool the ruby syrup."),
        Step(title: "Fizz",   body: "Two tablespoons syrup per glass, lime, ice, and top with sparkling water.")
    ],
    tips: [
        "Sugared cranberries on a pick make it a party.",
        "Syrup keeps two weeks — it also loves iced tea.",
        "Rosemary sprig garnish smells like December."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpTart
)

let cherryClafoutis = Recipe(
    name: "Sour Cherry Clafoutis",
    eyebrow: "Sour Cherry recipe",
    imageName: "recipe-cherry-clafoutis",
    time: "50 min", level: "Medium", cal: "270",
    lede: "A French custard-pancake that bakes around the cherries — humble batter, dramatic fruit.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "sour cherries, pitted"),
        Ingredient(qty: 3,    unit: "",    name: "eggs"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "cup", name: "flour"),
        Ingredient(qty: 1,    unit: "cup", name: "milk"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1,    unit: "tbsp",name: "butter, for the dish")
    ],
    steps: [
        Step(title: "Blend", body: "Whisk eggs, sugar, flour, milk, and vanilla into a thin, smooth batter."),
        Step(title: "Pour",  body: "Butter a baking dish, scatter the cherries, and pour the batter over."),
        Step(title: "Bake",  body: "375°F for 35–40 minutes until puffed, golden, and just set in the middle.")
    ],
    tips: [
        "It deflates as it cools — that's charm, not failure.",
        "Dust with powdered sugar and serve warm.",
        "Frozen sour cherries work; don't thaw them first."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpTart
)

let cherryCompote = Recipe(
    name: "Sour Cherry Compote",
    eyebrow: "Sour Cherry recipe",
    imageName: "recipe-cherry-compote",
    time: "15 min", level: "Easy", cal: "110",
    lede: "Ten minutes of simmering and sour cherries become the boss of pancakes, cheesecake, and ice cream.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "sour cherries, pitted"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cornstarch in 2 tbsp water"),
        Ingredient(qty: 0.25, unit: "tsp", name: "almond extract")
    ],
    steps: [
        Step(title: "Simmer",  body: "Cook cherries, sugar, and lemon until juicy, about 5 minutes."),
        Step(title: "Thicken", body: "Stir in the cornstarch slurry and bubble one minute until glossy."),
        Step(title: "Finish",  body: "Off heat, add almond extract — cherries' soulmate.")
    ],
    tips: [
        "Keeps a week refrigerated; freezes beautifully.",
        "Swirl into yogurt or spoon over rice pudding.",
        "A splash of balsamic makes it dinner-worthy for duck."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 8,
    accentColor: .lpTart
)

let cherrySoda = Recipe(
    name: "Sour Cherry Soda",
    eyebrow: "Sour Cherry recipe",
    imageName: "recipe-cherry-soda",
    time: "20 min", level: "Easy", cal: "80",
    lede: "A ruby shrub-style syrup that turns seltzer into the cherry soda of your childhood, minus the dye.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "sour cherries, pitted"),
        Ingredient(qty: 0.67, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice"),
        Ingredient(qty: 4,    unit: "cup", name: "sparkling water")
    ],
    steps: [
        Step(title: "Simmer", body: "Cook cherries, sugar, and water 10 minutes until deeply red."),
        Step(title: "Strain", body: "Press through a sieve; stir in lemon juice and chill."),
        Step(title: "Build",  body: "Three tablespoons syrup over ice, top with sparkling water, stir once.")
    ],
    tips: [
        "The strained cherry pulp belongs on toast.",
        "Syrup keeps two weeks refrigerated.",
        "Add a few drops of vanilla for a cream-soda mood."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpTart
)

let gooseberryJam = Recipe(
    name: "Gooseberry Jam",
    eyebrow: "Gooseberry recipe",
    imageName: "recipe-gooseberry-jam",
    time: "40 min", level: "Medium", cal: "50",
    lede: "Gooseberries bring their own pectin and their own attitude — jam that sets itself and still puckers.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "gooseberries, topped and tailed"),
        Ingredient(qty: 2.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Soften", body: "Simmer berries and water 10 minutes until they start to burst."),
        Step(title: "Boil",   body: "Add sugar and lemon; boil hard, stirring, until a chilled-plate test wrinkles, 10–15 minutes."),
        Step(title: "Jar",    body: "Ladle into clean jars; it sets as it cools.")
    ],
    tips: [
        "Slightly underripe berries set the firmest.",
        "The jam turns dusky pink as it cooks — expected magic.",
        "Sharp jam, sharp cheddar: a proven alliance."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 24,
    accentColor: .lpTart
)

let gooseberryCrumble = Recipe(
    name: "Gooseberry Crumble",
    eyebrow: "Gooseberry recipe",
    imageName: "recipe-gooseberry-crumble",
    time: "45 min", level: "Medium", cal: "320",
    lede: "The British allotment classic — mouth-puckering berries mellowed under a sweet oat lid.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "gooseberries"),
        Ingredient(qty: 0.67, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cornstarch"),
        Ingredient(qty: 0.75, unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "oats"),
        Ingredient(qty: 0.5,  unit: "cup", name: "brown sugar"),
        Ingredient(qty: 6,    unit: "tbsp",name: "cold butter")
    ],
    steps: [
        Step(title: "Base",  body: "Toss berries with sugar and cornstarch in a baking dish."),
        Step(title: "Crumb", body: "Rub flour, oats, brown sugar, and butter to rubble; pile it on."),
        Step(title: "Bake",  body: "375°F for 35 minutes until golden and volcanic at the edges.")
    ],
    tips: [
        "Custard is the traditional escort; cream is acceptable.",
        "Elderflower cordial in the fruit is a classic upgrade.",
        "Frozen gooseberries bake fine from frozen."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpTart
)

let gooseberryChutney = Recipe(
    name: "Gooseberry Chutney",
    eyebrow: "Gooseberry recipe",
    imageName: "recipe-gooseberry-chutney",
    time: "45 min", level: "Easy", cal: "60",
    lede: "Sour berries, warm spice, slow simmer — a chutney that outclasses anything in a jar.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "gooseberries"),
        Ingredient(qty: 1,    unit: "",    name: "onion, finely chopped"),
        Ingredient(qty: 0.75, unit: "cup", name: "brown sugar"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cider vinegar"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated ginger"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "mustard seeds"),
        Ingredient(qty: 0.25, unit: "tsp", name: "chili flakes")
    ],
    steps: [
        Step(title: "Combine", body: "Everything into a wide pan; bring to a gentle boil."),
        Step(title: "Simmer",  body: "Cook 30–35 minutes, stirring more often near the end, until thick and jammy."),
        Step(title: "Rest",    body: "Jar it and — this is the hard part — wait a week before eating.")
    ],
    tips: [
        "It mellows dramatically with age; a month is better than a week.",
        "Serve with sharp cheese, samosas, or roast chicken.",
        "Golden raisins in the pot add little sweet landmines."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 24,
    accentColor: .lpTart
)

let yuzuTea = Recipe(
    name: "Yuzu Honey Tea",
    eyebrow: "Yuzu recipe",
    imageName: "recipe-yuzu-tea",
    time: "20 min", level: "Easy", cal: "90",
    lede: "Yuja-cha logic: preserve the whole perfume in honey, then spoon sunshine into hot water all winter.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "yuzu, scrubbed"),
        Ingredient(qty: 1,    unit: "cup", name: "honey"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar")
    ],
    steps: [
        Step(title: "Slice",  body: "Halve the yuzu, pick out seeds, and slice thin — peel, pith, and all."),
        Step(title: "Layer",  body: "Pack into a clean jar with honey and sugar; press until submerged."),
        Step(title: "Steep",  body: "Refrigerate 3 days, then stir 2 spoonfuls into hot water per cup.")
    ],
    tips: [
        "The marmalade-like solids are the best part — eat them.",
        "Also brilliant over ice with sparkling water.",
        "Keeps a month refrigerated and improves the whole time."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 16,
    accentColor: .lpTart
)

let yuzuVinaigrette = Recipe(
    name: "Yuzu Vinaigrette",
    eyebrow: "Yuzu recipe",
    imageName: "recipe-yuzu-vinaigrette",
    time: "5 min", level: "Easy", cal: "120",
    lede: "One spoon of yuzu juice out-perfumes a whole lemon — this dressing proves it on any pile of leaves.",
    ingredients: [
        Ingredient(qty: 2,    unit: "tbsp",name: "yuzu juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "rice vinegar"),
        Ingredient(qty: 1,    unit: "tsp", name: "soy sauce"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey"),
        Ingredient(qty: 0.33, unit: "cup", name: "neutral oil"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated shallot")
    ],
    steps: [
        Step(title: "Whisk",    body: "Combine everything but the oil."),
        Step(title: "Emulsify", body: "Drizzle in oil, whisking until it clings to a spoon."),
        Step(title: "Dress",    body: "Toss with greens, avocado, or cold soba at the last minute.")
    ],
    tips: [
        "Bottled yuzu juice keeps this a year-round recipe.",
        "Add sesame oil drops for a nuttier register.",
        "Doubles as a marinade for fish."
    ],
    baseYieldValue: 0.5, baseYieldUnit: "cup", baseServings: 6,
    accentColor: .lpTart
)

let yuzuCurd = Recipe(
    name: "Yuzu Curd",
    eyebrow: "Yuzu recipe",
    imageName: "recipe-yuzu-curd",
    time: "20 min", level: "Medium", cal: "150",
    lede: "Lemon curd's worldly cousin — same silk, but the perfume lingers like a good exit.",
    ingredients: [
        Ingredient(qty: 0.5,  unit: "cup", name: "yuzu juice"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar"),
        Ingredient(qty: 3,    unit: "",    name: "eggs"),
        Ingredient(qty: 6,    unit: "tbsp",name: "butter, cubed"),
        Ingredient(qty: 1,    unit: "tsp", name: "yuzu or lemon zest")
    ],
    steps: [
        Step(title: "Whisk",  body: "Whisk juice, sugar, and eggs in a bowl set over barely simmering water."),
        Step(title: "Thicken",body: "Stir constantly 8–10 minutes until it coats the spoon like custard."),
        Step(title: "Butter", body: "Off heat, whisk in butter piece by piece, then the zest. Chill.")
    ],
    tips: [
        "Strain for absolute silk.",
        "Thickens more in the fridge — pull it earlier than you think.",
        "Fill tart shells, layer pavlova, or spoon straight from the jar."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 12,
    accentColor: .lpTart
)

// MARK: - Tier 2 fruits (Tropical)

let coconutRice = Recipe(
    name: "Coconut Rice",
    eyebrow: "Coconut recipe",
    imageName: "recipe-coconut-rice",
    time: "25 min", level: "Easy", cal: "310",
    lede: "Rice that cooked in coconut milk and came back changed — the side that upstages mains.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "jasmine rice, rinsed"),
        Ingredient(qty: 1,    unit: "",    name: "can coconut milk (13.5 oz)"),
        Ingredient(qty: 0.75, unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tsp", name: "sugar"),
        Ingredient(qty: 1,    unit: "tsp", name: "salt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "toasted coconut flakes")
    ],
    steps: [
        Step(title: "Simmer", body: "Rice, coconut milk, water, sugar, and salt to a boil; cover and drop to low for 15 minutes."),
        Step(title: "Rest",   body: "Off heat, lid on, 10 minutes — no peeking."),
        Step(title: "Fluff",  body: "Fork through and top with toasted flakes.")
    ],
    tips: [
        "Scrape the sweet coconut crust off the pot bottom — cook's tax.",
        "Pairs with anything grilled, curried, or mango-adjacent.",
        "A pandan leaf in the pot is the Southeast Asian upgrade."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let coconutMacaroons = Recipe(
    name: "Coconut Macaroons",
    eyebrow: "Coconut recipe",
    imageName: "recipe-coconut-macaroons",
    time: "30 min", level: "Easy", cal: "160",
    lede: "Chewy inside, toasted outside, four ingredients — the cookie that pretends to be difficult.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "shredded sweetened coconut"),
        Ingredient(qty: 0.67, unit: "cup", name: "condensed milk"),
        Ingredient(qty: 2,    unit: "",    name: "egg whites"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 4,    unit: "oz",  name: "dark chocolate, optional")
    ],
    steps: [
        Step(title: "Mix",   body: "Stir coconut, condensed milk, and vanilla; whip whites to soft peaks and fold in."),
        Step(title: "Scoop", body: "Mound tablespoons onto parchment."),
        Step(title: "Bake",  body: "325°F for 20–22 minutes until golden-tipped; dip bottoms in chocolate once cool.")
    ],
    tips: [
        "Damp hands shape neater mounds.",
        "Golden edges, soft centers — pull them before uniform brown.",
        "Keeps a week in a tin, improbably."
    ],
    baseYieldValue: 18, baseYieldUnit: "macaroons", baseServings: 18,
    accentColor: .lpTropical
)

let coconutChutney = Recipe(
    name: "Coconut Chutney",
    eyebrow: "Coconut recipe",
    imageName: "recipe-coconut-chutney",
    time: "10 min", level: "Easy", cal: "90",
    lede: "The South Indian breakfast essential — fresh coconut ground with chili and tempered in hot oil.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "fresh or frozen grated coconut"),
        Ingredient(qty: 1,    unit: "",    name: "green chili"),
        Ingredient(qty: 1,    unit: "tbsp",name: "roasted chana dal"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated ginger"),
        Ingredient(qty: 1,    unit: "tsp", name: "mustard seeds + curry leaves"),
        Ingredient(qty: 1,    unit: "tbsp",name: "oil")
    ],
    steps: [
        Step(title: "Grind",  body: "Blend coconut, chili, dal, ginger, salt, and enough water to turn."),
        Step(title: "Temper", body: "Sizzle mustard seeds and curry leaves in hot oil; pour over."),
        Step(title: "Serve",  body: "With dosa, idli, or honestly, a spoon.")
    ],
    tips: [
        "Frozen grated coconut is the workday shortcut.",
        "Same-day food — it fades overnight.",
        "A spoon of yogurt loosens and mellows it."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTropical
)

let pinaColadaMocktail = Recipe(
    name: "Virgin Piña Colada",
    eyebrow: "Coconut recipe",
    imageName: "recipe-pina-colada",
    time: "5 min", level: "Easy", cal: "220",
    lede: "Coconut cream, pineapple, crushed ice — the vacation, minus the passport and the rum.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "coconut cream"),
        Ingredient(qty: 1.5,  unit: "cup", name: "pineapple chunks, frozen"),
        Ingredient(qty: 0.5,  unit: "cup", name: "pineapple juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Blend", body: "Everything until smooth and blizzard-thick."),
        Step(title: "Pour",  body: "Into the tallest glasses in the house."),
        Step(title: "Garnish", body: "Pineapple wedge, toasted coconut rim if you're committing.")
    ],
    tips: [
        "Coconut cream, not milk — the thickness is the drink.",
        "Freeze leftover mix into pops.",
        "A pinch of salt sharpens the whole glass."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTropical
)

let coconutFruit = Fruit(
    name: "Coconut",
    latinName: "Cocos nucifera",
    imageName: "fruit-coconut",
    eyebrow: "Rooted up",
    pullQuote: "A pantry, a drink, and a drum in one shell.",
    pullQuoteHighlight: "a drum in one shell",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Creamy",   color: .lpCreamy)
    ],
    snapshot: "Botanically a drupe, practically a toolkit: water to drink young, flesh to eat mature, milk and cream pressed from the grated meat, and oil from there. It floats between islands and colonized coastlines on its own.",
    loveBody: "No other fruit does savory and sweet with equal authority — curry base at dinner, macaroon by dessert.",
    loveBullets: [
        "Coconut water is nature's sports drink — potassium-rich",
        "The flesh's fat is what makes 'creamy' a flavor category",
        "Every part gets used: water, meat, milk, cream, oil, shell"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Drink young coconuts chilled; grate mature flesh for chutneys and macaroons; simmer the milk into rice and curries.",
        lookFor: "Heavy for its size with audible slosh; dry eyes with no mold or weeping.",
        store: "Whole at room temperature for weeks; opened flesh refrigerated in water for a few days, or frozen grated."
    ),
    recipes: [
        RecipeCard(name: "Coconut Rice", imageName: "recipe-coconut-rice", meta: "25 min · Easy", recipe: coconutRice),
        RecipeCard(name: "Coconut Macaroons", imageName: "recipe-coconut-macaroons", meta: "30 min · Easy", recipe: coconutMacaroons),
        RecipeCard(name: "Coconut Chutney", imageName: "recipe-coconut-chutney", meta: "10 min · Easy", recipe: coconutChutney),
        RecipeCard(name: "Virgin Piña Colada", imageName: "recipe-pina-colada", meta: "5 min · Easy", recipe: pinaColadaMocktail)
    ]
)

let jackfruitTacos = Recipe(
    name: "Jackfruit Carnitas Tacos",
    eyebrow: "Jackfruit recipe",
    imageName: "recipe-jackfruit-tacos",
    time: "30 min", level: "Easy", cal: "310",
    lede: "Young jackfruit shreds like pork and takes spice like a champion — the plant taco that fools carnivores.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "cans young green jackfruit, drained"),
        Ingredient(qty: 1,    unit: "",    name: "onion, sliced"),
        Ingredient(qty: 2,    unit: "tsp", name: "smoked paprika + cumin"),
        Ingredient(qty: 0.5,  unit: "cup", name: "salsa or enchilada sauce"),
        Ingredient(qty: 8,    unit: "",    name: "corn tortillas"),
        Ingredient(qty: 1,    unit: "",    name: "lime, plus cilantro and onion to top")
    ],
    steps: [
        Step(title: "Shred", body: "Squeeze the jackfruit dry and pull it apart with forks."),
        Step(title: "Crisp", body: "Sauté onion, add jackfruit and spices, and let it catch and brown; stir in salsa."),
        Step(title: "Build", body: "Pile into warm tortillas with lime, cilantro, and raw onion.")
    ],
    tips: [
        "Canned in brine, never syrup — check twice.",
        "The browning step is where the 'carnitas' happens.",
        "Finish under a broiler for extra crisp edges."
    ],
    baseYieldValue: 8, baseYieldUnit: "tacos", baseServings: 4,
    accentColor: .lpTropical
)

let jackfruitCurry = Recipe(
    name: "Jackfruit Curry",
    eyebrow: "Jackfruit recipe",
    imageName: "recipe-jackfruit-curry",
    time: "40 min", level: "Medium", cal: "350",
    lede: "Kathal curry the homestyle way — young jackfruit braised soft in a spiced onion-tomato gravy.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "cans young jackfruit, drained"),
        Ingredient(qty: 2,    unit: "",    name: "onions, finely chopped"),
        Ingredient(qty: 2,    unit: "cup", name: "chopped tomatoes"),
        Ingredient(qty: 1,    unit: "tbsp",name: "ginger-garlic paste"),
        Ingredient(qty: 2,    unit: "tsp", name: "garam masala + turmeric + chili"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 2,    unit: "tbsp",name: "oil")
    ],
    steps: [
        Step(title: "Fry",    body: "Brown the jackfruit pieces in oil; set aside."),
        Step(title: "Gravy",  body: "Cook onions gold, add paste and spices, then tomatoes until the oil returns."),
        Step(title: "Braise", body: "Return jackfruit with coconut milk; simmer 15 minutes. Rice or roti alongside.")
    ],
    tips: [
        "Fresh young jackfruit is traditional; canned is sane.",
        "It drinks flavor overnight — cook ahead if you can.",
        "A squeeze of lime at the table lifts the whole pot."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpTropical
)

let jackfruitSmoothie = Recipe(
    name: "Ripe Jackfruit Smoothie",
    eyebrow: "Jackfruit recipe",
    imageName: "recipe-jackfruit-smoothie",
    time: "5 min", level: "Easy", cal: "230",
    lede: "Ripe jackfruit tastes like Juicy Fruit gum because the gum copied it — blend and see.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "ripe jackfruit pods, seeded"),
        Ingredient(qty: 1,    unit: "cup", name: "cold milk or coconut milk"),
        Ingredient(qty: 0.5,  unit: "",    name: "frozen banana"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey, optional"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Seed",  body: "Pull the golden pods free and pop out the seeds."),
        Step(title: "Blend", body: "Everything until frothy and perfumed."),
        Step(title: "Serve", body: "Cold, immediately — the aroma is the show.")
    ],
    tips: [
        "Frozen ripe jackfruit from Asian groceries skips the sticky work.",
        "A drop of vanilla plays up the bubblegum note.",
        "Boil the seeds later — they're a chestnut-like snack."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTropical
)

let jackfruitChips = Recipe(
    name: "Baked Jackfruit Chips",
    eyebrow: "Jackfruit recipe",
    imageName: "recipe-jackfruit-chips",
    time: "35 min", level: "Medium", cal: "140",
    lede: "Kerala's favorite crunch, oven edition — sweet-salty golden ribbons of ripe jackfruit.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "firm-ripe jackfruit pods, seeded"),
        Ingredient(qty: 1,    unit: "tbsp",name: "coconut oil, melted"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt"),
        Ingredient(qty: 0.25, unit: "tsp", name: "turmeric")
    ],
    steps: [
        Step(title: "Slice", body: "Cut pods into thin, even strips; pat very dry."),
        Step(title: "Toss",  body: "Coat with oil, salt, and turmeric on a lined tray, no crowding."),
        Step(title: "Bake",  body: "300°F for 25–30 minutes, flipping once, until golden and crisp; they harden as they cool.")
    ],
    tips: [
        "Firm-ripe fruit crisps; soft-ripe caramelizes into leather (also good).",
        "An air fryer does it in 15 minutes.",
        "Store airtight — they last days, in theory."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let jackfruitFruit = Fruit(
    name: "Jackfruit",
    latinName: "Artocarpus heterophyllus",
    imageName: "fruit-jackfruit",
    eyebrow: "Rooted up",
    pullQuote: "The largest tree fruit on Earth, and it contains multitudes.",
    pullQuoteHighlight: "contains multitudes",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Creamy",   color: .lpCreamy)
    ],
    snapshot: "Up to 40 kilos of spiky green armor around hundreds of golden pods. Young and green it's a savory blank slate; ripe, it's a perfumed candy that inspired chewing gum.",
    loveBody: "Two fruits in one life: green jackfruit shreds like pulled pork for tacos and curries, while the ripe pods eat like tropical taffy.",
    loveBullets: [
        "The world's largest tree-borne fruit",
        "Green, it's the most convincing plant-based 'meat' in the produce aisle",
        "The seeds boil up like chestnuts — nothing wasted"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Green: braised, shredded, and spiced. Ripe: pods straight up, blended, or baked into chips.",
        lookFor: "For ripe fruit, a strong sweet smell and slight give; for cooking green, canned in brine is the honest shortcut.",
        store: "Whole fruit at room temperature; cut pods refrigerated two or three days, or frozen."
    ),
    recipes: [
        RecipeCard(name: "Jackfruit Carnitas Tacos", imageName: "recipe-jackfruit-tacos", meta: "30 min · Easy", recipe: jackfruitTacos),
        RecipeCard(name: "Jackfruit Curry", imageName: "recipe-jackfruit-curry", meta: "40 min · Medium", recipe: jackfruitCurry),
        RecipeCard(name: "Ripe Jackfruit Smoothie", imageName: "recipe-jackfruit-smoothie", meta: "5 min · Easy", recipe: jackfruitSmoothie),
        RecipeCard(name: "Baked Jackfruit Chips", imageName: "recipe-jackfruit-chips", meta: "35 min · Medium", recipe: jackfruitChips)
    ]
)

let starfruitSalad = Recipe(
    name: "Starfruit & Herb Salad",
    eyebrow: "Starfruit recipe",
    imageName: "recipe-starfruit-salad",
    time: "10 min", level: "Easy", cal: "90",
    lede: "The fruit that garnishes itself — crisp stars tossed with lime, chili, and mint.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "ripe starfruit, sliced into stars"),
        Ingredient(qty: 1,    unit: "cup", name: "cucumber, half-moons"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey"),
        Ingredient(qty: 1,    unit: "",    name: "red chili, thin rings"),
        Ingredient(qty: 10,   unit: "",    name: "mint leaves")
    ],
    steps: [
        Step(title: "Slice", body: "Trim the brown ridge edges, then cut crosswise — the stars appear on their own."),
        Step(title: "Dress", body: "Whisk lime, honey, and a pinch of salt; toss everything gently."),
        Step(title: "Serve", body: "Immediately, while the stars still snap.")
    ],
    tips: [
        "Golden fruit with browning ridge-tips is peak ripeness.",
        "A splash of fish sauce turns it Southeast Asian savory.",
        "The waxy skin is fully edible — no peeling ever."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let starfruitJuice = Recipe(
    name: "Starfruit Cooler",
    eyebrow: "Starfruit recipe",
    imageName: "recipe-starfruit-juice",
    time: "10 min", level: "Easy", cal: "80",
    lede: "Light, grape-apple-citrus juice from the five-pointed fruit — with a star floating on every glass.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "ripe starfruit, chopped"),
        Ingredient(qty: 3,    unit: "cup", name: "cold water"),
        Ingredient(qty: 3,    unit: "tbsp",name: "honey or sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend fruit with water until smooth."),
        Step(title: "Strain", body: "Through a sieve; sweeten and add lime."),
        Step(title: "Pour",   body: "Over ice with a reserved star slice riding each rim.")
    ],
    tips: [
        "Chill the fruit first — it's a delicate flavor that likes cold.",
        "Sparkling water on top makes a starfruit soda.",
        "Note: people with kidney disease should avoid starfruit."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpTropical
)

let starfruitCandied = Recipe(
    name: "Candied Starfruit Stars",
    eyebrow: "Starfruit recipe",
    imageName: "recipe-starfruit-candied",
    time: "40 min", level: "Medium", cal: "70",
    lede: "Simmered in syrup and dried glossy — edible ornaments for cakes, drinks, and showing off.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "firm starfruit, star slices"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tsp", name: "lime juice")
    ],
    steps: [
        Step(title: "Syrup",  body: "Dissolve sugar in water with lime; bring to a gentle simmer."),
        Step(title: "Poach",  body: "Slide in the stars for 15–20 minutes until translucent at the edges."),
        Step(title: "Dry",    body: "Lift onto a rack; air-dry an hour until glossy and tacky.")
    ],
    tips: [
        "Slightly underripe fruit holds its points best.",
        "Save the starfruit syrup for lemonade or cocktails.",
        "Oven at 200°F speeds the drying if you're impatient."
    ],
    baseYieldValue: 15, baseYieldUnit: "stars", baseServings: 8,
    accentColor: .lpTropical
)

let starfruitSalsa = Recipe(
    name: "Starfruit Salsa",
    eyebrow: "Starfruit recipe",
    imageName: "recipe-starfruit-salsa",
    time: "10 min", level: "Easy", cal: "40",
    lede: "Crunchy stars, lime, and chili — the salsa that looks like it planned its outfit.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "starfruit, diced"),
        Ingredient(qty: 0.33, unit: "cup", name: "red onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, minced"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.25, unit: "cup", name: "cilantro, chopped")
    ],
    steps: [
        Step(title: "Dice",  body: "Save a few whole stars for the top; dice the rest."),
        Step(title: "Toss",  body: "Everything with lime and salt."),
        Step(title: "Rest",  body: "Ten minutes, then serve with fish, shrimp, or chips.")
    ],
    tips: [
        "Its mild flavor is a canvas — don't shortchange the lime.",
        "Brilliant on grilled white fish.",
        "Add diced mango for a sweeter version."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpTropical
)

let starfruitFruit = Fruit(
    name: "Starfruit",
    latinName: "Averrhoa carambola",
    imageName: "fruit-starfruit",
    eyebrow: "Rooted up",
    pullQuote: "Cut it anywhere and it hands you a star.",
    pullQuoteHighlight: "hands you a star",
    flavors: [
        FlavorTag(label: "Tropical", color: .lpTropical),
        FlavorTag(label: "Tart",     color: .lpTart)
    ],
    snapshot: "Five waxy ridges running the length of a golden fruit — every crosswise slice is a perfect star. The taste is a light mix of grape, apple, and citrus; the whole thing is edible, skin and all.",
    loveBody: "No fruit garnishes harder, and the crisp, juicy flesh earns its place beyond the rim of the glass.",
    loveBullets: [
        "Entirely edible — skin, flesh, tiny seeds",
        "Hydrating and low-calorie with a vitamin C kick",
        "Ranges tart to sweet as the ridges yellow and brown"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Sliced into stars for salads and drinks, juiced, candied, or eaten crisp over the cutting board.",
        lookFor: "Golden yellow with slight browning along the ridge edges — full green means full pucker.",
        store: "Ripen at room temperature, then refrigerate up to a week. (People with kidney disease should skip starfruit entirely.)"
    ),
    recipes: [
        RecipeCard(name: "Starfruit & Herb Salad", imageName: "recipe-starfruit-salad", meta: "10 min · Easy", recipe: starfruitSalad),
        RecipeCard(name: "Starfruit Cooler", imageName: "recipe-starfruit-juice", meta: "10 min · Easy", recipe: starfruitJuice),
        RecipeCard(name: "Candied Starfruit Stars", imageName: "recipe-starfruit-candied", meta: "40 min · Medium", recipe: starfruitCandied),
        RecipeCard(name: "Starfruit Salsa", imageName: "recipe-starfruit-salsa", meta: "10 min · Easy", recipe: starfruitSalsa)
    ]
)

// MARK: - Tier 2 fruits (Tart)

let blackberryCobbler = Recipe(
    name: "Blackberry Cobbler",
    eyebrow: "Blackberry recipe",
    imageName: "recipe-blackberry-cobbler",
    time: "55 min", level: "Medium", cal: "340",
    lede: "Hedgerow fruit under biscuit clouds — the cobbler that makes August worth the scratches.",
    ingredients: [
        Ingredient(qty: 5,    unit: "cup", name: "blackberries"),
        Ingredient(qty: 0.67, unit: "cup", name: "sugar, divided"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cornstarch"),
        Ingredient(qty: 1.5,  unit: "cup", name: "flour"),
        Ingredient(qty: 2,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 5,    unit: "tbsp",name: "cold butter"),
        Ingredient(qty: 0.67, unit: "cup", name: "buttermilk")
    ],
    steps: [
        Step(title: "Fruit",   body: "Toss berries with half the sugar and the cornstarch in a baking dish."),
        Step(title: "Biscuit", body: "Cut butter into flour, baking powder, remaining sugar; stir in buttermilk and drop spoonfuls over the fruit."),
        Step(title: "Bake",    body: "375°F for 40 minutes until the biscuits brown and the juice bubbles violet.")
    ],
    tips: [
        "Sugar the biscuit tops for sparkle and crunch.",
        "Frozen berries work — add 10 minutes.",
        "Vanilla ice cream is legally adjacent."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpTart
)

let blackberryJamRecipe = Recipe(
    name: "Blackberry Jam",
    eyebrow: "Blackberry recipe",
    imageName: "recipe-blackberry-jam",
    time: "40 min", level: "Easy", cal: "50",
    lede: "Deep purple, seeds and all — the jam that tastes like the bramble fought back.",
    ingredients: [
        Ingredient(qty: 6,    unit: "cup", name: "blackberries"),
        Ingredient(qty: 2.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "lemon juice")
    ],
    steps: [
        Step(title: "Crush", body: "Mash berries with sugar; rest 30 minutes."),
        Step(title: "Boil",  body: "Add lemon; boil hard, stirring, 15–20 minutes to a wrinkling set."),
        Step(title: "Jar",   body: "Sieve half the seeds out first if you prefer — then jar it hot.")
    ],
    tips: [
        "Blackberries carry decent pectin; the set comes quicker than strawberry.",
        "A bay leaf in the pot is an old hedgerow trick.",
        "Swirl into rice pudding or over goat cheese."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 32,
    accentColor: .lpTart
)

let blackberrySmoothie = Recipe(
    name: "Blackberry Smoothie",
    eyebrow: "Blackberry recipe",
    imageName: "recipe-blackberry-smoothie",
    time: "5 min", level: "Easy", cal: "190",
    lede: "Violet, tangy, and thick enough to stand a straw in.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "blackberries, frozen"),
        Ingredient(qty: 1,    unit: "cup", name: "milk or kefir"),
        Ingredient(qty: 0.5,  unit: "cup", name: "Greek yogurt"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 0.5,  unit: "",    name: "banana")
    ],
    steps: [
        Step(title: "Blend", body: "Everything until the color turns full royal purple."),
        Step(title: "Taste", body: "Blackberries swing tart — adjust honey."),
        Step(title: "Pour",  body: "Thick, cold, immediately.")
    ],
    tips: [
        "Kefir version tastes like drinkable blackberry cheesecake.",
        "Strain if seeds annoy; don't if fiber pleases.",
        "A few mint leaves blend in beautifully."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpTart
)

let blackberrySauce = Recipe(
    name: "Blackberry Pan Sauce",
    eyebrow: "Blackberry recipe",
    imageName: "recipe-blackberry-sauce",
    time: "15 min", level: "Easy", cal: "70",
    lede: "Ten minutes to a glossy sweet-tart sauce that upgrades pancakes and pork chops with equal confidence.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "blackberries"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cornstarch in 2 tbsp water"),
        Ingredient(qty: 1,    unit: "",    name: "sprig of thyme, optional")
    ],
    steps: [
        Step(title: "Simmer",  body: "Berries, sugar, lemon, and thyme until bursting, 5–7 minutes."),
        Step(title: "Thicken", body: "Stir in the slurry; bubble one glossy minute."),
        Step(title: "Choose",  body: "Sweet route: pancakes, cheesecake. Savory: spoon over seared pork or duck.")
    ],
    tips: [
        "Thyme pushes it savory; vanilla pushes it dessert.",
        "Keeps five days; loosen with water when reheating.",
        "Strain for elegance, don't for texture."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 8,
    accentColor: .lpTart
)

let blackberryFruit = Fruit(
    name: "Blackberry",
    latinName: "Rubus fruticosus",
    imageName: "fruit-blackberry",
    eyebrow: "Rooted up",
    pullQuote: "Free fruit, if you're brave about thorns.",
    pullQuoteHighlight: "brave about thorns",
    flavors: [
        FlavorTag(label: "Tart",       color: .lpTart),
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour)
    ],
    snapshot: "The hedgerow's glossy black cluster fruit — each berry a fistful of juicy drupelets that stain fingers, cutting boards, and reputations. Wild ones trade size for intensity.",
    loveBody: "Deeper and winier than any other bramble berry, with a tannic edge that makes it the most grown-up fruit in the punnet.",
    loveBullets: [
        "Among the most antioxidant-dense common fruits",
        "High fiber — the seeds are doing honest work",
        "Wild foraging season doubles as a national pastime"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "By the stained handful, cobblered, jammed, or simmered into a sauce that swings sweet or savory.",
        lookFor: "Plump, fully black, dull-matte berries; shiny red-tinged ones were picked early and stay sour.",
        store: "Unwashed in the fridge, shallow layer, two days at best. Freeze the surplus on trays."
    ),
    recipes: [
        RecipeCard(name: "Blackberry Cobbler", imageName: "recipe-blackberry-cobbler", meta: "55 min · Medium", recipe: blackberryCobbler),
        RecipeCard(name: "Blackberry Jam", imageName: "recipe-blackberry-jam", meta: "40 min · Easy", recipe: blackberryJamRecipe),
        RecipeCard(name: "Blackberry Smoothie", imageName: "recipe-blackberry-smoothie", meta: "5 min · Easy", recipe: blackberrySmoothie),
        RecipeCard(name: "Blackberry Pan Sauce", imageName: "recipe-blackberry-sauce", meta: "15 min · Easy", recipe: blackberrySauce)
    ]
)

let redcurrantJelly = Recipe(
    name: "Red Currant Jelly",
    eyebrow: "Red Currant recipe",
    imageName: "recipe-redcurrant-jelly",
    time: "50 min", level: "Medium", cal: "45",
    lede: "The jewel-clear jelly that European kitchens keep beside the roast — tart enough to mean it.",
    ingredients: [
        Ingredient(qty: 8,    unit: "cup", name: "red currants, stems and all"),
        Ingredient(qty: 0.5,  unit: "cup", name: "water"),
        Ingredient(qty: 3,    unit: "cup", name: "sugar (about; measured to juice)")
    ],
    steps: [
        Step(title: "Burst",  body: "Simmer currants and water 10 minutes, crushing as they pop."),
        Step(title: "Drip",   body: "Hang in a jelly bag or cloth an hour — don't squeeze if you want clarity."),
        Step(title: "Set",    body: "Boil juice with equal volume sugar 8–10 minutes to a sheeting set; jar hot.")
    ],
    tips: [
        "Currants are pectin monsters — the set is fast and firm.",
        "No need to de-stem; the bag catches everything.",
        "Classic beside lamb, stirred into gravy, or under a Linzer lattice."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 24,
    accentColor: .lpTart
)

let redcurrantCordial = Recipe(
    name: "Red Currant Cordial",
    eyebrow: "Red Currant recipe",
    imageName: "recipe-redcurrant-cordial",
    time: "25 min", level: "Easy", cal: "70",
    lede: "Ruby syrup for long summer glasses — dilute to taste and watch the light through it.",
    ingredients: [
        Ingredient(qty: 5,    unit: "cup", name: "red currants"),
        Ingredient(qty: 1.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Simmer", body: "Everything 15 minutes until the berries collapse."),
        Step(title: "Strain", body: "Through a fine sieve, pressing gently."),
        Step(title: "Bottle", body: "Chill; dilute one part cordial to four parts cold or sparkling water.")
    ],
    tips: [
        "Keeps three weeks refrigerated.",
        "A few raspberries round the sharp edge.",
        "Drizzle the neat syrup over vanilla ice cream."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 16,
    accentColor: .lpTart
)

let redcurrantCake = Recipe(
    name: "Red Currant Meringue Cake",
    eyebrow: "Red Currant recipe",
    imageName: "recipe-redcurrant-cake",
    time: "1 hr", level: "Medium", cal: "310",
    lede: "Träubleskuchen: sour berries baked under a meringue duvet — the German answer to what currants are for.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "butter"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar, divided"),
        Ingredient(qty: 4,    unit: "",    name: "eggs, separated"),
        Ingredient(qty: 1,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 3,    unit: "cup", name: "red currants, stemmed")
    ],
    steps: [
        Step(title: "Base",     body: "Cream butter with a third of the sugar and the yolks; fold in flour and baking powder; press into a springform and bake 15 minutes at 350°F."),
        Step(title: "Meringue", body: "Whip whites stiff with remaining sugar; fold in the currants."),
        Step(title: "Finish",   body: "Spread over the base and bake 25 minutes more until the peaks toast.")
    ],
    tips: [
        "The sour-berries-in-sweet-meringue contrast is the entire dessert.",
        "A fork run through frozen currants de-stems them fast.",
        "Serve the day it's made; meringue waits for no one."
    ],
    baseYieldValue: 10, baseYieldUnit: "slices", baseServings: 10,
    accentColor: .lpTart
)

let redcurrantSauce = Recipe(
    name: "Red Currant Sauce",
    eyebrow: "Red Currant recipe",
    imageName: "recipe-redcurrant-sauce",
    time: "15 min", level: "Easy", cal: "60",
    lede: "Cumberland-style: currants, port-less and proud, sharpened with orange and mustard for the roast.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "red currants"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "",    name: "orange, zest and juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "Dijon mustard"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of ground ginger")
    ],
    steps: [
        Step(title: "Simmer", body: "Currants, sugar, and orange juice 8 minutes until saucy."),
        Step(title: "Season", body: "Whisk in zest, mustard, and ginger off the heat."),
        Step(title: "Serve",  body: "Warm or cold beside lamb, ham, game, or a very serious cheese toastie.")
    ],
    tips: [
        "It should bite back — resist extra sugar.",
        "Keeps two weeks refrigerated.",
        "Also startlingly good on a turkey sandwich."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 10,
    accentColor: .lpTart
)

let redCurrantFruit = Fruit(
    name: "Red Currant",
    latinName: "Ribes rubrum",
    imageName: "fruit-red-currant",
    eyebrow: "Rooted up",
    pullQuote: "Strings of glass beads that bite back.",
    pullQuoteHighlight: "bite back",
    flavors: [
        FlavorTag(label: "Tart", color: .lpTart)
    ],
    snapshot: "Translucent scarlet berries hanging in strings like jewelry, each one a tiny flash of sharp juice around visible seeds. A northern-garden staple that rarely survives the trip to supermarkets.",
    loveBody: "Pure, uncompromising tartness with a built-in pectin surplus — the preserving fruit par excellence, and the prettiest thing you can drape over a dessert.",
    loveBullets: [
        "So pectin-rich it sets jelly almost on its own",
        "Vitamin C rivals citrus, berry for berry",
        "The strings — 'strigs' — are nature's garnish"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Jellied for the roast, syruped into cordial, baked under meringue, or draped over cakes in full strings.",
        lookFor: "Taut, glossy, fully red berries on fresh green strigs; dull or weeping fruit is past it.",
        store: "Refrigerate on the strig, unwashed, up to four days — or freeze and fork them off frozen."
    ),
    recipes: [
        RecipeCard(name: "Red Currant Jelly", imageName: "recipe-redcurrant-jelly", meta: "50 min · Medium", recipe: redcurrantJelly),
        RecipeCard(name: "Red Currant Cordial", imageName: "recipe-redcurrant-cordial", meta: "25 min · Easy", recipe: redcurrantCordial),
        RecipeCard(name: "Red Currant Meringue Cake", imageName: "recipe-redcurrant-cake", meta: "1 hr · Medium", recipe: redcurrantCake),
        RecipeCard(name: "Red Currant Sauce", imageName: "recipe-redcurrant-sauce", meta: "15 min · Easy", recipe: redcurrantSauce)
    ]
)
