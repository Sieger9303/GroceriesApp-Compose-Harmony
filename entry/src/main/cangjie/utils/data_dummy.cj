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
        items.add(ProductItem(1, "Macaroni", "Macaroni is dry pasta shaped like narrow tubes.", "product1", "1pcs, Price", 6.52, "50gr", 3.5))
        items.add(ProductItem(2, "Egg", "Eggs have a hard shell of calcium carbonate enclosing a liquid white and a yolk.", "product2", "10pcs, Price", 2.50, "150gr", 5.0))
        items.add(ProductItem(3, "Mayonnaise", "Mayonnaise is a creamy condiment made from egg yolks, oil, and lemon juice.", "product3", "1pcs, Price", 7.5, "100gr", 4.0))
        items.add(ProductItem(4, "Egg Noodles", "A type of flat pasta enriched with eggs.", "product4", "1pcs, Price", 9.5, "90gr", 4.7, isCart: true))
        items.add(ProductItem(5, "Ginger", "Aromatic and fiery spice from the underground stem of the ginger plant.", "product5", "20pcs, Price", 2.0, "50gr", 4.2, isCart: true))
        items.add(ProductItem(6, "Diet Coke", "The perfect balance of crisp and refreshing with no sugar.", "product6", "1pcs, Price", 1.5, "10gr", 3.8))
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