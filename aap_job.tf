data "aap_job_template" "DeployWebserver" {
  name              = "DeployWebserver"
  organization_name = var.organization_name
}

data "aap_job_template" "DeployWebsite" {
  name              = "DeployWebsite"
  organization_name = var.organization_name
}

resource "aap_job" "DeployWebserverJob" {
  inventory_id    = aap_inventory.TechXchangeNL-IHD-TF.id
  job_template_id = aap_job_template.DeployWebserver.id

  depends_on = [
    aap_host.TechXchangeNL-IHD-TF-HOST,
    aap_group.TechXchangeNL-IHD-TF-GRP
  ]
}

resource "aap_job" "DeployWebsite" {
  inventory_id    = aap_inventory.TechXchangeNL-IHD-TF.id
  job_template_id = aap_job_template.DeployWebsite.id

  depends_on = [
    aap_host.TechXchangeNL-IHD-TF-HOST,
    aap_group.TechXchangeNL-IHD-TF-GRP
  ]
}
