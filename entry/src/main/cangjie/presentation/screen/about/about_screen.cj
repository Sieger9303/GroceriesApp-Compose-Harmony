package ohos_app_cangjie_entry.presentation.screen.about

import kit.ArkUI.*
import std.collection.ArrayList
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.domain.model.AboutItem
import ohos_app_cangjie_entry.presentation.common.card.profileCard
import ohos_app_cangjie_entry.presentation.common.content.listContentAbout
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.Green
import ohos_app_cangjie_entry.utils.closeApplication
import ohos_app_cangjie_entry.utils.DataDummy

@Builder
public func buttonLogout(onClick!: () -> Unit): Unit {
    Row(space: 12) {
        Image(@r(app.media.ic_logout))
            .width(18)
            .height(18)
            .objectFit(ImageFit.Contain)
        Text("Logout")
            .layoutWeight(1)
            .textAlign(TextAlign.Center)
            .fontSize(16.fp)
            .fontColor(Green)
            .fontWeight(FontWeight.Medium)
    }
    .width(100.percent)
    .height(48)
    .padding(left: 16, right: 16)
    .alignItems(VerticalAlign.Center)
    .backgroundColor(GrayBackground)
    .borderRadius(16.fp)
    .onClick({ _ => onClick() })
}

@Component
public class AboutScreen {
    let items: ArrayList<AboutItem> = DataDummy.aboutItems()

    public func build(): Unit {
        Scroll() {
            Column(space: 0) {
                profileCard(name: "Hari Agus Widakdo", email: "haryagus97@gmail.com")

                listContentAbout(this.items)

                Blank().height(32)

                buttonLogout(onClick: { =>
                    closeApplication()
                })
            }
            .padding(left: 16, top: 24, right: 16, bottom: 24)
            .width(100.percent)
        }
        .scrollable(ScrollDirection.Vertical)
    }
}