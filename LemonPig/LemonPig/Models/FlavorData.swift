import SwiftUI

typealias FlavorKey = String

struct FlavorFruit: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let desc: String
    let benefit: String?
    let imageName: String?
    let tileColor: Color
    let fruit: Fruit?
}

struct Flavor: Identifiable, Hashable {
    let id = UUID()
    let key: FlavorKey
    let tag: String
    let accent: Color
    let fruits: [FlavorFruit]

    func hash(into hasher: inout Hasher) { hasher.combine(key) }
    static func == (lhs: Flavor, rhs: Flavor) -> Bool { lhs.key == rhs.key }
}

let allFlavors: [Flavor] = [
    Flavor(key: "Sweet-sour", tag: "Pucker, then sugar", accent: .lpSweetSour, fruits: [
        FlavorFruit(name: "Tamarind",     desc: "Sticky pod — dates dipped in sour candy",  benefit: "Magnesium",    imageName: "tamarind-bg",         tileColor: Color(hex: "#9B5A2B"), fruit: tamarindFruit),
        FlavorFruit(name: "Passion Fruit",desc: "Floral, tart, intensely tropical",           benefit: "Fiber",        imageName: "fruit-passion-fruit", tileColor: Color(hex: "#E8A13B"), fruit: passionFruitFruit),
        FlavorFruit(name: "Green Mango",  desc: "Crisp, mouth-puckering, lightly sweet",      benefit: "Vitamin C",    imageName: "fruit-green-mango",   tileColor: Color(hex: "#9BCA3C"), fruit: greenMangoFruit),
        FlavorFruit(name: "Kiwi",         desc: "Bright and fuzzy with a sour edge",          benefit: "Vitamin C",    imageName: "fruit-kiwi",          tileColor: Color(hex: "#7AB648"), fruit: kiwiFruit),
        FlavorFruit(name: "Pomegranate",  desc: "Jewel seeds, sweet-tart burst",              benefit: "Antioxidants", imageName: "fruit-pomegranate",   tileColor: Color(hex: "#C0392B"), fruit: pomegranateFruit),
        FlavorFruit(name: "Calamansi",    desc: "Tiny lime-orange, fragrant and sour",        benefit: "Vitamin C",    imageName: "fruit-calamansi",     tileColor: Color(hex: "#C7D845"), fruit: calamansiFruit),
        FlavorFruit(name: "Strawberry", desc: "Sweet with a built-in tang", benefit: "Vitamin C", imageName: "fruit-strawberry", tileColor: Color(hex: "#E8384F"), fruit: strawberryFruit),
        FlavorFruit(name: "Raspberry", desc: "Perfumed, tart, dissolves on the tongue", benefit: "Fiber", imageName: "fruit-raspberry", tileColor: Color(hex: "#C2185B"), fruit: raspberryFruit),
        FlavorFruit(name: "Plum", desc: "Honeyed flesh, tart skin", benefit: "Antioxidants", imageName: "fruit-plum", tileColor: Color(hex: "#7E3F8F"), fruit: plumFruit),
        FlavorFruit(name: "Apricot", desc: "Floral, tangy, velvet-skinned", benefit: "Vitamin A", imageName: "fruit-apricot", tileColor: Color(hex: "#F2A03D"), fruit: apricotFruit)
    ]),
    Flavor(key: "Tropical", tag: "Lush and sun-ripened", accent: .lpTropical, fruits: [
        FlavorFruit(name: "Mango",       desc: "Lush, honeyed — sunshine in a fruit",  benefit: "Vitamin A",    imageName: "fruit-mango", tileColor: Color(hex: "#F6A623"), fruit: mangoFruit),
        FlavorFruit(name: "Pineapple",   desc: "Juicy, tangy, candy-sweet",            benefit: "Vitamin C",    imageName: "fruit-pineapple", tileColor: Color(hex: "#F2C53D"), fruit: pineappleFruit),
        FlavorFruit(name: "Papaya",      desc: "Soft, musky, melon-like",              benefit: "Vitamin C",    imageName: "fruit-papaya", tileColor: Color(hex: "#F2784B"), fruit: papayaFruit),
        FlavorFruit(name: "Lychee",      desc: "Perfumed, floral, grape-like",         benefit: "Vitamin C",    imageName: "fruit-lychee", tileColor: Color(hex: "#E6A1B0"), fruit: lycheeFruit),
        FlavorFruit(name: "Guava",       desc: "Sweet, grainy, tropical musk",         benefit: "Fiber",        imageName: "fruit-guava", tileColor: Color(hex: "#E26D8A"), fruit: guavaFruit),
        FlavorFruit(name: "Dragon Fruit",desc: "Mild kiwi-crunch, subtly sweet",       benefit: "Antioxidants", imageName: "fruit-dragon-fruit", tileColor: Color(hex: "#D6336C"), fruit: dragonFruitFruit),
        FlavorFruit(name: "Coconut", desc: "Rich, nutty, endlessly useful", benefit: "Healthy fats", imageName: "fruit-coconut", tileColor: Color(hex: "#8A6D4B"), fruit: coconutFruit),
        FlavorFruit(name: "Jackfruit", desc: "Bubblegum-sweet when ripe", benefit: "Fiber", imageName: "fruit-jackfruit", tileColor: Color(hex: "#C9A227"), fruit: jackfruitFruit),
        FlavorFruit(name: "Starfruit", desc: "Crisp grape-apple-citrus stars", benefit: "Vitamin C", imageName: "fruit-starfruit", tileColor: Color(hex: "#E8C532"), fruit: starfruitFruit),
        FlavorFruit(name: "Passion Fruit", desc: "Floral, tart, intensely tropical", benefit: "Fiber", imageName: "fruit-passion-fruit", tileColor: Color(hex: "#E8A13B"), fruit: passionFruitFruit)
    ]),
    Flavor(key: "Tart", tag: "Sharp and bright", accent: .lpTart, fruits: [
        FlavorFruit(name: "Green Apple", desc: "Crisp, snappy, clean tart",                  benefit: "Fiber",        imageName: "fruit-green-apple", tileColor: Color(hex: "#8BC34A"), fruit: greenAppleFruit),
        FlavorFruit(name: "Rhubarb",     desc: "Sharp and sour — needs a little sugar",       benefit: "Vitamin K",    imageName: "fruit-rhubarb", tileColor: Color(hex: "#C0392B"), fruit: rhubarbFruit),
        FlavorFruit(name: "Cranberry",   desc: "Astringent, sour, jammy when cooked",         benefit: "Antioxidants", imageName: "fruit-cranberry", tileColor: Color(hex: "#B5302A"), fruit: cranberryFruit),
        FlavorFruit(name: "Sour Cherry", desc: "Bright, tangy, deep red",                    benefit: "Antioxidants", imageName: "fruit-sour-cherry", tileColor: Color(hex: "#9B1B30"), fruit: sourCherryFruit),
        FlavorFruit(name: "Gooseberry",  desc: "Translucent and mouth-puckering",             benefit: "Vitamin C",    imageName: "fruit-gooseberry", tileColor: Color(hex: "#9CB84A"), fruit: gooseberryFruit),
        FlavorFruit(name: "Yuzu",        desc: "Aromatic, intensely sour citrus",             benefit: "Vitamin C",    imageName: "fruit-yuzu", tileColor: Color(hex: "#E3C72E"), fruit: yuzuFruit),
        FlavorFruit(name: "Blackberry", desc: "Deep, winey, brambly", benefit: "Antioxidants", imageName: "fruit-blackberry", tileColor: Color(hex: "#3E2A56"), fruit: blackberryFruit),
        FlavorFruit(name: "Red Currant", desc: "Glass beads of pure tart", benefit: "Vitamin C", imageName: "fruit-red-currant", tileColor: Color(hex: "#C4273C"), fruit: redCurrantFruit),
        FlavorFruit(name: "Kiwi", desc: "Bright and fuzzy with a sour edge", benefit: "Vitamin C", imageName: "fruit-kiwi", tileColor: Color(hex: "#7AB648"), fruit: kiwiFruit),
        FlavorFruit(name: "Grapefruit", desc: "Bitter-sweet and tangy", benefit: "Vitamin C", imageName: "fruit-grapefruit", tileColor: Color(hex: "#E2674B"), fruit: grapefruitFruit)
    ]),
    Flavor(key: "Sweet", tag: "Honeyed and mellow", accent: .lpSweet, fruits: [
        FlavorFruit(name: "Fig",         desc: "Honeyed, jammy, floral",               benefit: "Fiber",        imageName: "fruit-fig", tileColor: Color(hex: "#7D4F9E"), fruit: figFruit),
        FlavorFruit(name: "Date",        desc: "Caramel and toffee — candy-sweet",     benefit: "Potassium",    imageName: "fruit-date", tileColor: Color(hex: "#8A5A2B"), fruit: dateFruit),
        FlavorFruit(name: "Persimmon",   desc: "Honey-soft and mellow",                benefit: "Vitamin A",    imageName: "fruit-persimmon", tileColor: Color(hex: "#E2762B"), fruit: persimmonFruit),
        FlavorFruit(name: "Cherimoya",   desc: "Custard with banana-vanilla",          benefit: "Vitamin C",    imageName: "fruit-cherimoya", tileColor: Color(hex: "#B7C77E"), fruit: cherimoyaFruit),
        FlavorFruit(name: "Sweet Grape", desc: "Juicy, sugary, snappy",                benefit: "Antioxidants", imageName: "fruit-sweet-grape", tileColor: Color(hex: "#7E2D8F"), fruit: grapeFruit_sweet),
        FlavorFruit(name: "Banana",      desc: "Creamy, mellow, sugary",               benefit: "Potassium",    imageName: "fruit-banana", tileColor: Color(hex: "#E8C547"), fruit: bananaFruit),
        FlavorFruit(name: "Peach", desc: "Floral, dripping, peak summer", benefit: "Vitamin A", imageName: "fruit-peach", tileColor: Color(hex: "#F2955B"), fruit: peachFruit),
        FlavorFruit(name: "Watermelon", desc: "Crisp, cooling, barely sweet", benefit: "Hydration", imageName: "fruit-watermelon", tileColor: Color(hex: "#E85C68"), fruit: watermelonFruit),
        FlavorFruit(name: "Pear", desc: "Buttery, floral, patient", benefit: "Fiber", imageName: "fruit-pear", tileColor: Color(hex: "#B9C46A"), fruit: pearFruit),
        FlavorFruit(name: "Mango", desc: "Lush, honeyed — sunshine in a fruit", benefit: "Vitamin A", imageName: "fruit-mango", tileColor: Color(hex: "#F6A623"), fruit: mangoFruit)
    ]),
    Flavor(key: "Creamy", tag: "Soft, rich, custardy", accent: .lpCreamy, fruits: [
        FlavorFruit(name: "Avocado",   desc: "Buttery, rich, savory-sweet",    benefit: "Healthy fats", imageName: "fruit-avocado", tileColor: Color(hex: "#6E8B3D"), fruit: avocadoFruit),
        FlavorFruit(name: "Cherimoya", desc: "Custard-soft, vanilla notes",    benefit: "Vitamin C",    imageName: "fruit-cherimoya", tileColor: Color(hex: "#B7C77E"), fruit: cherimoyaFruit),
        FlavorFruit(name: "Sapodilla", desc: "Brown-sugar and malt",           benefit: "Fiber",        imageName: "fruit-sapodilla", tileColor: Color(hex: "#8A5A2B"), fruit: sapodillaFruit),
        FlavorFruit(name: "Mamey",     desc: "Pumpkin-sweet and creamy",       benefit: "Vitamin B6",   imageName: "fruit-mamey", tileColor: Color(hex: "#C8642B"), fruit: mameyFruit),
        FlavorFruit(name: "Soursop",   desc: "Creamy, tangy, tropical",        benefit: "Vitamin C",    imageName: "fruit-soursop", tileColor: Color(hex: "#A7C77E"), fruit: soursopFruit),
        FlavorFruit(name: "Banana",    desc: "Smooth, mellow, sugary",         benefit: "Potassium",    imageName: "fruit-banana", tileColor: Color(hex: "#E8C547"), fruit: bananaFruit),
        FlavorFruit(name: "Durian", desc: "Custard-rich, notorious, beloved", benefit: "Potassium", imageName: "fruit-durian", tileColor: Color(hex: "#B8A23A"), fruit: durianFruit),
        FlavorFruit(name: "Coconut", desc: "Buttery flesh, drinkable heart", benefit: "Healthy fats", imageName: "fruit-coconut", tileColor: Color(hex: "#8A6D4B"), fruit: coconutFruit),
        FlavorFruit(name: "Jackfruit", desc: "Custard pods, meaty when green", benefit: "Fiber", imageName: "fruit-jackfruit", tileColor: Color(hex: "#C9A227"), fruit: jackfruitFruit),
        FlavorFruit(name: "Papaya", desc: "Soft, musky, melon-like", benefit: "Vitamin C", imageName: "fruit-papaya", tileColor: Color(hex: "#F2784B"), fruit: papayaFruit)
    ]),
    Flavor(key: "Citrusy", tag: "Zesty and aromatic", accent: .lpCitrusy, fruits: [
        FlavorFruit(name: "Lemon",      desc: "Bright, sharp, zesty",         benefit: "Vitamin C", imageName: "fruit-lemon", tileColor: Color(hex: "#F2D02E"), fruit: lemonFruit),
        FlavorFruit(name: "Orange",     desc: "Sweet, juicy, classic",        benefit: "Vitamin C", imageName: "fruit-orange", tileColor: Color(hex: "#F39B2B"), fruit: orangeFruit),
        FlavorFruit(name: "Grapefruit", desc: "Bitter-sweet and tangy",       benefit: "Vitamin C", imageName: "fruit-grapefruit", tileColor: Color(hex: "#E2674B"), fruit: grapefruitFruit),
        FlavorFruit(name: "Lime",       desc: "Sharp, green, aromatic",       benefit: "Vitamin C", imageName: "fruit-lime", tileColor: Color(hex: "#9BCA3C"), fruit: limeFruit),
        FlavorFruit(name: "Mandarin",   desc: "Honey-sweet, easy-peel",       benefit: "Vitamin C", imageName: "fruit-mandarin", tileColor: Color(hex: "#F0883B"), fruit: mandarinFruit),
        FlavorFruit(name: "Yuzu",       desc: "Fragrant, intensely sour",     benefit: "Vitamin C", imageName: "fruit-yuzu", tileColor: Color(hex: "#E3C72E"), fruit: yuzuFruit),
        FlavorFruit(name: "Blood Orange", desc: "Citrus with a raspberry heart", benefit: "Antioxidants", imageName: "fruit-blood-orange", tileColor: Color(hex: "#C0392B"), fruit: bloodOrangeFruit),
        FlavorFruit(name: "Kumquat", desc: "Eat it whole — peel first", benefit: "Vitamin C", imageName: "fruit-kumquat", tileColor: Color(hex: "#F0A030"), fruit: kumquatFruit),
        FlavorFruit(name: "Pomelo", desc: "Grapefruit's gentle giant", benefit: "Vitamin C", imageName: "fruit-pomelo", tileColor: Color(hex: "#C9D96A"), fruit: pomeloFruit),
        FlavorFruit(name: "Calamansi", desc: "Tiny lime-orange, fragrant and sour", benefit: "Vitamin C", imageName: "fruit-calamansi", tileColor: Color(hex: "#C7D845"), fruit: calamansiFruit)
    ])
]
