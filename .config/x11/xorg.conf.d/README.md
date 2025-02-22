# X11 configuration directory

## .conf files

Here's what each .conf file does

### 10-nvidia-drm-outputclass.conf

Enable NVIDIA Optimus compatibility and use NVIDIA graphics only.

### 10-serverflags.conf

Set up time until sleep mode and suspend.

### 40-mouse-accel.conf

Disable mouse acceleration.

## Apply .conf files

If you want to use these config files you need to run the following commands:

```
$ sudo mkdir -p /etc/X11/xorg.conf.d

$ sudo ln -s $XDG_CONFIG_HOME/x11/xorg.conf.d/*.conf /etc/X11/xorg.conf.d
```
