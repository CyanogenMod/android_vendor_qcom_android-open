#include <media/stagefright/HardwareAPI.h>

#include "QComHardwareRenderer.h"

using android::sp;
using android::ISurface;
using android::VideoRenderer;

VideoRenderer *createRenderer(
        const sp<ISurface> &surface,
        const char *componentName,
        OMX_COLOR_FORMATTYPE colorFormat,
        size_t displayWidth, size_t displayHeight,
        size_t decodedWidth, size_t decodedHeight) {
    using android::QComHardwareRenderer;

    static const int OMX_QCOM_COLOR_FormatYVU420SemiPlanar = 0x7FA30C00;

    if (colorFormat == OMX_QCOM_COLOR_FormatYVU420SemiPlanar
        && !strncmp(componentName, "OMX.qcom.video.decoder.", 23)) {
        return new QComHardwareRenderer(
                surface, displayWidth, displayHeight,
                decodedWidth, decodedHeight);
    }

    return NULL;
}
