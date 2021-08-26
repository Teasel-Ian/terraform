PROJECT=ian-harris-test01
SA=terraform-rw@${PROJECT}.iam.gserviceaccount.com

gcloud iam service-accounts keys create ../creds/${PROJECT}-cicdkey.yaml --iam-account=${SA}

