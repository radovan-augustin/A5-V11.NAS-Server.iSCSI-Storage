modprobe target_core_mod
#### ALUA Logical Unit Groups
#### Parameters for TCM subsystem plugin storage object reference
tcm_node --establishdev iblock_0/storage /dev/sda
tcm_node --setunitserialwithmd iblock_0/storage ec1c629e-421c-4457-9613-dc4ac9e8b8f2
#### ALUA Target Port Groups
tcm_node --addaluatpgwithmd iblock_0/storage default_tg_pt_gp 0
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/alua/default_tg_pt_gp/alua_access_type
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/alua/default_tg_pt_gp/preferred
echo 100 > /sys/kernel/config/target/core/iblock_0/storage/alua/default_tg_pt_gp/nonop_delay_msecs
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/alua/default_tg_pt_gp/trans_delay_msecs
#### Attributes for /sys/kernel/config/target/core/iblock_0/storage
echo 65535 > /sys/kernel/config/target/core/iblock_0/storage/attrib/max_write_same_len
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/unmap_granularity_alignment
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/unmap_granularity
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/max_unmap_block_desc_count
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/max_unmap_lba_count
echo 128 > /sys/kernel/config/target/core/iblock_0/storage/attrib/queue_depth
echo 65528 > /sys/kernel/config/target/core/iblock_0/storage/attrib/optimal_sectors
echo 8192 > /sys/kernel/config/target/core/iblock_0/storage/attrib/fabric_max_sectors
echo 512 > /sys/kernel/config/target/core/iblock_0/storage/attrib/block_size
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_rest_reord
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/is_nonrot
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/force_pr_aptpl
echo 1 > /sys/kernel/config/target/core/iblock_0/storage/attrib/enforce_pr_isids
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/pi_prot_format
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/hw_pi_prot_type
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/pi_prot_type
echo 1 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_3pc
echo 1 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_caw
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_tpws
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_tpu
echo 1 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_tas
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_ua_intlck_ctrl
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_write_cache
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_fua_read
echo 1 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_fua_write
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_dpo
echo 0 > /sys/kernel/config/target/core/iblock_0/storage/attrib/emulate_model_alias
