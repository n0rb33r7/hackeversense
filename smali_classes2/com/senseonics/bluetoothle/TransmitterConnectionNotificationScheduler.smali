.class public Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;
.super Ljava/lang/Object;
.source "TransmitterConnectionNotificationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private hasDisconnectNotification:Z

.field public lastState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

.field private final notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private reconnectTimestamp:J

.field private timer:Ljava/util/Timer;

.field private timerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForFirstReconnectAfterDisconnectNotification:Z


# direct methods
.method static bridge synthetic -$$Nest$mfireDisconnectionNotificationWithLogging(Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->fireDisconnectionNotificationWithLogging(Z)V

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/util/NotificationEventPersistor;Ljavax/inject/Provider;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/senseonics/util/NotificationUtility;",
            "Lcom/senseonics/util/NotificationEventPersistor;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->TAG:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->lastState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 54
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 55
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    .line 56
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 58
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Timer;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timer:Ljava/util/Timer;

    .line 59
    iput-object p6, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 60
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 3

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->TAG:Ljava/lang/String;

    const-string v2, "Canceling non-existent timer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private fireDisconnectionNotificationWithLogging(Z)V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->hasDisconnectNotification:Z

    .line 124
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->waitingForFirstReconnectAfterDisconnectNotification:Z

    .line 125
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    const-wide/16 v2, 0x0

    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 128
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryVoltage()F

    move-result v4

    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 129
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v5

    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 130
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v6

    .line 125
    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/util/NotificationEventPersistor;->createConnectionNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;JFIZ)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->cancelTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method private transmitterGotConnected()V
    .locals 2

    .line 113
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->cancelTimer()V

    .line 114
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationUtility;->cancelNotification(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 115
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->lastState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method private transmitterGotDisconnected()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->lastState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->cancelTimer()V

    :cond_0
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timer:Ljava/util/Timer;

    .line 102
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Timer;

    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timer:Ljava/util/Timer;

    .line 104
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 106
    iget-object v3, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->timer:Ljava/util/Timer;

    new-instance v4, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;

    invoke-direct {v4, p0, v0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler$FireDisconnectNotificationWithLoggingTimerTask-IA;)V

    invoke-virtual {v3, v4, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 109
    :cond_1
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->lastState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 65
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->transmitterGotDisconnected()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->transmitterGotConnected()V

    .line 71
    :goto_0
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->waitingForFirstReconnectAfterDisconnectNotification:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_1

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->reconnectTimestamp:J

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->waitingForFirstReconnectAfterDisconnectNotification:Z

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/BackgroundToForegroundEvent;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->cancelTimer()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/BatteryVoltageEvent;)V
    .locals 11

    .line 82
    iget-boolean p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->hasDisconnectNotification:Z

    if-eqz p1, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->reconnectTimestamp:J

    sub-long v6, v0, v2

    .line 84
    iget-object v4, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 87
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryVoltage()F

    move-result v8

    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 88
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v9

    iget-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 89
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v10

    .line 84
    invoke-virtual/range {v4 .. v10}, Lcom/senseonics/util/NotificationEventPersistor;->createConnectionNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;JFIZ)V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;->hasDisconnectNotification:Z

    :cond_0
    return-void
.end method
