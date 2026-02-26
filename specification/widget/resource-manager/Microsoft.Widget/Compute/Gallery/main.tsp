import "@typespec/http";
import "@typespec/rest";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-core";
import "@azure-tools/typespec-azure-resource-manager";

using TypeSpec.Versioning;
using Azure.ResourceManager;

/** Gallery Resource Provider management API. */
#suppress "@azure-tools/typespec-azure-resource-manager/missing-operations-endpoint" ""
@armProviderNamespace("Microsoft.Widget")
@service(#{ title: "Compute" })
@versioned(Versions)
namespace Gallery;

/** The available API versions. */
enum Versions {
  /** 2022-10-01-preview version */
  @armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v5)
  v2022_10_01_preview: "2022-10-01-preview",

  /** 2022-11-01 version */
  @armCommonTypesVersion(Azure.ResourceManager.CommonTypes.Versions.v5)
  v2022_11_01: "2022-11-01",
}
