.class public Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;
.super Landroid/os/AsyncTask;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckFWCompatibilityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 787
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 787
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 792
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkMMAandTXcompatibility()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 787
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 798
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compatibility response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorListActivity"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$mupdateLinkDetectedSensorLayout(Lcom/senseonics/gen12androidapp/SensorListActivity;ZZ)V

    .line 804
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP1:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    invoke-static {v0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingState(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)V

    .line 805
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->prepareLinkingLayout()V

    .line 806
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fgetlinkingLayout(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 807
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {v0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    .line 810
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    goto :goto_0

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->response:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    .line 815
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    .line 818
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
