TEMPERATURE_CONTROLLER_VERSION = 3073c05eaca4b365057fef83f4688c221d7c5cad
TEMPERATURE_CONTROLLER_SITE = git@github.com:joseph-janadi/temperature-controller.git
TEMPERATURE_CONTROLLER_SITE_METHOD = git

define TEMPERATURE_CONTROLLER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define TEMPERATURE_CONTROLLER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/temperature-controller $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
