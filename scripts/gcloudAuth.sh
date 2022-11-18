function gcloudAuth {
# example:
#gcloud_auth "projectid"
# PROJECT_ID=$1
PROJECT_ID=$GCP_PROJECT
gcloud auth login --no-launch-browser
#gcloud auth login --no-browser
gcloud config set project $PROJECT_ID
gcloud auth application-default login --no-launch-browser
gcloud config get-value project
}
