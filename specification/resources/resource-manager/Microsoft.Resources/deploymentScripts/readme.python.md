## Python

These settings apply only when `--python` is specified on the command line.
Please also specify `--python-sdks-folder=<path to the root directory of your azure-sdk-for-python clone>`.

``` yaml $(python)
azure-arm: true
license-header: MICROSOFT_MIT_NO_VERSION
package-name: azure-mgmt-resources-deploymentscripts
namespace: azure.mgmt.resources.deploymentscripts
package-version: 1.0.0
clear-output-folder: true
```

``` yaml $(python)
no-namespace-folders: true
output-folder: $(python-sdks-folder)/resources/azure-mgmt-resources-deploymentscripts/azure/mgmt/resources/deploymentscripts
```
