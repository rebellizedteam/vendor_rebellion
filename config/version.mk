# Build Type
REBELLION_BUILD_TYPE ?= UNOFFICIAL

# Date Variables
REBELLION_DATE_YEAR := $(shell date -u +%Y)
REBELLION_DATE_MONTH := $(shell date -u +%m)
REBELLION_DATE_DAY := $(shell date -u +%d)
REBELLION_DATE_HOUR := $(shell date -u +%H)
REBELLION_DATE_MINUTE := $(shell date -u +%M)
REBELLION_BUILD_DATE_UTC := $(shell date -d '$(REBELLION_DATE_YEAR)-$(REBELLION_DATE_MONTH)-$(REBELLION_DATE_DAY) $(REBELLION_DATE_HOUR):$(REBELLION_DATE_MINUTE) UTC' +%s)
REBELLION_BUILD_DATE := $(REBELLION_DATE_YEAR)$(REBELLION_DATE_MONTH)$(REBELLION_DATE_DAY)

# Versioning
REBELLION_PLATFORM_VERSION := 9.0
REBELLION_VERSION_MAJOR := 1
REBELLION_VERSION_MINOR := 5
REBELLION_VERSION_CODE := $(REBELLION_VERSION_MAJOR).$(REBELLION_VERSION_MINOR)
TARGET_PRODUCT_SHORT := $(subst rebellion_,,$(REBELLION_BUILD))
REBELLION_VERSION := RebellionOS_P-v$(REBELLION_VERSION_CODE)-$(REBELLION_BUILD)-$(REBELLION_BUILD_DATE)-$(REBELLION_BUILD_TYPE)
REBELLION_VERSION_PROP := Pie
ROM_FINGERPRINT := RebellionOS/$(REBELLION_PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(REBELLION_BUILD_DATE)

# System Properties
CUSTOM_PROPERTIES := \
    ro.rebellion.version=$(REBELLION_VERSION_PROP) \
    ro.rebellion.build_date=$(REBELLION_BUILD_DATE) \
    ro.rebellion.build_date_utc=$(REBELLION_BUILD_DATE_UTC) \
    ro.rebellion.build_type=$(REBELLION_BUILD_TYPE) \
    ro.rebellion.fingerprint=$(ROM_FINGERPRINT)
