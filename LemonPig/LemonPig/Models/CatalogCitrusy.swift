import SwiftUI

// MARK: - Citrusy catalog
// (Yuzu is defined in CatalogTropicalTart.swift — it spans Tart and Citrusy.)

let lemonPasta = Recipe(
    name: "Lemon Butter Pasta",
    eyebrow: "Lemon recipe",
    imageName: "recipe-lemon-pasta",
    time: "20 min", level: "Easy", cal: "420",
    lede: "Zest for perfume, juice for spark, starch and butter for the silkiest sauce a lemon ever wore.",
    ingredients: [
        Ingredient(qty: 12,   unit: "oz",  name: "spaghetti"),
        Ingredient(qty: 2,    unit: "",    name: "lemons, zested and juiced"),
        Ingredient(qty: 4,    unit: "tbsp",name: "butter"),
        Ingredient(qty: 0.5,  unit: "cup", name: "grated parmesan"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "black pepper"),
        Ingredient(qty: 1,    unit: "cup", name: "reserved pasta water")
    ],
    steps: [
        Step(title: "Boil",    body: "Cook the pasta in well-salted water; scoop out a cup of the water before draining."),
        Step(title: "Emulsify",body: "Melt butter with lemon juice and a splash of pasta water in the empty pot, swirling into a glossy sauce."),
        Step(title: "Toss",    body: "Return the pasta with the zest and parmesan; toss hard, loosening with pasta water until it clings."),
        Step(title: "Serve",   body: "Finish with pepper and more zest. Eat immediately — this sauce waits for no one.")
    ],
    tips: [
        "Zest before juicing, always.",
        "Roll the lemon under your palm first — it doubles the juice yield.",
        "A handful of arugula wilted in at the end earns you a vegetable."
    ],
    baseYieldValue: 4, baseYieldUnit: "plates", baseServings: 4,
    accentColor: .lpCitrusy
)

let lemonFruit = Fruit(
    name: "Lemon",
    latinName: "Citrus limon",
    imageName: "fruit-lemon",
    eyebrow: "Rooted up",
    pullQuote: "The kitchen's exclamation point — nothing finishes a dish faster.",
    pullQuoteHighlight: "exclamation point",
    flavors: [
        FlavorTag(label: "Citrusy", color: .lpCitrusy),
        FlavorTag(label: "Tart",    color: .lpTart)
    ],
    snapshot: "An ancient hybrid of bitter orange and citron that became the world's default acid. The zest holds the perfume; the juice holds the spark. (Also: this app's namesake. No pressure, lemon.)",
    loveBody: "Almost every savory dish ends the same way — taste, then reach for the lemon. It sharpens flavors without announcing itself, and the zest is a spice cabinet of its own.",
    loveBullets: [
        "The universal finishing acid of savory cooking",
        "Zest oils carry the aroma; use both halves of the fruit",
        "High in vitamin C, famously"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Squeeze over everything savory, zest into everything sweet, preserve in salt for stews.",
        lookFor: "Heavy, thin-skinned fruit with fine-grained rind — it gives more juice than thick knobbly ones.",
        store: "Room temperature for a week of looks; a bag in the fridge for a month of juice."
    ),
    recipes: [
        RecipeCard(name: "Lemon Butter Pasta", imageName: "recipe-lemon-pasta", meta: "20 min · Easy", recipe: lemonPasta),
        RecipeCard(name: "Whole-Lemon Lemonade", imageName: "recipe-lemonade", meta: "10 min · Easy", recipe: lemonadeClassic),
        RecipeCard(name: "Preserved Lemons", imageName: "recipe-preserved-lemons", meta: "15 min · Easy", recipe: preservedLemons),
        RecipeCard(name: "Lemon-Herb Roast Chicken", imageName: "recipe-lemon-chicken", meta: "1.25 hr · Medium", recipe: lemonChicken)
    ]
)

let orangeSalad = Recipe(
    name: "Orange & Olive Salad",
    eyebrow: "Orange recipe",
    imageName: "recipe-orange-salad",
    time: "15 min", level: "Easy", cal: "180",
    lede: "The Sicilian move — sweet orange rounds against briny olives and sharp onion. It shouldn't work; it's iconic.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "oranges (mix navel and blood if you can)"),
        Ingredient(qty: 0.33, unit: "cup", name: "good black olives"),
        Ingredient(qty: 0.25, unit: "",    name: "red onion, shaved paper-thin"),
        Ingredient(qty: 3,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of chili flakes"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt")
    ],
    steps: [
        Step(title: "Supreme", body: "Cut the peel and pith from the oranges and slice into rounds, catching juice for the dressing."),
        Step(title: "Arrange", body: "Lay the rounds on a platter; scatter olives and onion over."),
        Step(title: "Dress",   body: "Whisk the caught juice with olive oil; spoon over and finish with chili and salt.")
    ],
    tips: [
        "Soak the shaved onion in cold water 10 minutes to soften its bite.",
        "Shaved fennel makes it a meal starter; burrata makes it lunch.",
        "Blood oranges in season make it a painting."
    ],
    baseYieldValue: 1, baseYieldUnit: "platter", baseServings: 4,
    accentColor: .lpCitrusy
)

let orangeFruit = Fruit(
    name: "Orange",
    latinName: "Citrus × sinensis",
    imageName: "fruit-orange",
    eyebrow: "Rooted up",
    pullQuote: "The world's favorite citrus — juice, snack, and sunshine subscription.",
    pullQuoteHighlight: "sunshine subscription.",
    flavors: [
        FlavorTag(label: "Citrusy", color: .lpCitrusy),
        FlavorTag(label: "Sweet",   color: .lpSweet)
    ],
    snapshot: "A mandarin-pomelo hybrid that conquered the planet — the most cultivated fruit tree on earth. Navels for eating, Valencias for juicing, blood oranges for drama.",
    loveBody: "The orange is generous: sweet enough for dessert, structured enough for salads, and the juice is a food group of its own. Even the peel candy-fies beautifully.",
    loveBullets: [
        "The classic vitamin C delivery system",
        "Segments hold together in both fruit and savory salads",
        "Zest, juice, flesh, peel — nothing wasted"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Peel and eat, juice fresh, supreme into salads, or roast wedges alongside rich meats.",
        lookFor: "Heavy fruit with tight, glossy skin; color varies by variety — weight is the honest signal.",
        store: "A week on the counter, a month in the crisper; juice them the day you cut them."
    ),
    recipes: [
        RecipeCard(name: "Orange & Olive Salad", imageName: "recipe-orange-salad", meta: "15 min · Easy", recipe: orangeSalad),
        RecipeCard(name: "Crispy Orange Chicken", imageName: "recipe-orange-chicken", meta: "35 min · Medium", recipe: orangeChicken),
        RecipeCard(name: "Candied Orange Peel", imageName: "recipe-candied-orange", meta: "1.5 hr · Medium", recipe: candiedOrangePeel),
        RecipeCard(name: "Orange-Cinnamon Compote", imageName: "recipe-orange-compote", meta: "20 min · Easy", recipe: orangeCompote)
    ]
)

let grapefruitBrulee = Recipe(
    name: "Brûléed Grapefruit",
    eyebrow: "Grapefruit recipe",
    imageName: "recipe-grapefruit-brulee",
    time: "10 min", level: "Easy", cal: "110",
    lede: "A crackling sugar lid tames the bitterness underneath — breakfast that arrives with its own applause.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "grapefruits, halved"),
        Ingredient(qty: 4,    unit: "tbsp",name: "demerara sugar"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "ground ginger or cinnamon"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt")
    ],
    steps: [
        Step(title: "Loosen", body: "Run a small knife around each segment so they lift out easily later."),
        Step(title: "Sugar",  body: "Blot the cut faces dry, then pack each with a tablespoon of sugar mixed with the spice."),
        Step(title: "Torch",  body: "Torch (or broil close and hot, 3–5 minutes) until the sugar melts and crackles amber."),
        Step(title: "Rest",   body: "One minute for the lid to harden, a pinch of salt, then crack in with a spoon.")
    ],
    tips: [
        "Dry fruit is the secret — wet faces make syrup, not glass.",
        "Demerara or turbinado sugar caramelizes better than fine white.",
        "A torch beats the broiler; the fruit underneath stays cold."
    ],
    baseYieldValue: 4, baseYieldUnit: "halves", baseServings: 4,
    accentColor: .lpCitrusy
)

let grapefruitFruit = Fruit(
    name: "Grapefruit",
    latinName: "Citrus × paradisi",
    imageName: "fruit-grapefruit",
    eyebrow: "Rooted up",
    pullQuote: "Citrus with an edge — bitter, sweet, and unapologetic about both.",
    pullQuoteHighlight: "unapologetic about both.",
    flavors: [
        FlavorTag(label: "Citrusy", color: .lpCitrusy),
        FlavorTag(label: "Tart",    color: .lpTart)
    ],
    snapshot: "An eighteenth-century Barbados accident between pomelo and sweet orange — named for growing in grape-like clusters. Pink and red varieties run sweeter than white.",
    loveBody: "Grapefruit doesn't flatter; it wakes you up. That bittersweet snap is unique in the fruit bowl, and it cuts through rich food like a squeegee through fog.",
    loveBullets: [
        "Rich in vitamin C and lycopene (the pink ones)",
        "Bitterness that balances sweet and rich dishes",
        "Note: it interacts with several medications — check yours"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Spoon at breakfast, supreme into salads with avocado, juice for cocktails, or brûlée the halves.",
        lookFor: "Heavy, springy fruit that's flat at both poles — the squat ones are the juicy ones.",
        store: "Counter for a week, crisper drawer for three; they juice best at room temperature."
    ),
    recipes: [
        RecipeCard(name: "Brûléed Grapefruit", imageName: "recipe-grapefruit-brulee", meta: "10 min · Easy", recipe: grapefruitBrulee),
        RecipeCard(name: "Grapefruit & Avocado Salad", imageName: "recipe-grapefruit-avocado", meta: "15 min · Easy", recipe: grapefruitAvocadoSalad),
        RecipeCard(name: "Grapefruit Rosemary Sparkler", imageName: "recipe-grapefruit-sparkler", meta: "10 min · Easy", recipe: grapefruitSparkler),
        RecipeCard(name: "Grapefruit Marmalade", imageName: "recipe-grapefruit-marmalade", meta: "1.5 hr · Medium", recipe: grapefruitMarmalade)
    ]
)

let limePie = Recipe(
    name: "Lime Icebox Pie",
    eyebrow: "Lime recipe",
    imageName: "recipe-lime-pie",
    time: "30 min + chill", level: "Easy", cal: "380",
    lede: "Condensed milk plus lime juice thickens almost on its own — the pie that chemistry makes while you watch.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "graham cracker crumbs"),
        Ingredient(qty: 6,    unit: "tbsp",name: "melted butter"),
        Ingredient(qty: 1,    unit: "",    name: "can (14 oz) sweetened condensed milk"),
        Ingredient(qty: 4,    unit: "",    name: "egg yolks"),
        Ingredient(qty: 0.75, unit: "cup", name: "fresh lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime zest"),
        Ingredient(qty: 1,    unit: "cup", name: "cold heavy cream, whipped")
    ],
    steps: [
        Step(title: "Crust",  body: "Press crumbs and butter into a pie plate; bake at 350°F for 8 minutes and cool."),
        Step(title: "Fill",   body: "Whisk condensed milk, yolks, juice, and zest — it thickens as the acid works."),
        Step(title: "Bake",   body: "Pour into the crust; bake 15 minutes until just set at the center."),
        Step(title: "Chill",  body: "Cool, then chill at least 3 hours. Crown with whipped cream and more zest.")
    ],
    tips: [
        "Fresh-squeezed juice or don't bother — bottled tastes flat.",
        "Key limes are traditional; regular Persian limes are 95% as good.",
        "Freezes beautifully — serve it half-frozen in summer."
    ],
    baseYieldValue: 1, baseYieldUnit: "pie", baseServings: 8,
    accentColor: .lpCitrusy
)

let limeFruit = Fruit(
    name: "Lime",
    latinName: "Citrus × aurantiifolia",
    imageName: "fruit-lime",
    eyebrow: "Rooted up",
    pullQuote: "The sharpest tool in the citrus drawer — green, fast, and fragrant.",
    pullQuoteHighlight: "The sharpest tool",
    flavors: [
        FlavorTag(label: "Citrusy", color: .lpCitrusy),
        FlavorTag(label: "Tart",    color: .lpTart)
    ],
    snapshot: "Smaller, sharper, and more aromatic than lemon, with a green perfume that defines whole cuisines — Mexican, Thai, Vietnamese, Caribbean.",
    loveBody: "Where lemon brightens, lime transforms — its aroma is unmistakable in a taco, a curry, or a glass. No other citrus does as much work per wedge.",
    loveBullets: [
        "Defines the flavor of multiple world cuisines",
        "Zest and leaf (makrut) are seasonings in their own right",
        "High juice-to-size ratio when ripe"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Wedge over tacos and noodles, juice into marinades and drinks, zest into desserts.",
        lookFor: "Heavy, slightly yellowing limes with thin, smooth skin — dark green bumpy ones are underripe and stingy.",
        store: "Counter for days, fridge for weeks; ten seconds of palm-rolling before juicing pays off."
    ),
    recipes: [
        RecipeCard(name: "Lime Icebox Pie", imageName: "recipe-lime-pie", meta: "30 min · Easy", recipe: limePie),
        RecipeCard(name: "Classic Limeade", imageName: "recipe-limeade", meta: "10 min · Easy", recipe: limeade),
        RecipeCard(name: "Lime Cilantro Rice", imageName: "recipe-lime-rice", meta: "25 min · Easy", recipe: limeCilantroRice),
        RecipeCard(name: "Shrimp Ceviche", imageName: "recipe-shrimp-ceviche", meta: "30 min · Medium", recipe: shrimpCeviche)
    ]
)

let mandarinCake = Recipe(
    name: "Whole Mandarin Cake",
    eyebrow: "Mandarin recipe",
    imageName: "recipe-mandarin-cake",
    time: "1.5 hr", level: "Medium", cal: "310",
    lede: "Two whole fruits — peel and all — boiled soft and blended into the batter. Maximum mandarin, zero waste.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "mandarins, whole"),
        Ingredient(qty: 3,    unit: "",    name: "eggs"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "cup", name: "almond flour"),
        Ingredient(qty: 1,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Boil",   body: "Simmer the whole mandarins in water for 45 minutes until completely soft. Cool, halve, flick out any seeds."),
        Step(title: "Purée",  body: "Blend the fruit — peel included — to a smooth purée."),
        Step(title: "Mix",    body: "Whisk eggs and sugar until pale; fold in the purée, then almond flour, baking powder, and salt."),
        Step(title: "Bake",   body: "Bake in a lined 8-inch tin at 350°F for 45–50 minutes until a skewer comes out clean.")
    ],
    tips: [
        "Naturally gluten-free and better on day two.",
        "A dark chocolate glaze is the classic finish.",
        "Works with clementines and satsumas interchangeably."
    ],
    baseYieldValue: 1, baseYieldUnit: "cake", baseServings: 10,
    accentColor: .lpCitrusy
)

let mandarinFruit = Fruit(
    name: "Mandarin",
    latinName: "Citrus reticulata",
    imageName: "fruit-mandarin",
    eyebrow: "Rooted up",
    pullQuote: "Citrus that unzips itself — sweet segments, zero ceremony.",
    pullQuoteHighlight: "unzips itself",
    flavors: [
        FlavorTag(label: "Citrusy", color: .lpCitrusy),
        FlavorTag(label: "Sweet",   color: .lpSweet)
    ],
    snapshot: "One of the three original citrus species — every orange descends from it. Loose skin, honeyed segments, and the whole clementine-satsuma-tangerine family under one name.",
    loveBody: "The mandarin is the people's citrus: peels in seconds, no knife, no mess, and reliably sweet. Its zest out-perfumes an orange's, drop for drop.",
    loveBullets: [
        "The ancestor of all oranges",
        "Peels effortlessly — built-in snack engineering",
        "Sweetest of the everyday citrus family"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Peel and eat by the pair, segment into salads, or boil whole into the famous flourless cake.",
        lookFor: "Fruit that feels heavy with slightly loose, puffy skin — that's ripeness, not age.",
        store: "A bowl on the counter for the week; the fridge stretches them to three."
    ),
    recipes: [
        RecipeCard(name: "Whole Mandarin Cake", imageName: "recipe-mandarin-cake", meta: "1.5 hr · Medium", recipe: mandarinCake),
        RecipeCard(name: "Mandarin Spinach Salad", imageName: "recipe-mandarin-salad", meta: "15 min · Easy", recipe: mandarinSalad),
        RecipeCard(name: "Chocolate-Dipped Mandarins", imageName: "recipe-choco-mandarins", meta: "20 min · Easy", recipe: chocolateMandarins),
        RecipeCard(name: "Mandarin Ginger Dressing", imageName: "recipe-mandarin-dressing", meta: "5 min · Easy", recipe: mandarinDressing)
    ]
)

// MARK: - Catalog index

/// Every fully-profiled fruit in the app, used by search and the flavor lists.
let allCatalogFruits: [Fruit] = [
    // FruitData.swift originals
    tamarindFruit, calamansiFruit,
    // Sweet-sour
    passionFruitFruit, greenMangoFruit, kiwiFruit, pomegranateFruit,
    // Tropical
    mangoFruit, pineappleFruit, papayaFruit, lycheeFruit, guavaFruit, dragonFruitFruit,
    // Tart
    greenAppleFruit, rhubarbFruit, cranberryFruit, sourCherryFruit, gooseberryFruit, yuzuFruit,
    // Sweet
    figFruit, dateFruit, persimmonFruit, cherimoyaFruit, grapeFruit_sweet, bananaFruit,
    // Creamy
    avocadoFruit, sapodillaFruit, mameyFruit, soursopFruit,
    // Citrusy
    lemonFruit, orangeFruit, grapefruitFruit, limeFruit, mandarinFruit,
    // Tier 2 expansion
    strawberryFruit, raspberryFruit, plumFruit, apricotFruit,
    coconutFruit, jackfruitFruit, starfruitFruit,
    blackberryFruit, redCurrantFruit,
    peachFruit, watermelonFruit, pearFruit, durianFruit,
    bloodOrangeFruit, kumquatFruit, pomeloFruit
]

/// Case-insensitive catalog lookup for the home search field.
/// Exact name match wins; otherwise a containment match either way
/// ("passion" finds Passion Fruit; "green mango salad" finds Green Mango).
func searchCatalogFruit(_ query: String) -> Fruit? {
    let q = query.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    guard !q.isEmpty else { return nil }
    if let exact = allCatalogFruits.first(where: { $0.name.lowercased() == q }) {
        return exact
    }
    return allCatalogFruits.first {
        let name = $0.name.lowercased()
        return name.contains(q) || q.contains(name)
    }
}

// MARK: - Additional recipes (Citrusy)

let lemonadeClassic = Recipe(
    name: "Whole-Lemon Lemonade",
    eyebrow: "Lemon recipe",
    imageName: "recipe-lemonade",
    time: "10 min", level: "Easy", cal: "110",
    lede: "Blend the entire lemon — peel's oils included — and get lemonade with actual personality.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "whole lemons, scrubbed, ends trimmed"),
        Ingredient(qty: 0.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 4,    unit: "cup", name: "cold water"),
        Ingredient(qty: 2,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Chop",   body: "Quarter the lemons and flick out visible seeds."),
        Step(title: "Blend",  body: "Blend lemons, sugar, and half the water for 20 seconds — no longer, or the pith turns bitter."),
        Step(title: "Strain", body: "Strain hard into a pitcher with remaining water and ice.")
    ],
    tips: [
        "Twenty seconds. Set a timer. Bitterness is one blitz away.",
        "Meyer lemons make a rounder, floral glass.",
        "Add mint or ginger to the blender for variations."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCitrusy
)

let preservedLemons = Recipe(
    name: "Preserved Lemons",
    eyebrow: "Lemon recipe",
    imageName: "recipe-preserved-lemons",
    time: "15 min", level: "Easy", cal: "10",
    lede: "Salt, jar, patience — a month later, lemons emerge as the umami weapon of North African cooking.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "lemons, scrubbed"),
        Ingredient(qty: 0.5,  unit: "cup", name: "kosher salt"),
        Ingredient(qty: 2,    unit: "",    name: "bay leaves"),
        Ingredient(qty: 1,    unit: "tsp", name: "peppercorns"),
        Ingredient(qty: 1,    unit: "",    name: "extra lemon, juiced, as needed")
    ],
    steps: [
        Step(title: "Quarter", body: "Cut lemons nearly through into quarters, leaving the base attached."),
        Step(title: "Pack",    body: "Stuff each with salt; press into a clean jar with bay and peppercorns until juice rises."),
        Step(title: "Wait",    body: "Top with juice to submerge, seal, and shake daily for a week. Ready in 4 weeks.")
    ],
    tips: [
        "Use the rind, rinsed and slivered; the flesh is bonus.",
        "Transforms roast chicken, grain salads, and butter sauces.",
        "Keeps a year refrigerated — it only deepens."
    ],
    baseYieldValue: 1, baseYieldUnit: "jar", baseServings: 24,
    accentColor: .lpCitrusy
)

let lemonChicken = Recipe(
    name: "Lemon-Herb Roast Chicken",
    eyebrow: "Lemon recipe",
    imageName: "recipe-lemon-chicken",
    time: "1.25 hr", level: "Medium", cal: "420",
    lede: "A lemon in the cavity, a lemon in the pan — the bird roasts in citrus steam and comes out singing.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "whole chicken (about 4 lb)"),
        Ingredient(qty: 2,    unit: "",    name: "lemons"),
        Ingredient(qty: 3,    unit: "tbsp",name: "softened butter"),
        Ingredient(qty: 4,    unit: "",    name: "garlic cloves, smashed"),
        Ingredient(qty: 1,    unit: "tbsp",name: "chopped rosemary + thyme"),
        Ingredient(qty: 1.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Season", body: "Rub the bird with herb butter and salt; stuff the cavity with one pricked lemon and the garlic."),
        Step(title: "Roast",  body: "425°F for 60–70 minutes, adding the second lemon, halved, to the pan midway."),
        Step(title: "Rest",   body: "Rest 15 minutes; squeeze the roasted lemon halves into the pan juices for the sauce.")
    ],
    tips: [
        "Dry skin before buttering = crackling finish.",
        "165°F at the thigh is the number that matters.",
        "The roasted-lemon pan sauce is the entire reason."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let orangeChicken = Recipe(
    name: "Crispy Orange Chicken",
    eyebrow: "Orange recipe",
    imageName: "recipe-orange-chicken",
    time: "35 min", level: "Medium", cal: "480",
    lede: "Real orange juice and zest in the glaze — the takeout classic, minus the neon.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "lb",  name: "chicken thighs, cubed"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cornstarch"),
        Ingredient(qty: 0.75, unit: "cup", name: "orange juice + zest of one orange"),
        Ingredient(qty: 3,    unit: "tbsp",name: "soy sauce"),
        Ingredient(qty: 3,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "tbsp",name: "rice vinegar"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated ginger + garlic"),
        Ingredient(qty: 0.33, unit: "cup", name: "oil, for shallow frying")
    ],
    steps: [
        Step(title: "Crisp", body: "Toss chicken in cornstarch; shallow-fry in batches until golden, about 6 minutes."),
        Step(title: "Glaze", body: "Simmer juice, zest, soy, honey, vinegar, ginger, and garlic until syrupy."),
        Step(title: "Toss",  body: "Return chicken to the pan; toss to lacquer. Scallions over rice.")
    ],
    tips: [
        "Zest is the flavor; juice is just the vehicle.",
        "Chili flakes in the glaze for the spicy-orange faction.",
        "Sauce doubles well and freezes."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let candiedOrangePeel = Recipe(
    name: "Candied Orange Peel",
    eyebrow: "Orange recipe",
    imageName: "recipe-candied-orange",
    time: "1.5 hr", level: "Medium", cal: "80",
    lede: "The peel you were going to throw away, transformed into glittering confectionery ribbons.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "oranges, peel only, cut in strips"),
        Ingredient(qty: 2,    unit: "cup", name: "sugar, plus more for rolling"),
        Ingredient(qty: 1.5,  unit: "cup", name: "water"),
        Ingredient(qty: 4,    unit: "oz",  name: "dark chocolate, optional")
    ],
    steps: [
        Step(title: "Blanch", body: "Boil peels in fresh water three times, 5 minutes each — this evicts the bitterness."),
        Step(title: "Candy",  body: "Simmer in sugar syrup 45–60 minutes until translucent; dry on a rack overnight."),
        Step(title: "Roll",   body: "Toss in sugar, or dip half of each strip in melted chocolate.")
    ],
    tips: [
        "Three blanches is the non-negotiable step.",
        "Keeps a month in a tin; the syrup flavors tea and cocktails.",
        "Same method works for grapefruit and lemon."
    ],
    baseYieldValue: 60, baseYieldUnit: "strips", baseServings: 12,
    accentColor: .lpCitrusy
)

let orangeCompote = Recipe(
    name: "Orange-Cinnamon Compote",
    eyebrow: "Orange recipe",
    imageName: "recipe-orange-compote",
    time: "20 min", level: "Easy", cal: "120",
    lede: "Whole orange segments barely poached in spiced syrup — winter's answer to berry season.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "oranges, segmented, juice reserved"),
        Ingredient(qty: 0.33, unit: "cup", name: "honey"),
        Ingredient(qty: 1,    unit: "",    name: "cinnamon stick"),
        Ingredient(qty: 2,    unit: "",    name: "cardamom pods, cracked"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla")
    ],
    steps: [
        Step(title: "Syrup",  body: "Simmer reserved juice with honey and spices 8 minutes until slightly thick."),
        Step(title: "Poach",  body: "Off heat, slide in the segments and vanilla; let them warm through, not cook."),
        Step(title: "Serve",  body: "Warm over yogurt or ricotta, or chilled over ice cream.")
    ],
    tips: [
        "Blood oranges make it look expensive.",
        "Keeps five days — breakfast keeps improving.",
        "A splash of orange-blossom water at the end is perfume."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpCitrusy
)

let grapefruitAvocadoSalad = Recipe(
    name: "Grapefruit & Avocado Salad",
    eyebrow: "Grapefruit recipe",
    imageName: "recipe-grapefruit-avocado",
    time: "15 min", level: "Easy", cal: "230",
    lede: "Bitter-bright segments against green butter — the salad equivalent of a firm handshake.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "grapefruits, segmented"),
        Ingredient(qty: 2,    unit: "",    name: "avocados, sliced"),
        Ingredient(qty: 4,    unit: "cup", name: "watercress or arugula"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "reserved grapefruit juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted pepitas")
    ],
    steps: [
        Step(title: "Dress",   body: "Whisk oil, grapefruit juice, honey, salt, and pepper."),
        Step(title: "Arrange", body: "Greens, then alternating grapefruit and avocado like tiles."),
        Step(title: "Finish",  body: "Dressing over, pepitas last, flaky salt on the avocado.")
    ],
    tips: [
        "Segment over the bowl; the juice is the dressing.",
        "Shrimp or seared scallops turn it into dinner.",
        "Pink grapefruit is gentler; white is for the brave."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let grapefruitSparkler = Recipe(
    name: "Grapefruit Rosemary Sparkler",
    eyebrow: "Grapefruit recipe",
    imageName: "recipe-grapefruit-sparkler",
    time: "10 min", level: "Easy", cal: "90",
    lede: "Fresh-squeezed and faintly piney — a zero-proof aperitif that takes itself exactly seriously enough.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "fresh grapefruit juice"),
        Ingredient(qty: 0.25, unit: "cup", name: "rosemary simple syrup"),
        Ingredient(qty: 2,    unit: "cup", name: "sparkling water"),
        Ingredient(qty: 4,    unit: "",    name: "rosemary sprigs + grapefruit wheels")
    ],
    steps: [
        Step(title: "Syrup", body: "Simmer equal parts sugar and water with two rosemary sprigs 5 minutes; cool."),
        Step(title: "Build", body: "Ice, juice, syrup to taste in each glass."),
        Step(title: "Top",   body: "Sparkling water, gentle stir, sprig and wheel to garnish.")
    ],
    tips: [
        "Salt the rim lightly — it flatters grapefruit's bitterness.",
        "Syrup keeps two weeks; it also loves lemonade.",
        "Thyme works where rosemary struts."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpCitrusy
)

let grapefruitMarmalade = Recipe(
    name: "Grapefruit Marmalade",
    eyebrow: "Grapefruit recipe",
    imageName: "recipe-grapefruit-marmalade",
    time: "1.5 hr", level: "Medium", cal: "50",
    lede: "Bitter peel, sweet set — a marmalade with the good manners to still bite back at breakfast.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "large grapefruits"),
        Ingredient(qty: 1,    unit: "",    name: "lemon, juiced"),
        Ingredient(qty: 3,    unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "cup", name: "water")
    ],
    steps: [
        Step(title: "Slice",  body: "Peel grapefruit; slice peel into fine ribbons and chop the fruit, saving juice and seeds (tie seeds in cheesecloth — free pectin)."),
        Step(title: "Soften", body: "Simmer peel, fruit, water, and seed bundle 40 minutes until the peel is tender."),
        Step(title: "Set",    body: "Add sugar and lemon; boil hard to 220°F or a wrinkling plate test. Jar it hot.")
    ],
    tips: [
        "The seed pouch is doing more work than you are.",
        "Rest jars upside down 10 minutes for a better seal.",
        "On buttered toast with black coffee: complete."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 32,
    accentColor: .lpCitrusy
)

let limeade = Recipe(
    name: "Classic Limeade",
    eyebrow: "Lime recipe",
    imageName: "recipe-limeade",
    time: "10 min", level: "Easy", cal: "100",
    lede: "Sharper than lemonade and prouder of it — the porch drink for people who like a little argument.",
    ingredients: [
        Ingredient(qty: 0.75, unit: "cup", name: "fresh lime juice (about 8 limes)"),
        Ingredient(qty: 0.67, unit: "cup", name: "sugar"),
        Ingredient(qty: 4,    unit: "cup", name: "cold water"),
        Ingredient(qty: 1,    unit: "",    name: "lime, sliced, plus mint")
    ],
    steps: [
        Step(title: "Dissolve", body: "Stir sugar into one cup of warm water until clear."),
        Step(title: "Mix",      body: "Combine syrup, lime juice, and cold water in a pitcher."),
        Step(title: "Chill",    body: "Serve over ice with lime wheels and mint.")
    ],
    tips: [
        "Roll limes hard on the counter before juicing — they give up more.",
        "Blend with ice for a frozen limeade slush.",
        "A pinch of salt secretly rounds the whole glass."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCitrusy
)

let limeCilantroRice = Recipe(
    name: "Lime Cilantro Rice",
    eyebrow: "Lime recipe",
    imageName: "recipe-lime-rice",
    time: "25 min", level: "Easy", cal: "230",
    lede: "The rice that made burrito bowls famous — zest in, juice in, cilantro at the buzzer.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "long-grain rice, rinsed"),
        Ingredient(qty: 2.25, unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tbsp",name: "butter or oil"),
        Ingredient(qty: 2,    unit: "",    name: "limes, zest and juice"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 1,    unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Cook",   body: "Simmer rice, water, butter, and salt, covered, 15 minutes; rest 5 off heat."),
        Step(title: "Fluff",  body: "Fork in zest and juice while the rice is hot and receptive."),
        Step(title: "Finish", body: "Fold in cilantro just before serving.")
    ],
    tips: [
        "Zest before juicing — always.",
        "Day-old version makes elite fried rice.",
        "Coconut oil instead of butter leans Thai."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCitrusy
)

let shrimpCeviche = Recipe(
    name: "Shrimp Ceviche",
    eyebrow: "Lime recipe",
    imageName: "recipe-shrimp-ceviche",
    time: "30 min", level: "Medium", cal: "180",
    lede: "Lime juice does the cooking — shrimp turns opaque and festive while you just stand there taking credit.",
    ingredients: [
        Ingredient(qty: 1,    unit: "lb",  name: "shrimp, peeled, chopped"),
        Ingredient(qty: 0.75, unit: "cup", name: "fresh lime juice"),
        Ingredient(qty: 1,    unit: "cup", name: "tomato, diced"),
        Ingredient(qty: 0.5,  unit: "cup", name: "red onion, slivered"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, minced"),
        Ingredient(qty: 0.33, unit: "cup", name: "cilantro"),
        Ingredient(qty: 1,    unit: "",    name: "avocado, diced")
    ],
    steps: [
        Step(title: "Cure",  body: "Submerge shrimp in lime juice; refrigerate 20–25 minutes until pink-opaque throughout."),
        Step(title: "Drain", body: "Pour off most juice; fold in tomato, onion, chili, and cilantro."),
        Step(title: "Serve", body: "Avocado on top, salt to taste, tostadas alongside.")
    ],
    tips: [
        "Use the freshest shrimp you can find — lime is a cook, not a disinfectant; pre-cooked shrimp is a safe shortcut.",
        "Small dice = faster, more even cure.",
        "A splash of the citrus 'leche de tigre' over the top is the connoisseur move."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let mandarinSalad = Recipe(
    name: "Mandarin Spinach Salad",
    eyebrow: "Mandarin recipe",
    imageName: "recipe-mandarin-salad",
    time: "15 min", level: "Easy", cal: "220",
    lede: "Sweet segments, sharp dressing, candied almonds — the potluck legend, restored with real fruit.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "mandarins, segmented"),
        Ingredient(qty: 5,    unit: "cup", name: "baby spinach"),
        Ingredient(qty: 0.33, unit: "cup", name: "sliced almonds + 1 tbsp sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "thin red onion"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "rice vinegar"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey + Dijon")
    ],
    steps: [
        Step(title: "Candy", body: "Toast almonds with sugar in a dry pan until it melts and clings; cool on parchment."),
        Step(title: "Dress", body: "Whisk oil, vinegar, honey, Dijon, salt."),
        Step(title: "Toss",  body: "Spinach and onion first, mandarins and almonds on top.")
    ],
    tips: [
        "Watch the candying pan — sugar goes from amber to regret fast.",
        "Grilled chicken makes it a main.",
        "Canned mandarins, drained well, are honestly fine here."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let chocolateMandarins = Recipe(
    name: "Chocolate-Dipped Mandarins",
    eyebrow: "Mandarin recipe",
    imageName: "recipe-choco-mandarins",
    time: "20 min", level: "Easy", cal: "140",
    lede: "Two ingredients, zero technique, maximum applause — the chocolate orange, deconstructed honestly.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "mandarins, segmented"),
        Ingredient(qty: 4,    unit: "oz",  name: "dark chocolate"),
        Ingredient(qty: 1,    unit: "tsp", name: "coconut oil"),
        Ingredient(qty: 1,    unit: "",    name: "flaky salt, to finish")
    ],
    steps: [
        Step(title: "Melt",  body: "Melt chocolate with coconut oil in short microwave bursts, stirring between."),
        Step(title: "Dip",   body: "Dip each segment halfway; lay on parchment."),
        Step(title: "Set",   body: "Flaky salt while wet, then 10 minutes in the fridge.")
    ],
    tips: [
        "Dry segments dip cleaner — pat them first.",
        "Sprinkle crushed pistachios before the chocolate sets.",
        "Eat the same day; citrus weeps overnight."
    ],
    baseYieldValue: 32, baseYieldUnit: "segments", baseServings: 6,
    accentColor: .lpCitrusy
)

let mandarinDressing = Recipe(
    name: "Mandarin Ginger Dressing",
    eyebrow: "Mandarin recipe",
    imageName: "recipe-mandarin-dressing",
    time: "5 min", level: "Easy", cal: "110",
    lede: "A whole mandarin blended into the dressing — pulp, sweetness, and all the sunshine it was hoarding.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "mandarins, peeled"),
        Ingredient(qty: 2,    unit: "tbsp",name: "rice vinegar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "soy sauce"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated ginger"),
        Ingredient(qty: 0.33, unit: "cup", name: "neutral oil"),
        Ingredient(qty: 1,    unit: "tsp", name: "sesame oil")
    ],
    steps: [
        Step(title: "Blend",    body: "Blitz mandarins, vinegar, soy, and ginger until smooth."),
        Step(title: "Emulsify", body: "Stream in both oils with the motor running."),
        Step(title: "Use",      body: "Over greens, slaw, cold noodles, or grilled salmon.")
    ],
    tips: [
        "Strain for elegance; leave pulpy for character.",
        "Keeps five days refrigerated — shake awake before using.",
        "Add a spoon of miso for depth."
    ],
    baseYieldValue: 1, baseYieldUnit: "cup", baseServings: 8,
    accentColor: .lpCitrusy
)

// MARK: - Tier 2 fruits (Citrusy)

let bloodOrangeSalad = Recipe(
    name: "Blood Orange & Fennel Salad",
    eyebrow: "Blood Orange recipe",
    imageName: "recipe-blood-orange-salad",
    time: "15 min", level: "Easy", cal: "180",
    lede: "Crimson wheels against shaved fennel — the Sicilian winter salad that eats like stained glass.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "blood oranges, peeled and wheeled"),
        Ingredient(qty: 1,    unit: "",    name: "fennel bulb, shaved thin"),
        Ingredient(qty: 0.25, unit: "cup", name: "red onion, slivered"),
        Ingredient(qty: 0.33, unit: "cup", name: "olives, oil-cured"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of chili flakes")
    ],
    steps: [
        Step(title: "Wheel",   body: "Slice peeled oranges crosswise into rounds, catching the juice."),
        Step(title: "Layer",   body: "Fennel down, orange wheels over, onion and olives scattered."),
        Step(title: "Dress",   body: "Reserved juice, oil, salt, and chili flakes over everything.")
    ],
    tips: [
        "A mandoline earns its keep on the fennel.",
        "The color runs deepest in late winter fruit.",
        "Add burrata and it becomes dinner."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let bloodOrangeMarmalade = Recipe(
    name: "Blood Orange Marmalade",
    eyebrow: "Blood Orange recipe",
    imageName: "recipe-blood-orange-marmalade",
    time: "1.5 hr", level: "Medium", cal: "50",
    lede: "Marmalade in evening wear — the same bitter-sweet ritual, dressed in garnet.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "blood oranges"),
        Ingredient(qty: 1,    unit: "",    name: "lemon, juiced"),
        Ingredient(qty: 3,    unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "cup", name: "water")
    ],
    steps: [
        Step(title: "Slice",  body: "Fine-ribbon the peel; chop the fruit, saving juice and seeds (seeds into a muslin bag)."),
        Step(title: "Soften", body: "Simmer peel, fruit, water, and seed bag 40 minutes until the peel gives."),
        Step(title: "Set",    body: "Sugar and lemon in; boil hard to 220°F or a wrinkling plate. Jar while it glows.")
    ],
    tips: [
        "The finished color is somewhere between ruby and rust — no two batches match.",
        "On dark toast with salted butter, it's a complete argument.",
        "Stir a spoonful into a glaze for duck or ham."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 32,
    accentColor: .lpCitrusy
)

let bloodOrangeade = Recipe(
    name: "Blood Orangeade",
    eyebrow: "Blood Orange recipe",
    imageName: "recipe-blood-orangeade",
    time: "10 min", level: "Easy", cal: "100",
    lede: "Fresh-squeezed sunset in a glass — no filter needed, the fruit brought its own.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "blood orange juice (about 6)"),
        Ingredient(qty: 0.25, unit: "cup", name: "lemon juice"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 3,    unit: "cup", name: "cold water or sparkling")
    ],
    steps: [
        Step(title: "Dissolve", body: "Stir sugar into the citrus juices until gone."),
        Step(title: "Dilute",   body: "Add water — still for lunch, sparkling for occasions."),
        Step(title: "Pour",     body: "Over ice with a crimson wheel on each rim.")
    ],
    tips: [
        "Roll the oranges hard before juicing.",
        "Freeze into the most beautiful ice pops you'll make this year.",
        "A rosemary sprig turns it apéritif."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCitrusy
)

let bloodOrangeCake = Recipe(
    name: "Blood Orange Olive Oil Cake",
    eyebrow: "Blood Orange recipe",
    imageName: "recipe-blood-orange-cake",
    time: "1 hr", level: "Medium", cal: "320",
    lede: "Peppery olive oil, garnet citrus, one bowl — the cake that looks like it required more than it did.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "blood oranges (zest, juice, and wheels)"),
        Ingredient(qty: 1.75, unit: "cup", name: "flour"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 0.67, unit: "cup", name: "olive oil"),
        Ingredient(qty: 3,    unit: "",    name: "eggs"),
        Ingredient(qty: 1.5,  unit: "tsp", name: "baking powder"),
        Ingredient(qty: 0.33, unit: "cup", name: "yogurt")
    ],
    steps: [
        Step(title: "Whisk",  body: "Sugar with zest first (rub it in), then eggs, oil, yogurt, and juice."),
        Step(title: "Fold",   body: "Flour and baking powder until just smooth; thin wheels on the pan bottom if you're flipping for looks."),
        Step(title: "Bake",   body: "350°F for 40–45 minutes; cool before the upside-down reveal.")
    ],
    tips: [
        "A peppery finishing oil actually matters here.",
        "Improves overnight as the citrus settles in.",
        "Glaze with juice + powdered sugar if you skipped the wheels."
    ],
    baseYieldValue: 10, baseYieldUnit: "slices", baseServings: 10,
    accentColor: .lpCitrusy
)

let bloodOrangeFruit = Fruit(
    name: "Blood Orange",
    latinName: "Citrus × sinensis",
    imageName: "fruit-blood-orange",
    eyebrow: "Rooted up",
    pullQuote: "An orange that swapped sunshine for sunset.",
    pullQuoteHighlight: "sunshine for sunset",
    flavors: [
        FlavorTag(label: "Citrusy",    color: .lpCitrusy),
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour)
    ],
    snapshot: "Cold nights switch on anthocyanin — the berry pigment no other citrus makes — staining the flesh crimson and adding a raspberry undertone to the orange brightness.",
    loveBody: "It's an orange with a second flavor hiding inside: familiar citrus up front, dark berry on the finish, and a color that makes every dish look styled.",
    loveBullets: [
        "The only citrus with berry anthocyanins",
        "Moro is darkest and boldest; Tarocco the sweetest",
        "A short winter season — catch it while it's crimson"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Wheeled into fennel salads, juiced for sunset glasses, baked into olive oil cake, or eaten over the sink like any orange with better lighting.",
        lookFor: "Heavy fruit with a red blush on the rind — though the outside rarely spoils the inside surprise either way.",
        store: "Counter for a week, fridge for three — the color deepens nowhere, so buy them ready."
    ),
    recipes: [
        RecipeCard(name: "Blood Orange & Fennel Salad", imageName: "recipe-blood-orange-salad", meta: "15 min · Easy", recipe: bloodOrangeSalad),
        RecipeCard(name: "Blood Orange Marmalade", imageName: "recipe-blood-orange-marmalade", meta: "1.5 hr · Medium", recipe: bloodOrangeMarmalade),
        RecipeCard(name: "Blood Orangeade", imageName: "recipe-blood-orangeade", meta: "10 min · Easy", recipe: bloodOrangeade),
        RecipeCard(name: "Blood Orange Olive Oil Cake", imageName: "recipe-blood-orange-cake", meta: "1 hr · Medium", recipe: bloodOrangeCake)
    ]
)

let kumquatsCandied = Recipe(
    name: "Candied Kumquats",
    eyebrow: "Kumquat recipe",
    imageName: "recipe-kumquats-candied",
    time: "30 min", level: "Easy", cal: "60",
    lede: "Whole citrus coins in syrup — bitter, sweet, and gone off the spoon before they reach the cake.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "kumquats, sliced into coins, seeded"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "",    name: "star anise, optional")
    ],
    steps: [
        Step(title: "Blanch", body: "Thirty seconds in boiling water knocks back the pith's edge."),
        Step(title: "Simmer", body: "In syrup with the star anise, 15–20 minutes until translucent."),
        Step(title: "Jar",    body: "Coins and syrup together; refrigerate up to a month.")
    ],
    tips: [
        "Spoon over ice cream, yogurt, cheesecake, or a glazed ham.",
        "The syrup is liquid gold for cocktails and seltzer.",
        "Flick seeds out with a knife tip as you slice."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 12,
    accentColor: .lpCitrusy
)

let kumquatMarmaladeRecipe = Recipe(
    name: "Kumquat Marmalade",
    eyebrow: "Kumquat recipe",
    imageName: "recipe-kumquat-marmalade",
    time: "1 hr", level: "Medium", cal: "50",
    lede: "The marmalade with no peeling step — kumquats arrive pre-assembled, skin sweet, flesh sharp.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "kumquats, sliced thin, seeded"),
        Ingredient(qty: 2.5,  unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "cup", name: "water"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Soak",   body: "Slices and water rest overnight — it softens peel and wakes pectin."),
        Step(title: "Boil",   body: "Simmer 30 minutes; add sugar and lemon and boil to a wrinkling set."),
        Step(title: "Jar",    body: "Golden coins suspended in amber. Admire, then seal.")
    ],
    tips: [
        "Save the seeds in a muslin bag for the boil — free pectin.",
        "Brilliant with soft cheese and dark bread.",
        "Skip the overnight soak and simmer 15 minutes longer, if impatient."
    ],
    baseYieldValue: 3.5, baseYieldUnit: "cups", baseServings: 28,
    accentColor: .lpCitrusy
)

let kumquatSalad = Recipe(
    name: "Kumquat & Avocado Salad",
    eyebrow: "Kumquat recipe",
    imageName: "recipe-kumquat-salad",
    time: "10 min", level: "Easy", cal: "220",
    lede: "Whole citrus coins scattered like currency over green butter and bitter leaves.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "kumquats, sliced into coins"),
        Ingredient(qty: 2,    unit: "",    name: "avocados, sliced"),
        Ingredient(qty: 4,    unit: "cup", name: "arugula or watercress"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted almonds")
    ],
    steps: [
        Step(title: "Dress",   body: "Whisk oil, honey, lime, salt."),
        Step(title: "Arrange", body: "Greens, avocado fans, kumquat coins over everything."),
        Step(title: "Finish",  body: "Dressing and almonds last. The coins do the rest.")
    ],
    tips: [
        "Taste a kumquat first — chew the whole thing, skin and all.",
        "Seared scallops love this exact plate.",
        "Mint leaves scattered in are quietly great."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let kumquatSpritzer = Recipe(
    name: "Kumquat Ginger Spritzer",
    eyebrow: "Kumquat recipe",
    imageName: "recipe-kumquat-spritzer",
    time: "10 min", level: "Easy", cal: "80",
    lede: "Muddled whole kumquats and ginger under bubbles — tiny fruit, big opinion.",
    ingredients: [
        Ingredient(qty: 10,   unit: "",    name: "kumquats, halved"),
        Ingredient(qty: 3,    unit: "tbsp",name: "honey syrup"),
        Ingredient(qty: 1,    unit: "tsp", name: "grated ginger"),
        Ingredient(qty: 2,    unit: "cup", name: "sparkling water"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Muddle", body: "Crush kumquats with honey syrup and ginger in the pitcher bottom."),
        Step(title: "Build",  body: "Ice in, sparkling water over, one good stir."),
        Step(title: "Serve",  body: "Spent kumquat halves ride along as garnish.")
    ],
    tips: [
        "Muddle hard — the peel oils are the drink.",
        "Strain into coupes for a fancier occasion.",
        "Works hot too: kumquat-ginger tea for winter."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 3,
    accentColor: .lpCitrusy
)

let kumquatFruit = Fruit(
    name: "Kumquat",
    latinName: "Citrus japonica",
    imageName: "fruit-kumquat",
    eyebrow: "Rooted up",
    pullQuote: "The citrus you eat inside-out.",
    pullQuoteHighlight: "inside-out",
    flavors: [
        FlavorTag(label: "Citrusy",    color: .lpCitrusy),
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour)
    ],
    snapshot: "Olive-sized citrus with the rules reversed: the peel is the sweet part, the flesh is the sour surprise, and the whole thing goes in at once.",
    loveBody: "It's a complete sweet-tart experience in one bite — no peeling, no segments, no commitment beyond the pop.",
    loveBullets: [
        "The only citrus eaten whole, peel first",
        "Peel oils carry most of the vitamin punch",
        "A bowl of them empties faster than grapes"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Whole and unpeeled — roll it first to mingle the sweet skin and sharp juice. Candy them, marmalade them, or coin them over salads.",
        lookFor: "Firm, fully orange fruit with taut glossy skin; soft or greenish ones disappoint.",
        store: "Counter for a few days, fridge for two weeks — they hold better than their size suggests."
    ),
    recipes: [
        RecipeCard(name: "Candied Kumquats", imageName: "recipe-kumquats-candied", meta: "30 min · Easy", recipe: kumquatsCandied),
        RecipeCard(name: "Kumquat Marmalade", imageName: "recipe-kumquat-marmalade", meta: "1 hr · Medium", recipe: kumquatMarmaladeRecipe),
        RecipeCard(name: "Kumquat & Avocado Salad", imageName: "recipe-kumquat-salad", meta: "10 min · Easy", recipe: kumquatSalad),
        RecipeCard(name: "Kumquat Ginger Spritzer", imageName: "recipe-kumquat-spritzer", meta: "10 min · Easy", recipe: kumquatSpritzer)
    ]
)

let pomeloSaladThai = Recipe(
    name: "Yam Som O (Pomelo Salad)",
    eyebrow: "Pomelo recipe",
    imageName: "recipe-pomelo-salad",
    time: "20 min", level: "Easy", cal: "210",
    lede: "Thailand's answer to what pomelo is for — dry-sweet segments tossed with lime, chili, coconut, and peanuts.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "pomelo segments, torn"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1.5,  unit: "tbsp",name: "fish sauce"),
        Ingredient(qty: 1,    unit: "tbsp",name: "palm sugar"),
        Ingredient(qty: 0.33, unit: "cup", name: "toasted coconut flakes"),
        Ingredient(qty: 0.33, unit: "cup", name: "roasted peanuts, crushed"),
        Ingredient(qty: 1,    unit: "",    name: "red chili, sliced")
    ],
    steps: [
        Step(title: "Tear",  body: "Break segments into fat jewels, membrane fully evicted."),
        Step(title: "Dress", body: "Whisk lime, fish sauce, and palm sugar; toss gently."),
        Step(title: "Top",   body: "Coconut, peanuts, and chili at the end for full crunch.")
    ],
    tips: [
        "Add shrimp for the full street-menu version.",
        "Pomelo's dryness is the feature — it carries dressing without wilting.",
        "Vegetarian: soy sauce plus a pinch more sugar."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCitrusy
)

let pomeloHoneyTea = Recipe(
    name: "Pomelo Honey Tea",
    eyebrow: "Pomelo recipe",
    imageName: "recipe-pomelo-tea",
    time: "20 min", level: "Easy", cal: "90",
    lede: "The Korean café classic — pomelo peel and flesh preserved in honey, spooned into hot water.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "pomelo (peel of half, flesh of all)"),
        Ingredient(qty: 1,    unit: "cup", name: "honey"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar")
    ],
    steps: [
        Step(title: "Slice", body: "Fine-ribbon the peel (blanch once to tame it); tear the flesh small."),
        Step(title: "Pack",  body: "Layer peel, flesh, sugar, and honey in a jar; press to submerge."),
        Step(title: "Steep", body: "Three days in the fridge, then two spoonfuls per cup of hot water.")
    ],
    tips: [
        "Also glorious over ice with soda water in summer.",
        "The marmalade-y solids are the prize at the cup's bottom.",
        "Keeps a month refrigerated, deepening the whole time."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 20,
    accentColor: .lpCitrusy
)

let pomeloChiliSalt = Recipe(
    name: "Pomelo with Chili Salt",
    eyebrow: "Pomelo recipe",
    imageName: "recipe-pomelo-chili-salt",
    time: "10 min", level: "Easy", cal: "90",
    lede: "The Southeast Asian street snack: fat citrus jewels dragged through salt that bites back.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "pomelo segments, torn"),
        Ingredient(qty: 1,    unit: "tbsp",name: "flaky salt"),
        Ingredient(qty: 1,    unit: "tsp", name: "chili powder or Tajín"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "sugar"),
        Ingredient(qty: 1,    unit: "",    name: "lime, wedged")
    ],
    steps: [
        Step(title: "Mix",   body: "Stir salt, chili, and sugar into a dipping pile."),
        Step(title: "Plate", body: "Segments arranged, chili salt beside, lime wedges standing by."),
        Step(title: "Dip",   body: "Drag, squeeze, repeat until the plate is archaeology.")
    ],
    tips: [
        "This is the correct way to demolish a whole pomelo solo.",
        "The salt makes the fruit taste sweeter — kitchen physics.",
        "Works on green mango and pineapple with equal violence."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCitrusy
)

let pomeloSorbet = Recipe(
    name: "Pomelo Sorbet",
    eyebrow: "Pomelo recipe",
    imageName: "recipe-pomelo-sorbet",
    time: "15 min", level: "Easy", cal: "120",
    lede: "Grapefruit's gentler cousin, frozen — floral, barely bitter, and impossibly refreshing.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "pomelo segments, membrane-free"),
        Ingredient(qty: 0.67, unit: "cup", name: "simple syrup"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Blend",  body: "Everything smooth; taste — it should lean sweet before freezing."),
        Step(title: "Freeze", body: "Churn, or pan-freeze with one mid-freeze blend at the 2-hour mark."),
        Step(title: "Serve",  body: "Ten minutes out of the freezer, in the pomelo's own rind cups if you're theatrical.")
    ],
    tips: [
        "Pink-fleshed pomelos make a blush sorbet.",
        "A ribbon of candied peel on top closes the loop.",
        "Between rich courses, this is the professional palate cleanser."
    ],
    baseYieldValue: 1, baseYieldUnit: "quart", baseServings: 6,
    accentColor: .lpCitrusy
)

let pomeloFruit = Fruit(
    name: "Pomelo",
    latinName: "Citrus maxima",
    imageName: "fruit-pomelo",
    eyebrow: "Rooted up",
    pullQuote: "The grandmother of every grapefruit, and gentler than her descendants.",
    pullQuoteHighlight: "gentler than her descendants",
    flavors: [
        FlavorTag(label: "Citrusy", color: .lpCitrusy)
    ],
    snapshot: "The largest citrus on Earth — a green-gold giant with inches of pith armor around fat, dry-sweet segments that pull apart into jewels without a drop spilled.",
    loveBody: "All of grapefruit's floral character with the bitterness dialed to polite: segments so sturdy they salad, snack, and sorbet without collapsing.",
    loveBullets: [
        "Largest citrus species — some reach bowling-ball size",
        "The ancestor parent of the modern grapefruit",
        "Segments stay intact and dry — no juice on your shirt"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Torn into fat jewels for Thai salads, dragged through chili salt, honey-preserved into tea, or eaten segment by patient segment.",
        lookFor: "Heavy for its size with fragrant, slightly glossy skin; the thick pith is normal, not a flaw.",
        store: "Counter for a week or more — the armor works. Peeled segments keep three days covered."
    ),
    recipes: [
        RecipeCard(name: "Yam Som O (Pomelo Salad)", imageName: "recipe-pomelo-salad", meta: "20 min · Easy", recipe: pomeloSaladThai),
        RecipeCard(name: "Pomelo Honey Tea", imageName: "recipe-pomelo-tea", meta: "20 min · Easy", recipe: pomeloHoneyTea),
        RecipeCard(name: "Pomelo with Chili Salt", imageName: "recipe-pomelo-chili-salt", meta: "10 min · Easy", recipe: pomeloChiliSalt),
        RecipeCard(name: "Pomelo Sorbet", imageName: "recipe-pomelo-sorbet", meta: "15 min · Easy", recipe: pomeloSorbet)
    ]
)
