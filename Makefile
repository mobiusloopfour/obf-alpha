all:
	cc main.c -O0 -std=gnu89 -Wno-implicit-int -Wno-pointer-type-mismatch -Wno-implicit-function-declaration
asm:
	cc -S main.c -O0 -std=gnu89 -Wno-implicit-int -Wno-pointer-type-mismatch -Wno-implicit-function-declaration > ./main.S

clean:
	rm main.S a.out || true

.PHONY: all asm clean