# Supplier.create!([
#   {name: "Ladies Who Lift Inc.", email: "LWLinc@gmail.com", phone_number: "444-5555"},
#   {name: "Weights R Us", email: "weightsrus@gmail.com", phone_number: "777-8888"}
# ])
# Product.create!([
#   {name: "squat rack", price: "595.0",  description: "A metal rack used for supporting a barbell during heavy weightlifting exercises.", quantity: nil, supplier_id: 2},
#   {name: "dumbbells", price: "399.0", description: "A free weight used during exercise or muscle-building. It comes in a variety of weights and sizes.", quantity: nil, supplier_id: 2},
#   {name: "Minibands", price: "25.0", description: "Small resistence bands that can be added to exercises to make them more challenging.", quantity: nil, supplier_id: 1},
#   {name: "kettlebell", price: "1400.0", description: "A large cast-iron ball-shaped weight with a single handle.", quantity: nil, supplier_id: 1}
# ])

Image.create!([
  {
    url: "https://www.yanrefitness.com/wp-content/uploads/2021/04/HM-6501-Squat-Stand-yanrefitness.jpg",
    product_id: 3,
  },
  {
    url: "https://post.healthline.com/wp-content/uploads/2020/10/458490-These-Are-the-12-Best-Dumbbells-to-Use-At-Home-According-to-A-Trainer_ProductShot_Yes4All-Adjustable-Dumbbells.png",
    product_id: 7,
  },
  {
    url: "https://cdn.shopify.com/s/files/1/0954/1550/products/mini-band-red_1276x.jpg?v=1588252152",
    product_id: 5,
  },
  {
    url: "https://onnits3.imgix.net/authority/568.png?auto=format&w=735",
    product_id: 2,
  },
])
