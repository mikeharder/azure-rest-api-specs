import "@typespec/rest";
import "@typespec/openapi";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "./helpers.tsp";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Azure.ResourceManager;
using Azure.Core;
using Azure.Core.Traits;
using TypeSpec.OpenAPI;

namespace Microsoft.ContainerService;

@doc("The Fleet resource.")
@resource("fleets")
model Fleet is TrackedResource<FleetProperties> {
  @doc("The name of the Fleet resource.")
  @pattern("^[a-z0-9]([-a-z0-9]*[a-z0-9])?$")
  @minLength(1)
  @maxLength(63)
  @key("fleetName")
  @path
  @segment("fleets")
  @visibility(Lifecycle.Create, Lifecycle.Read)
  name: string;

  ...EntityTagProperty;

  #suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "Existing usage of legacy type"
  #suppress "@azure-tools/typespec-azure-resource-manager/arm-resource-invalid-envelope-property" "https://github.com/Azure/typespec-azure/issues/2840"
  @added(Versions.v2023_06_15_preview)
  @doc("Managed identity.")
  identity?: Azure.ResourceManager.Legacy.ManagedServiceIdentityV4;
}

@doc("Fleet properties.")
model FleetProperties {
  // adding a response header in the model currently impacts the model used in the List result model.
  // omitting it for now as response headers do not impact SDK generation.
  //  ...EtagResponseEnvelope;

  @visibility(Lifecycle.Read)
  @doc("The status of the last operation.")
  provisioningState?: FleetProvisioningState;

  #suppress "@azure-tools/typespec-providerhub/non-breaking-versioning" "https://github.com/Azure/typespec-azure/issues/3558"
  @doc("The FleetHubProfile configures the Fleet's hub.")
  @added(Versions.v2022_09_02_preview)
  @added(Versions.v2023_03_15_preview)
  @added(Versions.v2023_06_15_preview)
  @added(Versions.v2023_08_15_preview)
  @removed(Versions.v2023_10_15)
  @added(Versions.v2024_02_02_preview)
  @added(Versions.v2024_04_01)
  hubProfile?: FleetHubProfile;

  @added(Versions.v2025_03_01)
  @visibility(Lifecycle.Read)
  @doc("Status information for the fleet.")
  status?: FleetStatus;
}

@doc("The FleetHubProfile configures the fleet hub.")
model FleetHubProfile {
  @doc("DNS prefix used to create the FQDN for the Fleet hub.")
  @visibility(Lifecycle.Read, Lifecycle.Create)
  @pattern("^[a-zA-Z0-9]$|^[a-zA-Z0-9][a-zA-Z0-9-]{0,52}[a-zA-Z0-9]$")
  @minLength(1)
  @maxLength(54)
  dnsPrefix?: string;

  @added(Versions.v2023_06_15_preview)
  @doc("The access profile for the Fleet hub API server.")
  @visibility(Lifecycle.Read, Lifecycle.Create)
  apiServerAccessProfile?: APIServerAccessProfile;

  @added(Versions.v2023_06_15_preview)
  @doc("The agent profile for the Fleet hub.")
  @visibility(Lifecycle.Read, Lifecycle.Create)
  agentProfile?: AgentProfile;

  @visibility(Lifecycle.Read)
  @doc("The FQDN of the Fleet hub.")
  fqdn?: string;

  @visibility(Lifecycle.Read)
  @doc("The Kubernetes version of the Fleet hub.")
  kubernetesVersion?: string;

  @added(Versions.v2023_08_15_preview)
  @visibility(Lifecycle.Read)
  @doc("The Azure Portal FQDN of the Fleet hub.")
  portalFqdn?: string;
}

scalar SubnetResourceId
  extends Azure.Core.armResourceIdentifier<[
    {
      type: "Microsoft.Network/virtualNetworks/subnets",
    }
  ]>;

#suppress "@azure-tools/typespec-azure-core/casing-style" "match existing AKS APIServerAccessProfile"
@doc("Access profile for the Fleet hub API server.")
model APIServerAccessProfile {
  @visibility(Lifecycle.Read, Lifecycle.Create)
  @doc("Whether to create the Fleet hub as a private cluster or not.")
  enablePrivateCluster?: boolean;

  @visibility(Lifecycle.Read, Lifecycle.Create)
  @added(Versions.v2023_06_15_preview)
  @removed(Versions.v2024_04_01)
  @added(Versions.v2024_05_02_preview)
  @doc("Whether to enable apiserver vnet integration for the Fleet hub or not.")
  enableVnetIntegration?: boolean;

  @visibility(Lifecycle.Read, Lifecycle.Create)
  @added(Versions.v2023_06_15_preview)
  @removed(Versions.v2024_04_01)
  @added(Versions.v2024_05_02_preview)
  @doc("The subnet to be used when apiserver vnet integration is enabled. It is required when creating a new Fleet with BYO vnet.")
  subnetId?: SubnetResourceId;
}

@doc("Agent profile for the Fleet hub.")
model AgentProfile {
  @visibility(Lifecycle.Read, Lifecycle.Create)
  @doc("The ID of the subnet which the Fleet hub node will join on startup. If this is not specified, a vnet and subnet will be generated and used.")
  subnetId?: SubnetResourceId;

  @added(Versions.v2023_08_15_preview)
  @doc("The virtual machine size of the Fleet hub.")
  @visibility(Lifecycle.Read, Lifecycle.Create)
  vmSize?: string;
}

@lroStatus
@doc("The provisioning state of the last accepted operation.")
union FleetProvisioningState {
  string,
  ResourceProvisioningState,

  @doc("The provisioning state of a fleet being created.")
  Creating: "Creating",

  @doc("The provisioning state of a fleet being updated.")
  Updating: "Updating",

  @doc("The provisioning state of a fleet being deleted.")
  Deleting: "Deleting",
}

@doc("Properties of a Fleet that can be patched.")
model FleetPatch {
  // adding a response header in the model currently impacts the model used in the List result model.
  // omitting it for now as response headers do not impact SDK generation.
  // ...EtagResponseEnvelope;
  ...Azure.ResourceManager.Foundations.ArmTagsProperty;

  #suppress "@azure-tools/typespec-azure-core/no-legacy-usage" "Existing usage of legacy type"
  #suppress "@azure-tools/typespec-azure-resource-manager/arm-resource-invalid-envelope-property" "https://github.com/Azure/typespec-azure/issues/2840"
  @added(Versions.v2023_06_15_preview)
  @doc("Managed identity.")
  identity?: Azure.ResourceManager.Legacy.ManagedServiceIdentityV4;
}

@doc("One credential result item.")
model FleetCredentialResult {
  @visibility(Lifecycle.Read)
  @doc("The name of the credential.")
  name?: string;

  @visibility(Lifecycle.Read)
  @doc("Base64-encoded Kubernetes configuration file.")
  value?: bytes;
}

@doc("The Credential results response.")
model FleetCredentialResults {
  @visibility(Lifecycle.Read)
  @doc("Array of base64-encoded Kubernetes configuration files.")
  @identifiers(#["name"])
  kubeconfigs?: FleetCredentialResult[];
}

@added(Versions.v2025_03_01)
@doc("Status information for the fleet.")
model FleetStatus {
  @visibility(Lifecycle.Read)
  @doc("The last operation ID for the fleet.")
  lastOperationId?: string;

  @visibility(Lifecycle.Read)
  @doc("The last operation error for the fleet.")
  lastOperationError?: Azure.ResourceManager.Foundations.ErrorDetail;
}

@armResourceOperations
interface Fleets {
  @doc("Gets a Fleet.")
  get is ArmResourceRead<Fleet>;

  #suppress "@azure-tools/typespec-azure-core/invalid-final-state" "must change at next update"
  #suppress "@azure-tools/typespec-azure-core/no-openapi" "changing the operation-id on an existing operation is an SDK breaking change"
  @doc("Creates or updates a Fleet.")
  @operationId("Fleets_CreateOrUpdate")
  @Azure.Core.useFinalStateVia("azure-async-operation")
  create is ArmResourceCreateOrUpdateAsync<
    Fleet,
    Azure.ResourceManager.Foundations.BaseParameters<Fleet> &
      IfMatchParameters<Fleet> &
      IfNoneMatchParameters<Fleet>,
    LroHeaders = Azure.Core.Foundations.RetryAfterHeader
  >;

  #suppress "@azure-tools/typespec-providerhub/non-breaking-versioning" "Actual breaking change"
  @sharedRoute
  @removed(Versions.v2023_06_15_preview)
  update is ArmCustomPatchSync<
    Fleet,
    FleetPatch,
    Azure.ResourceManager.Foundations.BaseParameters<Fleet> &
      IfMatchParameters<Fleet>
  >;

  #suppress "@azure-tools/typespec-azure-core/no-openapi" "Use operationId to keep same name as deprecated sync operation"
  @added(Versions.v2023_06_15_preview)
  @operationId("Fleets_Update")
  @extension(
    "x-ms-long-running-operation-options",
    #{ `final-state-via`: "original-uri" }
  )
  @sharedRoute
  updateAsync is ArmCustomPatchAsync<
    Fleet,
    FleetPatch,
    Azure.ResourceManager.Foundations.BaseParameters<Fleet> &
      IfMatchParameters<Fleet>
  >;

  #suppress "deprecated" "Existing API"
  #suppress "@azure-tools/typespec-azure-resource-manager/arm-delete-operation-response-codes" "Existing API"
  @sharedRoute // why do we need to set shared route on delete? compiler complains with an error
  // All shared routes must agree on the value of the shared parameter.TypeSpec(@typespec/http/shared-inconsistency)
  delete is ArmResourceDeleteAsync<
    Fleet,
    Azure.ResourceManager.Foundations.BaseParameters<Fleet> &
      IfMatchParameters<Fleet>
  >;

  @doc("Lists fleets in the specified subscription and resource group.")
  listByResourceGroup is ArmResourceListByParent<Fleet>;

  @doc("Lists fleets in the specified subscription.")
  listBySubscription is ArmListBySubscription<Fleet>;

  @doc("Lists the user credentials of a Fleet.")
  listCredentials is ArmResourceActionSync<Fleet, void, FleetCredentialResults>;
}
