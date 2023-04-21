.class public Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;
.super Landroid/os/AsyncTask;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SenseAsynctask"
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

    .line 921
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 921
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 926
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 927
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object v0, p1, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startDownloadingAndSyncingOfEEPROMAndATCCALParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->response:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "-1"

    .line 929
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->response:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 921
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 936
    const-class v0, Lcom/senseonics/gen12androidapp/SensorListActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get sensor file response:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorListActivity"

    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->response:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->parseResponse(Ljava/lang/String;)V

    goto :goto_0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->response:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->-$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    .line 943
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    .line 946
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
