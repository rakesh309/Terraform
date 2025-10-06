provider "oci" {
  tenancy_ocid     = "ocid1.tenancy.oc1..aaaaaaaaz7lkdcw3rjveeybdrejtohzqolph7tp6hfuhsoj2xnjgebvnho7a"
  user_ocid        = "ocid1.user.oc1..aaaaaaaadczfcpmyadxkozitv2ae3n7pwheexop2wgyphf5rwfxikuisbfma"
  private_key_path = "/home/raki/.oci/oci_api_key.pem"
  fingerprint      = "e6:13:ad:a8:a1:93:18:51:d9:cb:22:83:2d:90:ff:9a"
  region           = "ap-mumbai-1"
  //alias = "ap-mumbai-1"
}

//resource "oci_core_instance" "demo_inst_1" {
//  # configuration (can be empty initially)
//  compartment_id      = "ocid1.tenancy.oc1..aaaaaaaaz7lkdcw3rjveeybdrejtohzqolph7tp6hfuhsoj2xnjgebvnho7a"
//  availability_domain = "YMzK:AP-MUMBAI-1-AD-1"
//  shape               = "VM.Standard.E2.1.Micro"
//}

