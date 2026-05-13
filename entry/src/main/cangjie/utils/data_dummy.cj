package ohos_app_cangjie_entry.utils

import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.AboutItem
import ohos_app_cangjie_entry.domain.model.CategoryItem
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.ui.theme.BackgroundCategory1
import ohos_app_cangjie_entry.ui.theme.BackgroundCategory2
import ohos_app_cangjie_entry.ui.theme.BackgroundCategory3
import ohos_app_cangjie_entry.ui.theme.BackgroundCategory4
import ohos_app_cangjie_entry.ui.theme.BackgroundCategory5
import ohos_app_cangjie_entry.ui.theme.BackgroundCategory6

public class DataDummy {
    public static func products(): ArrayList<ProductItem> {
        let items = ArrayList<ProductItem>()
        items.add(ProductItem(1, "Macaroni", "Macaroni is dry pasta shaped like narrow tubes.[2] Made with durum wheat, macaroni is commonly cut in short lengths; curved macaroni may be referred to as elbow macaroni.", "product1", "1pcs, Price", 6.52, "50gr", 3.5))
        items.add(ProductItem(2, "Egg", "Eggs have a hard shell of calcium carbonate enclosing a liquid white, a single yolk (or an occasional double yolk)and an air cell.", "product2", "10pcs, Price", 2.50, "150gr", 5.0))
        items.add(ProductItem(3, "Mayonnaise", "Mayonnaise is the creamy white condiment you use to make tuna salad or spread on your BLT sandwich. Most mayonnaise is made from egg yolks, oil, and lemon juice. Mayonnaise is common in many foods around the world, from fancy French sauces like remoulade to Japanese okonomiyaki.", "product3", "1pcs, Price", 7.5, "100gr", 4.0))
        items.add(ProductItem(4, "Egg Noodles", "A type of flat pasta that differs from regular flour and water pasta in that eggs are added to enrich the dough. Several different widths are produced commercially and the noodles are available fresh or dried.", "product4", "1pcs, Price", 9.5, "90gr", 4.7))
        items.add(ProductItem(5, "Ginger", "Ginger is one of the most popular spices in the world and comes from the underground stem of the ginger plant. The aromatic and fiery spice has been a signature ingredient in Asian cuisine since ancient times.", "product5", "20pcs, Price", 2.0, "50gr", 4.2))
        items.add(ProductItem(6, "Diet Coke", "Diet coke is the perfect balance of crisp and refreshing, with no sugar and no calories. enjoy the great diet cola flavour that's fizzing delicious! CARBONATED WATER, CARAMEL COLOUR, PHOSPHORIC AND CITRIC ACID, ASPARTAME (CONTAINS PHENYLALANINE), FLAVOUR, SODIUM BENZOATE, CAFFEINE, ACESULFAME-POTASSIUM.", "product6", "1pcs, Price", 1.5, "10gr", 3.8))
        items.add(ProductItem(7, "Broilers", "A broiler is any chicken (Gallus gallus domesticus) that is bred and raised specifically for meat production. Most commercial broilers reach slaughter weight between four and six weeks of age, although slower growing breeds reach slaughter weight at approximately 14 weeks of age.", "product7", "1pcs, Price", 5.0, "70gr", 3.0))
        items.add(ProductItem(8, "Juice Apple", "It is a very clear liquid from which the pulp has been removed. This juice is often used to flavor meats, or as an ingredient in dressings and sauces, adding a sweet apple flavor.", "product8", "1pcs, Price", 6.5, "100gr", 4.2))
        items.add(ProductItem(9, "Juice Orange", "Orange juice is a fruit juice obtained by squeezing, pressing or otherwise crushing the interior of an orange. Orange juice is a nutrition powerhouse with naturally occurring vitamins and minerals and many antioxidants.", "product9", "1pcs, Price", 5.54, "100gr", 4.7))
        items.add(ProductItem(10, "Banana", "A banana is an elongated, edible fruit - botanically a berry - produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called plantains, distinguishing them from dessert bananas.", "product10", "8pcs, Price", 9.10, "100gr", 4.5))
        return items
    }

    public static func categories(): ArrayList<CategoryItem> {
        let items = ArrayList<CategoryItem>()
        items.add(CategoryItem("Fresh Fruits\n& Vegetable", "category1", BackgroundCategory1))
        items.add(CategoryItem("Cooking Oil\n& Ghee", "category2", BackgroundCategory2))
        items.add(CategoryItem("Meat & Fish", "category3", BackgroundCategory3))
        items.add(CategoryItem("Bakery & Snacks", "category4", BackgroundCategory4))
        items.add(CategoryItem("Dairy & Eggs", "category5", BackgroundCategory5))
        items.add(CategoryItem("Beverages", "category6", BackgroundCategory6))
        return items
    }

    public static func aboutItems(): ArrayList<AboutItem> {
        let items = ArrayList<AboutItem>()
        items.add(AboutItem("ic_orders", "Orders"))
        items.add(AboutItem("ic_my_details", "My Details"))
        items.add(AboutItem("ic_address", "Delivery Address"))
        items.add(AboutItem("ic_payment", "Payment"))
        items.add(AboutItem("ic_notification", "Notification"))
        return items
    }
}