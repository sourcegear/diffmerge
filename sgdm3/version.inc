
BUILD_MAJOR:=5
BUILD_MINOR:=0
BUILD_REVISION:=0
BUILD_BUILDLABEL:=dev

ifeq ($(BUILDNUM),)
BUILD_BUILDNUM:=0
else
BUILD_BUILDNUM:=$(BUILDNUM)
endif

ifeq ($(CSID),)
BUILD_CSID:=0
else
BUILD_CSID:=$(CSID)
endif
