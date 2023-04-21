.class public Lcom/senseonics/util/DMSStateModelUploadTask;
.super Landroid/os/AsyncTask;
.source "DMSStateModelUploadTask.java"


# annotations
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
.field private final Tag:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private response:Ljava/lang/String;

.field private stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

.field private stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;


# direct methods
.method public constructor <init>(Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/StateModelUploadUtility_SOAP;Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;Lde/greenrobot/event/EventBus;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "DMS(StateModelUpLTk)"

    .line 37
    iput-object v0, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->Tag:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 47
    iput-object p2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    .line 48
    iput-object p3, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    .line 49
    iput-object p4, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/DMSStateModelUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 58
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    const-string v0, "-1"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "DMS(StateModelUpLTk)"

    const-string v2, "PANIC: No Valid Account Info"

    .line 59
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object v0, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    return-object v1

    .line 66
    :cond_0
    sget-object p1, Lcom/senseonics/util/DMSStateModelUploadTask$1;->$SwitchMap$com$senseonics$util$StateModelUploadUtility_SOAP$StateModelType:[I

    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {v2}, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->ordinal()I

    move-result v2

    aget p1, p1, v2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelAppInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;

    move-result-object p1

    .line 93
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {v2, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->generateStateModelAppInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelAppInfo_SOAP;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://tempuri.org/IAgentServerService/UploadAppInfo"

    goto/16 :goto_1

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelThresholdInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;

    move-result-object p1

    .line 88
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {v2, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->generateStateModelThresholdInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelThresholdInfo_SOAP;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://tempuri.org/IAgentServerService/UploadThresholds_CareApp"

    goto :goto_1

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelSensorInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;->getSensorID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 82
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {v2, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->generateStateModelSensorInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelSensorInfo_SOAP;)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://tempuri.org/IAgentServerService/UploadSensorInfo"

    goto :goto_1

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelTransmitterInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;->getTxID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 75
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {v2, p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->generateStateModelTransmitterInfoRequest(Lcom/senseonics/model/StateModelUpload/DMSStateModelTransmitterInfo_SOAP;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://tempuri.org/IAgentServerService/UploadTransmitterInfo"

    goto :goto_1

    :cond_5
    :goto_0
    move-object p1, v1

    move-object v2, p1

    goto :goto_1

    .line 68
    :cond_6
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;

    invoke-virtual {p1}, Lcom/senseonics/util/StateModelUploadUtility_SOAP;->fetchStateModelUserInfo()Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;

    move-result-object p1

    .line 69
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/senseonics/model/StateModelUpload/DMSStateModelUserInfo_SOAP;->getPWBinary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v4, p1}, Lcom/senseonics/util/AccountConstants;->generateCheckAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    :goto_1
    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 101
    invoke-virtual {p0, p1, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->uploadStateModelData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    goto :goto_2

    .line 103
    :cond_7
    iput-object v0, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    :goto_2
    return-object v1
.end method

.method getResultFromResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 194
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 195
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x0

    .line 196
    invoke-interface {v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 198
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 201
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 204
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    .line 209
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/DMSStateModelUploadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .line 111
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadData TYPE:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "| RESPONSE:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DMS(StateModelUpLTk)"

    invoke-static {v1, p1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    sget-object v2, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_CheckAndUpdatePassword:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    if-ne p1, v2, :cond_0

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    iget-object v2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CheckAndUpdatePasswordResult"

    invoke-virtual {p0, p1, v2}, Lcom/senseonics/util/DMSStateModelUploadTask;->getResultFromResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. checkAndUpdatePasswordResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const-string v2, ""

    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ","

    .line 120
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 122
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 123
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    .line 124
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 126
    invoke-static {v0}, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    move-result-object p1

    .line 128
    sget-object v0, Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;->PwdUpdatedAndAuthenticated:Lcom/senseonics/util/AccountConstants$CheckAndUpdatePasswordResult;

    if-ne p1, v0, :cond_2

    const-string p1, "2. Set MigrationPasswordUpdated to YES"

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1, v2}, Lcom/senseonics/util/AccountConstants;->setMigrationPasswordUpdated(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    sget-object v0, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    if-ne p1, v0, :cond_2

    .line 139
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    iget-object v0, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "UploadSensorInfoResult"

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/util/DMSStateModelUploadTask;->getResultFromResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "true"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v1, p1}, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->stateModelType:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    sget-object v1, Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;->StateModelType_SxInfo:Lcom/senseonics/util/StateModelUploadUtility_SOAP$StateModelType;

    if-ne p1, v1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;

    invoke-direct {v1, v0}, Lcom/senseonics/events/SensorLinkDMSStateModelUploadResultEvent;-><init>(Z)V

    invoke-virtual {p1, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method setresponse(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->response:Ljava/lang/String;

    return-void
.end method

.method uploadStateModelData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "-1"

    const-string v1, "DMS(StateModelUpLTk)"

    .line 151
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const-string v3, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    invoke-virtual {p1, v3, p2, v2}, Lcom/senseonics/util/AccountConstants;->formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    .line 158
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 v2, 0x0

    .line 159
    invoke-virtual {p2, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 160
    new-instance v2, Lcom/senseonics/util/DMSSSLSocketFactory;

    invoke-direct {v2, p2}, Lcom/senseonics/util/DMSSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 161
    iget-object p2, p0, Lcom/senseonics/util/DMSStateModelUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p2, v2}, Lcom/senseonics/util/AccountConstants;->createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 166
    :try_start_1
    invoke-interface {p2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    return-object p1

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "IO Exception"

    .line 175
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p1, "Connect timeout"

    .line 173
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "Socket timeout"

    .line 171
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p1, "Client Protocol Exception"

    .line 169
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-object v0

    :catch_4
    move-exception p1

    const-string p2, "Might be keystore exception"

    .line 184
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_5
    const-string p1, "Unsupported Encoding Exception"

    .line 181
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
