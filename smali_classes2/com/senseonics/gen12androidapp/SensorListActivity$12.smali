.class Lcom/senseonics/gen12androidapp/SensorListActivity$12;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

.field final synthetic val$error:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V
    .locals 0

    .line 1573
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->val$error:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1576
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->val$error:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    .line 1577
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1578
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$12;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_0
    return-void
.end method
