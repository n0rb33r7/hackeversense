.class Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;
.super Ljava/lang/Object;
.source "BatteryMonitorThresholdChecker.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->getSuccessAction()Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;)V
    .locals 3

    .line 89
    invoke-virtual {p1}, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->getTempThreshWarn()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 90
    invoke-virtual {p1}, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;->getTempThreshModeChange()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BATT_DEBUG"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-static {v1, v0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->-$$Nest$misValid(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-static {v1, v0}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->-$$Nest$msetTempThreshWarn(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-static {v0, p1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->-$$Nest$misValid(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-static {v0, p1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->-$$Nest$msetTempThreshModeChange(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;I)V

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->this$0:Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;->-$$Nest$msetLastCheckTempThreshTime(Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker;J)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/BatteryMonitorThresholdChecker$1;->call(Lcom/senseonics/getSetting/BatteryMonitorThresholdDto;)V

    return-void
.end method
