mkdir /sys/kernel/config/target/iscsi
#### iSCSI Discovery authentication information
echo -n 0 > /sys/kernel/config/target/iscsi/discovery_auth/enforce_discovery_auth
#### Network portals for iSCSI Target Portal Group
mkdir -p /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/np/192.168.1.1:3260
#### iSCSI Target Ports
mkdir -p /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/lun/lun_0
ln -s /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/lun/lun_0/../../../../../../target/core/iblock_0/storage /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/lun/lun_0/da99004bdf
#lio_node --aluasecmd iqn.2003-01.org.nas-server.iscsi-storage:1 1 0
#### Attributes for iSCSI Target Portal Group
echo 0 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/t10_pi
echo 0 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/default_erl
echo 1 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/demo_mode_discovery
echo 0 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/prod_mode_write_protect
echo 0 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/demo_mode_write_protect
echo 1 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/cache_dynamic_acls
echo 64 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/default_cmdsn_depth
echo 1 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/generate_node_acls
echo 2 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/netif_timeout
echo 15 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/login_timeout
echo 0 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/attrib/authentication
#### authentication for iSCSI Target Portal Group
echo -n 0 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/auth/authenticate_target
#### Parameters for iSCSI Target Portal Group
echo "2048~65535" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/OFMarkInt
echo "2048~65535" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/IFMarkInt
echo "No" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/OFMarker
echo "No" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/IFMarker
echo "0" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/ErrorRecoveryLevel
echo "Yes" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/DataSequenceInOrder
echo "Yes" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/DataPDUInOrder
echo "1" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/MaxOutstandingR2T
echo "20" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/DefaultTime2Retain
echo "2" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/DefaultTime2Wait
echo "65536" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/FirstBurstLength
echo "262144" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/MaxBurstLength
echo "262144" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/MaxXmitDataSegmentLength
echo "8192" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/MaxRecvDataSegmentLength
echo "Yes" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/ImmediateData
echo "Yes" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/InitialR2T
echo "LIO Target" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/TargetAlias
echo "1" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/MaxConnections
echo "CRC32C,None" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/DataDigest
echo "CRC32C,None" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/HeaderDigest
echo "CHAP,None" > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/param/AuthMethod
#### iSCSI Initiator ACLs for iSCSI Target Portal Group
#### Trigger to enable iSCSI Target Portal Group
echo 1 > /sys/kernel/config/target/iscsi/iqn.2003-01.org.nas-server.iscsi-storage:1/tpgt_1/enable
