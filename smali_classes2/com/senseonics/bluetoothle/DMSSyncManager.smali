.class public Lcom/senseonics/bluetoothle/DMSSyncManager;
.super Ljava/lang/Object;
.source "DMSSyncManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final ADD_HOURS:I

.field private final DMS_MAX_SYNC_HOURS:I

.field private final HOURS_BACK_DEFAULT:I

.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/model/SyncModel;Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/SharedPreferences;Lcom/senseonics/view/CommonErrorHandler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMSSync"

    .line 27
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x60

    .line 28
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->HOURS_BACK_DEFAULT:I

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->ADD_HOURS:I

    const/16 v0, 0x2d0

    .line 30
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->DMS_MAX_SYNC_HOURS:I

    .line 53
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 54
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 56
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 57
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 58
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    .line 59
    iput-object p7, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 60
    iput-object p8, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    iput-object p9, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-void
.end method

.method private allowNextOperation()Z
    .locals 13

    .line 175
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedStartDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const-string v6, "DMSSync"

    const/4 v7, 0x1

    if-nez v4, :cond_1

    const-string v0, "allowNextOperation: no last upload start DMS time"

    .line 179
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v5, v7

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v0

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "currentTimeInMills:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "|lastSyncStartTimeInMills:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|diff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v10, v2

    if-gez v0, :cond_2

    const-string v0, "allowNextOperation: DMS Auto: invalid time"

    .line 186
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedStartInPreference()V

    move v7, v5

    .line 191
    :cond_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Allow_Next_Operation_Seconds()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    cmp-long v1, v10, v1

    if-gez v1, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowNextOperation: Less than ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowNextOperation? :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private syncNow(I)V
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "DMSSync"

    if-nez v0, :cond_0

    const-string p1, "PANIC: No Internet"

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountEnableAutoSync()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "PANIC: Auto Sync is not enabled"

    .line 105
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "PANIC: Transmitter is not connected"

    .line 110
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v4, "TransmitterConnectedTime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 117
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_4

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PANIC: Just Connected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "PANIC: Sync Tx is in progress"

    .line 123
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_5
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager;->allowNextOperation()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    const-string p1, "PANIC: not allow next operation"

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_6
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager;->calculateHoursBack()I

    move-result v5

    if-nez p1, :cond_7

    const/4 p1, 0x2

    if-le v5, p1, :cond_7

    const-string p1, "PANIC: immediate upload not allowed"

    .line 136
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string p1, ">>> Sync Now <<<"

    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance p1, Lcom/senseonics/uploadData/DMSUploadTaskREST;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->eventBus:Lde/greenrobot/event/EventBus;

    iget-object v7, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    iget-object v8, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/view/CommonErrorHandler;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 149
    invoke-virtual {p1, v0}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_8
    :goto_0
    const-string p1, "PANIC: Initial Launch | not logged in"

    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method calculateHoursBack()I
    .locals 9

    .line 155
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "DMSSync"

    if-nez v2, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentTimeInMills:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|lastSyncTimeInMills:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|diff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 164
    div-long/2addr v6, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v6, v0

    div-long/2addr v6, v0

    long-to-int v0, v6

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d0

    .line 165
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 168
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Should sync last # of hours:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method startSync(I)V
    .locals 11

    .line 65
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, "DMSSync"

    if-nez v4, :cond_0

    const-string v0, "no last upload DMS time -> SYNC NOW"

    .line 69
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncNow(I)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v0

    .line 74
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

    const-string p1, "DMS Auto: invalid time"

    .line 77
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedOnInPreference()V

    return-void

    :cond_1
    int-to-long v0, p1

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Less than ("

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

    .line 87
    :cond_2
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/DMSSyncManager;->syncNow(I)V

    :goto_0
    return-void
.end method
