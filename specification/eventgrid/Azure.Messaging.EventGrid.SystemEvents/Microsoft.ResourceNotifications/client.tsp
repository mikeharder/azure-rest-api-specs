import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
//Models
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsContainerServiceEventResourcesScheduledEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsContainerServiceEventResourcesScheduledEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsHealthResourcesAvailabilityStatusChangedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsHealthResourcesAvailabilityStatusChangedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceUpdatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceUpdatedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceUpdatedDetails,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceUpdatedDetails,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsOperationalDetails,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsOperationalDetails,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsHealthResourcesAnnotatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsHealthResourcesAnnotatedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceManagementCreatedOrUpdatedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceManagementCreatedOrUpdatedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceManagementDeletedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceManagementDeletedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceDeletedEventData,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceDeletedEventData,
  Access.public
);
@@usage(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceDeletedDetails,
  Usage.output | Usage.json
);
@@access(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceDeletedDetails,
  Access.public
);
//Enums

//useSystemTextJsonConverter decorators
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsContainerServiceEventResourcesScheduledEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsHealthResourcesAvailabilityStatusChangedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceUpdatedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsHealthResourcesAnnotatedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceManagementCreatedOrUpdatedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceManagementDeletedEventData,
  "csharp"
);
@@useSystemTextJsonConverter(Microsoft.EventGrid.SystemEvents.ResourceNotificationsResourceDeletedEventData,
  "csharp"
);
