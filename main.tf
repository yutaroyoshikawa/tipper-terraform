provider "google" {
  project     = "${var.gcp_project}"
  region      = "us-central1"
  credentials = "${(file("./gcp_credential.json"))}"
}

resource "google_app_engine_application" "graphql" {
  project     = "${var.gcp_project}"
  location_id = "us-central"
}

resource "google_app_engine_application" "ffmpeg" {
  project     = "${var.gcp_project}"
  location_id = "us-central"
}

