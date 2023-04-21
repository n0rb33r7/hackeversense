.class public Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;
.super Ljava/lang/Object;
.source "DMSStateModelSyncManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static DMS_STATE_MODEL_UPLOADING_INTERVAL:I = 0x78


# instance fields
.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/model/SyncModel;Lcom/senseonics/uploadData/UploadDataRepository;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMSSync_State"

    .line 24
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->TAG:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 46
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    .line 48
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 49
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 50
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 51
    iput-object p7, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method private modelSyncNow()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "DMSSync_State"

    if-nez v0, :cond_0

    const-string v0, "PANIC: No Internet"

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PANIC: Transmitter is not connected"

    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "PANIC: Sync Tx is in progress"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, ">>> Sync Model Now <<<"

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadAllStateModelInfo()V

    return-void

    :cond_4
    :goto_0
    const-string v0, "PANIC: Initial Launch | not logged in"

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method startModelSync(I)V
    .locals 11

    .line 55
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, "DMSSync_State"

    if-nez v4, :cond_0

    const-string p1, "no last upload Diagnostic time -> SYNC MODEL NOW"

    .line 59
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->modelSyncNow()V

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v0

    .line 64
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

    const-string p1, "Diagnostic Auto: invalid time"

    .line 67
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->resetDiagnosticDataLastSyncedOnInPreference()V

    return-void

    :cond_1
    int-to-long v0, p1

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Diagnostic: Less than ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " minutes)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->modelSyncNow()V

    :goto_0
    return-void
.end method

.method public uploadAllStateModelInfo()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMSSync_State"

    const-string v1, "PANIC: No Valid Account Info"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;->getTxID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    invoke-virtual {v1, v0}, Lcom/senseonics/uploadData/UploadDataRepository;->putTransmitterInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo;)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;->getSensorID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/uploadData/UploadDataRepository;->putSensorInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo;Lde/greenrobot/event/EventBus;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getDiagnosticDataLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 132
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadThresholdInfo()V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelAppInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v2, v0}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelAppInfo2(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo;)Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/senseonics/uploadData/UploadDataRepository;->putAppInfo2(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo2;)V

    .line 143
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToDiagnosticDataLastSyncedOnInPreference()V

    return-void
.end method

.method uploadThresholdInfo()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMSSync_State"

    const-string v1, "PANIC: No Valid Account Info"

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelThresholdInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository;->putThresholdInfo(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo;)V

    return-void
.end method
