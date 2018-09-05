# Makefile

.PHONY: help
help:
	@echo "Usage:"
	@echo "    make:            show this help and exit"
	@echo "    make initialize: link and then restore"
	@echo "    make finalize:   backup and then unlink"
	@echo "    make link:       help string of link"
	@echo "    make unlink:     help string of unlink"
	@echo "    make restore:    help string of restore"
	@echo "    make backup:     help string of restore"

# targets

.PHONY: confirm
confirm:
	@read -p "press any key to continue: "

.PHONY: initialize
initialize: confirm

.PHONY: finalize
finalize: confirm

.PHONY: link
link: confirm

.PHONY: unlink
unlink: confirm

.PHONY: restore
restore: confirm

.PHONY: backup
backup: confirm

# include targets

-include $(CURDIR)/../apenv-*/Makefile
