#Compiler
ARM_CC = gcc
#OBJECT
OBJECT = owa5x_AN5
#DEFINITIONS
DEFS = -DTRACES_VERIFICATION
DEFS += -DDEBUG_TRACES

#Source Files
SOURCE_FILE = *.c

#INCLUDE
#INCLS = -I../../owasys/include
#LIBS to include
LIBS = -ldl
LIBS += -lpthread -D_REENTRANT
LIBS += -lRTU_Module -lIOs_Module -lGPS2_Module
#STRIP
ARM_STRIP = strip

#Compiler flags
CFLAGS += -Wall -Wno-unused-result

all:
	$(ARM_CC) -Wall $(DEFS) $(CFLAGS) -o$(OBJECT) $(SOURCE_FILE) $(INCLS) $(LIBS)
	$(ARM_STRIP) $(OBJECT)
