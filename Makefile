#!/bin/sh

# (C) 2012 Fathi Boudra <fathi.boudra@linaro.org>

# Calls all necessary live-build programs in the correct order to complete
# the bootstrap, chroot, binary, and source stage.

# You need live-build package installed and superuser privileges.

TIMESTAMP=`date "+%y%m%d%H%M%S"`
LOGFILE=logfile-$(TIMESTAMP)

all:
	set -e; sudo lb build 2>&1 | tee $(LOGFILE)

clean:
	sudo lb clean --purge
