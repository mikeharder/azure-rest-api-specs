import { dirname, join } from "path";
import { fileURLToPath } from "url";
import { describe, expect, it } from "vitest";
import { SpecModel } from "../src/spec-model.js";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

describe("SpecModel.Live", () => {
  it("can be created with widget folder", async () => {
    const specModel = new SpecModel(
      join(dirname(dirname(dirname(__dirname))), "specification", "widget"),
    );
    await expect(
      specModel.toJSONAsync({ includeOperations: true, includeRefs: true, relativePaths: true }),
    ).resolves.toMatchInlineSnapshot(`
      {
        "folder": "/home/mharder/specs-mh/specification/widget",
        "readmes": [
          {
            "globalConfig": {
              "openapi-type": "data-plane",
              "suppressions": [
                {
                  "code": "LroExtension",
                },
                {
                  "code": "SchemaTypeAndFormat",
                },
                {
                  "code": "PathParameterSchema",
                },
              ],
              "tag": "package-2022-12-01",
            },
            "path": "data-plane/WidgetAnalytics/readme.md",
            "tags": [
              {
                "inputFiles": [
                  {
                    "operations": [
                      {
                        "httpMethod": "GET",
                        "id": "Widgets_ListWidgets",
                        "path": "/widgets",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Widgets_GetWidget",
                        "path": "/widgets/{widgetName}",
                      },
                      {
                        "httpMethod": "PATCH",
                        "id": "Widgets_CreateOrUpdateWidget",
                        "path": "/widgets/{widgetName}",
                      },
                      {
                        "httpMethod": "DELETE",
                        "id": "Widgets_DeleteWidget",
                        "path": "/widgets/{widgetName}",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Widgets_GetWidgetOperationStatus",
                        "path": "/widgets/{widgetName}/operations/{operationId}",
                      },
                    ],
                    "path": "data-plane/WidgetAnalytics/preview/2022-11-01-preview/widgetanalytics.json",
                    "refs": [],
                  },
                ],
                "name": "package-2022-11-01-preview",
              },
              {
                "inputFiles": [
                  {
                    "operations": [
                      {
                        "httpMethod": "GET",
                        "id": "Widgets_ListWidgets",
                        "path": "/widgets",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Widgets_GetWidget",
                        "path": "/widgets/{widgetName}",
                      },
                      {
                        "httpMethod": "PATCH",
                        "id": "Widgets_CreateOrUpdateWidget",
                        "path": "/widgets/{widgetName}",
                      },
                      {
                        "httpMethod": "DELETE",
                        "id": "Widgets_DeleteWidget",
                        "path": "/widgets/{widgetName}",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Widgets_GetWidgetOperationStatus",
                        "path": "/widgets/{widgetName}/operations/{operationId}",
                      },
                    ],
                    "path": "data-plane/WidgetAnalytics/stable/2022-12-01/widgetanalytics.json",
                    "refs": [],
                  },
                ],
                "name": "package-2022-12-01",
              },
            ],
          },
          {
            "globalConfig": {
              "openapi-subtype": "rpaas",
              "openapi-type": "arm",
              "tag": "package-2021-11-01",
            },
            "path": "resource-manager/Microsoft.Widget/Widget/readme.md",
            "tags": [
              {
                "inputFiles": [
                  {
                    "operations": [
                      {
                        "httpMethod": "GET",
                        "id": "Operations_List",
                        "path": "/providers/Microsoft.Widget/operations",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Employees_ListBySubscription",
                        "path": "/subscriptions/{subscriptionId}/providers/Microsoft.Widget/employees",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Employees_ListByResourceGroup",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Employees_Get",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                      {
                        "httpMethod": "PUT",
                        "id": "Employees_CreateOrUpdate",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                      {
                        "httpMethod": "PATCH",
                        "id": "Employees_Update",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                      {
                        "httpMethod": "DELETE",
                        "id": "Employees_Delete",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                    ],
                    "path": "resource-manager/Microsoft.Widget/Widget/preview/2021-10-01-preview/widget.json",
                    "refs": [
                      {
                        "operations": [],
                        "path": "../common-types/resource-management/v5/types.json",
                        "refs": undefined,
                      },
                    ],
                  },
                ],
                "name": "package-2021-10-01-preview",
              },
              {
                "inputFiles": [
                  {
                    "operations": [
                      {
                        "httpMethod": "GET",
                        "id": "Operations_List",
                        "path": "/providers/Microsoft.Widget/operations",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Employees_ListBySubscription",
                        "path": "/subscriptions/{subscriptionId}/providers/Microsoft.Widget/employees",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Employees_ListByResourceGroup",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees",
                      },
                      {
                        "httpMethod": "GET",
                        "id": "Employees_Get",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                      {
                        "httpMethod": "PUT",
                        "id": "Employees_CreateOrUpdate",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                      {
                        "httpMethod": "PATCH",
                        "id": "Employees_Update",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                      {
                        "httpMethod": "DELETE",
                        "id": "Employees_Delete",
                        "path": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Widget/employees/{employeeName}",
                      },
                    ],
                    "path": "resource-manager/Microsoft.Widget/Widget/stable/2021-11-01/widget.json",
                    "refs": [
                      {
                        "operations": [],
                        "path": "../common-types/resource-management/v5/types.json",
                        "refs": undefined,
                      },
                    ],
                  },
                ],
                "name": "package-2021-11-01",
              },
            ],
          },
          {
            "globalConfig": {
              "openapi-subtype": "rpaas",
              "openapi-type": "arm",
            },
            "path": "resource-manager/readme.md",
            "tags": [],
          },
        ],
      }
    `);
  });
});
