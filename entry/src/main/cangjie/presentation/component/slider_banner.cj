package ohos_app_cangjie_entry.presentation.component

import kit.ArkUI.*
import ohos.arkui.state_macro_manage.*
import ohos.resource.*

@Builder
public func SliderBanner(): Unit {
    Column(space: 12) {
        Swiper() {
            Image(@r(app.media.img_banner1))
                .width(100.percent)
                .height(114)
                .objectFit(ImageFit.Cover)
                .borderRadius(12.fp)
            Image(@r(app.media.img_banner2))
                .width(100.percent)
                .height(114)
                .objectFit(ImageFit.Cover)
                .borderRadius(12.fp)
            Image(@r(app.media.img_banner3))
                .width(100.percent)
                .height(114)
                .objectFit(ImageFit.Cover)
                .borderRadius(12.fp)
        }
        .width(100.percent)
        .height(114)
        .autoPlay(true)
        .interval(2600)
        .indicator(true)
    }
    .width(100.percent)
}