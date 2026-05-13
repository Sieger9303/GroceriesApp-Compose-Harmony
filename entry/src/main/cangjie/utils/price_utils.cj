package ohos_app_cangjie_entry.utils

import std.convert.*

public func formatPrice(price: Float64): String {
    let formatted = price.format(".2")
    let parts = formatted.split(".")
    if (formatted.endsWith("00")) {
        return "${parts[0]}.0"
    }
    if (formatted.endsWith("0")) {
        return "${parts[0]}.${parts[1].replace("0", "")}"
    }
    return formatted
}
