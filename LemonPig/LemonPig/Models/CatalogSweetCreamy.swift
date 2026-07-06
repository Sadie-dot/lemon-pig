import SwiftUI

// MARK: - Sweet catalog

let figToasts = Recipe(
    name: "Fig & Honey Toasts",
    eyebrow: "Fig recipe",
    imageName: "recipe-fig-toasts",
    time: "10 min", level: "Easy", cal: "210",
    lede: "A ripe fig barely needs a recipe — just something crunchy underneath and something salty alongside.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "ripe figs, quartered"),
        Ingredient(qty: 4,    unit: "",    name: "slices sourdough, toasted"),
        Ingredient(qty: 0.5,  unit: "cup", name: "ricotta or soft goat cheese"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "toasted walnuts, chopped")
    ],
    steps: [
        Step(title: "Toast",  body: "Toast the bread until deeply golden — it needs to hold up to the toppings."),
        Step(title: "Spread", body: "Swoosh the cheese over each slice while the toast is still warm."),
        Step(title: "Top",    body: "Arrange the fig quarters cut-side up, drizzle with honey, and finish with salt and walnuts.")
    ],
    tips: [
        "A fig is ripe when it droops on the stem and tears, not snaps.",
        "Runny honey and salty cheese are the point — don't skimp on either.",
        "Grill the figs cut-side down for 2 minutes to caramelize them first."
    ],
    baseYieldValue: 4, baseYieldUnit: "toasts", baseServings: 4,
    accentColor: .lpSweet
)

let figFruit = Fruit(
    name: "Fig",
    latinName: "Ficus carica",
    imageName: "fruit-fig",
    eyebrow: "Rooted up",
    pullQuote: "Not a fruit at all — a garden of tiny flowers blooming inward.",
    pullQuoteHighlight: "blooming inward.",
    flavors: [
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "Botanically an inverted flower cluster: the soft interior is hundreds of tiny blooms and seeds. One of humanity's oldest cultivated plants, older than wheat in some digs.",
    loveBody: "A ripe fig is honeyed, jammy, and floral all at once, with a texture no other fruit approaches. The window of perfection is a day or two — which is exactly what makes it precious.",
    loveBullets: [
        "One of the oldest cultivated plants on record",
        "A good source of fiber, calcium, and potassium",
        "Fresh and dried are almost two different fruits"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Eat ripe ones whole, skin and all; pair with salty cheese and honey; roast to concentrate.",
        lookFor: "Soft, drooping fruit with a bend at the stem and maybe a tear of nectar at the eye.",
        store: "Eat within a day or two; refrigerate in a single layer, never stacked."
    ),
    recipes: [
        RecipeCard(name: "Fig & Honey Toasts", imageName: "recipe-fig-toasts", meta: "10 min · Easy", recipe: figToasts),
        RecipeCard(name: "Honey-Roasted Figs", imageName: "recipe-figs-roasted", meta: "20 min · Easy", recipe: figsRoasted),
        RecipeCard(name: "Fig Jam", imageName: "recipe-fig-jam", meta: "45 min · Easy", recipe: figJam),
        RecipeCard(name: "Fig & Arugula Salad", imageName: "recipe-fig-salad", meta: "10 min · Easy", recipe: figSalad)
    ]
)

let dateShake = Recipe(
    name: "Date Shake",
    eyebrow: "Date recipe",
    imageName: "recipe-date-shake",
    time: "5 min", level: "Easy", cal: "320",
    lede: "The California desert classic — dates blended until they become their own caramel sauce.",
    ingredients: [
        Ingredient(qty: 8,    unit: "",    name: "Medjool dates, pitted"),
        Ingredient(qty: 2,    unit: "cup", name: "vanilla ice cream"),
        Ingredient(qty: 0.75, unit: "cup", name: "cold milk"),
        Ingredient(qty: 0.25, unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Soften", body: "If the dates are firm, soak in hot water 5 minutes and drain."),
        Step(title: "Blend",  body: "Blend dates with the milk first until completely smooth — no flecks."),
        Step(title: "Shake",  body: "Add ice cream, cinnamon, and salt; pulse until thick. Serve immediately with a wide straw.")
    ],
    tips: [
        "Blending dates with liquid first is the secret to a grit-free shake.",
        "Swap ice cream for frozen banana and oat milk for a lighter one.",
        "A shot of espresso turns it into date-shake affogato."
    ],
    baseYieldValue: 2, baseYieldUnit: "shakes", baseServings: 2,
    accentColor: .lpSweet
)

let dateFruit = Fruit(
    name: "Date",
    latinName: "Phoenix dactylifera",
    imageName: "fruit-date",
    eyebrow: "Rooted up",
    pullQuote: "Caramel that grows on trees — chewy, dark, and sun-made.",
    pullQuoteHighlight: "grows on trees",
    flavors: [
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "The fruit of the date palm, cultivated across the Middle East and North Africa for at least six thousand years. Fresh dates are crisp; the familiar soft, dark date is partially sun-dried on the tree.",
    loveBody: "Dates are nature's confectionery — toffee, brown sugar, and a whisper of smoke in a fruit that keeps for months. They sweeten whole cuisines without a spoon of refined sugar.",
    loveBullets: [
        "Rich in potassium, magnesium, and fiber",
        "Natural sweetener for shakes, bars, and baking",
        "Keeps for months — the original travel food"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Stuff with nut butter or cheese, blend into shakes, or chop into grain dishes and tagines.",
        lookFor: "Plump, glossy fruit with wrinkles but no sugar crystals or dryness; Medjool for softness, Deglet for chew.",
        store: "Airtight at room temperature for a month; refrigerated they hold half a year."
    ),
    recipes: [
        RecipeCard(name: "Date Shake", imageName: "recipe-date-shake", meta: "5 min · Easy", recipe: dateShake),
        RecipeCard(name: "Stuffed Dates", imageName: "recipe-dates-stuffed", meta: "15 min · Easy", recipe: datesStuffed),
        RecipeCard(name: "Date Energy Balls", imageName: "recipe-date-balls", meta: "15 min · Easy", recipe: dateEnergyBalls),
        RecipeCard(name: "Sticky Date Porridge", imageName: "recipe-date-porridge", meta: "15 min · Easy", recipe: datePorridge)
    ]
)

let persimmonSalad = Recipe(
    name: "Persimmon & Burrata Salad",
    eyebrow: "Persimmon recipe",
    imageName: "recipe-persimmon-salad",
    time: "15 min", level: "Easy", cal: "260",
    lede: "Crisp Fuyu slices where tomato would go in summer — honeyed fruit against cream and bitter leaves.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "Fuyu persimmons, sliced thin"),
        Ingredient(qty: 1,    unit: "",    name: "ball of burrata"),
        Ingredient(qty: 3,    unit: "cup", name: "arugula"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "balsamic vinegar"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted hazelnuts, crushed")
    ],
    steps: [
        Step(title: "Arrange", body: "Fan the persimmon slices over a platter of arugula."),
        Step(title: "Tear",    body: "Tear the burrata over the top so the cream runs into the leaves."),
        Step(title: "Dress",   body: "Drizzle with oil and vinegar, season, and scatter the hazelnuts.")
    ],
    tips: [
        "Fuyu (squat, tomato-shaped) is eaten crisp — this salad's kind.",
        "Hachiya (acorn-shaped) must be jelly-soft or it's mouth-furringly astringent.",
        "Prosciutto makes it dinner."
    ],
    baseYieldValue: 1, baseYieldUnit: "platter", baseServings: 4,
    accentColor: .lpSweet
)

let persimmonFruit = Fruit(
    name: "Persimmon",
    latinName: "Diospyros kaki",
    imageName: "fruit-persimmon",
    eyebrow: "Rooted up",
    pullQuote: "Autumn's lantern — honey-flavored and hanging on bare branches.",
    pullQuoteHighlight: "Autumn's lantern",
    flavors: [
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "A glossy orange fruit that ripens as the leaves fall — in East Asia, bare trees hung with persimmons are the picture of late autumn. Two main kinds: crisp Fuyu and custardy Hachiya.",
    loveBody: "At its best, persimmon tastes like honey and apricot with no acid at all — pure mellow sweetness. Know your variety and it never disappoints; confuse them once and you'll never forget.",
    loveBullets: [
        "Rich in vitamin A and antioxidants",
        "Fuyu eats crisp like an apple; Hachiya spoons like pudding",
        "Dries into hoshigaki — a chewy, sugar-frosted delicacy"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Slice crisp Fuyus into salads; spoon jelly-ripe Hachiyas straight from the skin.",
        lookFor: "Fuyu: firm and deep orange. Hachiya: wait until it feels like a water balloon.",
        store: "Fuyus keep weeks refrigerated; ripen Hachiyas at room temperature until fully soft."
    ),
    recipes: [
        RecipeCard(name: "Persimmon & Burrata Salad", imageName: "recipe-persimmon-salad", meta: "15 min · Easy", recipe: persimmonSalad),
        RecipeCard(name: "Persimmon Salsa", imageName: "recipe-persimmon-salsa", meta: "10 min · Easy", recipe: persimmonSalsa),
        RecipeCard(name: "Persimmon Spice Bread", imageName: "recipe-persimmon-bread", meta: "1.25 hr · Medium", recipe: persimmonBread),
        RecipeCard(name: "Persimmon Smoothie", imageName: "recipe-persimmon-smoothie", meta: "5 min · Easy", recipe: persimmonSmoothie)
    ]
)

let grapeFocaccia = Recipe(
    name: "Grape Focaccia",
    eyebrow: "Grape recipe",
    imageName: "recipe-grape-focaccia",
    time: "45 min", level: "Medium", cal: "280",
    lede: "Schiacciata all'uva, the Tuscan harvest bread — grapes roasted into dimpled dough until they burst into jam.",
    ingredients: [
        Ingredient(qty: 1,    unit: "lb",  name: "pizza or focaccia dough"),
        Ingredient(qty: 2,    unit: "cup", name: "sweet grapes (Concord if you can)"),
        Ingredient(qty: 3,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 2,    unit: "tbsp",name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "fresh rosemary leaves"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt")
    ],
    steps: [
        Step(title: "Stretch", body: "Press the dough into an oiled pan and let it relax 20 minutes."),
        Step(title: "Dimple",  body: "Oil your fingers and dimple the dough deeply. Press the grapes in, scatter sugar and rosemary."),
        Step(title: "Bake",    body: "Bake at 425°F for 20–25 minutes until golden with jammy, burst grapes."),
        Step(title: "Finish",  body: "Drizzle with the remaining oil and salt while hot. Serve in torn slabs.")
    ],
    tips: [
        "Seeded wine grapes are traditional — warn your guests or seed them.",
        "Good with cheese as it is with coffee.",
        "Halve any very large grapes so they roast, not roll."
    ],
    baseYieldValue: 1, baseYieldUnit: "pan", baseServings: 8,
    accentColor: .lpSweet
)

let grapeFruit_sweet = Fruit(
    name: "Sweet Grape",
    latinName: "Vitis vinifera",
    imageName: "fruit-sweet-grape",
    eyebrow: "Rooted up",
    pullQuote: "The snack that built an entire civilization's afternoons.",
    pullQuoteHighlight: "an entire civilization's afternoons.",
    flavors: [
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "Cultivated for wine, raisins, and the table for eight thousand years. Table varieties are bred for crisp skin, high sugar, and that audible pop.",
    loveBody: "Grapes are effortless — no peeling, no pitting in seedless kinds, just cold sweetness by the handful. Freeze them and they turn into tiny sorbet bites.",
    loveBullets: [
        "Skins carry resveratrol and most of the antioxidants",
        "Frozen grapes are instant dessert",
        "Endless varieties, from candy-sweet to musky Concord"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Eat cold by the bunch, freeze for snacking, or roast until they burst over bread and cheese.",
        lookFor: "Plump fruit firmly attached to pliable green stems; the powdery bloom is freshness, not dirt.",
        store: "Refrigerate unwashed in their bag up to two weeks; wash just before eating."
    ),
    recipes: [
        RecipeCard(name: "Grape Focaccia", imageName: "recipe-grape-focaccia", meta: "45 min · Medium", recipe: grapeFocaccia),
        RecipeCard(name: "Roasted Grapes & Ricotta", imageName: "recipe-grapes-roasted", meta: "25 min · Easy", recipe: grapesRoasted),
        RecipeCard(name: "Grape Granita", imageName: "recipe-grape-granita", meta: "15 min · Easy", recipe: grapeGranita),
        RecipeCard(name: "Chicken & Grape Salad", imageName: "recipe-grape-chicken-salad", meta: "15 min · Easy", recipe: grapeChickenSalad)
    ]
)

// MARK: - Fruits shared between Sweet and Creamy

let cherimoyaChilled = Recipe(
    name: "Chilled Cherimoya Cream",
    eyebrow: "Cherimoya recipe",
    imageName: "recipe-cherimoya-cream",
    time: "10 min + chill", level: "Easy", cal: "160",
    lede: "Mark Twain called cherimoya 'deliciousness itself' — this barely-a-recipe just makes it colder and creamier.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "ripe cherimoyas"),
        Ingredient(qty: 0.5,  unit: "cup", name: "cold heavy cream"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "",    name: "lime, zested and juiced")
    ],
    steps: [
        Step(title: "Scoop",  body: "Halve the cherimoyas, scoop the flesh, and flick out every shiny black seed (they're not edible)."),
        Step(title: "Fold",   body: "Whip the cream with honey to soft peaks; fold in the fruit with the lime juice."),
        Step(title: "Chill",  body: "Chill 30 minutes and serve in glasses with lime zest on top.")
    ],
    tips: [
        "Ripe cherimoya gives like a ripe avocado and smells faintly of banana.",
        "The seeds are toxic if crushed — always remove them.",
        "Also outstanding blended with milk over ice, Peruvian style."
    ],
    baseYieldValue: 4, baseYieldUnit: "glasses", baseServings: 4,
    accentColor: .lpCreamy
)

let cherimoyaFruit = Fruit(
    name: "Cherimoya",
    latinName: "Annona cherimola",
    imageName: "fruit-cherimoya",
    eyebrow: "Rooted up",
    pullQuote: "Custard apple is the nickname — vanilla, banana, and pineapple in one spoon.",
    pullQuoteHighlight: "in one spoon.",
    flavors: [
        FlavorTag(label: "Sweet",  color: .lpSweet),
        FlavorTag(label: "Creamy", color: .lpCreamy)
    ],
    snapshot: "A green, scaled fruit from Andean valleys with flesh like chilled custard. Eaten with a spoon; the shiny black seeds are discarded.",
    loveBody: "Cherimoya's texture is the event: dense, silky, and cool, with flavors that drift between banana, pineapple, and vanilla cream. Chill it and dessert is done.",
    loveBullets: [
        "Rich in vitamin B6 and fiber",
        "Custard texture with no dairy involved",
        "Best eaten with nothing but a spoon and patience"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Chill, halve, and spoon — or blend into shakes and creams. Never eat the seeds.",
        lookFor: "Dull green skin that yields to gentle pressure; brown speckling is fine, black patches are not.",
        store: "Ripen at room temperature, then eat within a day or two; refrigerate only once ripe."
    ),
    recipes: [
        RecipeCard(name: "Chilled Cherimoya Cream", imageName: "recipe-cherimoya-cream", meta: "10 min · Easy", recipe: cherimoyaChilled),
        RecipeCard(name: "Cherimoya Smoothie", imageName: "recipe-cherimoya-smoothie", meta: "5 min · Easy", recipe: cherimoyaSmoothie),
        RecipeCard(name: "Cherimoya Citrus Salad", imageName: "recipe-cherimoya-salad", meta: "10 min · Easy", recipe: cherimoyaSalad),
        RecipeCard(name: "Cherimoya Nice Cream", imageName: "recipe-cherimoya-nice-cream", meta: "10 min · Easy", recipe: cherimoyaNiceCream)
    ]
)

let bananaPancakes = Recipe(
    name: "Banana Pancakes",
    eyebrow: "Banana recipe",
    imageName: "recipe-banana-pancakes",
    time: "20 min", level: "Easy", cal: "310",
    lede: "Overripe bananas aren't a problem — they're a head start. The browner the peel, the sweeter the stack.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "very ripe bananas"),
        Ingredient(qty: 2,    unit: "",    name: "eggs"),
        Ingredient(qty: 1,    unit: "cup", name: "flour"),
        Ingredient(qty: 0.75, unit: "cup", name: "milk"),
        Ingredient(qty: 2,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "butter, for the pan")
    ],
    steps: [
        Step(title: "Mash",   body: "Mash the bananas to a rough purée; whisk in eggs and milk."),
        Step(title: "Mix",    body: "Fold in flour, baking powder, cinnamon, and salt — lumps are fine, overmixing is not."),
        Step(title: "Fry",    body: "Cook in butter over medium heat until bubbles pop and hold on top; flip once."),
        Step(title: "Stack",  body: "Serve hot with sliced banana and maple syrup, obviously.")
    ],
    tips: [
        "Freckled-to-brown peels mean maximum sweetness.",
        "Rest the batter 5 minutes for fluffier cakes.",
        "Extra pancakes freeze and toast like a dream."
    ],
    baseYieldValue: 10, baseYieldUnit: "pancakes", baseServings: 4,
    accentColor: .lpCreamy
)

let bananaFruit = Fruit(
    name: "Banana",
    latinName: "Musa acuminata",
    imageName: "fruit-banana",
    eyebrow: "Rooted up",
    pullQuote: "Botanically a berry, practically a meal, reliably in reach.",
    pullQuoteHighlight: "Botanically a berry,",
    flavors: [
        FlavorTag(label: "Sweet",  color: .lpSweet),
        FlavorTag(label: "Creamy", color: .lpCreamy)
    ],
    snapshot: "The world's most-eaten fruit — and botanically a berry from a giant herb, not a tree. It ripens off the plant, converting starch to sugar day by day on your counter.",
    loveBody: "The banana is breakfast, snack, dessert, and baking ingredient in one peel — creamy at every stage, with the ripeness dial entirely in your hands.",
    loveBullets: [
        "Famous potassium source with quick energy",
        "Ripeness is adjustable — starchheads and sugar-lovers both win",
        "Overripe ones are baking gold"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Straight from the peel, sliced over anything, frozen into 'nice cream,' or baked into bread.",
        lookFor: "Buy a mixed-ripeness bunch: yellow-green for the week's end, freckled for right now.",
        store: "Room temperature, away from other fruit (they gas everything ripe); freeze peeled halves for smoothies."
    ),
    recipes: [
        RecipeCard(name: "Banana Pancakes", imageName: "recipe-banana-pancakes", meta: "20 min · Easy", recipe: bananaPancakes),
        RecipeCard(name: "Banana Bread", imageName: "recipe-banana-bread", meta: "1.25 hr · Easy", recipe: bananaBread),
        RecipeCard(name: "Banana Nice Cream", imageName: "recipe-banana-nice-cream", meta: "5 min · Easy", recipe: bananaNiceCream),
        RecipeCard(name: "Caramelized Bananas", imageName: "recipe-bananas-caramelized", meta: "10 min · Easy", recipe: bananasCaramelized)
    ]
)

// MARK: - Creamy catalog

let avocadoToast = Recipe(
    name: "Proper Avocado Toast",
    eyebrow: "Avocado recipe",
    imageName: "recipe-avocado-toast",
    time: "10 min", level: "Easy", cal: "290",
    lede: "The cliché survives because it's correct — fat, salt, acid, and crunch in four minutes flat.",
    ingredients: [
        Ingredient(qty: 1,    unit: "",    name: "ripe avocado"),
        Ingredient(qty: 2,    unit: "",    name: "thick slices sourdough"),
        Ingredient(qty: 0.5,  unit: "",    name: "lime, juiced"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of chili flakes"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt"),
        Ingredient(qty: 1,    unit: "tbsp",name: "olive oil")
    ],
    steps: [
        Step(title: "Toast",  body: "Toast the bread hard — it should crackle."),
        Step(title: "Mash",   body: "Fork the avocado with lime juice and a little salt, leaving texture."),
        Step(title: "Build",  body: "Pile onto the toast; finish with oil, chili flakes, and more salt.")
    ],
    tips: [
        "A ripe avocado yields at the stem end, not just anywhere.",
        "An egg on top is breakfast; shaved radish on top is style.",
        "Store the un-used half with the pit in, pressed in plastic, lime-juiced."
    ],
    baseYieldValue: 2, baseYieldUnit: "toasts", baseServings: 2,
    accentColor: .lpCreamy
)

let avocadoFruit = Fruit(
    name: "Avocado",
    latinName: "Persea americana",
    imageName: "fruit-avocado",
    eyebrow: "Rooted up",
    pullQuote: "The fruit that thinks it's butter — and mostly gets away with it.",
    pullQuoteHighlight: "thinks it's butter",
    flavors: [
        FlavorTag(label: "Creamy", color: .lpCreamy)
    ],
    snapshot: "A savory fruit rich in oil rather than sugar, ripening only after it's picked. Native to Mesoamerica; the Aztec name meant, ahem, something anatomical.",
    loveBody: "Avocado brings what almost no other fruit can — richness. Its buttery flesh carries salt, acid, and spice like a fat does, straight from the peel.",
    loveBullets: [
        "Rich in heart-healthy monounsaturated fat",
        "More potassium per gram than a banana",
        "Savory versatility no sweet fruit can match"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Mash onto toast, cube into salads, blend into dressings, or eat halved with salt and lime.",
        lookFor: "Fruit that yields to gentle pressure; pop the stem button — green underneath is perfect, brown is past.",
        store: "Ripen on the counter, refrigerate once ripe; lime juice and the pit slow browning on cut halves."
    ),
    recipes: [
        RecipeCard(name: "Proper Avocado Toast", imageName: "recipe-avocado-toast", meta: "10 min · Easy", recipe: avocadoToast),
        RecipeCard(name: "Proper Guacamole", imageName: "recipe-guacamole", meta: "10 min · Easy", recipe: guacamole),
        RecipeCard(name: "Avocado Chocolate Mousse", imageName: "recipe-avocado-mousse", meta: "10 min · Easy", recipe: avocadoMousse),
        RecipeCard(name: "Avocado Citrus Salad", imageName: "recipe-avocado-citrus-salad", meta: "15 min · Easy", recipe: avocadoCitrusSalad)
    ]
)

let sapodillaShake = Recipe(
    name: "Sapodilla Shake",
    eyebrow: "Sapodilla recipe",
    imageName: "recipe-sapodilla-shake",
    time: "5 min", level: "Easy", cal: "240",
    lede: "Chikoo milkshake, the South Asian classic — the fruit's brown-sugar flavor means the blender needs almost nothing else.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "ripe sapodillas, peeled and seeded"),
        Ingredient(qty: 1.5,  unit: "cup", name: "cold milk"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey (optional)"),
        Ingredient(qty: 0.25, unit: "tsp", name: "ground cardamom"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Prep",   body: "Halve the fruit and remove every glossy black seed — they have a hook on one end."),
        Step(title: "Blend",  body: "Blend flesh, milk, cardamom, and ice until frothy. Taste before adding honey; ripe chikoo rarely needs it."),
        Step(title: "Serve",  body: "Pour over ice. Malty, caramel-y, and somehow both rich and refreshing.")
    ],
    tips: [
        "Ripe sapodilla is soft with matte, kiwi-brown skin.",
        "A scoop of vanilla ice cream turns it into a dessert float.",
        "Never eat one firm — unripe sapodilla is all tannin and regret."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpCreamy
)

let sapodillaFruit = Fruit(
    name: "Sapodilla",
    latinName: "Manilkara zapota",
    imageName: "fruit-sapodilla",
    eyebrow: "Rooted up",
    pullQuote: "A pear soaked in brown sugar — and the tree once gave us chewing gum.",
    pullQuoteHighlight: "soaked in brown sugar",
    flavors: [
        FlavorTag(label: "Creamy", color: .lpCreamy),
        FlavorTag(label: "Sweet",  color: .lpSweet)
    ],
    snapshot: "A rough brown tropical fruit — chikoo in South Asia — with grainy, malty-sweet flesh. Its tree's latex, chicle, was the original base of chewing gum.",
    loveBody: "Sapodilla tastes like a pear that studied caramel: brown sugar, malt, and a pear-like grain. It's dessert-level sweet straight off the tree.",
    loveBullets: [
        "Naturally tastes of brown sugar and malt",
        "Good source of fiber and vitamin C",
        "The chewing-gum tree — chicle came from its sap"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Halve and spoon when fully soft, blend into shakes, or chill and slice over ice cream.",
        lookFor: "Fruit that yields like a ripe kiwi; scratch the skin — green underneath means wait, tan means eat.",
        store: "Ripen at room temperature (a few days), then refrigerate up to three more."
    ),
    recipes: [
        RecipeCard(name: "Sapodilla Shake", imageName: "recipe-sapodilla-shake", meta: "5 min · Easy", recipe: sapodillaShake),
        RecipeCard(name: "Chikoo Halwa", imageName: "recipe-sapodilla-halwa", meta: "40 min · Medium", recipe: sapodillaHalwa),
        RecipeCard(name: "Chikoo Chaat Cups", imageName: "recipe-sapodilla-chaat", meta: "10 min · Easy", recipe: sapodillaFruitCups),
        RecipeCard(name: "Chikoo Ice Cream", imageName: "recipe-sapodilla-ice-cream", meta: "20 min · Medium", recipe: sapodillaIceCream)
    ]
)

let mameyBatido = Recipe(
    name: "Mamey Batido",
    eyebrow: "Mamey recipe",
    imageName: "recipe-mamey-batido",
    time: "5 min", level: "Easy", cal: "260",
    lede: "The Cuban milkshake that tastes like pumpkin pie met an apricot — no spices required, that's just the fruit.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "ripe mamey flesh"),
        Ingredient(qty: 1.5,  unit: "cup", name: "cold milk"),
        Ingredient(qty: 2,    unit: "tbsp",name: "sweetened condensed milk"),
        Ingredient(qty: 1,    unit: "cup", name: "ice"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "vanilla extract")
    ],
    steps: [
        Step(title: "Scoop",  body: "Halve the mamey, lift out the glossy seed, and scoop the salmon-colored flesh."),
        Step(title: "Blend",  body: "Blend everything until completely smooth and milkshake-thick."),
        Step(title: "Serve",  body: "Pour tall over ice. Drink slowly; it drinks like dessert.")
    ],
    tips: [
        "Frozen mamey pulp from Latin groceries works perfectly.",
        "Condensed milk is traditional — honey works if you must.",
        "A squeeze of lime tightens the sweetness beautifully."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpCreamy
)

let mameyFruit = Fruit(
    name: "Mamey",
    latinName: "Pouteria sapota",
    imageName: "fruit-mamey",
    eyebrow: "Rooted up",
    pullQuote: "Pumpkin pie filling that grew on a tree and skipped the oven.",
    pullQuoteHighlight: "skipped the oven.",
    flavors: [
        FlavorTag(label: "Creamy", color: .lpCreamy),
        FlavorTag(label: "Sweet",  color: .lpSweet)
    ],
    snapshot: "A football-shaped fruit with sandpaper-brown skin and dense salmon-pink flesh around one glossy seed. Beloved from Mexico to Cuba, mostly drunk as batidos.",
    loveBody: "Mamey's flavor is a genuine surprise — sweet potato, pumpkin spice, apricot, and almond, delivered in a texture like frozen custard left out for ten minutes.",
    loveBullets: [
        "Rich in carotenoids — that color is nutrition",
        "Dense, creamy flesh built for blending",
        "A flavor with no real substitute"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Blend into batidos, spoon chilled from the shell, or fold into ice cream bases.",
        lookFor: "Scratch the skin: salmon-pink underneath means ripe or nearly; green means leave it be.",
        store: "Ripen at room temperature until it gives like an avocado, then refrigerate up to three days."
    ),
    recipes: [
        RecipeCard(name: "Mamey Batido", imageName: "recipe-mamey-batido", meta: "5 min · Easy", recipe: mameyBatido),
        RecipeCard(name: "Mamey Ice Cream", imageName: "recipe-mamey-ice-cream", meta: "20 min · Medium", recipe: mameyIceCream),
        RecipeCard(name: "Mamey Smoothie Bowl", imageName: "recipe-mamey-bowl", meta: "10 min · Easy", recipe: mameySmoothieBowl),
        RecipeCard(name: "Mamey Flan", imageName: "recipe-mamey-flan", meta: "1.25 hr · Medium", recipe: mameyFlan)
    ]
)

let soursopJuice = Recipe(
    name: "Soursop Juice",
    eyebrow: "Soursop recipe",
    imageName: "recipe-soursop-juice",
    time: "15 min", level: "Easy", cal: "130",
    lede: "Caribbean corner-store nectar — creamy, tangy, and tasting of strawberry, citrus, and something entirely its own.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "soursop pulp, seeds removed"),
        Ingredient(qty: 2,    unit: "cup", name: "cold water or milk"),
        Ingredient(qty: 3,    unit: "tbsp",name: "sugar or condensed milk"),
        Ingredient(qty: 1,    unit: "tsp", name: "lime juice"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "vanilla or a grating of nutmeg")
    ],
    steps: [
        Step(title: "Seed",   body: "Work through the pulp and pull out every black seed — there are many; enlist thumbs."),
        Step(title: "Blend",  body: "Blend the pulp with water or milk, then strain for silk or leave it rustic."),
        Step(title: "Sweeten",body: "Stir in sugar, lime, and vanilla or nutmeg. Chill hard before serving over ice.")
    ],
    tips: [
        "Milk makes it a creamy punch; water keeps it a bright nectar.",
        "Frozen soursop pulp is sold in most Caribbean and Asian groceries.",
        "The seeds are not edible — always remove them."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCreamy
)

let soursopFruit = Fruit(
    name: "Soursop",
    latinName: "Annona muricata",
    imageName: "fruit-soursop",
    eyebrow: "Rooted up",
    pullQuote: "Strawberry, pineapple, and cream negotiating inside a spiky green shell.",
    pullQuoteHighlight: "inside a spiky green shell.",
    flavors: [
        FlavorTag(label: "Creamy",   color: .lpCreamy),
        FlavorTag(label: "Tropical", color: .lpTropical)
    ],
    snapshot: "Cherimoya's bigger, tangier cousin — a soft-spined green fruit whose cottony white pulp tears into juicy segments around shiny black seeds.",
    loveBody: "Soursop is creamy and sour, custard with a citrus streak running through it. Across the Caribbean and Southeast Asia it's the juice, the ice cream, and the afternoon.",
    loveBullets: [
        "High in vitamin C",
        "Creamy texture with genuine tang — rare combination",
        "The base of beloved juices and ice creams worldwide"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Tear open when soft and eat the segments (spit the seeds), or blend into juice and sorbet.",
        lookFor: "Dull green skin with soft, bendable spines and a little give — hard, glossy fruit needs days.",
        store: "Ripens fast at room temperature; refrigerate ripe fruit and use within two days."
    ),
    recipes: [
        RecipeCard(name: "Soursop Juice", imageName: "recipe-soursop-juice", meta: "15 min · Easy", recipe: soursopJuice),
        RecipeCard(name: "Soursop Smoothie", imageName: "recipe-soursop-smoothie", meta: "10 min · Easy", recipe: soursopSmoothie),
        RecipeCard(name: "Soursop Sorbet", imageName: "recipe-soursop-sorbet", meta: "15 min · Easy", recipe: soursopSorbet),
        RecipeCard(name: "Soursop Punch", imageName: "recipe-soursop-punch", meta: "15 min · Easy", recipe: soursopPunch)
    ]
)

// MARK: - Additional recipes (Sweet)

let figsRoasted = Recipe(
    name: "Honey-Roasted Figs",
    eyebrow: "Fig recipe",
    imageName: "recipe-figs-roasted",
    time: "20 min", level: "Easy", cal: "160",
    lede: "Ten minutes of heat and figs go from pretty to devastating — jammy inside, caramel at the cut.",
    ingredients: [
        Ingredient(qty: 8,    unit: "",    name: "ripe figs, halved"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "tbsp",name: "butter, melted"),
        Ingredient(qty: 1,    unit: "tsp", name: "fresh thyme leaves"),
        Ingredient(qty: 0.5,  unit: "cup", name: "mascarpone or Greek yogurt")
    ],
    steps: [
        Step(title: "Glaze", body: "Arrange figs cut-side up; brush with butter and half the honey."),
        Step(title: "Roast", body: "425°F for 10–12 minutes until bubbling at the edges."),
        Step(title: "Serve", body: "Spoon over mascarpone, drizzle remaining honey, scatter thyme.")
    ],
    tips: [
        "Underripe figs improve most from roasting.",
        "Balsamic instead of honey flips it savory for cheese boards.",
        "Toasted pistachios on top earn their place."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweet
)

let figJam = Recipe(
    name: "Fig Jam",
    eyebrow: "Fig recipe",
    imageName: "recipe-fig-jam",
    time: "45 min", level: "Easy", cal: "50",
    lede: "Figs practically jam themselves — low pectin, high sugar, all patience.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "ripe figs, chopped"),
        Ingredient(qty: 1,    unit: "cup", name: "sugar"),
        Ingredient(qty: 0.25, unit: "cup", name: "lemon juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla or a rosemary sprig")
    ],
    steps: [
        Step(title: "Macerate", body: "Toss figs and sugar; rest 30 minutes until glossy and juicing."),
        Step(title: "Simmer",   body: "Cook with lemon juice over medium, mashing as you go, 25–30 minutes until thick."),
        Step(title: "Jar",      body: "Stir in vanilla, jar it, and hide it from yourself.")
    ],
    tips: [
        "A wide pan halves the cooking time.",
        "Black mission figs make the darkest, richest jam.",
        "Grilled cheese with fig jam is the correct lunch."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 20,
    accentColor: .lpSweet
)

let figSalad = Recipe(
    name: "Fig & Arugula Salad",
    eyebrow: "Fig recipe",
    imageName: "recipe-fig-salad",
    time: "10 min", level: "Easy", cal: "240",
    lede: "Sweet figs, peppery leaves, salty cheese — a three-way standoff where everyone wins.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "figs, quartered"),
        Ingredient(qty: 4,    unit: "cup", name: "arugula"),
        Ingredient(qty: 0.33, unit: "cup", name: "shaved parmesan or crumbled goat cheese"),
        Ingredient(qty: 0.25, unit: "cup", name: "toasted walnuts"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "balsamic vinegar")
    ],
    steps: [
        Step(title: "Dress",   body: "Whisk oil, balsamic, salt, and pepper in the bottom of the bowl."),
        Step(title: "Toss",    body: "Add arugula and toss lightly; figs go on top so they stay whole."),
        Step(title: "Finish",  body: "Scatter cheese and walnuts; serve immediately.")
    ],
    tips: [
        "A drizzle of honey if your figs are shy.",
        "Prosciutto ribbons turn it into dinner.",
        "Use the ripest figs for the centers, firmer ones for the edges."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweet
)

let datesStuffed = Recipe(
    name: "Stuffed Dates",
    eyebrow: "Date recipe",
    imageName: "recipe-dates-stuffed",
    time: "15 min", level: "Easy", cal: "110",
    lede: "Nature's caramel, split and loaded — the appetizer that disappears before the tray lands.",
    ingredients: [
        Ingredient(qty: 16,   unit: "",    name: "Medjool dates, pitted"),
        Ingredient(qty: 0.5,  unit: "cup", name: "soft goat cheese or almond butter"),
        Ingredient(qty: 16,   unit: "",    name: "toasted almonds or walnut halves"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of flaky salt")
    ],
    steps: [
        Step(title: "Split", body: "Slit each date along one side and open like a tiny book."),
        Step(title: "Fill",  body: "Pipe or spoon in the cheese; press a nut on top."),
        Step(title: "Finish",body: "Drizzle honey, hit with flaky salt, serve at room temperature.")
    ],
    tips: [
        "Warm them 5 minutes in a 350°F oven and the centers go molten.",
        "Orange zest in the goat cheese is a quiet showstopper.",
        "Sweet version: almond butter + dark chocolate drizzle."
    ],
    baseYieldValue: 16, baseYieldUnit: "dates", baseServings: 8,
    accentColor: .lpSweet
)

let dateEnergyBalls = Recipe(
    name: "Date Energy Balls",
    eyebrow: "Date recipe",
    imageName: "recipe-date-balls",
    time: "15 min", level: "Easy", cal: "130",
    lede: "Dates are the glue and the sugar — everything else is just along for the ride.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "pitted dates"),
        Ingredient(qty: 1,    unit: "cup", name: "rolled oats"),
        Ingredient(qty: 0.5,  unit: "cup", name: "almonds or walnuts"),
        Ingredient(qty: 2,    unit: "tbsp",name: "cocoa powder"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "shredded coconut, for rolling")
    ],
    steps: [
        Step(title: "Process", body: "Blitz everything but the coconut until the mixture clumps when pinched."),
        Step(title: "Roll",    body: "Roll into golf-ball spheres; coat in coconut."),
        Step(title: "Chill",   body: "Thirty minutes in the fridge to set. Done.")
    ],
    tips: [
        "Dates too dry? Soak in warm water 10 minutes first.",
        "Keeps two weeks refrigerated, months frozen.",
        "Swap cocoa for cinnamon for a snickerdoodle mood."
    ],
    baseYieldValue: 14, baseYieldUnit: "balls", baseServings: 14,
    accentColor: .lpSweet
)

let datePorridge = Recipe(
    name: "Sticky Date Porridge",
    eyebrow: "Date recipe",
    imageName: "recipe-date-porridge",
    time: "15 min", level: "Easy", cal: "310",
    lede: "Sticky toffee pudding sneaks into breakfast — dates melt into the oats and call it health food.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "rolled oats"),
        Ingredient(qty: 2,    unit: "cup", name: "milk"),
        Ingredient(qty: 6,    unit: "",    name: "dates, chopped"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "cream or butter, to finish")
    ],
    steps: [
        Step(title: "Simmer", body: "Cook oats, milk, half the dates, cinnamon, and salt over medium-low, stirring, 8–10 minutes."),
        Step(title: "Melt",   body: "The dates dissolve into toffee streaks — that's the point."),
        Step(title: "Top",    body: "Finish with remaining dates and a swirl of cream.")
    ],
    tips: [
        "Medjools melt fastest; harder dates want a rough chop.",
        "A spoon of tahini on top is outrageous in the best way.",
        "Leftovers set into sliceable oat cake — pan-fry in butter."
    ],
    baseYieldValue: 2, baseYieldUnit: "bowls", baseServings: 2,
    accentColor: .lpSweet
)

let persimmonSalsa = Recipe(
    name: "Persimmon Salsa",
    eyebrow: "Persimmon recipe",
    imageName: "recipe-persimmon-salsa",
    time: "10 min", level: "Easy", cal: "50",
    lede: "Crisp Fuyu cubes stand in for tomato and bring their own honey — fall's answer to pico de gallo.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "Fuyu persimmon, diced"),
        Ingredient(qty: 0.25, unit: "cup", name: "red onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, minced"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.25, unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Dice", body: "Firm Fuyus only — they cube like an apple."),
        Step(title: "Toss", body: "Combine everything; taste for lime and salt."),
        Step(title: "Rest", body: "Ten minutes so the onion calms down, then serve.")
    ],
    tips: [
        "Brilliant on seared salmon, pork chops, or plain chips.",
        "Add pomegranate seeds for jewel-box effect.",
        "Skip Hachiya persimmons here — they're for baking."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweet
)

let persimmonBread = Recipe(
    name: "Persimmon Spice Bread",
    eyebrow: "Persimmon recipe",
    imageName: "recipe-persimmon-bread",
    time: "1.25 hr", level: "Medium", cal: "300",
    lede: "Hachiya pulp bakes like pumpkin with a honeyed accent — dark, moist, and built for cold mornings.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "very ripe Hachiya pulp"),
        Ingredient(qty: 2,    unit: "",    name: "eggs"),
        Ingredient(qty: 0.5,  unit: "cup", name: "melted butter"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar"),
        Ingredient(qty: 1.75, unit: "cup", name: "flour"),
        Ingredient(qty: 1,    unit: "tsp", name: "baking soda"),
        Ingredient(qty: 1.5,  unit: "tsp", name: "cinnamon + nutmeg"),
        Ingredient(qty: 0.5,  unit: "cup", name: "toasted walnuts")
    ],
    steps: [
        Step(title: "Whisk", body: "Beat pulp, eggs, butter, and sugar until smooth."),
        Step(title: "Fold",  body: "Add dry ingredients and walnuts; mix only until combined."),
        Step(title: "Bake",  body: "350°F in a loaf pan for 55–60 minutes; tent if browning fast.")
    ],
    tips: [
        "The persimmon must be jelly-soft — squeamishly so.",
        "Even better on day two, wrapped overnight.",
        "Freeze extra pulp flat for off-season loaves."
    ],
    baseYieldValue: 1, baseYieldUnit: "loaf", baseServings: 10,
    accentColor: .lpSweet
)

let persimmonSmoothie = Recipe(
    name: "Persimmon Smoothie",
    eyebrow: "Persimmon recipe",
    imageName: "recipe-persimmon-smoothie",
    time: "5 min", level: "Easy", cal: "200",
    lede: "Ripe persimmon blends like custard — this smoothie is dessert wearing a gym membership.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "ripe Fuyu persimmons, chopped"),
        Ingredient(qty: 1,    unit: "cup", name: "milk of choice"),
        Ingredient(qty: 0.5,  unit: "",    name: "frozen banana"),
        Ingredient(qty: 0.25, unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey, optional"),
        Ingredient(qty: 4,    unit: "",    name: "ice cubes")
    ],
    steps: [
        Step(title: "Blend",  body: "Everything until completely smooth and orange-gold."),
        Step(title: "Taste",  body: "Ripe fruit rarely needs the honey — check first."),
        Step(title: "Serve",  body: "Dust with cinnamon and drink while it's frosty.")
    ],
    tips: [
        "A knob of fresh ginger wakes the whole thing up.",
        "Swap milk for kefir for a tangy version.",
        "Overripe persimmons freeze well for smoothie stock."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpSweet
)

let cherimoyaSmoothie = Recipe(
    name: "Cherimoya Smoothie",
    eyebrow: "Cherimoya recipe",
    imageName: "recipe-cherimoya-smoothie",
    time: "5 min", level: "Easy", cal: "210",
    lede: "The custard apple hardly needs help becoming a milkshake — lime keeps it from getting too comfortable.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "cherimoya flesh, seeded"),
        Ingredient(qty: 1,    unit: "cup", name: "cold milk or coconut milk"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey, optional"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Seed",  body: "Spoon out the flesh and evict every black seed — they're not edible."),
        Step(title: "Blend", body: "Blend with milk, lime, and honey until silky."),
        Step(title: "Ice",   body: "Add ice, pulse, and pour.")
    ],
    tips: [
        "Banana-vanilla notes love a drop of real vanilla.",
        "Chill the fruit first; warmth dulls its perfume.",
        "Coconut milk version tastes like a beach."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpSweet
)

let cherimoyaSalad = Recipe(
    name: "Cherimoya Citrus Salad",
    eyebrow: "Cherimoya recipe",
    imageName: "recipe-cherimoya-salad",
    time: "10 min", level: "Easy", cal: "130",
    lede: "Custard-soft cherimoya against sharp citrus — a fruit salad with dramatic range.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "cherimoya, seeded and cubed"),
        Ingredient(qty: 1,    unit: "",    name: "orange, segmented"),
        Ingredient(qty: 1,    unit: "",    name: "kiwi, sliced"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 6,    unit: "",    name: "mint leaves, torn")
    ],
    steps: [
        Step(title: "Cube",    body: "Work gently — ripe cherimoya bruises under a hard stare."),
        Step(title: "Combine", body: "Fold fruit with lime and honey."),
        Step(title: "Serve",   body: "Cold, with mint scattered at the end.")
    ],
    tips: [
        "Serve in the cherimoya's own scooped skin halves.",
        "A pinch of chili powder plays beautifully against the custard.",
        "Eat the day you make it; cherimoya browns overnight."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweet
)

let cherimoyaNiceCream = Recipe(
    name: "Cherimoya Nice Cream",
    eyebrow: "Cherimoya recipe",
    imageName: "recipe-cherimoya-nice-cream",
    time: "10 min", level: "Easy", cal: "170",
    lede: "Freeze the custard apple, blend, and skip the ice cream machine it clearly never needed.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "cherimoya flesh, seeded and frozen"),
        Ingredient(qty: 0.33, unit: "cup", name: "coconut milk"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "tbsp",name: "maple syrup, optional")
    ],
    steps: [
        Step(title: "Freeze", body: "Freeze seeded chunks solid on a tray, at least 4 hours."),
        Step(title: "Blend",  body: "Process with coconut milk and lime, scraping down, until soft-serve smooth."),
        Step(title: "Scoop",  body: "Serve immediately or firm up 30 minutes in the freezer.")
    ],
    tips: [
        "Double-check for seeds before freezing — blenders don't forgive.",
        "Toasted coconut flakes are the right crunch.",
        "It refreezes surprisingly well in a shallow pan."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweet
)

let grapesRoasted = Recipe(
    name: "Roasted Grapes & Ricotta Toast",
    eyebrow: "Sweet Grape recipe",
    imageName: "recipe-grapes-roasted",
    time: "25 min", level: "Easy", cal: "280",
    lede: "Heat concentrates grapes into jammy little bombs — ricotta toast is just the landing pad.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "red grapes, on small clusters"),
        Ingredient(qty: 1,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tsp", name: "fresh thyme"),
        Ingredient(qty: 4,    unit: "",    name: "thick toast slices"),
        Ingredient(qty: 1,    unit: "cup", name: "ricotta"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey")
    ],
    steps: [
        Step(title: "Roast",  body: "Toss grapes with oil, thyme, and salt; roast at 425°F for 15–18 minutes until blistered."),
        Step(title: "Spread", body: "Swoosh ricotta generously over hot toast."),
        Step(title: "Pile",   body: "Top with grapes, their pan juices, and a thread of honey.")
    ],
    tips: [
        "Concord grapes turn almost wine-like in the oven.",
        "The pan juices are the sauce — scrape every drop.",
        "Also great over polenta or alongside roast chicken."
    ],
    baseYieldValue: 4, baseYieldUnit: "toasts", baseServings: 4,
    accentColor: .lpSweet
)

let grapeGranita = Recipe(
    name: "Grape Granita",
    eyebrow: "Sweet Grape recipe",
    imageName: "recipe-grape-granita",
    time: "15 min", level: "Easy", cal: "90",
    lede: "Grapes, lime, a freezer, and a fork — shave-ice sophistication with zero equipment.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "sweet grapes"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Blend",  body: "Purée everything; strain if your grapes have seeds or thick skins."),
        Step(title: "Freeze", body: "Pour into a shallow pan; freeze, scraping with a fork every 45 minutes, 3–4 times."),
        Step(title: "Fluff",  body: "Rake into glittering crystals and serve in chilled glasses.")
    ],
    tips: [
        "Concord grapes make it taste like frozen grape jelly, gloriously.",
        "Keeps a week covered — re-fluff before serving.",
        "A few frozen grapes on top double the theme."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweet
)

let grapeChickenSalad = Recipe(
    name: "Chicken & Grape Salad",
    eyebrow: "Sweet Grape recipe",
    imageName: "recipe-grape-chicken-salad",
    time: "15 min", level: "Easy", cal: "320",
    lede: "The deli classic where grapes carry the whole operation — sweet pops against tarragon and crunch.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "cooked chicken, shredded"),
        Ingredient(qty: 1.5,  unit: "cup", name: "grapes, halved"),
        Ingredient(qty: 0.5,  unit: "cup", name: "celery, diced"),
        Ingredient(qty: 0.33, unit: "cup", name: "toasted almonds, sliced"),
        Ingredient(qty: 0.5,  unit: "cup", name: "Greek yogurt"),
        Ingredient(qty: 2,    unit: "tbsp",name: "mayonnaise"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice"),
        Ingredient(qty: 1,    unit: "tsp", name: "chopped tarragon")
    ],
    steps: [
        Step(title: "Dress", body: "Whisk yogurt, mayo, lemon, tarragon, salt, and pepper."),
        Step(title: "Fold",  body: "Combine chicken, grapes, celery, and dressing."),
        Step(title: "Serve", body: "Scatter almonds; pile onto croissants or lettuce cups.")
    ],
    tips: [
        "Rotisserie chicken makes this a 10-minute dinner.",
        "Halve the grapes — whole ones roll off the sandwich.",
        "Better after an hour in the fridge."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweet
)

let bananaBread = Recipe(
    name: "Banana Bread",
    eyebrow: "Banana recipe",
    imageName: "recipe-banana-bread",
    time: "1.25 hr", level: "Easy", cal: "290",
    lede: "The blacker the peel, the better the loaf — the whole point is bananas past their pride.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "very ripe bananas, mashed"),
        Ingredient(qty: 0.5,  unit: "cup", name: "melted butter"),
        Ingredient(qty: 0.67, unit: "cup", name: "brown sugar"),
        Ingredient(qty: 1,    unit: "",    name: "egg"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1.5,  unit: "cup", name: "flour"),
        Ingredient(qty: 1,    unit: "tsp", name: "baking soda"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Mash",  body: "Mash bananas into the melted butter; beat in sugar, egg, and vanilla."),
        Step(title: "Fold",  body: "Add flour, soda, and salt; stir until the flour just disappears."),
        Step(title: "Bake",  body: "350°F in a loaf pan, 55–60 minutes, until a skewer comes out clean.")
    ],
    tips: [
        "Freeze black bananas in their peels for loaf emergencies.",
        "Chocolate chips or walnuts — pick a side, or don't.",
        "Toasted slices with salted butter: breakfast solved."
    ],
    baseYieldValue: 1, baseYieldUnit: "loaf", baseServings: 10,
    accentColor: .lpSweet
)

let bananaNiceCream = Recipe(
    name: "Banana Nice Cream",
    eyebrow: "Banana recipe",
    imageName: "recipe-banana-nice-cream",
    time: "5 min", level: "Easy", cal: "150",
    lede: "One ingredient, one blender, one small miracle — frozen bananas whip into soft-serve on their own.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "ripe bananas, sliced and frozen"),
        Ingredient(qty: 2,    unit: "tbsp",name: "milk, if needed"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Blend",   body: "Process frozen banana, scraping down often — it goes gravel, then paste, then magic."),
        Step(title: "Loosen",  body: "Add milk a spoonful at a time only if the blender stalls."),
        Step(title: "Serve",   body: "Soft-serve now, or freeze 30 minutes for scoopable.")
    ],
    tips: [
        "Peanut butter and cocoa are the classic mix-ins.",
        "Speckled-ripe bananas before freezing = sweetest result.",
        "A food processor beats a blender for this job."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 3,
    accentColor: .lpSweet
)

let bananasCaramelized = Recipe(
    name: "Caramelized Bananas",
    eyebrow: "Banana recipe",
    imageName: "recipe-bananas-caramelized",
    time: "10 min", level: "Easy", cal: "220",
    lede: "Butter, brown sugar, three minutes a side — bananas leave the fruit bowl and join dessert.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "firm-ripe bananas, halved lengthwise"),
        Ingredient(qty: 3,    unit: "tbsp",name: "butter"),
        Ingredient(qty: 3,    unit: "tbsp",name: "brown sugar"),
        Ingredient(qty: 0.25, unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 1,    unit: "",    name: "squeeze of lime")
    ],
    steps: [
        Step(title: "Melt",  body: "Melt butter and sugar in a skillet until bubbling."),
        Step(title: "Sear",  body: "Lay bananas cut-side down; cook undisturbed 2–3 minutes until deeply bronzed, flip for one more."),
        Step(title: "Finish",body: "Cinnamon, lime, and straight onto ice cream, pancakes, or yogurt.")
    ],
    tips: [
        "Firm bananas hold; mushy ones dissolve — choose wisely.",
        "A splash of cream in the pan makes instant caramel sauce.",
        "Coconut oil instead of butter leans tropical."
    ],
    baseYieldValue: 6, baseYieldUnit: "halves", baseServings: 3,
    accentColor: .lpSweet
)

// MARK: - Additional recipes (Creamy)

let guacamole = Recipe(
    name: "Proper Guacamole",
    eyebrow: "Avocado recipe",
    imageName: "recipe-guacamole",
    time: "10 min", level: "Easy", cal: "160",
    lede: "Restraint is the recipe — ripe avocados, lime, salt, and nothing that needs a committee.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "ripe avocados"),
        Ingredient(qty: 0.25, unit: "cup", name: "white onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "serrano chili, minced"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.25, unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 0.75, unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Mash",  body: "Fork the avocados to chunky, not smooth — texture is the argument."),
        Step(title: "Fold",  body: "Add onion, chili, lime, cilantro, and salt; fold, don't stir."),
        Step(title: "Taste", body: "Adjust lime and salt until it tastes louder than the chips.")
    ],
    tips: [
        "Tomato is a garnish, not a member.",
        "Press plastic wrap onto the surface to slow browning.",
        "The pit-in-the-bowl trick does nothing; lime does everything."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpCreamy
)

let avocadoMousse = Recipe(
    name: "Avocado Chocolate Mousse",
    eyebrow: "Avocado recipe",
    imageName: "recipe-avocado-mousse",
    time: "10 min", level: "Easy", cal: "240",
    lede: "The avocado disappears entirely, leaving only silk — dessert espionage at its finest.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "ripe avocados"),
        Ingredient(qty: 0.33, unit: "cup", name: "cocoa powder"),
        Ingredient(qty: 0.33, unit: "cup", name: "maple syrup"),
        Ingredient(qty: 0.25, unit: "cup", name: "milk of choice"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Blend", body: "Process everything until absolutely smooth — scrape twice, blend again."),
        Step(title: "Taste", body: "More cocoa for darkness, more maple for mercy."),
        Step(title: "Chill", body: "One hour minimum; it thickens into true mousse.")
    ],
    tips: [
        "Perfectly ripe avocados or the game is lost.",
        "Top with raspberries — acidity completes it.",
        "Nobody guesses. Tell them after."
    ],
    baseYieldValue: 2, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCreamy
)

let avocadoCitrusSalad = Recipe(
    name: "Avocado Citrus Salad",
    eyebrow: "Avocado recipe",
    imageName: "recipe-avocado-citrus-salad",
    time: "15 min", level: "Easy", cal: "260",
    lede: "Butter versus brightness — avocado slabs and citrus segments trading punches over greens.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "avocados, thick slices"),
        Ingredient(qty: 2,    unit: "",    name: "oranges or grapefruit, segmented"),
        Ingredient(qty: 4,    unit: "cup", name: "butter lettuce or arugula"),
        Ingredient(qty: 0.25, unit: "cup", name: "thin red onion"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "citrus juice (from segmenting)"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey")
    ],
    steps: [
        Step(title: "Dress",   body: "Whisk oil, reserved citrus juice, honey, salt, and pepper."),
        Step(title: "Arrange", body: "Greens down, then alternating avocado and citrus, onion over top."),
        Step(title: "Finish",  body: "Spoon dressing over; flaky salt on the avocado.")
    ],
    tips: [
        "Segment citrus over a bowl — the juice is your dressing base.",
        "Toasted pistachios or pepitas for crunch.",
        "Assemble, don't toss; avocado hates being tossed."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCreamy
)

let sapodillaHalwa = Recipe(
    name: "Chikoo Halwa",
    eyebrow: "Sapodilla recipe",
    imageName: "recipe-sapodilla-halwa",
    time: "40 min", level: "Medium", cal: "310",
    lede: "Sapodilla's brown-sugar soul, slow-cooked with ghee and cardamom into a fudgy Indian sweet.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "ripe sapodilla pulp, seeded"),
        Ingredient(qty: 3,    unit: "tbsp",name: "ghee"),
        Ingredient(qty: 0.5,  unit: "cup", name: "milk"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "ground cardamom"),
        Ingredient(qty: 2,    unit: "tbsp",name: "chopped pistachios")
    ],
    steps: [
        Step(title: "Sauté",  body: "Cook the pulp in ghee over medium, stirring, 10 minutes until it darkens."),
        Step(title: "Reduce", body: "Add milk and sugar; keep stirring 15–20 minutes until it pulls from the pan sides."),
        Step(title: "Finish", body: "Cardamom in, pistachios on top, serve warm.")
    ],
    tips: [
        "Fully ripe, squishy chikoos only — underripe ones are tannic.",
        "It firms as it cools; press into a pan and slice like fudge.",
        "A saffron thread in the milk is festive."
    ],
    baseYieldValue: 2.5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpCreamy
)

let sapodillaFruitCups = Recipe(
    name: "Chikoo Chaat Cups",
    eyebrow: "Sapodilla recipe",
    imageName: "recipe-sapodilla-chaat",
    time: "10 min", level: "Easy", cal: "120",
    lede: "Malty-sweet sapodilla with lime and chaat masala — the street-snack treatment it deserves.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "sapodilla, peeled and cubed"),
        Ingredient(qty: 1,    unit: "cup", name: "pomegranate seeds"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "chaat masala"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of chili powder"),
        Ingredient(qty: 6,    unit: "",    name: "mint leaves")
    ],
    steps: [
        Step(title: "Cube",   body: "Peel, halve, seed, and cube the sapodillas."),
        Step(title: "Season", body: "Toss with lime, chaat masala, and chili."),
        Step(title: "Layer",  body: "Spoon into cups with pomegranate; top with mint.")
    ],
    tips: [
        "Chaat masala's sour funk against the malt is the whole show.",
        "Serve chilled — sapodilla goes flat at room temperature.",
        "Add banana and orange for a full Indian fruit chaat."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCreamy
)

let sapodillaIceCream = Recipe(
    name: "Chikoo Ice Cream",
    eyebrow: "Sapodilla recipe",
    imageName: "recipe-sapodilla-ice-cream",
    time: "20 min", level: "Medium", cal: "260",
    lede: "No churn, no custard — condensed milk and whipped cream carry sapodilla's caramel straight to the freezer.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "ripe sapodilla pulp"),
        Ingredient(qty: 1,    unit: "cup", name: "heavy cream, cold"),
        Ingredient(qty: 0.67, unit: "cup", name: "condensed milk"),
        Ingredient(qty: 1,    unit: "tsp", name: "lime juice"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Purée", body: "Blend pulp with condensed milk, lime, and salt."),
        Step(title: "Whip",  body: "Whip cream to soft peaks; fold in the purée in two additions."),
        Step(title: "Freeze",body: "Cover and freeze 6 hours. Scoop like you made an effort.")
    ],
    tips: [
        "Fold gently — the air is the machine.",
        "Swirl in the halwa (previous recipe) for chikoo inception.",
        "Keeps two weeks, theoretically."
    ],
    baseYieldValue: 1, baseYieldUnit: "quart", baseServings: 8,
    accentColor: .lpCreamy
)

let mameyIceCream = Recipe(
    name: "Mamey Ice Cream",
    eyebrow: "Mamey recipe",
    imageName: "recipe-mamey-ice-cream",
    time: "20 min", level: "Medium", cal: "270",
    lede: "Mamey already tastes like pumpkin pie met an apricot — freezing it just makes it official.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "mamey pulp"),
        Ingredient(qty: 1,    unit: "cup", name: "heavy cream, cold"),
        Ingredient(qty: 0.67, unit: "cup", name: "condensed milk"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice")
    ],
    steps: [
        Step(title: "Purée", body: "Blend mamey with condensed milk, vanilla, and lime until velvet."),
        Step(title: "Fold",  body: "Whip the cream to soft peaks and fold in the purée."),
        Step(title: "Freeze",body: "Six hours covered. The color alone is worth it.")
    ],
    tips: [
        "Ripe mamey gives to a thumb like an avocado.",
        "A cinnamon pinch deepens the pie impression.",
        "Frozen mamey pulp from Latin groceries works perfectly."
    ],
    baseYieldValue: 1, baseYieldUnit: "quart", baseServings: 8,
    accentColor: .lpCreamy
)

let mameySmoothieBowl = Recipe(
    name: "Mamey Smoothie Bowl",
    eyebrow: "Mamey recipe",
    imageName: "recipe-mamey-bowl",
    time: "10 min", level: "Easy", cal: "290",
    lede: "Salmon-pink, sweet-potato-creamy, and thick enough to hold its toppings like trophies.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "frozen mamey chunks"),
        Ingredient(qty: 0.5,  unit: "",    name: "frozen banana"),
        Ingredient(qty: 0.5,  unit: "cup", name: "milk of choice"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey"),
        Ingredient(qty: 0.25, unit: "cup", name: "granola + coconut flakes, to top")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend fruit with milk, adding splashes only as needed — spoon-thick is the goal."),
        Step(title: "Bowl",   body: "Scrape into a cold bowl."),
        Step(title: "Deck",   body: "Granola, coconut, maybe cacao nibs — build your skyline.")
    ],
    tips: [
        "Thick rule: if a spoon stands up, you did it right.",
        "Mamey + chocolate is an underrated alliance.",
        "Freeze ripe mamey in bags before it turns."
    ],
    baseYieldValue: 2, baseYieldUnit: "bowls", baseServings: 2,
    accentColor: .lpCreamy
)

let mameyFlan = Recipe(
    name: "Mamey Flan",
    eyebrow: "Mamey recipe",
    imageName: "recipe-mamey-flan",
    time: "1.25 hr", level: "Medium", cal: "330",
    lede: "The Cuban bakery move — silky flan with mamey folded in, wearing its caramel like a crown.",
    ingredients: [
        Ingredient(qty: 0.75, unit: "cup", name: "sugar, for caramel"),
        Ingredient(qty: 1.5,  unit: "cup", name: "mamey pulp"),
        Ingredient(qty: 1,    unit: "",    name: "can condensed milk (14 oz)"),
        Ingredient(qty: 1,    unit: "cup", name: "evaporated milk"),
        Ingredient(qty: 4,    unit: "",    name: "eggs"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla")
    ],
    steps: [
        Step(title: "Caramel", body: "Melt sugar to amber and swirl to coat the pan bottom. Work fast, touch nothing."),
        Step(title: "Blend",   body: "Blend mamey, both milks, eggs, and vanilla; pour over the set caramel."),
        Step(title: "Bake",    body: "Water bath at 350°F, 50–60 minutes until just set. Chill 4 hours, then invert bravely.")
    ],
    tips: [
        "The overnight chill makes the caramel release cleanly.",
        "Run a thin knife around the edge before flipping.",
        "Jiggle test: set edges, trembling center."
    ],
    baseYieldValue: 8, baseYieldUnit: "slices", baseServings: 8,
    accentColor: .lpCreamy
)

let soursopSmoothie = Recipe(
    name: "Soursop Smoothie",
    eyebrow: "Soursop recipe",
    imageName: "recipe-soursop-smoothie",
    time: "10 min", level: "Easy", cal: "200",
    lede: "Creamy-tart soursop blended cold — somewhere between piña colada and lemonade, answering to neither.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "soursop pulp, seeded"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey"),
        Ingredient(qty: 1,    unit: "tsp", name: "lime juice"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Seed",  body: "Work the pulp free of its shiny black seeds — all of them."),
        Step(title: "Blend", body: "Blend pulp, coconut milk, honey, and lime until frothy."),
        Step(title: "Ice",   body: "Add ice, pulse, pour, vacation.")
    ],
    tips: [
        "Frozen soursop pulp from the freezer aisle is a fine shortcut.",
        "A drop of vanilla plays up the custard side.",
        "Strain for silk; don't for body."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpCreamy
)

let soursopSorbet = Recipe(
    name: "Soursop Sorbet",
    eyebrow: "Soursop recipe",
    imageName: "recipe-soursop-sorbet",
    time: "15 min", level: "Easy", cal: "140",
    lede: "Soursop's cream-and-citrus double act, frozen into the palest, coolest scoop on the island.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "soursop pulp, seeded"),
        Ingredient(qty: 0.5,  unit: "cup", name: "simple syrup"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Blend",  body: "Purée everything until smooth; taste — it should lean slightly too sweet."),
        Step(title: "Freeze", body: "Churn if you have a machine; otherwise freeze in a pan, blending once at the 2-hour mark."),
        Step(title: "Scoop",  body: "Ten minutes on the counter before scooping.")
    ],
    tips: [
        "Sweetness dulls when frozen — hence the lean.",
        "Coconut cream swirl before the final freeze is luxurious.",
        "Serve with lime zest grated over the top."
    ],
    baseYieldValue: 1, baseYieldUnit: "quart", baseServings: 6,
    accentColor: .lpCreamy
)

let soursopPunch = Recipe(
    name: "Soursop Punch",
    eyebrow: "Soursop recipe",
    imageName: "recipe-soursop-punch",
    time: "15 min", level: "Easy", cal: "180",
    lede: "The Caribbean blender classic — soursop, milk, spice, and enough nutmeg to make it a holiday.",
    ingredients: [
        Ingredient(qty: 2,    unit: "cup", name: "soursop pulp, seeded"),
        Ingredient(qty: 1.5,  unit: "cup", name: "milk or condensed-milk mix"),
        Ingredient(qty: 2,    unit: "tbsp",name: "sugar, to taste"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "vanilla"),
        Ingredient(qty: 0.25, unit: "tsp", name: "grated nutmeg"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Blend",  body: "Blend pulp with milk, sugar, and vanilla until creamy."),
        Step(title: "Strain", body: "Push through a sieve for the classic smooth punch."),
        Step(title: "Spice",  body: "Serve over ice with nutmeg grated on top.")
    ],
    tips: [
        "Condensed milk instead of sugar is the traditional richness.",
        "A cinnamon stick stirrer earns its keep.",
        "Chill everything first; punch hates lukewarm."
    ],
    baseYieldValue: 4, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpCreamy
)

// MARK: - Tier 2 fruits (Sweet)

let peachCobbler = Recipe(
    name: "Peach Cobbler",
    eyebrow: "Peach recipe",
    imageName: "recipe-peach-cobbler",
    time: "55 min", level: "Medium", cal: "350",
    lede: "Southern law: ripe peaches, buttery batter, and no shortcuts on the vanilla ice cream.",
    ingredients: [
        Ingredient(qty: 6,    unit: "cup", name: "peaches, sliced"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar, divided"),
        Ingredient(qty: 1,    unit: "cup", name: "flour"),
        Ingredient(qty: 2,    unit: "tsp", name: "baking powder"),
        Ingredient(qty: 0.75, unit: "cup", name: "milk"),
        Ingredient(qty: 6,    unit: "tbsp",name: "butter"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "cinnamon")
    ],
    steps: [
        Step(title: "Melt",   body: "Butter into the baking dish in the warming oven."),
        Step(title: "Batter", body: "Whisk flour, most of the sugar, baking powder, and milk; pour over the melted butter — don't stir."),
        Step(title: "Fruit",  body: "Spoon peaches over, cinnamon-sugar on top; bake 375°F for 40–45 minutes until the batter rises golden around the fruit.")
    ],
    tips: [
        "The batter rising up through the fruit is the magic — trust it.",
        "Peel peaches by blanching 30 seconds; skins slide off.",
        "Canned peaches make an honest winter version."
    ],
    baseYieldValue: 8, baseYieldUnit: "servings", baseServings: 8,
    accentColor: .lpSweet
)

let peachesGrilled = Recipe(
    name: "Grilled Peaches & Burrata",
    eyebrow: "Peach recipe",
    imageName: "recipe-peaches-grilled",
    time: "15 min", level: "Easy", cal: "260",
    lede: "Charred peach halves and torn burrata — summer's laziest showstopper.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "firm-ripe peaches, halved"),
        Ingredient(qty: 1,    unit: "tbsp",name: "olive oil, plus more to finish"),
        Ingredient(qty: 8,    unit: "oz",  name: "burrata"),
        Ingredient(qty: 1,    unit: "tbsp",name: "honey or balsamic"),
        Ingredient(qty: 8,    unit: "",    name: "basil leaves")
    ],
    steps: [
        Step(title: "Grill",  body: "Oil the cut sides; grill face-down 3–4 minutes until marked and juicy."),
        Step(title: "Tear",   body: "Arrange with burrata torn over and between."),
        Step(title: "Finish", body: "Honey or balsamic, basil, olive oil, flaky salt. Bread nearby.")
    ],
    tips: [
        "Firm-ripe fruit grills; soft fruit belongs in the cobbler.",
        "Prosciutto ribbons make it dinner.",
        "A grill pan indoors works fine."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweet
)

let peachIcedTea = Recipe(
    name: "Peach Iced Tea",
    eyebrow: "Peach recipe",
    imageName: "recipe-peach-iced-tea",
    time: "20 min", level: "Easy", cal: "90",
    lede: "Real peaches steeped into real tea — the porch drink the bottles keep imitating.",
    ingredients: [
        Ingredient(qty: 3,    unit: "",    name: "ripe peaches, sliced"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.33, unit: "cup", name: "water"),
        Ingredient(qty: 4,    unit: "cup", name: "brewed black tea, cooled"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Syrup", body: "Simmer peaches, sugar, and water 10 minutes; mash lightly and cool."),
        Step(title: "Strain",body: "Push the peach syrup through a sieve into the tea."),
        Step(title: "Serve", body: "Over ice with lemon and a peach slice on the rim.")
    ],
    tips: [
        "The strained peach pulp belongs on yogurt.",
        "Cold-brew the tea to skip any bitterness.",
        "Peak-season peaches need barely half the sugar."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweet
)

let peachSalsa = Recipe(
    name: "Peach Salsa",
    eyebrow: "Peach recipe",
    imageName: "recipe-peach-salsa",
    time: "10 min", level: "Easy", cal: "45",
    lede: "Sweet peaches picking fights with jalapeño and lime — grilled chicken's favorite referee.",
    ingredients: [
        Ingredient(qty: 3,    unit: "cup", name: "peaches, diced"),
        Ingredient(qty: 0.33, unit: "cup", name: "red onion, minced"),
        Ingredient(qty: 1,    unit: "",    name: "jalapeño, minced"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 0.33, unit: "cup", name: "cilantro, chopped"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Dice", body: "Firm-ripe peaches, small and even; skin on is fine."),
        Step(title: "Toss", body: "Everything together; taste for salt and lime."),
        Step(title: "Rest", body: "Ten minutes, then serve with chips, fish, or pork.")
    ],
    tips: [
        "A charred peach half, diced in, adds smoke.",
        "Best within hours; peaches soften fast.",
        "Basil instead of cilantro is a sleeper move."
    ],
    baseYieldValue: 3.5, baseYieldUnit: "cups", baseServings: 8,
    accentColor: .lpSweet
)

let peachFruit = Fruit(
    name: "Peach",
    latinName: "Prunus persica",
    imageName: "fruit-peach",
    eyebrow: "Rooted up",
    pullQuote: "Summer, with fuzz on it.",
    pullQuoteHighlight: "with fuzz on it",
    flavors: [
        FlavorTag(label: "Sweet",      color: .lpSweet),
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour)
    ],
    snapshot: "The velvet-skinned headliner of stone-fruit season — floral, dripping, and gone in a six-week window that whole cuisines plan around.",
    loveBody: "At its peak it needs nothing but a sink to lean over; the rest of the harvest earns cobblers, salsas, and iced tea.",
    loveBullets: [
        "Vitamins A and C in one blushing package",
        "White varieties run floral; yellow run tangy",
        "The fuzz is the fruit's own sunscreen"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Over the sink at peak ripeness, grilled with burrata, baked under cobbler batter, or diced into salsa.",
        lookFor: "Deep background gold (not just red blush), sweet smell at the stem, gentle give — hard peaches were picked for the truck.",
        store: "Counter, stem-down, until fragrant; then fridge for two or three days at most."
    ),
    recipes: [
        RecipeCard(name: "Peach Cobbler", imageName: "recipe-peach-cobbler", meta: "55 min · Medium", recipe: peachCobbler),
        RecipeCard(name: "Grilled Peaches & Burrata", imageName: "recipe-peaches-grilled", meta: "15 min · Easy", recipe: peachesGrilled),
        RecipeCard(name: "Peach Iced Tea", imageName: "recipe-peach-iced-tea", meta: "20 min · Easy", recipe: peachIcedTea),
        RecipeCard(name: "Peach Salsa", imageName: "recipe-peach-salsa", meta: "10 min · Easy", recipe: peachSalsa)
    ]
)

let watermelonAgua = Recipe(
    name: "Watermelon Agua Fresca",
    eyebrow: "Watermelon recipe",
    imageName: "recipe-watermelon-agua",
    time: "10 min", level: "Easy", cal: "70",
    lede: "A whole melon in a pitcher — the drink that makes a heat wave negotiable.",
    ingredients: [
        Ingredient(qty: 6,    unit: "cup", name: "watermelon, cubed and seeded"),
        Ingredient(qty: 2,    unit: "cup", name: "cold water"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 2,    unit: "tbsp",name: "sugar, if the melon needs it")
    ],
    steps: [
        Step(title: "Blend",  body: "Watermelon and water until liquid."),
        Step(title: "Strain", body: "Through a sieve for the classic clean sip."),
        Step(title: "Chill",  body: "Lime in, taste for sugar, serve over lots of ice.")
    ],
    tips: [
        "A ripe melon needs zero added sugar.",
        "Mint or a chili-salt rim are both correct.",
        "Freeze into paletas before it loses fizz-freshness."
    ],
    baseYieldValue: 7, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweet
)

let watermelonFeta = Recipe(
    name: "Watermelon Feta Salad",
    eyebrow: "Watermelon recipe",
    imageName: "recipe-watermelon-feta",
    time: "10 min", level: "Easy", cal: "180",
    lede: "Cold sweet melon, salty cheese, mint — the combination that shouldn't work and always does.",
    ingredients: [
        Ingredient(qty: 6,    unit: "cup", name: "watermelon, cubed"),
        Ingredient(qty: 1,    unit: "cup", name: "feta, cubed or crumbled"),
        Ingredient(qty: 0.25, unit: "cup", name: "red onion, shaved thin"),
        Ingredient(qty: 12,   unit: "",    name: "mint leaves, torn"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lime juice")
    ],
    steps: [
        Step(title: "Chill",    body: "Everything cold before assembly — this salad is a temperature."),
        Step(title: "Assemble", body: "Melon, feta, and onion layered loosely; don't toss hard."),
        Step(title: "Finish",   body: "Oil, lime, mint, black pepper. Serve immediately.")
    ],
    tips: [
        "Buy feta in brine; the pre-crumbled stuff is chalk.",
        "Olives and cucumber stretch it into lunch.",
        "Salt at the very end — it draws juice fast."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpSweet
)

let watermelonGranita = Recipe(
    name: "Watermelon Granita",
    eyebrow: "Watermelon recipe",
    imageName: "recipe-watermelon-granita",
    time: "15 min", level: "Easy", cal: "80",
    lede: "Scraped pink ice that tastes like biting the cold heart of the melon.",
    ingredients: [
        Ingredient(qty: 5,    unit: "cup", name: "watermelon, cubed"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 2,    unit: "tbsp",name: "lime juice"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Blend",  body: "Everything smooth; pour into a shallow metal pan."),
        Step(title: "Scrape", body: "Freeze, forking into crystals every 45 minutes, three or four passes."),
        Step(title: "Serve",  body: "Fluffed high in chilled glasses, mint on top.")
    ],
    tips: [
        "The salt is invisible but essential.",
        "Keeps a week; re-fluff before serving.",
        "Layer with whipped cream for a fancy coupe."
    ],
    baseYieldValue: 5, baseYieldUnit: "cups", baseServings: 6,
    accentColor: .lpSweet
)

let watermelonGazpacho = Recipe(
    name: "Watermelon Gazpacho",
    eyebrow: "Watermelon recipe",
    imageName: "recipe-watermelon-gazpacho",
    time: "15 min", level: "Easy", cal: "110",
    lede: "Half fruit, half salad, fully cold — the pink soup for days when cooking is off the table.",
    ingredients: [
        Ingredient(qty: 4,    unit: "cup", name: "watermelon, cubed"),
        Ingredient(qty: 1,    unit: "cup", name: "cucumber, peeled and chopped"),
        Ingredient(qty: 0.5,  unit: "cup", name: "red bell pepper"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "sherry vinegar"),
        Ingredient(qty: 0.25, unit: "",    name: "small red onion"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt")
    ],
    steps: [
        Step(title: "Blend",  body: "Everything until smooth."),
        Step(title: "Chill",  body: "At least an hour — gazpacho improves cold and rested."),
        Step(title: "Garnish",body: "Diced melon and cucumber, olive oil, cracked pepper on top.")
    ],
    tips: [
        "Feta crumbles on top pull it toward the salad it came from.",
        "The vinegar matters more than any other seasoning — taste twice.",
        "Serve in glasses at a party; spoons optional."
    ],
    baseYieldValue: 6, baseYieldUnit: "cups", baseServings: 4,
    accentColor: .lpSweet
)

let watermelonFruit = Fruit(
    name: "Watermelon",
    latinName: "Citrullus lanatus",
    imageName: "fruit-watermelon",
    eyebrow: "Rooted up",
    pullQuote: "Ninety-two percent water, one hundred percent July.",
    pullQuoteHighlight: "one hundred percent July",
    flavors: [
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "A vine-grown giant that turned hydration into dessert — crimson flesh, black seed constellations, and a thump you learn to read like a drum.",
    loveBody: "The most communal fruit there is: nobody eats a watermelon alone, and its mild sweetness plays generously with salt, cheese, herbs, and chili.",
    loveBullets: [
        "Richest common source of lycopene after tomatoes",
        "The rind pickles; the seeds roast — nothing wasted",
        "Nature's sports drink with better marketing"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "In dripping wedges outdoors, cubed with feta and mint, blended into agua fresca, or frozen into granita.",
        lookFor: "Heavy for its size, a creamy-yellow ground spot, and a deep hollow thump — pale spots and dull thuds tell on it.",
        store: "Whole at room temperature up to a week; cut melon covered in the fridge three or four days."
    ),
    recipes: [
        RecipeCard(name: "Watermelon Agua Fresca", imageName: "recipe-watermelon-agua", meta: "10 min · Easy", recipe: watermelonAgua),
        RecipeCard(name: "Watermelon Feta Salad", imageName: "recipe-watermelon-feta", meta: "10 min · Easy", recipe: watermelonFeta),
        RecipeCard(name: "Watermelon Granita", imageName: "recipe-watermelon-granita", meta: "15 min · Easy", recipe: watermelonGranita),
        RecipeCard(name: "Watermelon Gazpacho", imageName: "recipe-watermelon-gazpacho", meta: "15 min · Easy", recipe: watermelonGazpacho)
    ]
)

let pearsPoached = Recipe(
    name: "Spice-Poached Pears",
    eyebrow: "Pear recipe",
    imageName: "recipe-pears-poached",
    time: "40 min", level: "Medium", cal: "220",
    lede: "Whole pears simmered glassy in spiced syrup — the dessert that looks sculpted and cooks itself.",
    ingredients: [
        Ingredient(qty: 4,    unit: "",    name: "firm pears, peeled, stems on"),
        Ingredient(qty: 4,    unit: "cup", name: "water or half juice"),
        Ingredient(qty: 0.75, unit: "cup", name: "sugar or honey"),
        Ingredient(qty: 1,    unit: "",    name: "cinnamon stick + 3 cloves + 1 star anise"),
        Ingredient(qty: 1,    unit: "",    name: "strip of lemon peel"),
        Ingredient(qty: 1,    unit: "tsp", name: "vanilla")
    ],
    steps: [
        Step(title: "Simmer", body: "Dissolve sugar in liquid with spices and peel."),
        Step(title: "Poach",  body: "Submerge pears; simmer gently 20–30 minutes until a knife slides in easily."),
        Step(title: "Reduce", body: "Lift pears; boil the syrup down by half and pour it over to serve.")
    ],
    tips: [
        "Bosc pears hold their sculpture best.",
        "A parchment lid keeps them submerged and evenly ivory.",
        "Serve with mascarpone, or chocolate sauce for Belle Hélène."
    ],
    baseYieldValue: 4, baseYieldUnit: "pears", baseServings: 4,
    accentColor: .lpSweet
)

let pearSalad = Recipe(
    name: "Pear & Blue Cheese Salad",
    eyebrow: "Pear recipe",
    imageName: "recipe-pear-salad",
    time: "15 min", level: "Easy", cal: "290",
    lede: "Sweet pear against sharp blue — the bistro salad that never left the menu because it never should.",
    ingredients: [
        Ingredient(qty: 2,    unit: "",    name: "ripe pears, sliced"),
        Ingredient(qty: 5,    unit: "cup", name: "mixed greens or endive"),
        Ingredient(qty: 0.5,  unit: "cup", name: "blue cheese, crumbled"),
        Ingredient(qty: 0.5,  unit: "cup", name: "candied walnuts"),
        Ingredient(qty: 2,    unit: "tbsp",name: "olive oil"),
        Ingredient(qty: 1,    unit: "tbsp",name: "sherry vinegar"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey + Dijon")
    ],
    steps: [
        Step(title: "Dress",   body: "Whisk oil, vinegar, honey, Dijon, salt, pepper."),
        Step(title: "Toss",    body: "Greens lightly first, then arrange pear slices over."),
        Step(title: "Finish",  body: "Blue cheese and walnuts last, so every element stays itself.")
    ],
    tips: [
        "Slice the pear at the last minute, or lemon it.",
        "Endive's bitterness is the fancy option.",
        "Swap blue for goat cheese if the table's divided."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpSweet
)

let pearCrumbleRecipe = Recipe(
    name: "Pear Ginger Crumble",
    eyebrow: "Pear recipe",
    imageName: "recipe-pear-crumble",
    time: "50 min", level: "Medium", cal: "330",
    lede: "Soft spiced pears under oat rubble, with ginger doing the talking.",
    ingredients: [
        Ingredient(qty: 6,    unit: "",    name: "ripe pears, chunked"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 1,    unit: "tbsp",name: "cornstarch"),
        Ingredient(qty: 2,    unit: "tsp", name: "grated fresh ginger"),
        Ingredient(qty: 0.75, unit: "cup", name: "flour"),
        Ingredient(qty: 0.5,  unit: "cup", name: "oats"),
        Ingredient(qty: 0.5,  unit: "cup", name: "brown sugar"),
        Ingredient(qty: 6,    unit: "tbsp",name: "cold butter")
    ],
    steps: [
        Step(title: "Toss",  body: "Pears with sugar, cornstarch, and ginger into the dish."),
        Step(title: "Crumb", body: "Rub flour, oats, brown sugar, and butter to clumps; cover the fruit."),
        Step(title: "Bake",  body: "375°F for 35–40 minutes until golden and bubbling.")
    ],
    tips: [
        "Mix pear varieties for texture range.",
        "Crystallized ginger in the topping doubles down nicely.",
        "Cold with yogurt, it's breakfast; warm with custard, it's Sunday."
    ],
    baseYieldValue: 6, baseYieldUnit: "servings", baseServings: 6,
    accentColor: .lpSweet
)

let pearButter = Recipe(
    name: "Slow Pear Butter",
    eyebrow: "Pear recipe",
    imageName: "recipe-pear-butter",
    time: "1.5 hr", level: "Easy", cal: "40",
    lede: "Pears cooked past sauce into something spoon-clinging and amber — toast's autumn uniform.",
    ingredients: [
        Ingredient(qty: 8,    unit: "",    name: "ripe pears, chopped, skin on"),
        Ingredient(qty: 0.33, unit: "cup", name: "brown sugar"),
        Ingredient(qty: 1,    unit: "tsp", name: "cinnamon"),
        Ingredient(qty: 0.25, unit: "tsp", name: "cardamom"),
        Ingredient(qty: 1,    unit: "tbsp",name: "lemon juice")
    ],
    steps: [
        Step(title: "Soften", body: "Simmer pears covered 25 minutes until collapsing; blend smooth."),
        Step(title: "Reduce", body: "Add sugar, spices, and lemon; cook low, stirring often, 45–60 minutes to a deep amber paste."),
        Step(title: "Jar",    body: "It's done when a spoonful holds its shape. Jar and refrigerate.")
    ],
    tips: [
        "A slow cooker on low overnight does this unattended.",
        "Skins blend invisible and carry pectin — leave them.",
        "Swirl into oatmeal or glaze a pork roast."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 24,
    accentColor: .lpSweet
)

let pearFruit = Fruit(
    name: "Pear",
    latinName: "Pyrus communis",
    imageName: "fruit-pear",
    eyebrow: "Rooted up",
    pullQuote: "Ripens from the inside out, on its own schedule.",
    pullQuoteHighlight: "on its own schedule",
    flavors: [
        FlavorTag(label: "Sweet", color: .lpSweet)
    ],
    snapshot: "The patient fruit: picked hard, ripened off the tree, and perfect for roughly nine hours — buttery, grainy-sweet flesh under skin that ranges green to russet to blush.",
    loveBody: "When a pear finally says yes, nothing else is that texture — melting, juicy, faintly floral. Until then, it poaches, bakes, and butters brilliantly.",
    loveBullets: [
        "One of the best fiber-per-bite fruits going",
        "Bosc for poaching, Bartlett for eating, Anjou for both",
        "Check the neck: it ripens from the inside out"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Out of hand at the yielding moment, poached whole in spiced syrup, sliced against blue cheese, or slow-cooked into pear butter.",
        lookFor: "Firm, unbruised fruit; ripeness is your job at home — press gently at the stem neck, not the belly.",
        store: "Ripen on the counter (a banana beside them hurries it); refrigerate the moment the neck yields."
    ),
    recipes: [
        RecipeCard(name: "Spice-Poached Pears", imageName: "recipe-pears-poached", meta: "40 min · Medium", recipe: pearsPoached),
        RecipeCard(name: "Pear & Blue Cheese Salad", imageName: "recipe-pear-salad", meta: "15 min · Easy", recipe: pearSalad),
        RecipeCard(name: "Pear Ginger Crumble", imageName: "recipe-pear-crumble", meta: "50 min · Medium", recipe: pearCrumbleRecipe),
        RecipeCard(name: "Slow Pear Butter", imageName: "recipe-pear-butter", meta: "1.5 hr · Easy", recipe: pearButter)
    ]
)

// MARK: - Tier 2 fruits (Creamy)

let durianStickyRice = Recipe(
    name: "Durian Sticky Rice",
    eyebrow: "Durian recipe",
    imageName: "recipe-durian-sticky-rice",
    time: "35 min", level: "Medium", cal: "420",
    lede: "Mango sticky rice's outrageous cousin — coconut rice under a blanket of durian custard-flesh.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "glutinous rice, soaked"),
        Ingredient(qty: 1,    unit: "cup", name: "coconut milk"),
        Ingredient(qty: 0.33, unit: "cup", name: "sugar"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "salt"),
        Ingredient(qty: 1.5,  unit: "cup", name: "ripe durian flesh, seeded")
    ],
    steps: [
        Step(title: "Steam",  body: "Steam soaked rice 20–25 minutes until tender."),
        Step(title: "Sauce",  body: "Warm coconut milk with sugar and salt; mash half the durian into it."),
        Step(title: "Serve",  body: "Rice, durian-coconut sauce over, remaining flesh in golden lobes on top.")
    ],
    tips: [
        "Frozen durian works; thaw in the fridge.",
        "Warn your kitchen-mates. It's polite.",
        "The salt keeps the richness from tipping over."
    ],
    baseYieldValue: 4, baseYieldUnit: "servings", baseServings: 4,
    accentColor: .lpCreamy
)

let durianSmoothie = Recipe(
    name: "Durian Smoothie",
    eyebrow: "Durian recipe",
    imageName: "recipe-durian-smoothie",
    time: "5 min", level: "Easy", cal: "280",
    lede: "For the converted: custard, caramel, and roasted garlic's strange perfume in one cold glass.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "durian flesh, seeded"),
        Ingredient(qty: 1,    unit: "cup", name: "cold milk"),
        Ingredient(qty: 0.5,  unit: "cup", name: "coconut milk"),
        Ingredient(qty: 1,    unit: "tsp", name: "honey, optional"),
        Ingredient(qty: 1,    unit: "cup", name: "ice")
    ],
    steps: [
        Step(title: "Blend", body: "Everything until completely smooth and pale gold."),
        Step(title: "Taste", body: "Ripe durian rarely needs the honey."),
        Step(title: "Serve", body: "Cold, outdoors if the household demands it.")
    ],
    tips: [
        "Frozen durian packs make this a year-round vice.",
        "A pinch of salt rounds the caramel notes.",
        "Blend with coffee ice cubes — trust the Malaysians on this."
    ],
    baseYieldValue: 3, baseYieldUnit: "cups", baseServings: 2,
    accentColor: .lpCreamy
)

let durianPancakes = Recipe(
    name: "Durian Crepe Pillows",
    eyebrow: "Durian recipe",
    imageName: "recipe-durian-pancakes",
    time: "40 min", level: "Medium", cal: "340",
    lede: "The Hong Kong bakery favorite — cold cream and durian folded inside a soft crepe parcel.",
    ingredients: [
        Ingredient(qty: 1,    unit: "cup", name: "flour"),
        Ingredient(qty: 1.5,  unit: "cup", name: "milk"),
        Ingredient(qty: 2,    unit: "",    name: "eggs"),
        Ingredient(qty: 2,    unit: "tbsp",name: "sugar"),
        Ingredient(qty: 1,    unit: "cup", name: "durian flesh"),
        Ingredient(qty: 1,    unit: "cup", name: "whipped cream")
    ],
    steps: [
        Step(title: "Crepe",  body: "Blend flour, milk, eggs, and sugar; swirl thin crepes in a nonstick pan and cool completely."),
        Step(title: "Fill",   body: "A spoon of cream, a lobe of durian, and fold each crepe into a snug parcel, seam down."),
        Step(title: "Chill",  body: "Thirty minutes cold — they're meant to be eaten fridge-cold.")
    ],
    tips: [
        "Cold crepes fold without tearing; patience is an ingredient.",
        "A drop of pandan extract tints them bakery-green.",
        "Eat within a day. They won't last that long anyway."
    ],
    baseYieldValue: 8, baseYieldUnit: "parcels", baseServings: 4,
    accentColor: .lpCreamy
)

let durianIceCream = Recipe(
    name: "Durian Ice Cream",
    eyebrow: "Durian recipe",
    imageName: "recipe-durian-ice-cream",
    time: "20 min", level: "Medium", cal: "290",
    lede: "No churn, no apologies — durian's custard flesh was halfway to ice cream already.",
    ingredients: [
        Ingredient(qty: 1.5,  unit: "cup", name: "durian flesh, seeded"),
        Ingredient(qty: 1,    unit: "cup", name: "heavy cream, cold"),
        Ingredient(qty: 0.67, unit: "cup", name: "condensed milk"),
        Ingredient(qty: 1,    unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Purée", body: "Blend durian with condensed milk and salt."),
        Step(title: "Fold",  body: "Whip cream to soft peaks; fold in the purée."),
        Step(title: "Freeze",body: "Six hours covered. Serve to believers.")
    ],
    tips: [
        "Label it clearly in a shared freezer. Seriously.",
        "Toasted coconut on top is the right crunch.",
        "Milder cultivars (D24) make a gentler introduction than Musang King."
    ],
    baseYieldValue: 1, baseYieldUnit: "quart", baseServings: 8,
    accentColor: .lpCreamy
)

let durianFruit = Fruit(
    name: "Durian",
    latinName: "Durio zibethinus",
    imageName: "fruit-durian",
    eyebrow: "Rooted up",
    pullQuote: "Banned from hotels, beloved by millions — both are correct.",
    pullQuoteHighlight: "both are correct",
    flavors: [
        FlavorTag(label: "Creamy",   color: .lpCreamy),
        FlavorTag(label: "Tropical", color: .lpTropical)
    ],
    snapshot: "The spiked 'king of fruits' whose aroma clears rooms and whose golden flesh converts skeptics — custard-thick, caramel-sweet, with savory low notes nothing else has.",
    loveBody: "No fruit divides opinion harder or rewards the curious better: the texture is crème brûlée, the flavor is caramel-almond-something, and the experience is a rite of passage.",
    loveBullets: [
        "Richest, most calorie-dense fruit in the market",
        "Hundreds of named cultivars with cult followings",
        "The smell is a defense mechanism; the taste is the apology"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Fresh from the pod at room temperature, blended cold, folded into crepes, or frozen into ice cream.",
        lookFor: "A strong (not sour) aroma at the seam, a hollow rattle when shaken gently, and stems that look fresh-cut.",
        store: "Sealed tightly in the fridge two days, or freeze the flesh — the cold mutes the perfume, not the flavor."
    ),
    recipes: [
        RecipeCard(name: "Durian Sticky Rice", imageName: "recipe-durian-sticky-rice", meta: "35 min · Medium", recipe: durianStickyRice),
        RecipeCard(name: "Durian Smoothie", imageName: "recipe-durian-smoothie", meta: "5 min · Easy", recipe: durianSmoothie),
        RecipeCard(name: "Durian Crepe Pillows", imageName: "recipe-durian-pancakes", meta: "40 min · Medium", recipe: durianPancakes),
        RecipeCard(name: "Durian Ice Cream", imageName: "recipe-durian-ice-cream", meta: "20 min · Medium", recipe: durianIceCream)
    ]
)
