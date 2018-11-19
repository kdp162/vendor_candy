# Required packages
PRODUCT_PACKAGES += \
    bootanimation.zip \
    Gallery2 \
    LatinIME \
    Launcher3 \
    LiveWallpapers \
    LiveWallpapersPicker \
    messaging \
    ThemePicker \
    Updater\
    WeatherClient

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.exfat \
    fsck.ntfs \
    mke2fs \
    mkfs.exfat \
    mkfs.ntfs \
    mount.ntfs

# WeatherClient
PRODUCT_COPY_FILES += \
    vendor/candy/prebuilt/etc/permissions/org.pixelexperience.weather.client.xml:system/etc/permissions/org.pixelexperience.weather.client.xml \
    vendor/candy/prebuilt/etc/default-permissions/org.pixelexperience.weather.client.xml:system/etc/default-permissions/org.pixelexperience.weather.client.xml

# Include explicitly to work around GMS issues
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full \
    librsjni

# Device Personalization Services
PRODUCT_PACKAGES += MatchmakerPrebuilt

# Fonts
PRODUCT_PACKAGES += \
    FontArbutusSourceOverlay \
    FontArvoLatoOverlay \
    FontRubikRubikOverlay \
    FontGoogleSansOverlay \

-include vendor/candy/config/overlay.mk

# Include PixelGApps in build
ifneq ($(INCLUDE_PIXELGAPPS), )
    $(call inherit-product-if-exists, vendor/pixelgapps/pixel-gapps.mk)
endif
