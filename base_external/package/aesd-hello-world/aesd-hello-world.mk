##############################################################
#
# AESDHELLOWORLD
#
##############################################################

#TODO: Fill up the contents below in order to reference final project git contents
AESD_HELLO_WORLD_VERSION = c0b3c81b3e15c03afa3eadf195c21d105bb01a70
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_HELLO_WORLD_SITE = git@github.com:cu-ecen-aeld/final-project-karthik-b-r
AESD_HELLO_WORLD_SITE_METHOD = git
AESD_HELLO_WORLD_GIT_SUBMODULES = YES

define AESD_HELLO_WORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/test all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_HELLO_WORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/test/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
