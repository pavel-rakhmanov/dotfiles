# Mac OS

Official documentations https://support.apple.com/en-gb/guide/terminal/apda49a1bb2-577e-4721-8f25-ffc0836f6997/mac

List of all domains that could be configured https://macos-defaults.com

Save all the values (not very useful)
```sh
defaults read > defaults.backup
```

Show the type for the given domain, key
```sh
defaults read-type <domain> <key>
```

Set new value
```sh
defaults write <domain> <key> <value>
```