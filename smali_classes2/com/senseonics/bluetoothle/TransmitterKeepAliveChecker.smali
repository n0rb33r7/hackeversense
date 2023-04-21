.class public Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;
.super Lcom/senseonics/bluetoothle/TransmitterStatusChecker;
.source "TransmitterKeepAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask;,
        Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private alertTimer:Ljava/util/Timer;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private readGlucoseTimer:Ljava/util/Timer;

.field private timerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetbluetoothServiceCommandClient(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method public constructor <init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;Ljavax/inject/Provider;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;",
            "Lde/greenrobot/event/EventBus;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/bluetoothle/TransmitterStatusChecker;-><init>(Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;Lde/greenrobot/event/EventBus;)V

    .line 39
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->timerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 42
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->code:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method

.method private cancelTimers()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 71
    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 76
    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private keepAliveOrGlucoseResponseReceived()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->updateStateValue(Z)V

    .line 65
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->startTimers()V

    return-void
.end method

.method private startTimers()V
    .locals 6

    .line 81
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->cancelTimers()V

    .line 83
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->readGlucoseTimer:Ljava/util/Timer;

    .line 84
    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$ReadGlucoseTask-IA;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x79

    .line 86
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 84
    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->alertTimer:Ljava/util/Timer;

    .line 90
    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask;

    invoke-direct {v1, p0, v2}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask;-><init>(Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker$AlertTask-IA;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xb5

    .line 92
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method protected canFire()Z
    .locals 1

    .line 125
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableKeepAliveCheck()Z

    move-result v0

    return v0
.end method

.method protected getStateValue()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getKeepAliveAlertActive()Z

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 46
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 48
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->startTimers()V

    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_1

    .line 51
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->cancelTimers()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/KeepAliveReceivedEvent;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->keepAliveOrGlucoseResponseReceived()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SensorGlucoseReceivedEvent;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->keepAliveOrGlucoseResponseReceived()V

    return-void
.end method

.method protected shouldShowAlert()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->transmitterStatusAlertVisibilityKeeper:Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStatusAlertVisibilityKeeper;->getShowKeepAliveAlert()Z

    move-result v0

    return v0
.end method

.method protected updateStateValue(Z)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setKeepAliveAlertActive(Z)V

    return-void
.end method
