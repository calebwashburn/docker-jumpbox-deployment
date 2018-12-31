# docker-deployment
Jumpbox running docker


# vSphere

```
bosh create-env docker-jumpbox-deployment/docker.yml \
    --state=state.json \
    --vars-store=creds.yml \
    -o docker-jumpbox-deployment/vsphere/cpi.yml \
    -v internal_cidr=10.x.x.0/24 \
    -v internal_gw=10.x.x.1 \
    -v internal_ip=10.x.x.248 \
    -v network_name="VM Network" \
    -v vcenter_dc=Datacenter \
    -v vcenter_ds=LUN01 \
    -v vcenter_ip=10.x.x.11 \
    -v vcenter_user=administrator@vsphere.local \
    -v vcenter_password=password \
    -v vcenter_templates=jumpbox-templates \
    -v vcenter_vms=jumpbox-vms \
    -v vcenter_disks=jumpbox-disks \
    -v vcenter_cluster=Cluster \
    -v dns_servers=[10.x.x.2] \
    -v ntp_servers=[10.x.x.2]
```
