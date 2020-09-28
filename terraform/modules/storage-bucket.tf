terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "<имя бакета>"
    region     = "us-east-1"
    key        = "<terraform.tfstate"
    access_key = "<key>"
    secret_key = "<secretkey>"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
