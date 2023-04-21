.class public Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManager_SOAP.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final STATE_MODEL__UPLOADING_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMSSync_State(SOAP)"

    .line 20
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->TAG:Ljava/lang/String;

    const/16 v0, 0x74

    .line 21
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->STATE_MODEL__UPLOADING_INTERVAL:I

    .line 38
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 39
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 41
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 42
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    .line 43
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method private modelSyncNow()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "DMSSync_State(SOAP)"

    if-nez v0, :cond_0

    const-string v0, "PANIC: No Internet"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PANIC: Transmitter is not connected"

    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PANIC: Sync Tx is in progress"

    .line 92
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, ">>> Sync Model Now <<<"

    .line 102
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadAllStateModelInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    return-void

    :cond_4
    :goto_0
    const-string v0, "PANIC: Initial Launch | not logged in"

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static uploadAllStateModelInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 6

    .line 108
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Void;

    .line 113
    invoke-virtual {v0, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_TxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    new-array v2, v1, [Ljava/lang/Void;

    .line 120
    invoke-virtual {v0, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    new-array v2, v1, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v0, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->uploadThresholdInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V

    .line 134
    :cond_0
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_AppInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    new-array p1, v1, [Ljava/lang/Void;

    .line 139
    invoke-virtual {v0, p1}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    invoke-virtual {p0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToDiagnosticDataLastSyncedOnInPreference()V

    return-void
.end method

.method static uploadThresholdInfo(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lde/greenrobot/event/EventBus;)V
    .locals 2

    .line 146
    new-instance v0, Lcom/senseonics/util/DMSStateModelUploadTask;

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_ThresholdInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/senseonics/util/DMSStateModelUploadTask;-><init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 151
    invoke-virtual {v0, p0}, Lcom/senseonics/util/DMSStateModelUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method startModelSync()V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, "DMSSync_State(SOAP)"

    if-nez v4, :cond_0

    const-string v0, "no last upload Diagnostic time -> SYNC MODEL NOW"

    .line 51
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->modelSyncNow()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v0

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeInMills:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|lastSyncTimeInMills:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|diff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v8, v2

    if-gez v0, :cond_1

    const-string v0, "Diagnostic Auto: invalid time"

    .line 59
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetDiagnosticDataLastSyncedOnInPreference()V

    return-void

    :cond_1
    const-wide/32 v0, 0x6a3380

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    const-string v0, "Diagnostic: Less than (116 minutes)"

    .line 65
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;->modelSyncNow()V

    :goto_0
    return-void
.end method
