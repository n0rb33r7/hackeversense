.class Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$1;
.super Ljava/lang/Object;
.source "SensorLinkSramResultChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->readResultRetry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$1;->this$0:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker$1;->this$0:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->-$$Nest$mreadResult(Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;)V

    return-void
.end method
