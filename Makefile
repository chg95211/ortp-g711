APP = ortp_send_g711

INCLUDE = ./include/

LIB = ./lib/libortp.a ./lib/libortp.so ./lib/libortp.so.13

LINK_OPTS = -lortp

OBJ = ortp_send_g711.c

out: 
	gcc -g $(OBJ) -o $(APP) $(LINK_OPTS) -L $(LIB) -I $(INCLUDE)

clean:
	rm -rf *o $(APP)
