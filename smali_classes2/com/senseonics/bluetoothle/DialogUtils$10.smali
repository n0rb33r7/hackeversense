.class Lcom/senseonics/bluetoothle/DialogUtils$10;
.super Ljava/lang/Object;
.source "DialogUtils.java"

# interfaces
.implements Lcom/senseonics/util/dialogs/NotificationDialogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/DialogUtils;

.field final synthetic val$activity:Landroid/content/Context;

.field final synthetic val$sensorNotificationDialogInfo:Lcom/senseonics/util/dialogs/NotificationDialogInfo;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/util/dialogs/NotificationDialogInfo;Landroid/content/Context;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object p2, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->val$sensorNotificationDialogInfo:Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    iput-object p3, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->val$activity:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leftButtonPressed()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->-$$Nest$fgetcustomDialogs(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->val$sensorNotificationDialogInfo:Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public rightButtonPressed()V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->this$0:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->-$$Nest$fgetcustomDialogs(Lcom/senseonics/bluetoothle/DialogUtils;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->val$sensorNotificationDialogInfo:Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 562
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"

    .line 563
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    iget-object v1, p0, Lcom/senseonics/bluetoothle/DialogUtils$10;->val$activity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
