Image.create!([
  {url: "https://www.yanrefitness.com/wp-content/uploads/2021/04/HM-6501-Squat-Stand-yanrefitness.jpg", product_id: 3},
  {url: "https://post.healthline.com/wp-content/uploads/2020/10/458490-These-Are-the-12-Best-Dumbbells-to-Use-At-Home-According-to-A-Trainer_ProductShot_Yes4All-Adjustable-Dumbbells.png", product_id: 7},
  {url: "https://cdn.shopify.com/s/files/1/0954/1550/products/mini-band-red_1276x.jpg?v=1588252152", product_id: 5},
  {url: "https://onnits3.imgix.net/authority/568.png?auto=format&w=735", product_id: 2}
])
Category.create!([
  {name: "cheap"},
  {name: "large_items"},
  {name: "handhelds"}
])
Supplier.create!([
  {name: "Ladies Who Lift Inc.", email: "LWLinc@gmail.com", phone_number: "444-5555"},
  {name: "Weights R Us", email: "weightsrus@gmail.com", phone_number: "777-8888"}
])
Product.create!([
  {name: "squat rack", price: "595.0", description: "A metal rack used for supporting a barbell during heavy weightlifting exercises.", quantity: nil, supplier_id: 2},
  {name: "dumbbells", price: "399.0", description: "A free weight used during exercise or muscle-building. It comes in a variety of weights and sizes.", quantity: nil, supplier_id: 2},
  {name: "Minibands", price: "25.0", description: "Small resistence bands that can be added to exercises to make them more challenging.", quantity: nil, supplier_id: 1},
  {name: "kettlebell", price: "1400.0", description: "A large cast-iron ball-shaped weight with a single handle.", quantity: nil, supplier_id: 1}
])
Order.create!([
  {product_id: 2, user_id: 1, quantity: 5, subtotal: nil, tax: nil, total: nil},
  {product_id: 5, user_id: 2, quantity: 10, subtotal: "250.0", tax: "25.0", total: "275.0"},
  {product_id: 5, user_id: 2, quantity: 10, subtotal: "250.0", tax: "25.0", total: "275.0"},
  {product_id: 5, user_id: 2, quantity: 10, subtotal: "50.0", tax: "5.0", total: "55.0"},
  {product_id: 5, user_id: 3, quantity: 10, subtotal: "250.0", tax: "22.5", total: "272.5"}
])
ProductCategory.create!([
  {product_id: 5, category_id: 1},
  {product_id: 3, category_id: 2},
  {product_id: 2, category_id: 3},
  {product_id: 5, category_id: 3},
  {product_id: 7, category_id: 3}
])
User.create!([
  {name: "Isabel Scherzer-Fry", email: "Thegoodestgirl@scherzerfry.com", password_digest: "$2a$12$4QqWOpfaq492kp/b.TMpwObnkiuxCkNBc9HIpPvb8eKNpCrtVrEs6", admin: false},
  {name: "Milo Scherzer", email: "Devilchild@scherzer.com", password_digest: "$2a$12$/VaOZKO6o0bJw6Tu12lZ2Oc1HdWwPhw8alDcRizbas4wYkpHrVUq6", admin: false},
  {name: "Meghan Scherzer", email: "Meghan@scherzer.com", password_digest: "$2a$12$yz50vLpwaNeAJ76HH9JDzOVRnTD2MnSoDfaBVdFO6bTugkGb1Ac.y", admin: true},
  {name: "Danny Fry", email: "Danny@fry.com", password_digest: "$2a$12$URUVKg44p2MCuR82CBLsn.xEjKClTAi8/c2hxpDrxFx4PtVCA.cQ.", admin: true}
])
