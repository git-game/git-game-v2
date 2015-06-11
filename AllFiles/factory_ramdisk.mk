#
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ifeq (,$(ONE_SHOT_MAKEFILE))
ifneq ($(TARGET_BUILD_PDK),true)
  TARGET_BUILD_FACTORY=true
endif
ifeq ($(TARGET_BUILD_FACTORY),true)

# PRODUCT_FACTORY_RAMDISK_MODULES consists of "<module_name>:<install_path>[:<install_path>...]" tuples.
# <install_path> is relative to TARGET_FACTORY_RAMDISK_OUT.
# We can have multiple <install_path>s because multiple modules may have the same name.
# For example:
# PRODUCT_FACTORY_RAMDISK_MODULES := \
#     toolbox:system/bin/toolbox adbd:sbin/adbd adb:system/bin/adb
factory_ramdisk_modules := $(strip $(PRODUCTS.$(INTERNAL_PRODUCT).PRODUCT_FACTORY_RAMDISK_MODULES))
ifneq (,$(factory_ramdisk_modules))

# A module name may end up in multiple modules (so multiple built files)
# with the same name.
# This function selects the module built file based on the install path.
# $(1): the dest install path
# $(2): the module built files
define install-one-factory-ramdisk-module
$(eval _iofrm_suffix := $(suffix $(1))) \
$(if $(_iofrm_suffix), \
    $(eval _iofrm_pattern := %$(_iofrm_suffix)), \
    $(eval _iofrm_pattern := %$(notdir $(1)))) \
$(eval _iofrm_src := $(filter $(_iofrm_pattern),$(2))) \
$(if $(filter 1,$(words $(_iofrm_src))), \
    $(eval _fulldest := $(TARGET_FACTORY_RAMDISK_OUT)/$(1)) \
    $(eval $(call copy-one-file,$(_iofrm_src),$(_fulldest))) \
    $(eval INTERNAL_FACTORY_RAMDISK_EXTRA_MODULES_FILES += $(_fulldest)), \
    $(error Error: Cannot find match in "$(2)" for "$(1)") \
    )
endef

INTERNAL_FACTORY_RAMDISK_EXTRA_MODULES_FILES :=
$(foreach m, $(factory_ramdisk_modules), \
    $(eval _fr_m_tuple := $(subst :, ,$(m))) \
    $(eval _fr_m_name := $(word 1,$(_fr_m_tuple))) \
    $(eval _fr_dests := $(wordlist 2,999,$(_fr_m_tuple))) \
    $(eval _fr_m_built := $(filter $(PRODUCT_OUT)/%, $(ALL_MODULES.$(_fr_m_name).BUILT))) \
    $(foreach d,$(_fr_dests),$(call install-one-factory-ramdisk-module,$(d),$(_fr_m_built))) \
    )
endif

# Files may also be installed via PRODUCT_COPY_FILES, PRODUCT_PACKAGES etc.
INTERNAL_FACTORY_RAMDISK_FILES := $(filter $(TARGET_FACTORY_RAMDISK_OUT)/%, \
    $(ALL_DEFAULT_INSTALLED_MODULES))

ifneq (,$(INTERNAL_FACTORY_RAMDISK_EXTRA_MODULES_FILES)$(INTERNAL_FACTORY_RAMDISK_FILES))

# These files are made by magic in build/core/Makefile so we need to explicitly include them
$(eval $(call copy-one-file,$(TARGET_OUT)/build.prop,$(TARGET_FACTORY_RAMDISK_OUT)/system/build.prop))
INTERNAL_FACTORY_RAMDISK_FILES += $(TARGET_FACTORY_RAMDISK_OUT)/system/build.prop

BUILT_FACTORY_RAMDISK_FS := $(PRODUCT_OUT)/factory_ramdisk.gz
BUILT_FACTORY_RAMDISK_TARGET := $(PRODUCT_OUT)/factory_ramdisk.img

INSTALLED_FACTORY_RAMDISK_FS := $(BUILT_FACTORY_RAMDISK_FS)
$(INSTALLED_FACTORY_RAMDISK_FS) : $(MKBOOTFS) \
    $(INTERNAL_FACTORY_RAMDISK_EXTRA_MODULES_FILES) $(INTERNAL_FACTORY_RAMDISK_FILES) | $(MINIGZIP)
	$(call pretty,"Target factory ram disk file system: $@")
	$(hide) $(MKBOOTFS) $(TARGET_FACTORY_RAMDISK_OUT) | $(MINIGZIP) > $@

TARGET_RAMDISK_KERNEL := $(INSTALLED_KERNEL_TARGET)
INSTALLED_FACTORY_RAMDISK_TARGET := $(BUILT_FACTORY_RAMDISK_TARGET)
ifneq (,$(BOARD_KERNEL_CMDLINE_FACTORY_BOOT))
  RAMDISK_CMDLINE := --cmdline "$(BOARD_KERNEL_CMDLINE_FACTORY_BOOT)"
else
  RAMDISK_CMDLINE :=
endif
$(INSTALLED_FACTORY_RAMDISK_TARGET) : $(MKBOOTIMG) $(TARGET_RAMDISK_KERNEL) $(INSTALLED_FACTORY_RAMDISK_FS)
	$(call pretty,"Target factory ram disk img format: $@")
	$(MKBOOTIMG) --kernel $(TARGET_RAMDISK_KERNEL) --ramdisk $(INSTALLED_FACTORY_RAMDISK_FS) \
            --base $(BOARD_KERNEL_BASE) $(BOARD_MKBOOTIMG_ARGS) $(RAMDISK_CMDLINE) --output $@

endif

endif # TARGET_BUILD_PDK
endif # ONE_SHOT_MAKEFILE
