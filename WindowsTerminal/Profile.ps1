clear

function k([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl $params }
function ksys([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl --namespace=kube-system $params }
function klo([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl logs -f $params }
function kgda([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployments -A }
function kg([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get $params }

function kgdd([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployments }
function kgdu([Parameter(ValueFromRemainingArguments = $true)]$params) { & kubectl get deployments --namespace=updatecheck }

# Shortcuts
function repos() { cd D://Source }

Import-Module -Name Terminal-Icons
Import-Module posh-git
oh-my-posh init pwsh --config ~/.oh-my-posh\themes\mytheme.omp.json | Invoke-Expression