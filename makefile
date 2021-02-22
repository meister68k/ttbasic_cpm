.PHONY : all clean cleanall

TARGET = ttbasic.com
all : $(TARGET)

SRCS = ttbasic.c basic.c
OBJS = $(SRCS:%.c=%.o)

CC     = zcc +cpm -subtype=x1 -c
CCOPT  = -O3 -DAMALLOC
LK     = zcc +cpm -create-app
LKOPT  = 


$(TARGET) : $(OBJS)
	$(LK) $(LKOPT) -o$(@:%.com=%.bin) $(OBJS)

%.o : %.c
	$(CC) $(CCOPT) -o$@ $<

clean :
	-del $(OBJS) $(TARGET:%.com=%.bin) zcc_opt.def

cleanall : clean
	-del $(TARGET)

