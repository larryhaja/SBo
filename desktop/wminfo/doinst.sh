( cd /usr/bin                              ; rm -rf empty.wmi )
( cd /usr/bin                              ; ln -sf /usr/bin/bash-empty.wmi empty.wmi )
( cd /usr/doc/wminfo-4.1.2/plugins.binary  ; rm -rf run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.binary  ; ln -sf /usr/bin/run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.conky   ; rm -rf run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.conky   ; ln -sf /usr/bin/run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.offline ; rm -rf run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.offline ; ln -sf /usr/bin/run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.online  ; rm -rf run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.online  ; ln -sf /usr/bin/run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.system  ; rm -rf run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/plugins.system  ; ln -sf /usr/bin/run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/samples         ; rm -rf run-all-wminfo-plugins )
( cd /usr/doc/wminfo-4.1.2/samples         ; ln -sf /usr/bin/run-all-wminfo-plugins )

