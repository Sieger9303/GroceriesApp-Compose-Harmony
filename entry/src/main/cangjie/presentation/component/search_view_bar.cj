package ohos_app_cangjie_entry.presentation.component

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.di.AppContainer
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.content.listContentProduct
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.ui.theme.GrayBackground
import ohos_app_cangjie_entry.ui.theme.GraySecondTextColor
import ohos_app_cangjie_entry.utils.normalizedQuery

func searchViewBarProducts(query: String): ArrayList<ProductItem> {
    return AppContainer.useCases().searchProductUseCase.invoke(query)
}

@Builder
public func searchViewBar(
    hint: String,
    query!: String = "",
    onValueChange!: (String) -> Unit = { _ => },
    onClickSearch!: (String) -> Unit = { _ => }
): Unit {
    Column(space: 0) {
        Row(space: 10) {
            Image(@r(app.media.ic_search))
                .width(18)
                .height(18)
                .objectFit(ImageFit.Contain)

            TextInput(placeholder: hint, text: query)
                .layoutWeight(1)
                .height(48)
                .backgroundColor(GrayBackground)
                .fontSize(12.fp)
                .fontColor(Black)
                .placeholderColor(GraySecondTextColor)
                .caretColor(Black)
                .onChange({ value =>
                    onValueChange(value)
                })
                .onSubmit({ _ =>
                    onClickSearch(query)
                })
        }
        .width(100.percent)
        .height(48)
        .padding(left: 16, right: 16)
        .backgroundColor(GrayBackground)
        .borderRadius(16.fp)
        .alignItems(VerticalAlign.Center)

        if (!normalizedQuery(query).isEmpty()) {
            listContentProduct(searchViewBarProducts(query), title: "", horizontal: false)
        }
    }
}
