package ohos_app_cangjie_entry.presentation.screen

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos_app_cangjie_entry.navigation.NAV_ABOUT_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_CART_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_EXPLORE_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_HOME_ROUTE
import ohos_app_cangjie_entry.navigation.ROUTE_SEARCH
import ohos_app_cangjie_entry.presentation.component.BottomBar
import ohos_app_cangjie_entry.presentation.screen.about.AboutScreen
import ohos_app_cangjie_entry.presentation.screen.cart.CartScreen
import ohos_app_cangjie_entry.presentation.screen.detail.DetailScreen
import ohos_app_cangjie_entry.presentation.screen.explore.ExploreScreen
import ohos_app_cangjie_entry.presentation.screen.home.HomeScreen
import ohos_app_cangjie_entry.presentation.screen.search.SearchScreen
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.ui.theme.Green
import ohos_app_cangjie_entry.utils.STRING_BACK
import ohos_app_cangjie_entry.utils.STRING_PRODUCT_DETAIL

@Component
public class MainScreen {
    @StorageLink["main_active_route"] var activeRoute: String = NAV_HOME_ROUTE
    @StorageLink["main_selected_product_id"] var selectedProductId: Int64 = 0
    @StorageLink["main_search_query"] var searchQuery: String = ""

    private func selectMainRoute(route: String): Unit {
        this.activeRoute = route
        this.selectedProductId = 0
        if (route != ROUTE_SEARCH) {
            this.searchQuery = ""
        }
    }

    public func build(): Unit {
        Column() {
            Column() {
                if (this.selectedProductId > 0) {
                    DetailScreen()
                } else if (this.activeRoute == ROUTE_SEARCH) {
                    SearchScreen()
                } else if (this.activeRoute == NAV_HOME_ROUTE) {
                    HomeScreen()
                } else if (this.activeRoute == NAV_EXPLORE_ROUTE) {
                    ExploreScreen()
                } else if (this.activeRoute == NAV_CART_ROUTE) {
                    CartScreen()
                } else {
                    AboutScreen()
                }
            }
            .layoutWeight(1)

            if (this.selectedProductId == 0 && this.activeRoute != ROUTE_SEARCH) {
                BottomBar()
            } else if (this.selectedProductId > 0) {
                Row() {
                    Text(STRING_BACK)
                        .fontSize(14.fp)
                        .fontColor(Green)
                        .fontWeight(FontWeight.Bold)
                        .onClick({ _ => this.selectedProductId = 0 })
                    Text(STRING_PRODUCT_DETAIL)
                        .fontSize(16.fp)
                        .fontColor(GraySecondTextColor)
                        .layoutWeight(1)
                        .textAlign(TextAlign.Center)
                    Text(" ")
                        .fontSize(14.fp)
                }
                .width(100.percent)
                .padding(top: 16, right: 16, bottom: 16, left: 16)
                .backgroundColor(0xFFFFFFFF)
                .alignItems(VerticalAlign.Center)
            } else {
                Row() {
                    Text(STRING_BACK)
                        .fontSize(14.fp)
                        .fontColor(Green)
                        .fontWeight(FontWeight.Bold)
                        .onClick({ _ =>
                            this.selectMainRoute(NAV_HOME_ROUTE)
                        })
                    Text("Search")
                        .fontSize(16.fp)
                        .fontColor(GraySecondTextColor)
                        .layoutWeight(1)
                        .textAlign(TextAlign.Center)
                    Text(" ")
                        .fontSize(14.fp)
                }
                .width(100.percent)
                .padding(top: 16, right: 16, bottom: 16, left: 16)
                .backgroundColor(0xFFFFFFFF)
                .alignItems(VerticalAlign.Center)
            }
        }
        .width(100.percent)
        .height(100.percent)
        .backgroundColor(GrayBackground)
    }
}
