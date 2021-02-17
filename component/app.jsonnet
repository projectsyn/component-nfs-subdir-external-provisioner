local kap = import 'lib/kapitan.libjsonnet';
local inv = kap.inventory();
local params = inv.parameters.nfs_subdir_external_provisioner;
local argocd = import 'lib/argocd.libjsonnet';

local app = argocd.App('nfs-subdir-external-provisioner', params.namespace);

{
  'nfs-subdir-external-provisioner': app,
}
