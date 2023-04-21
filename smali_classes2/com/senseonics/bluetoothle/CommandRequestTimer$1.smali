.class Lcom/senseonics/bluetoothle/CommandRequestTimer$1;
.super Ljava/util/TimerTask;
.source "CommandRequestTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/CommandRequestTimer;->setupTaskSchedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/CommandRequestTimer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->-$$Nest$fgethaveReceivedE9(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-class v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    const-string v0, "CommandRequestTimer"

    const-string v1, "going to send 0x69"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----- CommRequestTimer going to send 0x69 | queue size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->-$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$1;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->-$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->saveBondingInformation()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    :cond_0
    return-void
.end method
