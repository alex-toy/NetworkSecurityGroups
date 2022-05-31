################################################################
#DELETE ALL RESOURCES IN A GROUP :

# az group delete -n $RGName --yes


################################################################
#DELETE ALL GROUPS AND RESOURCES INSIDE :

$groups = az group list | ConvertFrom-Json
"Following resource groups will be deleted :"
$groups | Foreach-Object { $_.name }
$groups | Foreach-Object { az group delete -n $_.name --yes }


################################################################
#DELETE ALL RESOURCES :

# $resources = az resource list | ConvertFrom-Json
# "Following resources will be deleted :"
# $resources | Foreach-Object { $_.name }
# $resources | Foreach-Object { az resource delete $_.name }