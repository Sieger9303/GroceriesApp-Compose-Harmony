package ohos_app_cangjie_entry.presentation.screen.explore

import kit.ArkUI.*
import std.collection.ArrayList
import ohos.arkui.state_macro_manage.*
import ohos_app_cangjie_entry.domain.model.CategoryItem
import ohos_app_cangjie_entry.presentation.common.card.categoryCard
import ohos_app_cangjie_entry.presentation.component.searchViewBar
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.utils.DataDummy
import ohos_app_cangjie_entry.utils.STRING_FIND_PRODUCTS
import ohos_app_cangjie_entry.utils.STRING_SEARCH_CATEGORY

@Component
public class ExploreScreen {
    @State var searchQuery: String = ""
    let categories: ArrayList<CategoryItem> = DataDummy.categories()

    public func build(): Unit {
        Scroll() {
            Column(space: 16) {
                Text(STRING_FIND_PRODUCTS)
                    .fontSize(18.fp)
                    .fontColor(Black)
                    .fontWeight(FontWeight.Bold)
                    .width(100.percent)
                    .textAlign(TextAlign.Center)
                    .padding(top: 16)

                Column() {
                    searchViewBar(STRING_SEARCH_CATEGORY, query: this.searchQuery, onValueChange: { value: String =>
                        this.searchQuery = value
                    }, onClickSearch: { value: String =>
                        this.searchQuery = value
                    })
                }
                .padding(left: 16, right: 16)

                Grid() {
                    ForEach(this.categories, itemGenerator: { categoryItem: CategoryItem, idx: Int64 =>
                        GridItem() {
                            categoryCard(categoryItem: categoryItem)
                        }
                    })
                }
                .columnsTemplate('1fr 1fr')
                .columnsGap(12)
                .rowsGap(10)
                .width(100.percent)
                .padding(left: 16, right: 16)
            }
            .padding(bottom: 24)
            .width(100.percent)
        }
        .scrollable(ScrollDirection.Vertical)
    }
}
