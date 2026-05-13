package ohos_app_cangjie_entry.presentation.graph

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos_app_cangjie_entry.navigation.NAV_ABOUT_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_CART_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_EXPLORE_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_HOME_ROUTE
import ohos_app_cangjie_entry.navigation.ROUTE_SEARCH
import ohos_app_cangjie_entry.presentation.screen.about.AboutScreen
import ohos_app_cangjie_entry.presentation.screen.cart.CartScreen
import ohos_app_cangjie_entry.presentation.screen.detail.DetailScreen
import ohos_app_cangjie_entry.presentation.screen.explore.ExploreScreen
import ohos_app_cangjie_entry.presentation.screen.home.HomeScreen
import ohos_app_cangjie_entry.presentation.screen.search.SearchScreen

@Builder
public func mainNavigation(activeRoute: String, selectedProductId: Int64): Unit {
    if (selectedProductId > 0) {
        DetailScreen()
    } else if (activeRoute == ROUTE_SEARCH) {
        SearchScreen()
    } else if (activeRoute == NAV_HOME_ROUTE) {
        HomeScreen()
    } else if (activeRoute == NAV_EXPLORE_ROUTE) {
        ExploreScreen()
    } else if (activeRoute == NAV_CART_ROUTE) {
        CartScreen()
    } else {
        AboutScreen()
    }
}