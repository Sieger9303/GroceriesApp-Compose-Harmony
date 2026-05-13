package ohos_app_cangjie_entry.presentation.screen.home

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.arkui.state_management.AppStorage
import ohos.resource.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.content.listContentProduct
import ohos_app_cangjie_entry.presentation.component.searchViewBar
import ohos_app_cangjie_entry.presentation.component.SliderBanner
import ohos_app_cangjie_entry.ui.theme.GrayThirdTextColor
import ohos_app_cangjie_entry.utils.MAIN_ACTIVE_ROUTE_KEY
import ohos_app_cangjie_entry.utils.MAIN_SELECTED_PRODUCT_ID_KEY
import ohos_app_cangjie_entry.utils.STRING_BEST_SELLING
import ohos_app_cangjie_entry.utils.STRING_EXCLUSIVE_OFFER
import ohos_app_cangjie_entry.utils.STRING_SAMPLE_COUNTRY
import ohos_app_cangjie_entry.utils.STRING_SEARCH_STORE
import ohos_app_cangjie_entry.utils.showToastShort

func exclusiveProducts(): ArrayList<ProductItem> {
    return HomeStateHolder().getProducts()
}

func bestSellingProducts(): ArrayList<ProductItem> {
    let products = HomeStateHolder().getProducts()
    let items = ArrayList<ProductItem>()
    for (index in products.size - 1..-1 : -1) {
        items.add(products[index])
    }
    return items
}

func addHomeProductToCart(productItem: ProductItem): Unit {
    HomeStateHolder().addCart(productItem)
}

@Builder
public func HeaderLocationHome(): Unit {
    Column(space: 8) {
        Blank().height(24)
        Image(@r(app.media.ic_nectar))
            .width(24)
            .height(24)
            .objectFit(ImageFit.Contain)
        Row(space: 6) {
            Image(@r(app.media.ic_location_on))
                .width(18)
                .height(18)
                .objectFit(ImageFit.Contain)
            Text(STRING_SAMPLE_COUNTRY)
                .fontSize(12.fp)
                .fontColor(GrayThirdTextColor)
                .fontWeight(FontWeight.Medium)
        }
        .alignItems(VerticalAlign.Center)
    }
    .width(100.percent)
    .alignItems(HorizontalAlign.Center)
}

@Component
public class HomeScreen {
    @StorageLink["main_search_query"] var searchQuery: String = ""
    @StorageLink["product_state_revision"] var productStateRevision: Int64 = 0

    public func build(): Unit {
        Scroll() {
            Column(space: 20) {
                HeaderLocationHome()

                searchViewBar(STRING_SEARCH_STORE, query: this.searchQuery, onValueChange: { value: String =>
                    this.searchQuery = value
                    if (!value.isEmpty()) {
                        AppStorage.setOrCreate<String>(MAIN_ACTIVE_ROUTE_KEY, "search_screen")
                    }
                }, onClickSearch: { value: String =>
                    this.searchQuery = value
                    if (!value.isEmpty()) {
                        AppStorage.setOrCreate<String>(MAIN_ACTIVE_ROUTE_KEY, "search_screen")
                    }
                })

                SliderBanner()

                listContentProduct(exclusiveProducts(), title: STRING_EXCLUSIVE_OFFER, onClickCard: { productItem: ProductItem =>
                    AppStorage.setOrCreate<Int64>(MAIN_SELECTED_PRODUCT_ID_KEY, productItem.id)
                }, onClickAdd: { productItem: ProductItem =>
                    addHomeProductToCart(productItem)
                    this.productStateRevision = this.productStateRevision + 1
                })

                Blank().height(24)

                listContentProduct(bestSellingProducts(), title: STRING_BEST_SELLING, onClickCard: { productItem: ProductItem =>
                    AppStorage.setOrCreate<Int64>(MAIN_SELECTED_PRODUCT_ID_KEY, productItem.id)
                }, onClickAdd: { productItem: ProductItem =>
                    addHomeProductToCart(productItem)
                    this.productStateRevision = this.productStateRevision + 1
                })
            }
            .padding(left: 16, top: 0, right: 16, bottom: 24)
        }
        .scrollable(ScrollDirection.Vertical)
    }
}