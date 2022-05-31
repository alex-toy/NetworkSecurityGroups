################################################################
# resource Group :
#southcentralus centralus francecentral
$Global:RGLocation = "francecentral"
$Global:RGName = "create-vm-RG"

#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."./NSG_create.ps1"