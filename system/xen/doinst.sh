config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

preserve_perms() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  if [ -e $OLD ]; then
    cp -a $OLD ${NEW}.incoming
    cat $NEW > ${NEW}.incoming
    mv ${NEW}.incoming $NEW
  fi
  config $NEW
}

preserve_perms etc/rc.d/rc.xen-watchdog.new
preserve_perms etc/rc.d/rc.xencommons.new
preserve_perms etc/rc.d/rc.xend.new
preserve_perms etc/rc.d/rc.xendomains.new
config etc/xen/oxenstored.conf.new
config etc/xen/xm-config.xml.new
config etc/xen/xend-pci-quirks.sxp.new
config etc/xen/xend-pci-permissive.sxp.new
config etc/xen/xend-config.sxp.new
config etc/xen/xl.conf.new
config etc/qemu/target-x86_64.conf.new
config etc/default/xencommons.new
config etc/default/xendomains.new

