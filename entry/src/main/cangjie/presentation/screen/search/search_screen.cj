package ohos_app_cangjie_entry.presentation.screen.search

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import std.collection.ArrayList
import ohos_app_cangjie_entry.domain.model.ProductItem
import ohos_app_cangjie_entry.presentation.common.content.emptyContent
import ohos_app_cangjie_entry.presentation.common.content.listContentProduct
import ohos_app_cangjie_entry.presentation.component.SearchViewBar
import ohos_app_cangjie_entry.utils.STRING_SEARCH_STORE
import ohos_app_cangjie_entry.utils.normalizedQuery

func searchProducts(query: String): ArrayList<ProductItem> {
    return SearchStateHolder().searchProducts(query)
}

func addSearchResultToCart(productItem: ProductItem): Unit {
    SearchStateHolder().addCart(productItem)
}

@Component
public class SearchScreen {
    @StorageLink["main_search_query"] var searchQuery: String = ""
    @StorageLink["main_selected_product_id"] var selectedProductId: Int64 = 0
    @StorageLink["product_state_revision"] var productStateRevision: Int64 = 0

    public func build(): Unit {
        Scroll() {
            Column(space: 16) {
                SearchViewBar(hint: STRING_SEARCH_STORE, query: this.searchQuery, onValueChange: { _: String =>
                }, onClickSearch: { _: String =>
                }, onClickCard: { productItem: ProductItem =>
                    this.selectedProductId = productItem.id
                }, onClickAdd: { productItem: ProductItem =>
                    addSearchResultToCart(productItem)
                    this.productStateRevision = this.productStateRevision + 1
                })

                if (normalizedQuery(this.searchQuery).isEmpty()) {
                    emptyContent()
                } else {
                    listContentProduct(searchProducts(this.searchQuery), title: "", horizontal: false, onClickCard: { productItem: ProductItem =>
                        this.selectedProductId = productItem.id
                    }, onClickAdd: { productItem: ProductItem =>
                        addSearchResultToCart(productItem)
                        this.productStateRevision = this.productStateRevision + 1
                    })
                }
            }
            .width(100.percent)
            .padding(top: 0, bottom: 24)
        }
        .scrollable(ScrollDirection.Vertical)
    }
}
