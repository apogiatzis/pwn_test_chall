# pwn-test-chall
**Category:** pwn

**Author:** anonymous

## Description
Simple CTF challenge

## Points
100

## Solution
<details>
 <summary>Reveal Spoiler</summary>

 ## Flag
`flag{th1s_1s_a_t3st_fl4g}`


</details>

## Run locally
### Build
```
docker build -t cybermouflons/pwn-test-chall .
```

### Extract Artifacts from Container
```
CID=$(docker create cybermouflons/pwn-test-chall) && docker cp $CID:/root/chall public/ || docker rm $CID
```

### Run
```
docker run --read-only -p 4000:4000 -d --restart=always cybermouflons/pwn-test-chall
```