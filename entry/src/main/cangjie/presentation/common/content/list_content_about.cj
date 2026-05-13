package ohos_app_cangjie_entry.presentation.common.content

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.AboutItem
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBorderStroke

@Builder
public func aboutItemLeadingIcon(imageName!: String): Unit {
    if (imageName == "ic_orders") {
        Image(@r(app.media.ic_orders))
            .width(20)
            .height(20)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "ic_my_details") {
        Image(@r(app.media.ic_my_details))
            .width(20)
            .height(20)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "ic_address") {
        Image(@r(app.media.ic_address))
            .width(20)
            .height(20)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "ic_payment") {
        Image(@r(app.media.ic_payment))
            .width(20)
            .height(20)
            .objectFit(ImageFit.Contain)
    } else if (imageName == "ic_notification") {
        Image(@r(app.media.ic_notification))
            .width(20)
            .height(20)
            .objectFit(ImageFit.Contain)
    } else {
        Image(@r(app.media.ic_orders))
            .width(20)
            .height(20)
            .objectFit(ImageFit.Contain)
    }
}

@Builder
public func itemAbout(aboutItem: AboutItem): Unit {
    Column(space: 0) {
        Divider().strokeWidth(1).color(GrayBorderStroke)
        Row() {
            aboutItemLeadingIcon(imageName: aboutItem.image)
            Text(aboutItem.title)
                .fontSize(16.fp)
                .fontColor(Black)
                .fontWeight(FontWeight.Medium)
                .layoutWeight(1)
                .padding(left: 8)
            Image(@r(app.media.ic_chevron_right))
                .width(16)
                .height(16)
                .objectFit(ImageFit.Contain)
        }
        .width(100.percent)
        .padding(left: 16, top: 20, right: 16, bottom: 0)
        .alignItems(VerticalAlign.Center)
        Blank().height(8)
    }
}

@Builder
public func listContentAbout(aboutItems: ArrayList<AboutItem>): Unit {
    Column(space: 0) {
        ForEach(aboutItems, itemGenerator: { item: AboutItem, idx: Int64 =>
            itemAbout(item)
        })
        Blank().height(8)
        Divider().strokeWidth(1).color(GrayBorderStroke)
    }
    .width(100.percent)
    .padding(top: 32)
}