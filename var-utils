# Info


In this files are descibed general functions/stuff/configuration that still need a place to call home in this repository

## Bash completition

### SSH host completition
This is taken from a comment from Mb to [this blog post](http://b.sricola.com/post/16174981053/bash-autocomplete-for-ssh)

```bash
complete -W "$(echo $(grep '^ssh ' .bash_history | sort -u | sed 's/^ssh \([a-zA-Z0-9_-@]*\).*/\1/'))" ssh
```
