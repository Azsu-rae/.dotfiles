### Requirements

only`homebrew` and its dependencies are required. Everything else is handled by `setup.sh`


### Useful software to have

- tldr

### What to do

```
sudo reflector \
      --country France,Germany,Netherlands,Spain,Italy \
      --age 24 \
      --protocol https \
      --download-timeout 15 \
      --sort rate \
      --save /etc/pacman.d/mirrorlist
```
