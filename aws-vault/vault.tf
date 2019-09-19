module "vault-s3" {
  source  = "hashicorp/vault/aws//examples/vault-s3-backend"
  version = "0.13.2"
  ami_id = ""
  ssh_key_name = ""
  vpc_id = ""
  consul_cluster_name = "consul-s3"
  consul_cluster_size = 3
  consul_cluster_tag_key = "consul-vault-s3-servers"
  consul_instance_type = "t2.micro"
  vault_cluster_name = "vault-s3"
  vault_cluster_size = 3
  vault_instance_type = "t2.micro"
  s3_bucket_name = "vault-bucket"
  force_destroy_s3_bucket = false
}
