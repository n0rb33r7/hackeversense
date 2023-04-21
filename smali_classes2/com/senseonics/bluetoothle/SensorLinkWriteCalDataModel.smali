.class public Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;
.super Ljava/lang/Object;
.source "SensorLinkWriteCalDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;,
        Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final CHUNK_SIZE:I

.field private final MAX_RETRY_READ_CRC:I

.field private final MAX_RETRY_WRITE_CAL_DATA:I

.field private final READ_CRC_RETRY_DELAY:I

.field private final WRITE_DATA_TIMEOUT:I

.field private addressAndValuesACT:[I

.field private addressAndValuesEEPROM:[I

.field private calDataAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private retry_readCrc:I

.field private retry_writeCalData:I

.field private service:Lcom/senseonics/bluetoothle/BluetoothService;

.field private state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

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

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method static bridge synthetic -$$Nest$mcomplete(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->complete(Ljava/lang/Boolean;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstep3_checkCrc(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->step3_checkCrc()V

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/senseonics/model/TransmitterStateModel;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Timer;",
            ">;",
            "Lcom/senseonics/model/TransmitterStateModel;",
            "Lde/greenrobot/event/EventBus;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 46
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->CHUNK_SIZE:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->MAX_RETRY_WRITE_CAL_DATA:I

    .line 48
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->MAX_RETRY_READ_CRC:I

    const/16 v0, 0x1e

    .line 49
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->WRITE_DATA_TIMEOUT:I

    const/4 v0, 0x4

    .line 50
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->READ_CRC_RETRY_DELAY:I

    .line 65
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 70
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->timerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 72
    iput-object p3, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->eventBus:Lde/greenrobot/event/EventBus;

    .line 73
    invoke-virtual {p3, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private checkCrc(I)V
    .locals 5

    .line 271
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->addressAndValuesACT:[I

    invoke-static {v0}, Lcom/senseonics/util/Utils;->GetCRCValue([I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 274
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check ATCCAL CRC: expected CRC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", received CRC:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " => CRC check "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Linking"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    .line 276
    iget p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_readCrc:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_readCrc:I

    if-ltz p1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->step3_checkCrc_Retry()V

    goto :goto_1

    .line 280
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->complete(Ljava/lang/Boolean;)V

    :goto_1
    return-void
.end method

.method private complete(Ljava/lang/Boolean;)V
    .locals 2

    .line 208
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->cancelTimer()V

    .line 210
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_writeCalData:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_writeCalData:I

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalCrcCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->start()V

    goto :goto_1

    .line 214
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    :goto_0
    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 215
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/WriteCalDataCompletedEvent;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/senseonics/events/WriteCalDataCompletedEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private getAtccalCrcRawAddress()[I
    .locals 3

    .line 300
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcRawAddress:[I

    .line 302
    iget-object v1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 303
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcRawAddress_Algo7:[I

    :cond_0
    return-object v0
.end method

.method private getAtccalCrcRawAddressValue([I)I
    .locals 2

    const/4 v0, 0x6

    .line 296
    aget v0, p1, v0

    const/4 v1, 0x7

    aget p1, p1, v1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method private isReadAtccalCrcRawAddressResponse([I)Z
    .locals 6

    .line 285
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->getAtccalCrcRawAddress()[I

    move-result-object v0

    .line 287
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    const/4 v4, 0x2

    aget v5, v0, v4

    if-ne v1, v5, :cond_0

    aget v1, p1, v4

    aget v5, v0, v3

    if-ne v1, v5, :cond_0

    const/4 v1, 0x3

    aget v1, p1, v1

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    aget v0, p1, v0

    if-ne v0, v4, :cond_0

    const/4 v0, 0x5

    aget p1, p1, v0

    if-nez p1, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method private start()V
    .locals 1

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    .line 91
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->step1_unlinkSensor()V

    return-void
.end method

.method private startTimer()V
    .locals 5

    .line 250
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->cancelTimer()V

    .line 252
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->timerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->timer:Ljava/util/Timer;

    .line 253
    new-instance v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask;-><init>(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$TimerExpiredTask-IA;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 255
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private step1_unlinkSensor()V
    .locals 3

    .line 99
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 100
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->startTimer()V

    .line 101
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    const-wide v1, 0xffffffffL

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteSensorID(J)V

    return-void
.end method

.method private step2_writeData()V
    .locals 6

    .line 121
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 122
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->startTimer()V

    .line 124
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->addressAndValuesEEPROM:[I

    const/16 v2, 0xa24

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterChunk([III)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    .line 126
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->addressAndValuesACT:[I

    array-length v1, v0

    sub-int/2addr v1, v3

    new-array v1, v1, [I

    .line 127
    array-length v2, v0

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    const/16 v5, 0x120c

    invoke-virtual {v2, v1, v5, v3}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterChunk([III)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-array v0, v3, [I

    .line 132
    iget-object v1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->addressAndValuesACT:[I

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object v1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    const/16 v4, 0x1200

    invoke-virtual {v2, v0, v4, v3}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterChunk([III)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private step3_checkCrc()V
    .locals 3

    .line 164
    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    iput-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    .line 165
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->startTimer()V

    .line 167
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isAtccalCrcRegisterExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadAtccalCrcRegister()V

    goto :goto_0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->getAtccalCrcRawAddress()[I

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadNRawTestCommand([II)V

    :goto_0
    return-void
.end method

.method private step3_checkCrc_Retry()V
    .locals 5

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 176
    new-instance v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$1;-><init>(Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    .line 181
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 176
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public isCompleted()Z
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->FAIL:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

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

    .line 314
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->SUCCESS:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

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

    .line 230
    iget-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 232
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 233
    iput p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_writeCalData:I

    .line 234
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->complete(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AtccalCrcRecivedEvent;)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/events/AtccalCrcRecivedEvent;->getCrc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->checkCrc(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/LinkSensorIdCompletedEvent;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_1:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    if-eq p1, v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->step2_writeData()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TestCommandResponseReceivedEvent;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_3:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/events/TestCommandResponseReceivedEvent;->getData()[I

    move-result-object p1

    .line 198
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->isReadAtccalCrcRawAddressResponse([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->getAtccalCrcRawAddressValue([I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->checkCrc(I)V

    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/WriteCalDataCompletionActivityReceivedEvent;)V
    .locals 0

    .line 222
    sget-object p1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->NOT_STARTED:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/WriteNByteResponseReceivedEvent;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->state:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;->STEP_2:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel$WRITE_DATA_STATE;

    if-eq v0, v1, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->startTimer()V

    .line 146
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/senseonics/events/WriteNByteResponseReceivedEvent;->getAddress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calDataAddresses count: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Linking"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->calDataAddresses:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 150
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalCrcCheck()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 151
    iput v0, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_readCrc:I

    .line 152
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->step3_checkCrc()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->complete(Ljava/lang/Boolean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public writeData(Lcom/senseonics/bluetoothle/BluetoothService;[I[I)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->service:Lcom/senseonics/bluetoothle/BluetoothService;

    .line 78
    iput-object p2, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->addressAndValuesEEPROM:[I

    .line 79
    iput-object p3, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->addressAndValuesACT:[I

    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->retry_writeCalData:I

    .line 82
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->start()V

    return-void
.end method
