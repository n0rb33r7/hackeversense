.class public Lcom/senseonics/model/SyncParser;
.super Ljava/lang/Object;
.source "SyncParser.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/SyncModel;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/db/DatabaseManager;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/senseonics/model/SyncParser;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 47
    iput-object p2, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 48
    iput-object p3, p0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 49
    iput-object p4, p0, Lcom/senseonics/model/SyncParser;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 50
    iput-object p5, p0, Lcom/senseonics/model/SyncParser;->eventBus:Lde/greenrobot/event/EventBus;

    .line 51
    invoke-virtual {p5, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private afterSyncDataParsed()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SyncingProgressUpdateEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SyncingProgressUpdateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;

    invoke-direct {v1}, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 341
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 350
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v0

    .line 351
    iget-object v2, p0, Lcom/senseonics/model/SyncParser;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_syncing_gmt_millis"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method private parseReadAllSensorGlucoseAlertsInSpecifiedRangeResponseData([I)V
    .locals 13

    const/4 v0, 0x1

    .line 141
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x3

    .line 143
    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x4

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x5

    .line 144
    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    const/4 v1, 0x7

    .line 145
    aget v9, p1, v1

    .line 146
    aget v1, p1, v4

    const/16 v2, 0x9

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v10, v1, v2

    const/16 v1, 0xa

    .line 147
    aget v1, p1, v1

    const/16 v2, 0xb

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v11, v1, v2

    const/16 v1, 0xc

    .line 148
    aget v1, p1, v1

    const/16 v2, 0xd

    aget p1, p1, v2

    shl-int/2addr p1, v4

    or-int v12, v1, p1

    .line 151
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    :cond_0
    move-object v5, p0

    .line 155
    invoke-direct/range {v5 .. v12}, Lcom/senseonics/model/SyncParser;->parsedReadAllSensorGlucoseAlertsInSpecifiedRangeResponse(I[I[IIIII)V

    return-void
.end method

.method private parseReadAllSensorGlucoseDataInSpecifiedRangeResponseData([I)V
    .locals 11

    const/4 v0, 0x1

    .line 80
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x4

    .line 82
    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x5

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x6

    .line 83
    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    .line 84
    aget v1, p1, v4

    const/16 v2, 0x9

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v9, v1, v2

    const/16 v1, 0xa

    .line 85
    aget v10, p1, v1

    .line 88
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    :cond_0
    move-object v5, p0

    .line 92
    invoke-direct/range {v5 .. v10}, Lcom/senseonics/model/SyncParser;->parsedReadAllSensorGlucoseDataInSpecifiedRangeResponse(I[I[III)V

    return-void
.end method

.method private parseReadLogOfBloodGlucoseDataInSpecifiedRangeResponseData([I)V
    .locals 13

    const/4 v0, 0x1

    .line 195
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x3

    .line 197
    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x4

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x5

    .line 198
    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    const/4 v1, 0x7

    .line 199
    aget v1, p1, v1

    aget v2, p1, v4

    shl-int/2addr v2, v4

    or-int v9, v1, v2

    const/16 v1, 0x9

    .line 200
    aget v1, p1, v1

    const/16 v2, 0xa

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v10, v1, v2

    const/16 v1, 0xb

    .line 201
    aget v11, p1, v1

    const/16 v1, 0xc

    .line 202
    aget v1, p1, v1

    const/16 v2, 0xd

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0xe

    aget p1, p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int v12, v1, p1

    .line 205
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    :cond_0
    move-object v5, p0

    .line 209
    invoke-direct/range {v5 .. v12}, Lcom/senseonics/model/SyncParser;->parsedReadLogOfBloodGlucoseDataInSpecifiedRangeResponse(I[I[IIIII)V

    return-void
.end method

.method private parsedReadAllSensorGlucoseAlertsInSpecifiedRangeResponse(I[I[IIIII)V
    .locals 7

    .line 174
    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v3

    .line 175
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    const-string p2, "GMT"

    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SyncingParsedResponse"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sensorGlucoseAlertLogRecordType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensorGlucoseValue: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensorGlucoseRateValue: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alertThresholdOrTimeInterval: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_0
    invoke-static {p4}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->findBy(I)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move v2, p5

    move v4, p7

    move v5, p1

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    const-class p1, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected code from transmitter : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private parsedReadAllSensorGlucoseDataInSpecifiedRangeResponse(I[I[III)V
    .locals 15

    move-object v1, p0

    move/from16 v8, p1

    move/from16 v0, p4

    .line 108
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    const-string v9, "SyncingParsedResponse"

    const-string v2, "<<<<<>>>>>"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 110
    aget v3, p2, v2

    const/4 v4, 0x1

    .line 111
    aget v5, p2, v4

    const/4 v6, 0x2

    .line 112
    aget v7, p2, v6

    .line 113
    aget v2, p3, v2

    .line 114
    aget v4, p3, v4

    .line 115
    aget v6, p3, v6

    .line 117
    invoke-static/range {p2 .. p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v10

    .line 118
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 120
    const-class v13, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x5

    invoke-virtual {v10, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " //// "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " recordNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    iget-object v2, v1, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v2, v11, v12, v8}, Lcom/senseonics/db/DatabaseManager;->allowAddingGlucoseReading(JI)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Add Glucose Database"

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync: ADD NEW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v10, v1, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v13, Lcom/senseonics/graph/util/Glucose;

    const/4 v6, -0x1

    move-object v2, v13

    move-wide v3, v11

    move/from16 v5, p4

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-virtual {v10, v13}, Lcom/senseonics/db/DatabaseManager;->addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    const-class v0, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glucoseRecordNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parsedReadLogOfBloodGlucoseDataInSpecifiedRangeResponse(I[I[IIIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, p4

    move/from16 v10, p6

    .line 228
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    const-string v11, "SyncingParsedResponse"

    const-string v2, "---------------------------------"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static/range {p2 .. p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v12

    .line 231
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static/range {p6 .. p6}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object v13

    .line 235
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BGM-> recordNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bloodGlucoseValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", meterIdentifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", calUseFlags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 239
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "calibrationDateTime"

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 240
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 241
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->cancelOngoingCalibration()V

    .line 246
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewBgmLogConversion()Z

    move-result v2

    const-string v14, "BGM-> calibrationNotes: "

    const/4 v15, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 248
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportRollingCal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-virtual {v13}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v12, v9, v10}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 252
    invoke-virtual {v2, v15}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 253
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 254
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v8}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent_NewCalConversion(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 256
    :cond_1
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v12, v9, v10}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 257
    invoke-virtual {v2, v15}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 258
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 259
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v8}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent_NewCalConversion(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 264
    :cond_2
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne v13, v2, :cond_3

    .line 266
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 267
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 269
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v6

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 270
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v7

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 271
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v16

    move/from16 v5, p4

    move/from16 v8, v16

    .line 266
    invoke-virtual/range {v2 .. v8}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSync(JIIII)Ljava/lang/String;

    move-result-object v3

    .line 273
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_3
    invoke-virtual {v13}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v12, v9, v10}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 278
    invoke-virtual {v2, v15}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 279
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 280
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x1

    .line 282
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v12, v9, v10, v3}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 283
    invoke-virtual {v2, v15}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 284
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 285
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v8}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 292
    :cond_5
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne v13, v2, :cond_6

    .line 294
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 295
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 297
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v6

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 298
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v7

    move/from16 v5, p4

    .line 294
    invoke-virtual/range {v2 .. v7}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSync(JIII)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_6
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne v13, v2, :cond_7

    add-int/lit8 v2, v1, -0x1

    .line 310
    new-instance v4, Lcom/senseonics/events/GlucoseEventPoint;

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v5

    invoke-direct {v4, v12, v15, v5}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;II)V

    int-to-long v5, v2

    .line 311
    invoke-virtual {v4, v5, v6}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 313
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v2, v4}, Lcom/senseonics/db/DatabaseManager;->convertSuspiciousGlucoseIntoCalibrationDuringSync(Lcom/senseonics/events/GlucoseEventPoint;)I

    move-result v2

    .line 314
    const-class v4, Lcom/senseonics/model/SyncingParsedResponse;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BGM->SuspiciousCheck | no of events updated : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_7
    invoke-virtual {v13}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 319
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v12, v9, v10}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 320
    invoke-virtual {v2, v15}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 321
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 322
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v8}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto :goto_0

    .line 324
    :cond_8
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v12, v9, v10, v3}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 325
    invoke-virtual {v2, v15}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 326
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 327
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v8}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    :goto_0
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/events/SyncLogBatchProcessedEvent;)V
    .locals 5

    .line 55
    invoke-virtual {p1}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->getSensorGlucoseResponses()Ljava/util/TreeSet;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->getGlucoseAlertResponses()Ljava/util/TreeSet;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->getBloodGlucoseResponses()Ljava/util/TreeSet;

    move-result-object p1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLogBatchProcessedEvent : {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SYNCING_DEBUG"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/bluetoothle/Response;

    .line 62
    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/senseonics/model/SyncParser;->parseReadAllSensorGlucoseDataInSpecifiedRangeResponseData([I)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/Response;

    .line 66
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/model/SyncParser;->parseReadAllSensorGlucoseAlertsInSpecifiedRangeResponseData([I)V

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/Response;

    .line 70
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/model/SyncParser;->parseReadLogOfBloodGlucoseDataInSpecifiedRangeResponseData([I)V

    goto :goto_2

    .line 73
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/model/SyncParser;->afterSyncDataParsed()V

    return-void
.end method
