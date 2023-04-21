.class public Lcom/senseonics/bluetoothle/RssiReader;
.super Ljava/lang/Object;
.source "RssiReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final CAPACITY:I

.field private final MAX_SECONDS_DIFF:J

.field private final TIMER_DELAY:J

.field private final TIMER_PERIOD:J

.field private bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private rssis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Rssi;",
            ">;"
        }
    .end annotation
.end field

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
.method static bridge synthetic -$$Nest$fgetbluetoothCommunicator(Lcom/senseonics/bluetoothle/RssiReader;)Lcom/senseonics/bluetoothle/BluetoothCommunicator;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/RssiReader;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    return-object p0
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/BluetoothCommunicator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x270f

    .line 25
    iput-wide v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->MAX_SECONDS_DIFF:J

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->CAPACITY:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->TIMER_DELAY:J

    .line 28
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->TIMER_PERIOD:J

    .line 39
    iput-object p1, p0, Lcom/senseonics/bluetoothle/RssiReader;->timerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/senseonics/bluetoothle/RssiReader;->eventBus:Lde/greenrobot/event/EventBus;

    .line 41
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 42
    iput-object p3, p0, Lcom/senseonics/bluetoothle/RssiReader;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/bluetoothle/RssiReader;->rssis:Ljava/util/List;

    return-void
.end method

.method private addRssi(I)V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->rssis:Ljava/util/List;

    new-instance v1, Lcom/senseonics/bluetoothle/Rssi;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/senseonics/bluetoothle/Rssi;-><init>(JI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :goto_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/RssiReader;->rssis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 65
    iget-object p1, p0, Lcom/senseonics/bluetoothle/RssiReader;->rssis:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 7

    .line 86
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/RssiReader;->cancelTimer()V

    .line 88
    iget-object v0, p0, Lcom/senseonics/bluetoothle/RssiReader;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Timer;

    iput-object v1, p0, Lcom/senseonics/bluetoothle/RssiReader;->timer:Ljava/util/Timer;

    .line 89
    new-instance v2, Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/senseonics/bluetoothle/RssiReader$ReadRssi;-><init>(Lcom/senseonics/bluetoothle/RssiReader;Lcom/senseonics/bluetoothle/RssiReader$ReadRssi-IA;)V

    iget-wide v5, p0, Lcom/senseonics/bluetoothle/RssiReader;->TIMER_PERIOD:J

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public getRssiString(J)Ljava/lang/String;
    .locals 9

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "~"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/senseonics/bluetoothle/RssiReader;->rssis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/bluetoothle/Rssi;

    .line 73
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Rssi;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x270f

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Rssi;->getValue()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 50
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/RssiReader;->startTimer()V

    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/RssiReader;->cancelTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->getRSSIValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/RssiReader;->addRssi(I)V

    return-void
.end method
