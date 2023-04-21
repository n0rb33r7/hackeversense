.class public Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;
.super Ljava/lang/Object;
.source "DMSSyncManager_SOAP.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final DMS_MAX_SYNC_HOURS:I

.field private final HOURS_BACK_DEFAULT:I

.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/model/SyncModel;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DMSSync(SOAP)"

    .line 24
    iput-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->TAG:Ljava/lang/String;

    const/16 v0, 0x60

    .line 25
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->HOURS_BACK_DEFAULT:I

    const/16 v0, 0x2d0

    .line 26
    iput v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->DMS_MAX_SYNC_HOURS:I

    .line 45
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 46
    iput-object p2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    .line 48
    iput-object p4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 49
    iput-object p5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 50
    iput-object p6, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 51
    iput-object p7, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private allowNextOperation()Z
    .locals 13

    .line 173
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedStartDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const-string v6, "DMSSync(SOAP)"

    const/4 v7, 0x1

    if-nez v4, :cond_1

    const-string v0, "allowNextOperation: no last upload start DMS time"

    .line 177
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v5, v7

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v10, v8, v0

    .line 181
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

    .line 184
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedStartInPreference()V

    move v7, v5

    .line 189
    :cond_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Allow_Next_Operation_Seconds()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    cmp-long v1, v10, v1

    if-gez v1, :cond_0

    .line 191
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

    .line 196
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

.method private calculateHoursBack()I
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-string v3, "DMSSync(SOAP)"

    if-nez v2, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v0

    .line 161
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

    .line 162
    div-long/2addr v6, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v6, v0

    div-long/2addr v6, v0

    long-to-int v0, v6

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x2d0

    .line 163
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 166
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

.method private syncNow()V
    .locals 8

    .line 92
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "DMSSync(SOAP)"

    if-nez v0, :cond_0

    const-string v0, "PANIC: No Internet"

    .line 93
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getAccountEnableAutoSync()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PANIC: Auto Sync is not enabled"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "PANIC: Transmitter is not connected"

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    const-string v4, "TransmitterConnectedTime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PANIC: Just Connected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "PANIC: Sync Tx is in progress"

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_5
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->allowNextOperation()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "PANIC: not allow next operation"

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_6
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->calculateHoursBack()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_7

    .line 134
    iget-object v2, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PANIC: foreground upload not allowed (hours:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v2, ">>> Sync Now <<<"

    .line 140
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v1, Lcom/senseonics/util/DMSUploadTask;

    const/4 v2, 0x0

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;)V

    new-array v0, v2, [Ljava/lang/Void;

    .line 147
    invoke-virtual {v1, v0}, Lcom/senseonics/util/DMSUploadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_8
    :goto_0
    const-string v0, "PANIC: Initial Launch | not logged in"

    .line 98
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method startSync()V
    .locals 11

    .line 56
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getMigrationPasswordUpdated()Z

    move-result v0

    const-string v1, "DMSSync(SOAP)"

    if-eqz v0, :cond_0

    const-string v0, "-- RESET last sync time UPON detecting password updated --"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/senseonics/util/AccountConstants;->setMigrationPasswordUpdated(Z)V

    .line 59
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedOnInPreference()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->getLastSyncedOnDateTimeFromPreference()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "no last upload DMS time -> SYNC NOW"

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncNow()V

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v8, v6, v2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeInMills:"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "|lastSyncTimeInMills:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|diff:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v8, v4

    if-gez v0, :cond_2

    const-string v0, "DMS Auto: invalid time"

    .line 74
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->resetLastSyncedOnInPreference()V

    return-void

    .line 79
    :cond_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Interval()I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v2, v8, v2

    if-gez v2, :cond_3

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Less than ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " minutes)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;->syncNow()V

    :goto_0
    return-void
.end method
