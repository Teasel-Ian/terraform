GITHUB_PROJECT=TrigpointingUK/terraform
GITHUB_TOKEN=$(cat ../creds/github_pat.txt)
GCP_PROJECT=ian-harris-test01
GCP_SA=terraform-cicd@${GCP_PROJECT}.iam.gserviceaccount.com

#gcloud iam service-accounts keys create ../creds/${GCP_PROJECT}-cicdkey.yaml --iam-account=${GCP_SA}

curl \
  -u username:${GITHUB_TOKEN} \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/${GITHUB_PROJECT}/actions/secrets

