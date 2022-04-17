##############################################################
#
# AESDSERVERCLIENTTEST
#
##############################################################

#TODO: Fill up the contents below in order to reference final project git contents
AESD_SERVER_CLIENT_TEST_VERSION = 'ae8979965c24307409aa246a58f7ed0c889cb19e'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_SERVER_CLIENT_TEST_SITE = 'git@github.com:cu-ecen-aeld/final-project-karthik-b-r.git'
AESD_SERVER_CLIENT_TEST_SITE_METHOD = git
AESD_SERVER_CLIENT_TEST_GIT_SUBMODULES = YES

define AESD_SERVER_CLIENT_TEST_BUILD_CMDS
        $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/test_server_client all
	#$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/test_server_client server
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_SERVER_CLIENT_TEST_INSTALL_TARGET_CMDS
        $(INSTALL) -m 0755 $(@D)/test_server_client/* $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
