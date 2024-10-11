# dotfiles

To apply all the configs, just run the root setup script.

```sh
sudo setup
```

To run an application-specific setup, navigate to the application folder and run the `setup` script only for that application.
But be careful - some of the applications are dependent on each other and will not work if setup scripts are executed in the wrong order