.class public Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;
.super Landroid/os/AsyncTask;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FindCalibrationFileAsynctask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
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

    .line 950
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 950
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    .line 955
    aget-object p1, p1, v0

    .line 956
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findCalibrationFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->response:Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 950
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    .line 962
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find calibration file response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorListActivity"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->response:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->response:Ljava/lang/String;

    const-string v1, "File not found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorFile:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {v3, v4, v2, v1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object v0, v0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->IncompatibleTx:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {v3, v4, v2, v1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    .line 974
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    goto :goto_1

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->response:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 977
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    .line 978
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    .line 981
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
