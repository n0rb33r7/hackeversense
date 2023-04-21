.class Lcom/senseonics/bluetoothle/BluetoothService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BluetoothService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BluetoothService;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/16 v0, 0xa

    .line 147
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 148
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    .line 149
    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth adapter isEnabled? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BluetoothService"

    .line 149
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v0, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    const/16 p2, 0xd

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "bluetooth"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothManager;

    iput-object p2, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 156
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object p2, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    iput-object p2, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 157
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/BluetoothService;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/senseonics/bluetoothle/BluetoothService$2$1;

    invoke-direct {p2, p0}, Lcom/senseonics/bluetoothle/BluetoothService$2$1;-><init>(Lcom/senseonics/bluetoothle/BluetoothService$2;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/BluetoothService;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p2, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;-><init>(Z)V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    iget-object p1, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothCommunicator:Lcom/senseonics/bluetoothle/BluetoothCommunicator;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothCommunicator;->disconnect()Z

    .line 170
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BluetoothService$2;->this$0:Lcom/senseonics/bluetoothle/BluetoothService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/senseonics/bluetoothle/BluetoothService;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    :goto_0
    return-void
.end method
