# Configuration for Dell Inspiron 15 7572
Following the default arch configuration, dell notebooks requires some initial setup.

## GRUB
Set the following kernel parameters:

```
# /etc/default/grub
-------------------

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash pci=noaer acpi_backlight=vendor i915.enable_guc=3"
```

After setting the kernel parameters, don't forget to run grub-mkconfig:

```
# grub-mkconfig -o /boot/grub/grub.cfg
```

