.class Lcom/senseonics/bluetoothle/PushNotificationListener$1;
.super Ljava/lang/Object;
.source "PushNotificationListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/PushNotificationListener;->onEventMainThread(Lcom/senseonics/events/CalibrationCountdownEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/PushNotificationListener;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/PushNotificationListener;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$1;->this$0:Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener$1;->this$0:Lcom/senseonics/bluetoothle/PushNotificationListener;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->refreshCalibrationInfo()V

    return-void
.end method
