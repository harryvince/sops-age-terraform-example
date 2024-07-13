encrypt:
    sops --encrypt --age $(cat $SOPS_AGE_KEY_FILE | perl -nle 'print $1 if /public key: \K(.*)/') --input-type dotenv --encrypted-regex '^secret' --in-place ./example.tfvars

decrypt:
    sops --decrypt --age $(cat $SOPS_AGE_KEY_FILE | perl -nle 'print $1 if /public key: \K(.*)/') --output-type dotenv --encrypted-regex '^secret' --in-place ./example.tfvars

display-encrypted:
    cat example.tfvars | jq -r 'del(.sops)'
