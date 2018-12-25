# docker-deployment
Jumpbox running docker


# vSphere

```
bosh create-env docker-deployment/docker.yml \
    --state=state.json \
    --vars-store=creds.yml \
    -o docker-deployment/vsphere/cpi.yml \
    -v internal_cidr=10.0.0.0/24 \
    -v internal_gw=10.0.0.1 \
    -v internal_ip=10.0.0.6 \
    -v network_name="VM Network" \
    -v vcenter_dc=my-dc \
    -v vcenter_ds=datastore0 \
    -v vcenter_ip=192.168.0.10 \
    -v vcenter_user=root \
    -v vcenter_password=vmware \
    -v vcenter_templates=bosh-1-templates \
    -v vcenter_vms=bosh-1-vms \
    -v vcenter_disks=bosh-1-disks \
    -v vcenter_cluster=cluster1
```
