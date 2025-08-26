# Configure the OCI Provider
 
# Define the data source to list Object Storage bucket summaries
data "oci_objectstorage_bucket_summaries" "all_buckets" {
  # Specify the namespace of your tenancy
  namespace = "bmbkftdljh1f" # Replace with your OCI Object Storage namespace
 
  # Specify the compartment OCID where the buckets reside
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaaz7lkdcw3rjveeybdrejtohzqolph7tp6hfuhsoj2xnjgebvnho7a" # Replace with your compartment OCID
  provider = "oci.ap-mumbai-1"
}
 
# Output the names of the discovered buckets
output "bucket_names" {
  value = [for bucket in data.oci_objectstorage_bucket_summaries.all_buckets.bucket_summaries : bucket.name]
  description = "List of OCI Object Storage bucket names."
  }
 
# Output the full details of the discovered buckets
output "bucket_details" {
  value = data.oci_objectstorage_bucket_summaries.all_buckets.bucket_summaries
  description = "Details of OCI Object Storage buckets."
  }

resource "oci_objectstorage_bucket" "my_bucket" {
      compartment_id = "ocid1.tenancy.oc1..aaaaaaaaz7lkdcw3rjveeybdrejtohzqolph7tp6hfuhsoj2xnjgebvnho7a" # OCID of the compartment where the bucket will reside
      name           = "111111" # Must be unique across all OCI buckets
      namespace      = "bmbkftdljh1f"    # Your OCI tenancy namespace
      access_type    = "NoPublicAccess"        # Or "ObjectRead", "ObjectReadWithoutList", "ObjectReadWrite"
      # Optionally enable versioning
      # versioning = "Enabled"
      provider = "oci.ap-mumbai-1"
    }

resource "oci_objectstorage_bucket" "ramesh" {
      compartment_id = "ocid1.compartment.oc1..aaaaaaaam4oxa55cesb4wl6up5e6lrylftah76xgangagtfoucppaw4raoia" # OCID of the compartment where the bucket will reside
      name           = "111111" # Must be unique across all OCI buckets
      namespace      = "coefmw"    # Your OCI tenancy namespace
      access_type    = "NoPublicAccess"        # Or "ObjectRead", "ObjectReadWithoutList", "ObjectReadWrite"
      # Optionally enable versioning
      # versioning = "Enabled"
      provider = "oci.abc"
    }
