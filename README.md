Jan2026

Lets add `closure` support on `SPARC64` to [vlang](https://vlang.io/).
Steps:
1. Apply `first.patch`
2. Bootstrap
```
./v -o ./v.c -cross cmd/v
gcc -std=c99 -w ./v.c -o ./v1
./v1 -o -no-parallel -o v2 cmd/v
./v2 -o v cmd/v
./v -o ./v.c -cross cmd/v
```
3. Apply `second.patch`
4. Repeat step2
5.
