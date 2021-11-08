#! /bin/bash
set -euxo pipefail

PASSWORD=$(echo '${encrypted_password}' | base64 --decode | gpg -d)

EMAIL_BODY=$(cat <<-EOT
Hey there!

Here is the AWS account and other course info --

AWS Console URL: https://176951223124.signin.aws.amazon.com/console
AWS Console Account Alias: teaching
AWS Console Username: ${student_email}
AWS Console Password: $PASSWORD

AWS Region to create your Cloud9 environments in: us-east-2 (Ohio)
AWS Region for **Exercise 11 only**: ${student_region}

Your Student Alias: ${student_alias}

Repo: https://github.com/sameerarora/terraform-fundamentals
Link to the slides: ${link_to_slides}
Link to personal feedback survery: ${link_to_survey}
Instructor email: sameer@datacouch.io

EOT
)

echo "$EMAIL_BODY" >> ./messages/${student_alias}.txt