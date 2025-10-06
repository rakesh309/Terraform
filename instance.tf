# oci_core_instance.demo_inst_1 will be imported
resource "oci_core_instance" "demo_inst_1" {
  availability_domain = "YMzK:AP-MUMBAI-1-AD-1"
 // boot_volume_id      = "ocid1.bootvolume.oc1.ap-mumbai-1.abrg6ljrfp4q4ingvyhxd5fjcdbkhsi6q7xtoz6l5qixntps2udq2heb5yqa"
  compartment_id      = "ocid1.tenancy.oc1..aaaaaaaaz7lkdcw3rjveeybdrejtohzqolph7tp6hfuhsoj2xnjgebvnho7a"
  defined_tags = {
    "Oracle-Tags.CreatedBy" = "default/rakesh.selvaraj@oracle.com"
    "Oracle-Tags.CreatedOn" = "2025-10-06T05:39:46.361Z"
  }
  display_name       = "instance-20251006-1107"
  extended_metadata  = {}
  fault_domain       = "FAULT-DOMAIN-3"
  freeform_tags      = {}
  hostname_label     = null
  //id                 = "ocid1.instance.oc1.ap-mumbai-1.anrg6ljryko2csqckblakywxery2v6bdrjmgigwd6usfmuq6jdclqvnjonwa"
    image              = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaadvxnwovnu4autsj6rdg2u7uxwj764wf5gmru63yhsdo6h456morq"
  //is_cross_numa_node = false
  //launch_mode        = "PARAVIRTUALIZED"
  metadata = {
    "ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCtvXpPWXT5/AsnF3rQhL5dVvDqijO9vxT51KaXuveaI2fRvYKOy6WR9ZWldBBAg4pCbUlTG0Pt5XQYDSeTIPLR2aVuSCp6HeVq1Cbd9LW3IA2/iEIM4CbmXYCjjKKrtolKy5+ZJoz7Nu/fPsxopNKnk6HpLNuGSPwB08hjAoHS8DiK/4stoo8KyLkN+aOmpbJE4DEA6u46L1UwZwsw5/Uni6jTDIrHeatWZoSG1acNhxdR5HWqNb7Pt8sI3I2fsrrtcXLm55wYF9F1K/73WgOzeShBr1bS8eCHVJYqMvbXENc/uIug7sjU+IagCeguLp9Oct/k27r8AbzvrLBsUcDx ssh-key-2025-10-06"
  }
  //private_ip                = "10.0.1.19"
  //public_ip                 = null
  //region                    = "ap-mumbai-1"
  //security_attributes       = {}
  //security_attributes_state = "STABLE"
  shape                     = "VM.Standard.E2.1.Micro"
  state                     = "RUNNING"
  //subnet_id                 = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaaijhcg6pu3mkkv54lwjvuzo6yjf4oqxmhmvc32almm5ate7qcaffa"
  //system_tags = {
  //  "orcl-cloud.free-tier-retained" = "true"
  //}
  //time_created                = "2025-10-06 05:39:46.84 +0000 UTC"
  time_maintenance_reboot_due = null

  agent_config {
    are_all_plugins_disabled = false
    is_management_disabled   = false
    is_monitoring_disabled   = false

    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Fleet Application Management Service"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    is_live_migration_preferred = false
    recovery_action             = "RESTORE_INSTANCE"
  }

  create_vnic_details {
    assign_ipv6ip             = false
    assign_private_dns_record = false
    assign_public_ip          = "false"
    defined_tags = {
      "Oracle-Tags.CreatedBy" = "default/rakesh.selvaraj@oracle.com"
      "Oracle-Tags.CreatedOn" = "2025-10-06T05:39:46.483Z"
    }
    display_name           = "vnic20251006053949"
    freeform_tags          = {}
    hostname_label         = null
    nsg_ids                = []
    private_ip             = "10.0.1.19"
    security_attributes    = {}
    skip_source_dest_check = false
    subnet_id              = "ocid1.subnet.oc1.ap-mumbai-1.aaaaaaaaijhcg6pu3mkkv54lwjvuzo6yjf4oqxmhmvc32almm5ate7qcaffa"
    vlan_id                = null
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = false
  }

  launch_options {
    boot_volume_type                    = "PARAVIRTUALIZED"
    firmware                            = "UEFI_64"
    is_consistent_volume_naming_enabled = true
    is_pv_encryption_in_transit_enabled = true
    network_type                        = "PARAVIRTUALIZED"
    remote_data_volume_type             = "PARAVIRTUALIZED"
  }

  //shape_config {
  //  baseline_ocpu_utilization     = null
  //  gpu_description               = null
    //gpus                          = 0
  //  local_disk_description        = null
    //local_disks                   = 0
    //local_disks_total_size_in_gbs = 0
    //max_vnic_attachments          = 1
    //memory_in_gbs                 = 1
    //networking_bandwidth_in_gbps  = 0.47999998927116394
    //nvmes                         = 0
    //ocpus                         = 1
    //processor_description         = "2.0 GHz AMD EPYC™ 7551 (Naples)"
    //vcpus                         = 2
  //}

  //source_details {
  //  boot_volume_size_in_gbs         = "47"
  //  boot_volume_vpus_per_gb         = "10"
  //  is_preserve_boot_volume_enabled = false
  //  kms_key_id                      = null
  //  source_id                       = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaadvxnwovnu4autsj6rdg2u7uxwj764wf5gmru63yhsdo6h456morq"
  //  source_type                     = "image"
  //}
}
