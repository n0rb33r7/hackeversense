.class public Lcom/senseonics/bluetoothle/BluetoothServiceAutoStarter;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothServiceAutoStarter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startBluetoothService(Landroid/content/Context;)V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid8OrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BluetoothServiceAutoStarter;->startBluetoothService(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 24
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/BluetoothServiceAutoStarter;->startBluetoothService(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
