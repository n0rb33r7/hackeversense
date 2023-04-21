.class public Lcom/senseonics/bluetoothle/BluetoothCommunicator;
.super Ljava/lang/Object;
.source "BluetoothCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final TIMEOUT:I = 0x5


# instance fields
.field private amIConnected:Z

.field private bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

.field private broadcaster:Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

.field private final commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

.field private final connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

.field private final consumerRunnable:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

.field private currentCommandId:I

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final handler:Landroid/os/Handler;

.field private iAmWaitingForReconnect:Z

.field private final requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

.field private transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

.field private transmitterStateSyncer:Lcom/senseonics/bluetoothle/TransmitterStateSyncer;


# direct methods
.method static bridge synthetic -$$Nest$fgetbluetoothService(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventBus(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lde/greenrobot/event/EventBus;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Lcom/senseonics/bluetoothle/RequestBlockingSet;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misConnected(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)Z
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isConnected()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Landroid/os/Handler;Lcom/senseonics/bluetoothle/ConnectionStateModifier;Lcom/senseonics/bluetoothle/RequestBlockingSet;Lcom/senseonics/bluetoothle/CommandRequestTimer;Lcom/senseonics/bluetoothle/TransmitterStateSyncer;Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->amIConnected:Z

    .line 51
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->eventBus:Lde/greenrobot/event/EventBus;

    .line 52
    iput-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->handler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    .line 54
    iput-object p4, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    .line 55
    iput-object p6, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterStateSyncer:Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    .line 56
    iput-object p7, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->broadcaster:Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    .line 57
    new-instance p2, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-direct {p2, p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;-><init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator;)V

    iput-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->consumerRunnable:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    .line 58
    iput-object p5, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    .line 59
    iput-object p8, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->bluetoothService:Lcom/senseonics/bluetoothle/BluetoothService;

    .line 60
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->iAmWaitingForReconnect:Z

    .line 61
    new-instance p3, Ljava/lang/Thread;

    invoke-direct {p3, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 62
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private isConnected()Z
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->amIConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isReadyToCommunicate()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private syncCompleted()V
    .locals 3

    .line 263
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->scheduleIntervalCommands()V

    .line 265
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected commandTimedOut(I)V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterStateSyncer:Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->isTransmitterSynced(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->syncCompleted()V

    :cond_0
    return-void
.end method

.method public disconnect()Z
    .locals 5

    .line 207
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothCommunicator"

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    const-string v3, "Bluetooth"

    const-string v4, "--------------- BLEComm: disconnect() --------------"

    .line 209
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 210
    iput-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    .line 211
    iput-boolean v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->amIConnected:Z

    .line 212
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v2, Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-direct {v2, v3, v1, v4}, Lcom/senseonics/bluetoothle/Transmitter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$2;-><init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator;Ljava/lang/String;Landroid/bluetooth/BluetoothGatt;Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 229
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->notReceivedE9()V

    .line 230
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "nothing to disconnect, return false"

    .line 237
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;)V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterStateSyncer:Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    iget v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->currentCommandId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->isTransmitterSynced(IZ)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->syncCompleted()V

    goto :goto_1

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->getData()[I

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isSaveBLEBondingInformationResponseCorrect([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we just got the 0xE9 so beginning to sync transmitter state, transmitter WAS in state "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BluetoothCommunicator"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->receivedE9()V

    .line 98
    iget-boolean v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->iAmWaitingForReconnect:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterStateSyncer:Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->syncTransmitterStateUponReconnect()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterStateSyncer:Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;->syncTransmitterState()V

    :goto_0
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->broadcaster:Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    new-instance v3, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->getData()[I

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;-><init>([I)V

    invoke-virtual {v0, v3}, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->broadcast(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CharacteristicChangedEvent;->getData()[I

    move-result-object p1

    .line 111
    aget v0, p1, v2

    const/16 v2, 0x80

    if-ne v0, v2, :cond_5

    .line 113
    aget v1, p1, v1

    const/4 v2, 0x2

    .line 114
    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    const/16 v3, 0x8

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 117
    sget-object v2, Lcom/senseonics/bluetoothle/CommandError;->InvalidMessageLength:Lcom/senseonics/bluetoothle/CommandError;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/CommandError;->getCode()I

    move-result v2

    if-ne p1, v2, :cond_4

    .line 118
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->consumerRunnable:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->getCurrentRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 120
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/RegisterNotFoundEvent;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Request;->getData()[I

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/senseonics/events/RegisterNotFoundEvent;-><init>([I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    goto :goto_3

    .line 122
    :cond_4
    sget-object v2, Lcom/senseonics/bluetoothle/CommandError;->InvalidRecord:Lcom/senseonics/bluetoothle/CommandError;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/CommandError;->getCode()I

    move-result v2

    if-ne p1, v2, :cond_5

    if-ne v1, v3, :cond_5

    .line 126
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SensorGlucoseReceivedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SensorGlucoseReceivedEvent;-><init>()V

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 131
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->consumerRunnable:Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;

    invoke-virtual {p1, v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$ConsumerRunnable;->checkForExpectedResponse(I)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;)V
    .locals 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~~~ TransmitterCommunicationEstablishedEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~~~ TransmitterCommunicationEstablishedEvent commandChar: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getCommandCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~~~ TransmitterCommunicationEstablishedEvent: bleGatt"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~~~ TransmitterCommunicationEstablishedEvent: received E9? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->haveReceivedE9()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->amIConnected:Z

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTransmitterCommunicationEstablishedEvent received in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothCommunicator"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->setupTaskSchedule()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 5

    .line 135
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransmitterConnectionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isReadyToCommunicate? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iAmWaitingForReconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->iAmWaitingForReconnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amIConnected? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->amIConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothCommunicator"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string v3, "Bluetooth"

    if-ne v0, v1, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISCONNECT >> QUEUE size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->notReceivedE9()V

    .line 140
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->cancel()V

    .line 141
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->clear()V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DISCONNECT >> Clear QUEUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "******* TRYING TO RECONNECT AFTER DISCONNECT ******"

    .line 145
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 147
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->SEARCHING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto :goto_0

    :cond_0
    const-string p1, "******* ALREADY DISCONNECTED ******"

    .line 149
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_1
    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->NEGOTIATING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "++++++++ Communicator: onEvent->NEGOTIATING"

    .line 153
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v4, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->iAmWaitingForReconnect:Z

    .line 157
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    goto :goto_0

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++++++ PANIC: transmitterCommunicationEstablishedEvent->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto :goto_0

    .line 163
    :cond_3
    sget-object p1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, p1, :cond_4

    .line 164
    iput-boolean v4, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->iAmWaitingForReconnect:Z

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset iAmWaitingForReconnect due to state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;)V
    .locals 4

    .line 191
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    .line 193
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/BluetoothGattErrorEvent;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$1;-><init>(Lcom/senseonics/bluetoothle/BluetoothCommunicator;Landroid/bluetooth/BluetoothDevice;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;)V
    .locals 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^^ TransportConnectionEvent received: txCommuEstabEvent->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^ Clear QUEUE :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->commandRequestTimer:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->clear()V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^^ QUEUE size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/TransportConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, p1, v1}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->amIConnected:Z

    return-void
.end method

.method public readRemoteRSSI()V
    .locals 1

    .line 250
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isReadyToCommunicate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    :cond_0
    return-void
.end method

.method protected write(I[B)Z
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->currentCommandId:I

    .line 69
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getCommandCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 70
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->transmitterCommunicationEstablishedEvent:Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TransmitterCommunicationEstablishedEvent;->getCommandCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "BluetoothCommunicator"

    const-string p2, "not writing because not connected"

    .line 72
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
