package ohos_app_cangjie_entry.presentation.screen.explore

import kit.ArkUI.*
import std.collection.ArrayList
import ohos.arkui.state_macro_manage.*
import ohos_app_cangjie_entry.domain.model.CategoryItem
import ohos_app_cangjie_entry.navigation.ROUTE_SEARCH
import ohos_app_cangjie_entry.presentation.common.card.categoryCard
import ohos_app_cangjie_entry.presentation.component.SearchViewBar
import ohos_app_cangjie_entry.ui.theme.Black
import ohos_app_cangjie_entry.utils.DataDummy
import ohos_app_cangjie_entry.utils.STRING_FIND_PRODUCTS
import ohos_app_cangjie_entry.utils.STRING_SEARCH_CATEGORY
import ohos_app_cangjie_entry.utils.normalizedQuery


@Component
public class ExploreScreen {
    @StorageLink["main_active_route"] var activeRoute: String = "explore_screen"
    @StorageLink["main_search_query"] var searchQuery: String = ""
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
                    SearchViewBar(hint: STRING_SEARCH_CATEGORY, query: this.searchQuery, onValueChange: { _: String =>
                    }, onClickSearch: { value: String =>
                        this.searchQuery = value
                        if (!normalizedQuery(value).isEmpty()) {
                            this.activeRoute = ROUTE_SEARCH
                        }
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
