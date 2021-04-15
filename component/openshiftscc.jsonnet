// instance-specific security context constraint object for openshift
local kap = import 'lib/kapitan.libjsonnet';
local kube = import 'lib/kube.libjsonnet';
local inv = kap.inventory();
// The hiera parameters for the component
local params = inv.parameters.nfs_subdir_external_provisioner;

local isOpenshift = std.startsWith(inv.parameters.facts.distribution, 'openshift');
local instance = inv.parameters._instance;

local nfsMountScc = {
  apiVersion: 'security.openshift.io/v1',
  kind: 'SecurityContextConstraints',
  metadata: {
    name: 'hostmount-anyuid-scc-' + instance,
    namespace: params.namespace,
  },
  users: [
    'system:serviceaccount:' + params.namespace + ':' + instance,
  ],
  volumes: [
    'configMap',
    'emptyDir',
    'nfs',
    'persistentVolumeClaim',
    'secret',
  ],
  allowHostDirVolumePlugin: true,
  allowHostIPC: false,
  allowHostNetwork: false,
  allowHostPID: false,
  allowHostPorts: false,
  allowPrivilegeEscalation: true,
  allowPrivilegedContainer: false,
  fsGroup: {
    type: 'RunAsAny',
  },
  runAsUser: {
    type: 'RunAsAny',
  },
  seLinuxContext: {
    type: 'MustRunAs',
  },
  supplementaryGroups: {
    type: 'RunAsAny',
  },
};

// Define outputs below
{
  [if isOpenshift then '02_hostmount-anyuid-scc']: nfsMountScc,
}
