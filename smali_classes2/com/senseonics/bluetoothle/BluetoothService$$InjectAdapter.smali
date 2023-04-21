.class public final Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothService$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/BluetoothService;",
        ">;"
    }
.end annotation


# instance fields
.field private asyncQueryHandler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private batteryMonitorThresholdChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;",
            ">;"
        }
    .end annotation
.end field

.field private bleHealthMonitor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BleHealthMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private bleHealthUpload:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BleHealthUpload;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothAdapterWrapper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljavax/inject/Provider<",
            "Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private bluetoothCommunicator:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothConnector:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothConnector;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothGattCallback:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/bluetooth/BluetoothManager;",
            ">;"
        }
    .end annotation
.end field

.field private calReminderManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/calReminder/CalReminderManager;",
            ">;"
        }
    .end annotation
.end field

.field private commandProcessor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/CommandProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private connectionStateModifier:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/ConnectionStateModifier;",
            ">;"
        }
    .end annotation
.end field

.field private eventBus:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private extensionManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/extension/ExtensionManager;",
            ">;"
        }
    .end annotation
.end field

.field private fwUpdateChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/FwUpdateChecker;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private isForeground:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUtility:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/NotificationUtility;",
            ">;"
        }
    .end annotation
.end field

.field private pushNotificationListener:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/PushNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private requestBlockingSet:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            ">;"
        }
    .end annotation
.end field

.field private rssiReader:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RssiReader;",
            ">;"
        }
    .end annotation
.end field

.field private syncParser:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/SyncParser;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterAuthorityUri:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterConnectionStates:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterConnectionStates;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterKeepAliveChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterPersistor:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/db/TransmitterPersistor;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterScanner:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterScanner;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStaleGlucoseChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 100
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    const-string v1, "com.senseonics.bluetoothle.BluetoothService"

    const-string v2, "members/com.senseonics.bluetoothle.BluetoothService"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 110
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterScanner"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterScanner:Ldagger/internal/Binding;

    .line 111
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BluetoothAdapterWrapper"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    .line 112
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "javax.inject.Provider<com.senseonics.bluetoothle.BluetoothAdapterWrapper>"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;

    .line 113
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.os.Handler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->handler:Ldagger/internal/Binding;

    .line 114
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=IS_FOREGROUND)/java.lang.Boolean"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->isForeground:Ldagger/internal/Binding;

    .line 115
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=transmitter)/android.net.Uri"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterAuthorityUri:Ldagger/internal/Binding;

    .line 116
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.ConnectedTransmitterAsyncQueryHandler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->asyncQueryHandler:Ldagger/internal/Binding;

    .line 117
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.ConnectionStateModifier"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    .line 118
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 119
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BluetoothCommunicator"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothCommunicator:Ldagger/internal/Binding;

    .line 120
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BluetoothConnector"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothConnector:Ldagger/internal/Binding;

    .line 121
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.bluetooth.BluetoothManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    .line 122
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterConnectionStates"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionStates:Ldagger/internal/Binding;

    .line 123
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.RequestBlockingSet"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    .line 124
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterConnectionNotificationScheduler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;

    .line 125
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.PushNotificationListener"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->pushNotificationListener:Ldagger/internal/Binding;

    .line 126
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.db.TransmitterPersistor"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterPersistor:Ldagger/internal/Binding;

    .line 127
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.CommandProcessor"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->commandProcessor:Ldagger/internal/Binding;

    .line 128
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.NotificationUtility"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    .line 129
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.MyBluetoothGattCallback"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothGattCallback:Ldagger/internal/Binding;

    .line 130
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterKeepAliveChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveChecker:Ldagger/internal/Binding;

    .line 131
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterStaleGlucoseChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseChecker:Ldagger/internal/Binding;

    .line 132
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterKeepAliveVisibilityChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;

    .line 133
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterStaleGlucoseVisibilityChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;

    .line 134
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.RssiReader"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->rssiReader:Ldagger/internal/Binding;

    .line 135
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BleHealthUpload"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthUpload:Ldagger/internal/Binding;

    .line 136
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BleHealthMonitor"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthMonitor:Ldagger/internal/Binding;

    .line 137
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.SyncParser"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->syncParser:Ldagger/internal/Binding;

    .line 138
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.extension.ExtensionManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->extensionManager:Ldagger/internal/Binding;

    .line 139
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.FwUpdateChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->fwUpdateChecker:Ldagger/internal/Binding;

    .line 140
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.calReminder.CalReminderManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->calReminderManager:Ldagger/internal/Binding;

    .line 141
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BatteryMonitorThresholdChecker"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->batteryMonitorThresholdChecker:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 190
    new-instance v0, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0}, Lcom/senseonics/bluetoothle/BluetoothService;-><init>()V

    .line 191
    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/BluetoothService;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 150
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterScanner:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->isForeground:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterAuthorityUri:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->asyncQueryHandler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothCommunicator:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothConnector:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionStates:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->pushNotificationListener:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterPersistor:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->commandProcessor:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothGattCallback:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->rssiReader:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthUpload:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthMonitor:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->syncParser:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->extensionManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->fwUpdateChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->calReminderManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->batteryMonitorThresholdChecker:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterScanner:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterScanner;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterScanner:Lcom/senseonics/bluetoothle/TransmitterScanner;

    .line 202
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 203
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothAdapterWrapperProvider:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapperProvider:Ljavax/inject/Provider;

    .line 204
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->handler:Landroid/os/Handler;

    .line 205
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->isForeground:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->isForeground:Z

    .line 206
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterAuthorityUri:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterAuthorityUri:Landroid/net/Uri;

    .line 207
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->asyncQueryHandler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->asyncQueryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    .line 208
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->connectionStateModifier:Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    .line 209
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/greenrobot/event/EventBus;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->eventBus:Lde/greenrobot/event/EventBus;

    .line 210
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothCommunicator:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    .line 211
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothConnector:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BluetoothConnector;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothConnector:Lcom/senseonics/bluetoothle/BluetoothConnector;

    .line 212
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 213
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionStates:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterConnectionStates:Lcom/senseonics/bluetoothle/TransmitterConnectionStates;

    .line 214
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->requestBlockingSet:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->requestBlockingSet:Lcom/senseonics/bluetoothle/RequestBlockingSet;

    .line 215
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterConnectionNotificationScheduler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterConnectionNotificationScheduler:Lcom/senseonics/bluetoothle/TransmitterConnectionNotificationScheduler;

    .line 216
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->pushNotificationListener:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/PushNotificationListener;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->pushNotificationListener:Lcom/senseonics/bluetoothle/PushNotificationListener;

    .line 217
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterPersistor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/db/TransmitterPersistor;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterPersistor:Lcom/senseonics/db/TransmitterPersistor;

    .line 218
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->commandProcessor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/CommandProcessor;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->commandProcessor:Lcom/senseonics/bluetoothle/CommandProcessor;

    .line 219
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->notificationUtility:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/NotificationUtility;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 220
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bluetoothGattCallback:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothGattCallback:Lcom/senseonics/bluetoothle/MyBluetoothGattCallback;

    .line 221
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterKeepAliveChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveChecker;

    .line 222
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterStaleGlucoseChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseChecker;

    .line 223
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterKeepAliveVisibilityChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterKeepAliveVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterKeepAliveVisibilityChecker;

    .line 224
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->transmitterStaleGlucoseVisibilityChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->transmitterStaleGlucoseVisibilityChecker:Lcom/senseonics/bluetoothle/TransmitterStaleGlucoseVisibilityChecker;

    .line 225
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->rssiReader:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/RssiReader;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->rssiReader:Lcom/senseonics/bluetoothle/RssiReader;

    .line 226
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthUpload:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BleHealthUpload;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bleHealthUpload:Lcom/senseonics/bluetoothle/BleHealthUpload;

    .line 227
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->bleHealthMonitor:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BleHealthMonitor;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bleHealthMonitor:Lcom/senseonics/bluetoothle/BleHealthMonitor;

    .line 228
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->syncParser:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/SyncParser;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->syncParser:Lcom/senseonics/model/SyncParser;

    .line 229
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->extensionManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/extension/ExtensionManager;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->extensionManager:Lcom/senseonics/extension/ExtensionManager;

    .line 230
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->fwUpdateChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/FwUpdateChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->fwUpdateChecker:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    .line 231
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->calReminderManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/calReminder/CalReminderManager;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->calReminderManager:Lcom/senseonics/calReminder/CalReminderManager;

    .line 232
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->batteryMonitorThresholdChecker:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    iput-object v0, p1, Lcom/senseonics/bluetoothle/BluetoothService;->batteryMonitorThresholdChecker:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/BluetoothService$$InjectAdapter;->injectMembers(Lcom/senseonics/bluetoothle/BluetoothService;)V

    return-void
.end method
