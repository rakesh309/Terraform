terraform {
  backend "oci" {
    # Required
    bucket    = "backend"
    namespace = "bmbkftdljh1f"
    # Optional
    tenancy_ocid         = "ocid1.tenancy.oc1..aaaaaaaaz7lkdcw3rjveeybdrejtohzqolph7tp6hfuhsoj2xnjgebvnho7a"
    user_ocid            = "ocid1.user.oc1..aaaaaaaadczfcpmyadxkozitv2ae3n7pwheexop2wgyphf5rwfxikuisbfma"
    fingerprint          = "e6:13:ad:a8:a1:93:18:51:d9:cb:22:83:2d:90:ff:9a"
    private_key_path     = "/home/raki/.oci/oci_api_key.pem"
    region               = "ap-mumbai-1"
    key                  = "path"
    workspace_key_prefix = "envs/"
    config_file_profile  = "DEFAULT"
  }
}
