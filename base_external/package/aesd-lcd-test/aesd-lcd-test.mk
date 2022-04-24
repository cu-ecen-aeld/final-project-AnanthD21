##############################################################
#
# LCD_TEST_ON_CLIENT
#
##############################################################

#TODO: Fill up the contents below in order to reference final project git contents
AESD_LCD_TEST_VERSION = 1e79060003aea25e0aac72874e13899d75dff45e
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_LCD_TEST_SITE = git@github.com:cu-ecen-aeld/final-project-karthik-b-r
AESD_LCD_TEST_SITE_METHOD = git
AESD_LCD_TEST_GIT_SUBMODULES = YES

define AESD_LCD_TEST_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/LCD_check lcd
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/lcd_new server_display
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_LCD_TEST_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/LCD_check/* $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/lcd_new/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
