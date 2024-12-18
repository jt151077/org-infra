/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

data "google_folder" "test-folder" {
  folder = "folders/369721515934"
}

data "google_billing_account" "billing-acc" {
  display_name = "Argolis Billing (jeremyto)"
}

/*resource "random_string" "random_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "google_project" "proj" {
  name            = "test-${random_string.random_suffix.result}"
  project_id      = "test-${random_string.random_suffix.result}"
  folder_id       = google_folder.test-folder.id
  billing_account = google_billing_account.billing-acc.id
  deletion_policy = "DELETE"
}*/


output "bid" {
  value = data.google_billing_account.billing-acc.id
}

output "fid" {
  value = data.google_folder.test-folder.id
}