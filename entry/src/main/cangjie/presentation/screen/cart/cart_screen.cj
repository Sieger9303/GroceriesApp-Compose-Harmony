package ohos_app_cangjie_entry.presentation.screen.cart

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.content.listContentCart
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.utils.STRING_MY_CART

func cartProductsForRevision(revision: Int64): ArrayList<ProductItem> {
    let _ = revision
    return CartStateHolder().getCartProducts()
}

@Component
public class CartScreen {
    @StorageLink["product_state_revision"] var productStateRevision: Int64 = 0

    public func build(): Unit {
        Column() {
            Text(STRING_MY_CART)
                .fontSize(18.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Bold)
                .width(100.percent)
                .textAlign(TextAlign.Center)
                .padding(top: 16)

            Blank().height(16)

            listContentCart(cartProductsForRevision(this.productStateRevision), onClickDeleteCart: { productItem: ProductItem =>
                CartStateHolder().deleteCart(productItem)
                this.productStateRevision = this.productStateRevision + 1
            })
        }
        .width(100.percent)
        .height(100.percent)
        .padding(bottom: 24)
    }
}
