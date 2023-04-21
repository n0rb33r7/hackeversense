.class public Lcom/senseonics/bluetoothle/BluetoothService;
.super Landroid/app/Service;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;
    }
.end annotation


# instance fields
.field protected asyncQueryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected batteryMonitorThresholdChecker:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final binder:Landroid/os/IBinder;

.field protected bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bleHealthUpload:Lcom/senseonics/bluetoothle/BleHealthUpload;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothAdapterWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothConnector:Lcom/senseonics/bluetoothle/BluetoothConnector;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothGattCallback:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothManager:Landroid/bluetooth/BluetoothManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field public bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field protected calReminderManager:Lcom/senseonics/calReminder/CalReminderManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public commandProcessor:Lcom/senseonics/bluetoothle/CommandProcessor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected extensionManager:Lcom/senseonics/extension/ExtensionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field isForeground:Z
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "IS_FOREGROUND"
    .end annotation
.end field

.field protected notificationUtility:Lcom/senseonics/util/NotificationUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected pushNotificationListener:Lcom/senseonics/bluetoothle/PushNotificationListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected rssiReader:Lcom/senseonics/bluetoothle/RssiReader;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected syncParser:Lcom/senseonics/model/SyncParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterAuthorityUri:Landroid/net/Uri;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "transmitter"
    .end annotation
.end field

.field protected transmitterConnectionNotificationScheduler:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterConnectionStates:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterKeepAliveChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterKeepAliveVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterPersistor:Lcom/senseonics/db/TransmitterPersistor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStaleGlucoseChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStaleGlucoseVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BluetoothService$BluetoothServiceBinder;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method private postReadAccelerometerInfo()V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readAccelerometerValues()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 568
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readAccelerometerTemp()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method private postReadGlucoseData()V
    .locals 2

    .line 554
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readGlucoseData()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method private postReadMostRecentGlucoseDateTime()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMostRecentGlucoseDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 559
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMostRecentGlucoseTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method private postReadMostRecentGlucoseValue()V
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMostRecentGlucoseValue()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method private postReadRawDataValues()V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 576
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 577
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 578
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 579
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 580
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 581
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 582
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/Request;->readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method


# virtual methods
.method public connect(Lcom/senseonics/bluetoothle/Transmitter;Z)Z
    .locals 5

    .line 230
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isAndroid12BluetoothPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterConnectionStates:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    .line 234
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterConnectionStates;->transmittersThatNeedDisconnecting()Ljava/util/List;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Ljava/util/List;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterScanner;->stopLeScanIfCurrentlyScanning()V

    if-eqz p2, :cond_2

    .line 241
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTING:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {p2, p1, v0}, Lcom/senseonics/bluetoothle/ConnectionStateModifier;->setConnectionStateAndPublish(Lcom/senseonics/bluetoothle/Transmitter;Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 245
    :cond_2
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 246
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_4

    const-wide/16 v0, 0x0

    .line 250
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    const-wide/16 v0, 0xbb8

    .line 252
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bond start result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/senseonics/bluetoothle/BluetoothService$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/senseonics/bluetoothle/BluetoothService$3;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;Landroid/bluetooth/BluetoothDevice;Lcom/senseonics/bluetoothle/Transmitter;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public connectToPreviouslyConnectedDevice()V
    .locals 2

    const-string v0, "BluetoothService"

    const-string v1, "connectToPreviouslyConnectedDevice was called"

    .line 300
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService$4;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/BluetoothService$4;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    .line 315
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->asyncQueryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;->startQuery(Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;)V

    return-void
.end method

.method public disconnect(Lcom/senseonics/bluetoothle/Transmitter;)V
    .locals 2

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    .line 296
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterAuthorityUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->binder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 128
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BluetoothService"

    const-string v1, "onCreate"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/senseonics/bluetoothle/ServiceModule;

    invoke-direct {v3, p0}, Lcom/senseonics/bluetoothle/ServiceModule;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/senseonics/gen12androidapp/ObjectGraphApplication;->plus([Ljava/lang/Object;)Ldagger/ObjectGraph;

    move-result-object v1

    invoke-virtual {v1, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->loadGlucoseUnit(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid8OrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x539

    .line 135
    iget-object v2, p0, Lcom/senseonics/bluetoothle/BluetoothService;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {v2}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->startForeground(ILandroid/app/Notification;)V

    .line 138
    :cond_0
    new-instance v1, Lcom/senseonics/bluetoothle/BluetoothService$1;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/BluetoothService$1;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    iput-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    new-instance v1, Lcom/senseonics/bluetoothle/BluetoothService$2;

    invoke-direct {v1, p0}, Lcom/senseonics/bluetoothle/BluetoothService$2;-><init>(Lcom/senseonics/bluetoothle/BluetoothService;)V

    iput-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 182
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;

    invoke-direct {v2, v1}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;-><init>(Z)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->connectToPreviouslyConnectedDevice()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BluetoothService"

    const-string v1, "onDestroy"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bondStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothStateChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    .line 201
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p2

    .line 208
    iget-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->commandProcessor:Lcom/senseonics/bluetoothle/CommandProcessor;

    invoke-virtual {p3, p1}, Lcom/senseonics/bluetoothle/CommandProcessor;->process(Landroid/content/Intent;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 210
    iget-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p3, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 211
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request queued: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BluetoothService"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-boolean p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->isForeground:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x539

    .line 215
    iget-object p3, p0, Lcom/senseonics/bluetoothle/BluetoothService;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {p3}, Lcom/senseonics/util/NotificationUtility;->getForegroundServiceNotification()Landroid/app/Notification;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/senseonics/bluetoothle/BluetoothService;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public postAlgorithmParameterFormatVersion()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readAlgorithmParameterFormatVersion()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postBatteryLifeRequest()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readBatteryLevelRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postBatteryVoltageRequest()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readBatteryVoltageRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postCalibrationThresholds()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 417
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMaxCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postChangeBatteryMonitorThreshold(II)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->changeBatteryMonitorThreshold(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postCurrentCalibrationPhaseRequest()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->isOneCalPhase()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 343
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->completedCalibrationsCount()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 344
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->currentCalibrationPhase()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postDayStartTime(II)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeDayStartTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postDetectedSensorId()V
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->detectedSensorId()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postForceGlucoseMeasurement()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->forceGlucoseMeasurement()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postGetModelRequest()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->model()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postGlucoseAlarmRepeatIntervalAndStartTime()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 453
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 454
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 455
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 456
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readDayStartTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 457
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readNightStartTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postHysteresisPercentRequest()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postHysteresisValueRequest()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postLastCalibrationDateTimeRequest()V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->lastCalDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 333
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->lastCalTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postLinkedSensorId()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->linkedSensorId()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMEPMSPInfo()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedValue()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 443
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedRefChannelMetric()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 444
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedDriftMetric()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 445
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedLowRefMetric()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 446
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMEPSavedSpike()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 447
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readEEP24MSP()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMinutesAfterNextCalibrationTime()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinutesAfterNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMinutesBeforeNextCalibrationTime()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinutesBeforeNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postMinutesRemainingUntilCalibrationAllowed()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMinutesRemainingUntilCalibrationAllowed()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postNextCalibrationDate()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readNextCalibrationDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postNextCalibrationTime()V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postNightStartTime(II)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeNightStartTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPhaseStartDateTimeRequest()V
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->phaseStartDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 338
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->phaseStartTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPingRequest()V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->ping()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPredictiveHysteresisPercentRequest()V
    .locals 2

    .line 364
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postPredictiveHysteresisValueRequest()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadAtccalCrcRegister()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readAtccalCrcRegister()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadAtccalSramResultRegister()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readAtccalSramResultRegister()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadClinicalModeRequest()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readClinicalMode()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadCommunicationProtocolVersionRequest()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readCommunicationProtocolVersion()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadDelayBLEDisconnectAlarmAddressRequest()V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readDelayBLEDisconnectAlarmAddressRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadDoNotDisturbModeRequest()V
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readDoNotDisturbModeRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadEveningCalibrationTime()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readEveningCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadHighGlucoseAlarmEnabledRequest()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmEnabledRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadHighGlucoseAlarmRequest()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadHighGlucoseTargetRequest()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readHighGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadLowGlucoseAlarmRequest()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadLowGlucoseTargetRequest()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readLowGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadMmaFeatures()V
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMmaFeatures()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadMorningCalibrationTime()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readMorningCalibrationTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadNRawTestCommand([II)V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->readNRawTestCommand([II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveAlertsRequest()V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveAlertsRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveHighAlertsRequest()V
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveHighAlertsRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveLowAlertsRequest()V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveLowAlertsRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadPredictiveTimeIntervalRequest()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveFallingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 525
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readPredictiveRisingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateAlert()V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateAlert()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateAlertThresholdRequest()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateAlertFallingThresholdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 542
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateAlertRisingThresholdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateFallingAlert()V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateFallingAlert()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRateRisingAlert()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readRateRisingAlert()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadRawDataAndGlucoseData()V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadRawDataValues()V

    .line 547
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadAccelerometerInfo()V

    .line 548
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadMostRecentGlucoseDateTime()V

    .line 549
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadMostRecentGlucoseValue()V

    .line 550
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadGlucoseData()V

    return-void
.end method

.method public postReadSensorGlucoseAlertsAndStatus()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readGlucoseAlertsAndStatus()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadSensorIdRequest()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorIdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadSignalStrengthRequest(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSignalStrengthRawRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    goto :goto_0

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSignalStrengthRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    :goto_0
    return-void
.end method

.method public postReadSignalStrengthRequest_StateSync()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSignalStrengthRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 629
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSignalStrengthRawRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadUnlinkedSensorIdRequest()V
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readUnlinkedSensorIdRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadVibrateModeRequest()V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readVibrateModeRequest()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postReadyForCalibration()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readReadyForCalibration()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSendBloodGlucoseDataResponse(Lcom/senseonics/events/CalibrationEventPoint;)V
    .locals 4

    .line 477
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationEventPoint;->getTimestamp()J

    move-result-wide v1

    .line 478
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationEventPoint;->getGlucoseLevel()I

    move-result p1

    const/4 v3, 0x1

    .line 477
    invoke-static {v1, v2, p1, v3}, Lcom/senseonics/bluetoothle/Request;->writeBloodGlucoseEvent(JIZ)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorGlucoseSamplingInterval()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorGlucoseSamplingInterval()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorInsertionDate()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorInsertionDate()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postSensorInsertionTime()V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->readSensorInsertionTime()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postVersionNumberRequest()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->versionExtension()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 328
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->version()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeAppVersion(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteClinicalMode(Z)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeClinicalModeRequest(Z)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteEveningCalibrationTime(II)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeEveningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;)V
    .locals 4

    .line 487
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v1

    .line 488
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getGlucoseLevel()I

    move-result p1

    const/4 v3, 0x0

    .line 487
    invoke-static {v1, v2, p1, v3}, Lcom/senseonics/bluetoothle/Request;->writeBloodGlucoseEvent(JIZ)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteMorningCalibrationTime(II)V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeMorningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V
    .locals 5

    .line 482
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->getTimestamp()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventTypeId()I

    move-result v3

    .line 483
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventSubTypeId()I

    move-result v4

    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->quantity()I

    move-result p1

    .line 482
    invoke-static {v1, v2, v3, v4, p1}, Lcom/senseonics/bluetoothle/Request;->writePatientEvent(JIII)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteSensorID(J)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/Request;->writeSensorID(J)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postWriteTransmitterChunk([III)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 641
    invoke-static {p1, p2, p3}, Lcom/senseonics/bluetoothle/Request;->writeTransmitterChunk([III)Ljava/util/List;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->putAll(Ljava/util/List;)V

    .line 643
    invoke-static {p1, p2, p3}, Lcom/senseonics/bluetoothle/Request;->getTransmitterChunkAddresses([III)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public postWriteTransmitterNameRequest(Ljava/lang/String;)V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeFirstFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 615
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeLastFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public postwriteDoNotDisturbModeRequest(Z)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/Request;->writeDoNotDisturbModeRequest(Z)Lcom/senseonics/bluetoothle/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method

.method public readRemoteRSSI()V
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->readRemoteRSSI()V

    return-void
.end method

.method public startDiscovery(Lcom/senseonics/bluetoothle/DiscoverCallback;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->isBluetoothEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner;->scan(Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "BluetoothService"

    const-string v0, "dude, turn bluetooth on!"

    .line 225
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
