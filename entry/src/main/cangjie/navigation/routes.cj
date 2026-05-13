package ohos_app_cangjie_entry.navigation

public let ROUTE_SPLASH: String = "splash_screen"
public let ROUTE_ONBOARDING: String = "on_boarding_screen"
public let ROUTE_SEARCH: String = "search_screen"
public let ROUTE_DETAILS: String = "details_screen/{productId}"

public func passProductId(productId: Int64): String {
    return "details_screen/${productId}"
}