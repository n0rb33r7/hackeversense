.class public Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;
.super Ljava/lang/Object;
.source "SensorLinkSramResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;
    }
.end annotation


# instance fields
.field private final EXPECTED_RESULT:I

.field private final MAX_RETRY:I

.field private final RETRY_DELAY:I

.field private client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private retry:I

.field private state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;


# direct methods
.method static bridge synthetic -$$Nest$mreadResult(Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->readResult()V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/model/TransmitterStateModel;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xaa

    .line 27
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->EXPECTED_RESULT:I

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->MAX_RETRY:I

    const/4 v0, 0x4

    .line 29
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->RETRY_DELAY:I

    .line 37
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 42
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 43
    iput-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 44
    iput-object p3, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->eventBus:Lde/greenrobot/event/EventBus;

    .line 45
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private complete(Ljava/lang/Boolean;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    :goto_0
    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 99
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SramResultCheckCompletedEvent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/senseonics/events/SramResultCheckCompletedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private readResult()V
    .locals 1

    .line 62
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    .line 63
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postAtccalSramResult()V

    return-void
.end method

.method private readResultRetry()V
    .locals 5

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$1;-><init>(Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    .line 73
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public check()V
    .locals 1

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->retry:I

    .line 54
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->readResult()V

    return-void
.end method

.method public isCompleted()Z
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->complete(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AtccalSramResultRecivedEvent;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->IN_PROGRESS:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/events/AtccalSramResultRecivedEvent;->getResult()I

    move-result p1

    const/16 v0, 0xaa

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 83
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sram Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", success => "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Linking"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 85
    iget p1, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->retry:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->retry:I

    if-ltz p1, :cond_2

    .line 87
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->readResultRetry()V

    goto :goto_1

    .line 89
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->complete(Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SramResultCheckCompletionActivityReceivedEvent;)V
    .locals 0

    .line 105
    sget-object p1, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->state:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$CHECK_STATE;

    return-void
.end method
