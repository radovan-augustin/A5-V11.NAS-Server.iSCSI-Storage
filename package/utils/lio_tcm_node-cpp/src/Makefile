#
# Copyright (c) 2015 Radovan Augustin, rado_augustin@yahoo.com
# All rights reserved.
#
# This file is licensed under BSD 3-Clause License.
#

SRCS_TCM=_py.cpp \
         tcm_modules.cpp \
         tcm_iblock.cpp \
         tcm_node.cpp

OBJS_TCM=$(SRCS_TCM:.cpp=.o)

all: tcm_node

%.o: %.cpp
	$(CXX) -Wno-write-strings -nostdinc++ -s -fno-rtti -I$(STAGING_DIR)/usr/include/uClibc++ -c $< -o $@

tcm_node: $(OBJS_TCM)
	$(CXX) -nodefaultlibs -lgcc_s -lc -luClibc++ -luuid $(OBJS_TCM) -o $@
