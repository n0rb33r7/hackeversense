.class public final Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BluetoothCommunicator$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/bluetoothle/BluetoothCommunicator;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothService:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/BluetoothService;",
            ">;"
        }
    .end annotation
.end field

.field private broadcaster:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;",
            ">;"
        }
    .end annotation
.end field

.field private commandRequestTimer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/CommandRequestTimer;",
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

.field private handler:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/RequestBlockingSet;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateSyncer:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TransmitterStateSyncer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 40
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    const-string v1, "com.senseonics.bluetoothle.BluetoothCommunicator"

    const-string v2, "members/com.senseonics.bluetoothle.BluetoothCommunicator"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 50
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    .line 51
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.os.Handler"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->handler:Ldagger/internal/Binding;

    .line 52
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.ConnectionStateModifier"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    .line 53
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.RequestBlockingSet"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->queue:Ldagger/internal/Binding;

    .line 54
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.CommandRequestTimer"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->commandRequestTimer:Ldagger/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TransmitterStateSyncer"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->transmitterStateSyncer:Ldagger/internal/Binding;

    .line 56
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.LegacyResponseHandlingEventBroadcaster"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->broadcaster:Ldagger/internal/Binding;

    .line 57
    const-class v0, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.BluetoothService"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/bluetoothle/BluetoothCommunicator;
    .locals 10

    .line 82
    new-instance v9, Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lde/greenrobot/event/EventBus;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/senseonics/bluetoothle/ConnectionStateModifier;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->queue:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/senseonics/bluetoothle/RequestBlockingSet;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->commandRequestTimer:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->transmitterStateSyncer:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/senseonics/bluetoothle/TransmitterStateSyncer;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->broadcaster:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    iget-object v0, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/senseonics/bluetoothle/BluetoothService;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Handler;Lcom/senseonics/bluetoothle/ConnectionStateModifier;Lcom/senseonics/bluetoothle/RequestBlockingSet;Lcom/senseonics/bluetoothle/CommandRequestTimer;Lcom/senseonics/bluetoothle/TransmitterStateSyncer;Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;Lcom/senseonics/bluetoothle/BluetoothService;)V

    return-object v9
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->get()Lcom/senseonics/bluetoothle/BluetoothCommunicator;

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

    .line 66
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->eventBus:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->handler:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->connectionStateModifier:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->queue:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->commandRequestTimer:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->transmitterStateSyncer:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->broadcaster:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p2, p0, Lcom/senseonics/bluetoothle/BluetoothCommunicator$$InjectAdapter;->bluetoothService:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
