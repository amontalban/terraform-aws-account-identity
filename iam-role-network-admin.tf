resource "aws_iam_role" "network_admin" {
  name                 = "NetworkAdministrator"
  assume_role_policy   = data.aws_iam_policy_document.assume_role_saml.json
  max_session_duration = var.role_max_session_duration
}

resource "aws_iam_role_policy_attachment" "network_admin" {
  role       = aws_iam_role.network_admin.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/NetworkAdministrator"
}
