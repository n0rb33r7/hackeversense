.class Lcom/senseonics/bluetoothle/BleHealthUpload$2;
.super Landroid/os/CountDownTimer;
.source "BleHealthUpload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/BleHealthUpload;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/BleHealthUpload;JJ)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetTAG(Lcom/senseonics/bluetoothle/BleHealthUpload;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLE health onFinish..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$mstartBleHealthSync(Lcom/senseonics/bluetoothle/BleHealthUpload;)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetcTimer(Lcom/senseonics/bluetoothle/BleHealthUpload;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 86
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fputstartTime(Lcom/senseonics/bluetoothle/BleHealthUpload;J)V

    .line 87
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetstartTime(Lcom/senseonics/bluetoothle/BleHealthUpload;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fputstartTimeTicker(Lcom/senseonics/bluetoothle/BleHealthUpload;J)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetcTimer(Lcom/senseonics/bluetoothle/BleHealthUpload;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onTick(J)V
    .locals 7

    .line 71
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fputstartTimeTicker(Lcom/senseonics/bluetoothle/BleHealthUpload;J)V

    .line 72
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetstartTimeTicker(Lcom/senseonics/bluetoothle/BleHealthUpload;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetstartTime(Lcom/senseonics/bluetoothle/BleHealthUpload;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 73
    iget-object v4, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v4}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetTAG(Lcom/senseonics/bluetoothle/BleHealthUpload;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BLE health seconds remaining: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long/2addr p1, v0

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") secs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/senseonics/bluetoothle/BleHealthUpload$2;->this$0:Lcom/senseonics/bluetoothle/BleHealthUpload;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/BleHealthUpload;->-$$Nest$fgetTAG(Lcom/senseonics/bluetoothle/BleHealthUpload;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLE health ticker actual duration > remaining: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
