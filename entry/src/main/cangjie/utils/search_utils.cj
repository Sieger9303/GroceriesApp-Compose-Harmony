package ohos_app_cangjie_entry.utils

import std.unicode.*

public func normalizedQuery(value: String): String {
    return value.toLower().trim()
}

public func containsNormalizedQuery(source: String, query: String): Bool {
    let normalizedNeedle = normalizedQuery(query)
    if (normalizedNeedle.isEmpty()) {
        return true
    }
    return normalizedQuery(source).contains(normalizedNeedle)
}