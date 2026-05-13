package ohos_app_cangjie_entry.presentation.component

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.navigation.NAV_ABOUT_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_ABOUT_TITLE
import ohos_app_cangjie_entry.navigation.NAV_CART_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_CART_TITLE
import ohos_app_cangjie_entry.navigation.NAV_EXPLORE_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_EXPLORE_TITLE
import ohos_app_cangjie_entry.navigation.NAV_HOME_ROUTE
import ohos_app_cangjie_entry.navigation.NAV_HOME_TITLE
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.ui.theme.Green

@Component
public class BottomBar {
    @StorageLink["main_active_route"] var activeRoute: String = NAV_HOME_ROUTE
    @StorageLink["main_selected_product_id"] var selectedProductId: Int64 = 0
    @StorageLink["main_search_query"] var searchQuery: String = ""

    func build(): Unit {
        Row() {
            Column(space: 4) {
                if (this.activeRoute == NAV_HOME_ROUTE) {
                    Image(@r(app.media.ic_home_selected))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                } else {
                    Image(@r(app.media.ic_home))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                }

                Text(NAV_HOME_TITLE)
                    .fontSize(12.fp)
                    .fontColor(if (this.activeRoute == NAV_HOME_ROUTE) { Green } else { GraySecondTextColor })
                    .fontWeight(FontWeight.Medium)
            }
            .width(25.percent)
            .padding(top: 4, bottom: 2)
            .alignItems(HorizontalAlign.Center)
            .onClick({ _ =>
                this.activeRoute = NAV_HOME_ROUTE
                this.selectedProductId = 0
                this.searchQuery = ""
            })

            Column(space: 4) {
                if (this.activeRoute == NAV_EXPLORE_ROUTE) {
                    Image(@r(app.media.ic_explore_selected))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                } else {
                    Image(@r(app.media.ic_explore))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                }

                Text(NAV_EXPLORE_TITLE)
                    .fontSize(12.fp)
                    .fontColor(if (this.activeRoute == NAV_EXPLORE_ROUTE) { Green } else { GraySecondTextColor })
                    .fontWeight(FontWeight.Medium)
            }
            .width(25.percent)
            .padding(top: 4, bottom: 2)
            .alignItems(HorizontalAlign.Center)
            .onClick({ _ =>
                this.activeRoute = NAV_EXPLORE_ROUTE
                this.selectedProductId = 0
                this.searchQuery = ""
            })

            Column(space: 4) {
                if (this.activeRoute == NAV_CART_ROUTE) {
                    Image(@r(app.media.ic_cart_selected))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                } else {
                    Image(@r(app.media.ic_cart))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                }

                Text(NAV_CART_TITLE)
                    .fontSize(12.fp)
                    .fontColor(if (this.activeRoute == NAV_CART_ROUTE) { Green } else { GraySecondTextColor })
                    .fontWeight(FontWeight.Medium)
            }
            .width(25.percent)
            .padding(top: 4, bottom: 2)
            .alignItems(HorizontalAlign.Center)
            .onClick({ _ =>
                this.activeRoute = NAV_CART_ROUTE
                this.selectedProductId = 0
                this.searchQuery = ""
            })

            Column(space: 4) {
                if (this.activeRoute == NAV_ABOUT_ROUTE) {
                    Image(@r(app.media.ic_person_selected))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                } else {
                    Image(@r(app.media.ic_person))
                        .width(22)
                        .height(22)
                        .objectFit(ImageFit.Contain)
                }

                Text(NAV_ABOUT_TITLE)
                    .fontSize(12.fp)
                    .fontColor(if (this.activeRoute == NAV_ABOUT_ROUTE) { Green } else { GraySecondTextColor })
                    .fontWeight(FontWeight.Medium)
            }
            .width(25.percent)
            .padding(top: 4, bottom: 2)
            .alignItems(HorizontalAlign.Center)
            .onClick({ _ =>
                this.activeRoute = NAV_ABOUT_ROUTE
                this.selectedProductId = 0
                this.searchQuery = ""
            })
        }
        .width(100.percent)
        .padding(top: 14, right: 18, bottom: 18, left: 18)
        .backgroundColor(0xFFFFFFFF)
        .borderRadius(topLeft: 16.fp, topRight: 16.fp, bottomLeft: 0.fp, bottomRight: 0.fp)
    }
}
