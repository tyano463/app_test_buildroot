################################################################################
# pdf-viewer
################################################################################

PDF_VIEWER_VERSION = f26c72211afeff1cc24719fc449b0dc6f68e9671
PDF_VIEWER_LICENSE = Public Domain
PDF_VIEWER_SITE = https://github.com/tyano463/pdf_viewer
PDF_VIEWER_SITE_METHOD = git
PDF_VIEWER_DEPENDENCIES =

define PDF_VIEWER_BUILD_CMDS
	(CC=$(TARGET_CC) CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS)" make -C $(@D)/source/)
	#$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/source/
endef

define PDF_VIEWER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/source/pdf_viewer $(TARGET_DIR)/usr/bin/pdf_viewer
endef

$(eval $(generic-package))

