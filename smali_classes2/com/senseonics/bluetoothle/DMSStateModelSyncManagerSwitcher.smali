.class public Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManagerSwitcher.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;


# direct methods
.method public constructor <init>(Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/AccountConstants;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    .line 29
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 30
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 31
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public uploadThresholdInfoToDMS()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadThresholdInfo()V

    return-void
.end method
