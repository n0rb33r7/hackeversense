.class Lcom/senseonics/bluetoothle/FwUpdateChecker$1;
.super Ljava/lang/Object;
.source "FwUpdateChecker.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/FwUpdateChecker;->getSuccessAction()Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/FwUpdateChecker;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " (success ? "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OTW_DEBUG"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-static {p1, v0}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->-$$Nest$msetFwUpdateAvailable(Lcom/senseonics/bluetoothle/FwUpdateChecker;Z)V

    .line 85
    iget-object p1, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-static {p1}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->-$$Nest$fgeteventBus(Lcom/senseonics/bluetoothle/FwUpdateChecker;)Lde/greenrobot/event/EventBus;

    move-result-object p1

    new-instance v0, Lcom/senseonics/events/FwUpdateRequestCompleteEvent;

    invoke-direct {v0}, Lcom/senseonics/events/FwUpdateRequestCompleteEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
