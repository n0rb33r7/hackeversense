.class public Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;
.super Lcom/senseonics/bluetoothle/TransmitterStatusChecker;
.source "TransmitterStaleGlucoseChecker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/db/DatabaseManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V

    .line 43
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 44
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 45
    iput-object p6, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 47
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method

.method private checkGlucose()V
    .locals 5

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->connectedBeyondThresholdFrom(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    invoke-direct {p0, v0, v1}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->isGlucoseTooStaleFrom(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->hasActiveAlertStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->hasLoggedAlerts()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->fireAlert()V

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0, v4}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->updateStateValue(Z)V

    :cond_1
    return-void
.end method

.method private connectedBeyondThresholdFrom(J)Z
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "TransmitterConnectedTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 121
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long p1, p1, v4

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasActiveAlertStatus()Z
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v0

    const/16 v1, 0x8

    .line 135
    aget v1, v0, v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 137
    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v3, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 138
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v3, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x4

    .line 143
    aget v1, v0, v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v3, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 146
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v3, :cond_2

    return v2

    :cond_2
    const/16 v1, 0xa

    .line 151
    aget v0, v0, v1

    if-eqz v0, :cond_3

    .line 153
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v0}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private hasLoggedAlerts()Z
    .locals 5

    .line 163
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v0

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/senseonics/util/TransmitterMessageCode;

    .line 164
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v3, v0, v1, v2}, Lcom/senseonics/db/DatabaseManager;->notificationEventsExistsSince(JLjava/util/List;)Z

    move-result v0

    return v0
.end method

.method private isGlucoseTooStaleFrom(J)Z
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 128
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    cmp-long p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected canFire()Z
    .locals 1

    .line 115
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableStaleGlucoseCheck()Z

    move-result v0

    return v0
.end method

.method protected getStateValue()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getIsGlucoseStale()Z

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 3

    .line 51
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 52
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "TransmitterConnectedTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/GraphCheckStaleDataEvent;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/KeepAliveReceivedEvent;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/MessageCodeChangedEvent;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorGlucoseReceivedEvent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorGlucoseTimedOutEvent;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->checkGlucose()V

    return-void
.end method

.method protected shouldShowAlert()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->getShowStaleGlucoseAlert()Z

    move-result v0

    return v0
.end method

.method protected updateStateValue(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setIsGlucoseStale(Z)V

    return-void
.end method
