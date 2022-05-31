$Global:NSGName = "myNSG"

"Create Network Security Group"
az network nsg create `
    --resource-group $RGName `
    --name $NSGName `
    # [--location]
    # [--tags]


"Create Network Security Rule"
az network nsg rule create `
    --resource-group $RGName `
    --nsg-name $NSGName `
    --name AllowRDP `
    --access Allow `
    --direction Inbound `
    --source-port-ranges * `
    --destination-port-ranges 3389 `
    --priority 100
    # [--description]
    # [--destination-address-prefixes]
    # [--destination-asgs]
    # [--protocol {*, Ah, Esp, Icmp, Tcp, Udp}]
    # [--source-address-prefixes]
    # [--source-asgs]


"Create Network Security Rule"
az network nsg rule create `
    --resource-group $RGName `
    --nsg-name $NSGName `
    --name DenySSH `
    --access Deny `
    --direction Inbound `
    --source-port-ranges * `
    --destination-port-ranges 3389 `
    --priority 100
    # [--description]
    # [--destination-address-prefixes]
    # [--destination-asgs]
    # [--protocol {*, Ah, Esp, Icmp, Tcp, Udp}]
    # [--source-address-prefixes]
    # [--source-asgs]