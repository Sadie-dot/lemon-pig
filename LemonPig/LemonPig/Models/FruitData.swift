import SwiftUI

// MARK: - Fruit

struct Fruit: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let latinName: String
    let imageName: String
    let eyebrow: String
    let pullQuote: String
    let pullQuoteHighlight: String
    let flavors: [FlavorTag]
    let snapshot: String
    let loveBody: String
    let loveBullets: [String]
    let howToEnjoy: HowToEnjoy
    let recipes: [RecipeCard]
    // Hero gradient for generated fruits with no photo (nil for catalog
    // fruits and pre-hero-color discoveries — those fall back to navy).
    var heroSkin: Color? = nil
    var heroFlesh: Color? = nil
}

struct FlavorTag: Hashable {
    let label: String
    let color: Color
    var flavorKey: FlavorKey { label }
}

struct HowToEnjoy: Hashable {
    let eat: String
    let lookFor: String
    let store: String
}

struct RecipeCard: Hashable {
    let name: String
    let imageName: String
    let meta: String
    let recipe: Recipe?
}

// MARK: - Recipe

struct Recipe: Hashable {
    let name: String
    let eyebrow: String
    let imageName: String
    let time: String
    let level: String
    let cal: String
    let lede: String
    let ingredients: [Ingredient]
    let steps: [Step]
    let tips: [String]
    let baseYieldValue: Double
    let baseYieldUnit: String
    let baseServings: Int
    let accentColor: Color
    var heroSkin: Color? = nil
    var heroFlesh: Color? = nil
}

struct Ingredient: Hashable {
    let qty: Double
    let unit: String   // "" means count
    let name: String
}

struct Step: Hashable {
    let title: String
    let body: String
}

// MARK: - Fraction formatting

func fmtQty(_ n: Double) -> String {
    let whole = Int(n + 1e-6)
    let frac = n - Double(whole)
    let candidates: [(Double, String)] = [
        (0, ""), (0.25, "¼"), (0.333, "⅓"), (0.5, "½"), (0.667, "⅔"), (0.75, "¾"), (1, "")
    ]
    var best = ""; var bd = 0.09
    for (v, sym) in candidates { let d = abs(frac - v); if d < bd { bd = d; best = sym } }
    if frac > 0.92 { return "\(whole + 1)" }
    if best.isEmpty { return whole > 0 ? "\(whole)" : "0" }
    return (whole > 0 ? "\(whole)" : "") + best
}

func fmtIngredient(_ ing: Ingredient, batch: Double) -> String {
    let val = ing.qty * batch
    let qtyStr = fmtQty(val)
    if ing.unit.isEmpty { return qtyStr }
    let u = (ing.unit == "cup" && val > 1.0001) ? "cups" : ing.unit
    return "\(qtyStr) \(u)"
}

// MARK: - Data

let tamarindChutney = Recipe(
    name: "Tamarind Chutney",
    eyebrow: "Tamarind recipe",
    imageName: "recipe-chutney",
    time: "20 min", level: "Easy", cal: "45",
    lede: "The sticky pod pulp is the engine here — it brings both the pucker and a deep caramel sweetness, so the chutney needs no added vinegar or lemon.",
    ingredients: [
        Ingredient(qty: 0.5,  unit: "cup", name: "seedless tamarind pulp"),
        Ingredient(qty: 8,    unit: "",    name: "pitted dates"),
        Ingredient(qty: 0.33, unit: "cup", name: "jaggery or brown sugar"),
        Ingredient(qty: 1.5,  unit: "cup", name: "water"),
        Ingredient(qty: 1,    unit: "tsp", name: "ground cumin"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "ground ginger"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "Kashmiri chili powder"),
        Ingredient(qty: 0.5,  unit: "tsp", name: "black salt"),
        Ingredient(qty: 0.25, unit: "tsp", name: "fennel seeds")
    ],
    steps: [
        Step(title: "Soak",        body: "Cover the tamarind pulp and dates with the hot water. Let them soften for 10 minutes until plump."),
        Step(title: "Simmer",      body: "Tip everything into a saucepan — soaking liquid, jaggery, and all the spices. Simmer 8–10 minutes until the dates collapse."),
        Step(title: "Blend & strain", body: "Blend until smooth, then push through a sieve to catch the fibers and any stray seeds."),
        Step(title: "Finish",      body: "Return to low heat and thin with a splash of water to a glossy, pourable syrup. It thickens as it cools.")
    ],
    tips: [
        "Bring the heat — a pinch of cayenne or a sliced Thai chili in the simmer.",
        "Keeps 2 weeks refrigerated; freeze in an ice-cube tray for single pours.",
        "No jaggery? Maple syrup or dark brown sugar both work."
    ],
    baseYieldValue: 1.5, baseYieldUnit: "cups", baseServings: 12,
    accentColor: .lpSweetSour
)

let tamarindFruit = Fruit(
    name: "Tamarind",
    latinName: "Tamarindus indica",
    imageName: "tamarind-bg",
    eyebrow: "Rooted up",
    pullQuote: "Intensely sweet-sour — like dates dipped in sour candy.",
    pullQuoteHighlight: "dates dipped in sour candy.",
    flavors: [
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour),
        FlavorTag(label: "Tropical",   color: .lpTropical)
    ],
    snapshot: "The pod of a tropical legume tree. Inside the brittle, cinnamon-brown shell is a sticky pulp wrapped around hard seeds.",
    loveBody: "One ingredient that delivers both tang and deep caramel sweetness. It is the backbone of pad thai, chutneys, and agua fresca, and a natural souring agent with no added acid.",
    loveBullets: [
        "A good source of magnesium and potassium",
        "High in dietary fiber",
        "Rich in antioxidant polyphenols"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Suck the pulp straight from the pod, or soak and strain it into a paste for sauces, drinks, and curries.",
        lookFor: "Full, heavy pods with a matte chestnut shell and no rattle — skip any cracked, moldy, or light.",
        store: "Whole pods keep for weeks in a cool pantry; shelled pulp lasts months refrigerated, or freeze it in cubes."
    ),
    recipes: [
        RecipeCard(name: "Pad Thai",           imageName: "recipe-padthai",  meta: "30 min · Medium", recipe: tamarindPadThai),
        RecipeCard(name: "Tamarind Chutney",   imageName: "recipe-chutney",  meta: "20 min · Easy",   recipe: tamarindChutney),
        RecipeCard(name: "Agua de Tamarindo",  imageName: "recipe-agua",     meta: "10 min · Easy",   recipe: tamarindAgua),
        RecipeCard(name: "Glazed Pork Ribs",   imageName: "recipe-ribs",     meta: "2 hr · Medium",   recipe: tamarindRibs)
    ]
)

let calamansiChutney = Recipe(
    name: "Calamansi-ade",
    eyebrow: "Calamansi recipe",
    imageName: "recipe-calamansi-ade",
    time: "5 min", level: "Easy", cal: "80",
    lede: "Squeeze, sweeten, serve over ice — the fragrant zest does all the work.",
    ingredients: [
        Ingredient(qty: 12,  unit: "",    name: "calamansi, halved"),
        Ingredient(qty: 0.25,unit: "cup", name: "simple syrup"),
        Ingredient(qty: 2,   unit: "cup", name: "cold water"),
        Ingredient(qty: 1,   unit: "",    name: "pinch of salt")
    ],
    steps: [
        Step(title: "Juice",    body: "Squeeze all the calamansi through a fine mesh strainer into a pitcher."),
        Step(title: "Sweeten",  body: "Stir in the simple syrup. Taste and adjust."),
        Step(title: "Serve",    body: "Add cold water and ice. Garnish with a calamansi slice.")
    ],
    tips: [
        "Freeze the juice in ice-cube trays for cocktail ice.",
        "A splash of sparkling water takes it from still to spritz."
    ],
    baseYieldValue: 1, baseYieldUnit: "pitcher", baseServings: 4,
    accentColor: .lpTart
)

let calamansiFruit = Fruit(
    name: "Calamansi",
    latinName: "Citrus × microcarpa",
    imageName: "fruit-calamansi",
    eyebrow: "Rooted up",
    pullQuote: "The littlest citrus punches far above its size.",
    pullQuoteHighlight: "punches far above its size",
    flavors: [
        FlavorTag(label: "Tart",       color: .lpTart),
        FlavorTag(label: "Citrusy",    color: .lpCitrusy),
        FlavorTag(label: "Sweet-sour", color: .lpSweetSour)
    ],
    snapshot: "Calamansi is a tiny hybrid citrus native to the Philippines and widely used across Southeast Asia. At about 3 cm across, its thin rind is loaded with aromatic oils and the juice delivers an intense hit of sour with a floral sweetness.",
    loveBody: "A single fruit delivers more vitamin C than most citrus twice its size — and the rind is edible and sweeter than the juice.",
    loveBullets: [
        "More vitamin C per gram than most citrus",
        "The rind is edible and sweeter than the juice",
        "Indispensable in Filipino, Malaysian, and Indonesian cooking"
    ],
    howToEnjoy: HowToEnjoy(
        eat: "Squeeze over fish, noodles, or grilled meat. Blend into calamansi-ade.",
        lookFor: "Firm, deep-orange skin — the riper the color, the more complex the flavor.",
        store: "Room temp up to a week; refrigerate for up to three."
    ),
    recipes: [
        RecipeCard(name: "Calamansi-ade",     imageName: "recipe-calamansi-ade",      meta: "5 min · Easy", recipe: calamansiChutney),
        RecipeCard(name: "Calamansi Bars",    imageName: "recipe-calamansi-bars",     meta: "45 min · Med", recipe: calamansiBars),
        RecipeCard(name: "Calamansi Marinade",imageName: "recipe-calamansi-marinade", meta: "10 min · Easy",recipe: calamansiMarinade),
        RecipeCard(name: "Toyomansi Dip", imageName: "recipe-toyomansi", meta: "5 min · Easy", recipe: toyomansiDip)
    ]
)

// Fruit facts for the home screen cycling card
let fruitFacts: [(fact: String, source: String)] = [
    ("Tamarind's tartaric acid is the same acid found in grapes.", "Tamarind"),
    ("A single calamansi has more vitamin C than a full orange.", "Calamansi"),
    ("Passion fruit seeds are completely edible — they add crunch.", "Passion Fruit"),
    ("Green mango is just ripe mango harvested early — same tree, different flavor.", "Green Mango"),
    ("Pomegranate arils are botanically the seeds.", "Pomegranate"),
    ("Kiwi contains actinidin, an enzyme that tenderizes meat.", "Kiwi")
]
