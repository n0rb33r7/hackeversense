.class Lcom/senseonics/bluetoothle/CommandRequestTimer$4;
.super Ljava/util/TimerTask;
.source "CommandRequestTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/CommandRequestTimer;->scheduleIntervalCommands()V
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

    .line 77
    iput-object p1, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    const-class v0, Lcom/senseonics/bluetoothle/CommandRequestTimer;

    const-string v0, "CommandRequestTimer"

    const-string v1, "task for phase info."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->-$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->isOneCalPhase()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 82
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->-$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->currentCalibrationPhase()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/bluetoothle/CommandRequestTimer$4;->this$0:Lcom/senseonics/bluetoothle/CommandRequestTimer;

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandRequestTimer;->-$$Nest$fgetrequestBlockingSet(Lcom/senseonics/bluetoothle/CommandRequestTimer;)Lcom/senseonics/bluetoothle/RequestBlockingSet;

    move-result-object v0

    invoke-static {}, Lcom/senseonics/bluetoothle/Request;->completedCalibrationsCount()Lcom/senseonics/bluetoothle/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/RequestBlockingSet;->put(Lcom/senseonics/bluetoothle/Request;)V

    return-void
.end method
