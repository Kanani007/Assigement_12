class FoodModel {
  late final String? title;
  late final String? price;
  late final String? image;
  late final String? description;

  FoodModel({this.title, this.image, this.price, this.description});
}

List serverSideData = [
  {
    "title": "burger",
    "price": "₹180",
    "image":" photos/burger.jpg",
    "description":
    "Vada pav is a savory dinner roll stuffed with fried mashed and spiced potato fritters. It is a popular vegan street food snack eaten in Mumbai and rest of Maharashtra. This dish is full of flavors and various textures!"
  },
  {
    "title": "idli",
    "price": "₹1199",
    "image": "photos/idli.jpg",
    "description":
    "Large Pizza! Jalapenos, Corn, Black Olives, Crunchy Bell Peppers, Tomatoes, Onion & Mozzarella Cheese on an herbed and soft 11-inch crust."
  },
  {
    "title": "Chocolate slice",
    "price": "₹120",
    "image": "photos/chocolate-slice.jpg",
    "description":
    "considered a sandwich, consisting of one or more cooked patties—usually ground meat, typically beef—placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. A hamburger topped with cheese is called a cheeseburger. "
  },
  {
    "title": " Dosa",
    "price": "₹150",
    "image": "photos/dosa.jpg",
    "description":
    "A dosa is a thin pancake or crepe originating from South India, made from a fermented batter predominantly consisting of lentils and rice. Its main ingredients are rice and black gram, ground together in a fine, smooth batter with a dash of salt, then fermented."
  },
  {
    "title": "Idli Sambhar",
    "price": "₹80",
    "image": "images/idli.jpg",
    "description":
    "Idli is savoury rice cake, originating from the Indian subcontinent, popular as breakfast foods in Southern India and in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black lentils (de-husked) and rice."
  },
  {
    "title": "Gujarati Thali",
    "price": "₹130",
    "image": "images/gujarati.JPG",
    "description":
    "three fresh vegetable dishes, one dry dal or some sprouted pulses dish (ugaadayla mung, for instance), a wet dal, kadhi, kathor (a savoury), mithai, poori, rotis, steamed rice, chaash and papad "
  },
  {
    "title": "pizza dosa ",
    "price": "₹145",
    "image": "photos/pizza-dosa.jpg",
    "description": "Paneer based dishes like Matar Paneer, Paneer Tikka,  Dal Makhani , Chole, Jeera Rice,  different types of breads like naan, kulcha, Paneer Paratha, Makki di Roti, Sweets like Gajar Halwa, Lassi, Karha Prasad are few of the famous dishes."
  },
  {
    "title": "Sandwich",
    "price": "₹110",
    "image": "photos/sandwich.jpg",
    "description": "vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type "
  },
];

List<FoodModel> arrayofFoodData() {
  return serverSideData
      .map(
        (item) => FoodModel(
        title: item["title"], price: item["price"], image: item["image"], description: item["description"]),
  )
      .toList();
}