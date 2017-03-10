$app = New-AzureRmADApplication -DisplayName "k8sjvb" -HomePage "https://k8sjvb/k8sjvb" -IdentifierUris "https://k8sjvb/k8sjvb" -Password "jvbp@ssw0rd"
New-AzureRmADServicePrincipal -ApplicationId $app.ApplicationId
Start-Sleep 15
New-AzureRmRoleAssignment -RoleDefinitionName Contributor -ServicePrincipalName $app.ApplicationId
