resource "st-cdnetworks_shared_config_ratelimit_association" "test" {
  share_id = st-cdnetworks_shared_config_ratelimit.test.id
  domain   = "www.example.com"
}