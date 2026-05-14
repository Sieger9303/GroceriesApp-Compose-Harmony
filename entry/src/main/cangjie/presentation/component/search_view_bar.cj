package ohos_app_cangjie_entry.presentation.component

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor

@Component
public class SearchViewBar {
    @Prop var hint: String
    @Link var query: String
    var showInlineResults: Bool = false
    var onValueChange: (String) -> Unit = { _ => }
    var onClickSearch: (String) -> Unit = { _ => }
    var onClickCard: (ProductItem) -> Unit = { _ => }
    var onClickAdd: (ProductItem) -> Unit = { _ => }

    public func build(): Unit {
        Row(space: 10) {
            Image(@r(app.media.ic_search))
                .width(18)
                .height(18)
                .objectFit(ImageFit.Contain)
                .onClick({ _ =>
                    this.onClickSearch(this.query)
                })

            TextInput(placeholder: this.hint, text: this.query)
                .layoutWeight(1)
                .height(48)
                .backgroundColor(GrayBackground)
                .fontSize(12.fp)
                .fontColor(Black)
                .placeholderColor(GraySecondTextColor)
                .caretColor(Black)
                .onChange({ value =>
                    this.query = value
                    this.onValueChange(value)
                })
                .onSubmit({ _ =>
                    this.onClickSearch(this.query)
                })
        }
        .width(100.percent)
        .height(48)
        .padding(left: 16, right: 16)
        .backgroundColor(GrayBackground)
        .borderRadius(16.fp)
        .alignItems(VerticalAlign.Center)
    }
}
