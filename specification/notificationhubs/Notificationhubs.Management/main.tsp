/**
 * PLEASE DO NOT REMOVE - USED FOR CONVERTER METRICS
 * Generated by package: @autorest/openapi-to-typespec
 * Parameters used:
 *   isFullCompatible: true
 *   guessResourceKey: false
 * Version: 0.10.14
 * Date: 2025-04-29T06:01:05.304Z
 */
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";
import "./models.tsp";
import "./NotificationHubResource.tsp";
import "./SharedAccessAuthorizationRuleResource.tsp";
import "./NamespaceResource.tsp";
import "./PrivateEndpointConnectionResource.tsp";
import "./PrivateLinkResource.tsp";
import "./routes.tsp";
import "./back-compatible.tsp";

using TypeSpec.Rest;
using TypeSpec.Http;
using Azure.ResourceManager.Foundations;
using Azure.Core;
using Azure.ResourceManager;
using TypeSpec.Versioning;
/**
 * Microsoft Notification Hubs Resource Provider REST API.
 */
@armProviderNamespace
@service(#{ title: "NotificationHubs RP Client" })
@versioned(Versions)
@armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v5)
namespace Microsoft.NotificationHubs;

/**
 * The available API versions.
 */
enum Versions {
  /**
   * The 2023-10-01-preview API version.
   */
  @useDependency(Azure.ResourceManager.Versions.v1_0_Preview_1)
  @useDependency(Azure.Core.Versions.v1_0_Preview_1)
  v2023_10_01_preview: "2023-10-01-preview",
}

interface Operations {
  #suppress "@azure-tools/typespec-azure-resource-manager/arm-resource-operation" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
  #suppress "@azure-tools/typespec-azure-core/no-private-usage" "FIXME: Update justification, follow aka.ms/tsp/conversion-fix for details"
  @tag("Operations")
  @autoRoute
  @doc("List the operations for the provider")
  @segment("operations")
  @get
  list(
    ...ApiVersionParameter,

    @path
    @segment("providers")
    @doc("The provider namespace (this parameter will not show up in operations).")
    provider: "Microsoft.ThisWillBeReplaced",
  ): ArmResponse<OperationListResult> | ErrorResponse;
}
