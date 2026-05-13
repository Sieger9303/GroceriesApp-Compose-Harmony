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

@Builder
public func bottomBar(activeRoute: String, onRouteSelected!: (String) -> Unit = { _ => }): Unit {
    Row() {
        Column(space: 4) {
            Image(@r(app.media.ic_home))
                .width(22)
                .height(22)
            Text(NAV_HOME_TITLE)
                .fontSize(12.fp)
                .fontColor(if (activeRoute == NAV_HOME_ROUTE) { Green } else { GraySecondTextColor })
                .fontWeight(FontWeight.Medium)
        }
        .width(25.percent)
        .padding(top: 4, bottom: 2)
        .alignItems(HorizontalAlign.Center)
        .onClick({ _ => onRouteSelected(NAV_HOME_ROUTE) })

        Column(space: 4) {
            Image(@r(app.media.ic_explore))
                .width(22)
                .height(22)
            Text(NAV_EXPLORE_TITLE)
                .fontSize(12.fp)
                .fontColor(if (activeRoute == NAV_EXPLORE_ROUTE) { Green } else { GraySecondTextColor })
                .fontWeight(FontWeight.Medium)
        }
        .width(25.percent)
        .padding(top: 4, bottom: 2)
        .alignItems(HorizontalAlign.Center)
        .onClick({ _ => onRouteSelected(NAV_EXPLORE_ROUTE) })

        Column(space: 4) {
            Image(@r(app.media.ic_cart))
                .width(22)
                .height(22)
            Text(NAV_CART_TITLE)
                .fontSize(12.fp)
                .fontColor(if (activeRoute == NAV_CART_ROUTE) { Green } else { GraySecondTextColor })
                .fontWeight(FontWeight.Medium)
        }
        .width(25.percent)
        .padding(top: 4, bottom: 2)
        .alignItems(HorizontalAlign.Center)
        .onClick({ _ => onRouteSelected(NAV_CART_ROUTE) })

        Column(space: 4) {
            Image(@r(app.media.ic_person))
                .width(22)
                .height(22)
            Text(NAV_ABOUT_TITLE)
                .fontSize(12.fp)
                .fontColor(if (activeRoute == NAV_ABOUT_ROUTE) { Green } else { GraySecondTextColor })
                .fontWeight(FontWeight.Medium)
        }
        .width(25.percent)
        .padding(top: 4, bottom: 2)
        .alignItems(HorizontalAlign.Center)
        .onClick({ _ => onRouteSelected(NAV_ABOUT_ROUTE) })
    }
    .width(100.percent)
    .padding(top: 14, right: 18, bottom: 18, left: 18)
    .backgroundColor(0xFFFFFFFF)
    .borderRadius(topLeft: 16.fp, topRight: 16.fp, bottomLeft: 0.fp, bottomRight: 0.fp)
}