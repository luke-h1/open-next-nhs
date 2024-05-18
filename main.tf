module "opennext" {
  source              = "nhs-england-tools/opennext/aws"
  version             = "1.0.6"        # Use the latest release from https://github.com/nhs-england-tools/terraform-aws-opennext/releases
  prefix              = "lhowsam"      # Prefix for all created resources
  opennext_build_path = "./.open-next" # Path to your .open-next folder
  hosted_zone_id      = "Z01170092OZIHNWRYKSOJ"
  cloudfront = {
    aliases             = ["staging.lhowsam.com"] # Your domain name
    acm_certificate_arn = "arn:aws:acm:us-east-1:753493924839:certificate/7b2bd550-3aae-492e-8346-2dcc6d9b10bf"
  }
}