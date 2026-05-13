package ohos_app_cangjie_entry.presentation.component

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*

@Builder
public func ratingBar(rating: Float64): Unit {
    Row(space: 4) {
        if (rating >= 1.0) {
            Image(@r(app.media.ic_star)).width(14).height(14).objectFit(ImageFit.Contain)
        } else if (rating >= 0.5) {
            Image(@r(app.media.ic_star_half)).width(14).height(14).objectFit(ImageFit.Contain)
        } else {
            Image(@r(app.media.ic_star_outline)).width(14).height(14).objectFit(ImageFit.Contain)
        }

        if (rating >= 2.0) {
            Image(@r(app.media.ic_star)).width(14).height(14).objectFit(ImageFit.Contain)
        } else if (rating >= 1.5) {
            Image(@r(app.media.ic_star_half)).width(14).height(14).objectFit(ImageFit.Contain)
        } else {
            Image(@r(app.media.ic_star_outline)).width(14).height(14).objectFit(ImageFit.Contain)
        }

        if (rating >= 3.0) {
            Image(@r(app.media.ic_star)).width(14).height(14).objectFit(ImageFit.Contain)
        } else if (rating >= 2.5) {
            Image(@r(app.media.ic_star_half)).width(14).height(14).objectFit(ImageFit.Contain)
        } else {
            Image(@r(app.media.ic_star_outline)).width(14).height(14).objectFit(ImageFit.Contain)
        }

        if (rating >= 4.0) {
            Image(@r(app.media.ic_star)).width(14).height(14).objectFit(ImageFit.Contain)
        } else if (rating >= 3.5) {
            Image(@r(app.media.ic_star_half)).width(14).height(14).objectFit(ImageFit.Contain)
        } else {
            Image(@r(app.media.ic_star_outline)).width(14).height(14).objectFit(ImageFit.Contain)
        }

        if (rating >= 5.0) {
            Image(@r(app.media.ic_star)).width(14).height(14).objectFit(ImageFit.Contain)
        } else if (rating >= 4.5) {
            Image(@r(app.media.ic_star_half)).width(14).height(14).objectFit(ImageFit.Contain)
        } else {
            Image(@r(app.media.ic_star_outline)).width(14).height(14).objectFit(ImageFit.Contain)
        }
    }
}