provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.token}"
}

resource "tfe_workspace" "app5" {
  name         = "jenkins-app5-dev"
  organization = "${var.organization}"
  
  vcs_repo {
    identifier = "jacobm3/jenkins-app5-dev"
    }
}


