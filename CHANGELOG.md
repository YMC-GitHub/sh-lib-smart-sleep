# change log

## desc

starting

## apis

- [x] smart_sleep

```sh
cat src/index.sh |  grep "function " | sed "s/function */- [x] /g"  | sed "s/(.*) *{//g"
```

## feats

- [x] basic curd for smart sleep

## deps

```sh
list=$(ls sh_modules) ; echo "$list" | sed "s/^ */- [x] /g"
list=$(ls sh_modules) ; echo "$list" | sed "s/^ */- [ ] /g"
```

### dev

- [ ] sh-lib-path-resolve.sh
- [x] sh-lib-project-dir-map.sh
- [x] sh-lib-load-lib.sh
- [ ] sh-lib-lang.sh
- [x] sh-lib-gpg.sh
- [x] sh-lib-ssh.sh

### tes

- [ ] sh-lib-path-resolve.sh
- [x] sh-lib-project-dir-map.sh
- [x] sh-lib-load-lib.sh
- [ ] sh-lib-lang.sh
- [ ] sh-lib-test.sh
- [ ] sh-lib-time-cost.sh

### pro

- [ ] sh-lib-gpg.sh
- [ ] sh-lib-lang.sh
- [ ] sh-lib-load-lib.sh
- [ ] sh-lib-path-resolve.sh
- [ ] sh-lib-project-dir-map.sh
- [ ] sh-lib-project-path-get.sh
- [ ] sh-lib-test.sh
- [ ] sh-lib-this-file.sh
- [ ] sh-lib-time-cost.sh
- [ ] sh-lib-txt-part.sh
- [ ] sh-lib-var-list.sh

### sam

- [ ] sh-lib-path-resolve.sh
- [x] sh-lib-project-dir-map.sh
- [x] sh-lib-load-lib.sh
- [ ] sh-lib-lang.sh