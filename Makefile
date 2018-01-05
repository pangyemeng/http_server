CXXFLAGS =	-O2 -g -Wall -fmessage-length=0

OBJS =		http_conn.o main.o

LIBS =  -lpthread

TARGET =	http_server

$(TARGET):	$(OBJS)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

all:	$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
	rm -f *.o
