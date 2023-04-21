.class public Lcom/senseonics/bluetoothle/CommandRequestTimer;
.super Ljava/lang/Object;
.source "CommandRequestTimer.java"


# static fields
.field private static final BATTERY_LEVEL_REQUEST_DELAY:I = 0x0

.field private static final BATTERY_LEVEL_REQUEST_PERIOD:I = 0xea60

.field private static final CALIBRATION_PHASE_REQUEST_PERIOD:I = 0xea60

.field private static final DELAY_FOR_FIRST_COMMAND_AS_TAKEN_FROM_ORIGINAL_CODE:I = 0x3e8

.field private static final GLUCOSE_ALERT_REQUEST_PERIOD:I = 0xea60

.field private static final GLUCOSE_DATA_REQUEST_PERIOD:I = 0xea60

.field private static final SIGNAL_STRENGTH_REQUEST_DELAY:I = 0x0

.field private static final SIGNAL_STRENGTH_REQUEST_PERIOD:I = 0xea60


# instance fields
.field private haveReceivedE9:Z

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

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


# direct methods
.method static bridge synthetic -$$Nest$fgethaveReceivedE9(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    return-object p0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/senseonics/bluetoothle/RequestBlockingSet;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    .line 31
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p2, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    .line 33
    iput-object p3, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 140
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    return-void
.end method

.method haveReceivedE9()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return v0
.end method

.method notReceivedE9()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return-void
.end method

.method receivedE9()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    return-void
.end method

.method scheduleIntervalCommands()V
    .locals 13

    const-string v0, "CommandRequestTimer"

    const-string v1, "scheduleIntervalCommands"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Timer;

    iput-object v1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    .line 56
    new-instance v2, Lcom/senseonics/bluetoothle/CommandRequestTimer$2;

    invoke-direct {v2, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$2;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 68
    iget-object v7, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v8, Lcom/senseonics/bluetoothle/CommandRequestTimer$3;

    invoke-direct {v8, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$3;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v9, 0x0

    const-wide/32 v11, 0xea60

    invoke-virtual/range {v7 .. v12}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 77
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 87
    iget-object v6, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v7, Lcom/senseonics/bluetoothle/CommandRequestTimer$5;

    invoke-direct {v7, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$5;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v8, 0x0

    const-wide/32 v10, 0xea60

    invoke-virtual/range {v6 .. v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 95
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$6;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method setupForAutoReconnect()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->clear()V

    .line 122
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->saveBondingInformation()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method setupTaskSchedule()V
    .locals 4

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9:Z

    const-string v0, "CommandRequestTimer"

    const-string v1, "setupTaskSchedule"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer;->timer:Ljava/util/Timer;

    .line 40
    new-instance v1, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;-><init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
