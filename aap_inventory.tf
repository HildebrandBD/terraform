resource "aap_inventory" "TechXchangeNL-IHD-TF" {
  name         = "TF-INV"
  description  = "A new inventory for testing"
  organization = "TechXchangeNL"
}

resource "aap_group" "TechXchangeNL-IHD-TF-GRP" {
  inventory_id = aap_inventory.TechXchangeNL-IHD-TF.id
  name         = "TF-GRP"
}

resource "aap_host" "TechXchangeNL-IHD-TF-HOST" {
  inventory_id = aap_inventory.TechXchangeNL-IHD-TF.id
  name         = "TF_HOST"
  groups = [aap_group.TechXchangeNL-IHD-TF-GRP.id]
}
