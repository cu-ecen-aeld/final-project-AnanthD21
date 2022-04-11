##############################################################
#
# AESDTEMPSENSOR
#
##############################################################

#TODO: Fill up the contents below in order to reference final project git contents
AESD_TEMP_SENSOR_VERSION = 7eff40b38cdb856b35efb1e5ef5c43e9d73c18f5
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_TEMP_SENSOR_SITE = git@github.com:cu-ecen-aeld/final-project-karthik-b-r
AESD_TEMP_SENSOR_SITE_METHOD = git
AESD_TEMP_SENSOR_GIT_SUBMODULES = YES

define AESD_TEMP_SENSOR_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/Temp_sensor temp_sensor_mlx90614
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_TEMP_SENSOR_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/Temp_sensor/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
