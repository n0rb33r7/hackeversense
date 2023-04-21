.class public Lcom/senseonics/uploadData/DMSUploadTaskREST;
.super Landroid/os/AsyncTask;
.source "DMSUploadTaskREST.java"

# interfaces
.implements Lcom/senseonics/uploadData/UploadDataRepository$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;",
        "Lcom/senseonics/uploadData/UploadDataRepository$Callback;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hoursBack:I

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;


# direct methods
.method constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/view/CommonErrorHandler;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "DMS(DMSUploadTaskREST)"

    .line 27
    iput-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    .line 38
    iput-object p2, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 39
    iput p3, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->hoursBack:I

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    .line 41
    iput-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    .line 42
    iput-object p4, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    .line 43
    iput-object p5, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/util/DMSTaskCallback;Lcom/senseonics/view/CommonErrorHandler;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 54
    invoke-direct/range {v0 .. v6}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/view/CommonErrorHandler;)V

    .line 55
    iput-object p6, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/view/CommonErrorHandler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/uploadData/DMSUploadTaskREST;-><init>(Lcom/senseonics/uploadData/UploadDataRepository;Lcom/senseonics/util/AccountConstants;ILcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/view/CommonErrorHandler;)V

    .line 49
    iput-object p4, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DMS(DMSUploadTaskREST)"

    const-string v0, "PANIC: No Valid Account Info"

    .line 62
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->hoursBack:I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->fetchSensorIDFromModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/util/AccountConstants;->getBase64_Sensor_BGM_Patient_Alert_Data(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handleUploadDataFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;

    invoke-virtual {v0, p1}, Lcom/senseonics/view/CommonErrorHandler;->getThrowableError(Ljava/lang/Throwable;)Lcom/senseonics/authentication/ThrowableError;

    move-result-object p1

    .line 112
    sget-object v0, Lcom/senseonics/uploadData/DMSUploadTaskREST$1;->$SwitchMap$com$senseonics$authentication$ThrowableError$ThrowableErrorCode:[I

    invoke-virtual {p1}, Lcom/senseonics/authentication/ThrowableError;->getCode()Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 135
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_4

    .line 136
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Unknown:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-interface {p1, v0}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_4

    .line 130
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-interface {p1, v0}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_4

    .line 125
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v2, v1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_4

    .line 120
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IamLockedOut:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-interface {p1, v0}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz p1, :cond_4

    .line 115
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->IamInvalidCredential:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    invoke-interface {p1, v0}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleUploadDataResult(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v1}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedOnInPreference()V

    .line 98
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v1, :cond_0

    .line 99
    new-instance v3, Lcom/senseonics/events/DMSUploadResultEvent;

    invoke-direct {v3, v2}, Lcom/senseonics/events/DMSUploadResultEvent;-><init>(Z)V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;

    invoke-direct {v3}, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;-><init>()V

    invoke-virtual {v1, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v1, :cond_1

    .line 105
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {v1, v0, v2, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedStartInPreference()V

    .line 75
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v1, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility;->fetchStateModelCurrentValueInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/uploadData/UploadDataRepository;->putCurrentValues(Lcom/senseonics/model/StateModelUpload/DMSStateModelCurrentValueInfo;)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->uploadDataRepository:Lcom/senseonics/uploadData/UploadDataRepository;

    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 79
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->fetchTxSerialNoFromModel()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/uploadData/DMSUploadTaskREST;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 80
    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->base64EncodingForTimeZoneOffsetInSeconds()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 81
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v0, 0x1

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v0, 0x2

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    const/4 v0, 0x3

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    move-object v9, p0

    .line 78
    invoke-virtual/range {v2 .. v9}, Lcom/senseonics/uploadData/UploadDataRepository;->putDeviceEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/senseonics/uploadData/UploadDataRepository$Callback;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/senseonics/uploadData/DMSUploadTaskREST;->handleUploadDataFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
