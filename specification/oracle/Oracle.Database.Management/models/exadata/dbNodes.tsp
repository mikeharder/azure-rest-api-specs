import "../common.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using Azure.ResourceManager;

namespace Oracle.Database;

@doc("The DbNode resource belonging to vmCluster")
@parentResource(CloudVmCluster)
model DbNode is ProxyResource<DbNodeProperties> {
  @doc("DbNode OCID.")
  @key("dbnodeocid")
  @segment("dbNodes")
  @path
  @pattern(".*")
  name: Ocid;
}

// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/DbNodeSummary
@doc("The properties of DbNodeResource")
model DbNodeProperties {
  @doc("DbNode OCID")
  ocid: Ocid;

  @doc("Additional information about the planned maintenance.")
  additionalDetails?: string;

  @doc("The OCID of the backup IP address associated with the database node.")
  backupIpId?: Ocid;

  @doc("The OCID of the second backup VNIC.")
  backupVnic2Id?: Ocid;

  @doc("The OCID of the backup VNIC.")
  backupVnicId?: Ocid;

  @doc("The number of CPU cores enabled on the Db node.")
  cpuCoreCount?: int32;

  @doc("The allocated local node storage in GBs on the Db node.")
  dbNodeStorageSizeInGbs?: int32;

  @doc("The OCID of the Exacc Db server associated with the database node.")
  dbServerId?: Ocid;

  @doc("The OCID of the DB system.")
  dbSystemId: Ocid;

  @doc("The name of the Fault Domain the instance is contained in.")
  @minLength(1)
  @maxLength(255)
  faultDomain?: string;

  @doc("The OCID of the host IP address associated with the database node.")
  hostIpId?: Ocid;

  @doc("The host name for the database node.")
  hostname?: string;

  @doc("The current state of the database node.")
  lifecycleState: DbNodeProvisioningState;

  @doc("Lifecycle details of Db Node.")
  lifecycleDetails?: string;

  @doc("The type of database node maintenance.")
  maintenanceType?: DbNodeMaintenanceType;

  @doc("The allocated memory in GBs on the Db node.")
  memorySizeInGbs?: int32;

  @doc("The size (in GB) of the block storage volume allocation for the DB system. This attribute applies only for virtual machine DB systems.")
  softwareStorageSizeInGb?: int32;

  @doc("The date and time that the database node was created.")
  timeCreated: utcDateTime;

  @doc("End date and time of maintenance window.")
  timeMaintenanceWindowEnd?: utcDateTime;

  @doc("Start date and time of maintenance window.")
  timeMaintenanceWindowStart?: utcDateTime;

  @doc("The OCID of the second VNIC.")
  vnic2Id?: Ocid;

  @doc("The OCID of the VNIC.")
  vnicId: Ocid;

  @doc("Azure resource provisioning state.")
  @visibility(Lifecycle.Read)
  provisioningState?: ResourceProvisioningState;
}

@doc("The type of database node maintenance.")
union DbNodeMaintenanceType {
  @doc("VMDB reboot migration maintenance type")
  VmdbRebootMigration: "VmdbRebootMigration",

  string,
}

@doc("DnNode provisioning state enum")
union DbNodeProvisioningState {
  @doc("Indicates that resource in Provisioning state")
  Provisioning: "Provisioning",

  @doc("Indicates that resource in Available state")
  Available: "Available",

  @doc("Indicates that resource in Updating state")
  Updating: "Updating",

  @doc("Indicates that resource in Stopping state")
  Stopping: "Stopping",

  @doc("Indicates that resource in Stopped state")
  Stopped: "Stopped",

  @doc("Indicates that resource in Starting state")
  Starting: "Starting",

  @doc("Indicates that resource in Terminating state")
  Terminating: "Terminating",

  @doc("Indicates that resource in Terminated state")
  Terminated: "Terminated",

  @doc("Indicates that resource in Failed state")
  Failed: "Failed",

  string,
}

@doc("DbNode action enum")
union DbNodeActionEnum {
  @doc("Start DbNode")
  Start: "Start",

  @doc("Stop DbNode")
  Stop: "Stop",

  @doc("Soft reset DbNode")
  SoftReset: "SoftReset",

  @doc("Reset DbNode")
  Reset: "Reset",

  string,
}

@doc("DbNode action object")
model DbNodeAction {
  @doc("Db action")
  action: DbNodeActionEnum;
}
