terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.27.0"
    }
  }
}

provider "google" {
  # Configuration options
    project = "project-id"
    region = "us-east1"
    credentials = var.google_application_credentials
}

/*empty bucket is created first*/
resource "google_storage_bucket" "windu-survives-1" {
  name = "windu-survives-1"
  location = "us-east1"
  storage_class = "STANDARD"
  labels = {
    "user" = "commander82"
    "location" = "kankry"
  }

uniform_bucket_level_access = true

website {
  main_page_suffix = "winducode3.html"
  not_found_page = "404.html"
}

  }

resource "google_storage_bucket_iam_binding" "public_iam_binding" {
  bucket = google_storage_bucket.windu-survives-1.name
  role = "roles/storage.objectViewer"

  members = [
    "allUsers"
  ]
}

/*bucket object is created and the source is the file path*/
resource "google_storage_bucket_object" "photo1" {
  name   = "kofi_yusuf_designs_A_realistic_photo_of_Mase_Windu_at_night_-_a6aca686-c7ac-4d15-bf1c-742c28a5528c_0.png"
  source = "C:/tf-workspace/plan-9-fos/task-1/kofi_yusuf_designs_A_realistic_photo_of_Mase_Windu_at_night_-_a6aca686-c7ac-4d15-bf1c-742c28a5528c_0.png"
  bucket = google_storage_bucket.windu-survives-1.name
  depends_on = [ google_storage_bucket.windu-survives-1 ]
}

/*bucket object is created and the source is the file path*/
resource "google_storage_bucket_object" "photo2" {
  name   = "kofi_yusuf_designs_Iron_Man_as_a_samurai_--v_4_74473dd2-7854-4594-bec8-46d6636a23a2_2.png"
  source = "C:/tf-workspace/plan-9-fos/task-1/kofi_yusuf_designs_Iron_Man_as_a_samurai_--v_4_74473dd2-7854-4594-bec8-46d6636a23a2_2.png"
  bucket = google_storage_bucket.windu-survives-1.name
  depends_on = [ google_storage_bucket.windu-survives-1 ]
}

/*bucket object is created and the source is the file path*/
resource "google_storage_bucket_object" "photo3" {
  name   = "kofi_yusuf_designs_Mase_Windu_in_Wakanda._--v_4_7c34fdf4-4531-4b9b-8f6e-f528343b15a0_2.png"
  source = "C:/tf-workspace/plan-9-fos/task-1/kofi_yusuf_designs_Mase_Windu_in_Wakanda._--v_4_7c34fdf4-4531-4b9b-8f6e-f528343b15a0_2.png"
  bucket = google_storage_bucket.windu-survives-1.name
  depends_on = [ google_storage_bucket.windu-survives-1 ]
}

/*bucket object is created and the source is the file path*/
resource "google_storage_bucket_object" "photo4" {
  name   = "kofi_yusuf_designs_Mase_Windu_in_Wakanda._--v_4_7c34fdf4-4531-4b9b-8f6e-f528343b15a0_3.png"
  source = "C:/tf-workspace/plan-9-fos/task-1/kofi_yusuf_designs_Mase_Windu_in_Wakanda._--v_4_7c34fdf4-4531-4b9b-8f6e-f528343b15a0_3.png"
  bucket = google_storage_bucket.windu-survives-1.name
  depends_on = [ google_storage_bucket.windu-survives-1 ]
}

/*bucket object is created and the source is the file path*/
resource "google_storage_bucket_object" "picture5" {
  name   = "windu banner.png"
  source = "C:/tf-workspace/plan-9-fos/task-1/windu-banner.png"
  bucket = google_storage_bucket.windu-survives-1.name
  depends_on = [ google_storage_bucket.windu-survives-1 ]
}

/*bucket object is created and the source is the file path*/
resource "google_storage_bucket_object" "index-store" {
  name   = "winducode3.html"
  source = "C:/tf-workspace/plan-9-fos/task-1/winducode3.html"
  bucket = google_storage_bucket.windu-survives-1.name
  depends_on = [ google_storage_bucket.windu-survives-1 ]
}