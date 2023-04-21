.class public Lcom/senseonics/util/DMSUploadTask;
.super Landroid/os/AsyncTask;
.source "DMSUploadTask.java"


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
.field private final TAG:Ljava/lang/String;

.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hoursBack:I

.field private isLogin:Ljava/lang/Boolean;

.field private passWord:Ljava/lang/String;

.field private response:Ljava/lang/String;

.field private userID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "DMS(DMSUploadTask)"

    .line 29
    iput-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->TAG:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    .line 42
    iput-object p2, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/senseonics/util/DMSUploadTask;->hoursBack:I

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->passWord:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->userID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    .line 48
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;)V

    .line 55
    iput p3, p0, Lcom/senseonics/util/DMSUploadTask;->hoursBack:I

    .line 56
    iput-object p4, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;Lcom/senseonics/util/DMSTaskCallback;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/senseonics/util/DMSUploadTask;-><init>(Ljava/lang/Boolean;Lcom/senseonics/util/AccountConstants;ILde/greenrobot/event/EventBus;)V

    .line 63
    iput-object p5, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    return-void
.end method

.method private uploadDeviceData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "-1"

    const-string v1, "DMS(DMSUploadTask)"

    .line 166
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const-string v3, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    .line 169
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "http://tempuri.org/IAgentServerService/UploadDeviceEvents_CareApp"

    .line 167
    invoke-virtual {p1, v3, v4, v2}, Lcom/senseonics/util/AccountConstants;->formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    .line 173
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 174
    invoke-virtual {v2, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 175
    new-instance v3, Lcom/senseonics/util/DMSSSLSocketFactory;

    invoke-direct {v3, v2}, Lcom/senseonics/util/DMSSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 176
    iget-object v2, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2, v3}, Lcom/senseonics/util/AccountConstants;->createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 181
    :try_start_1
    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 182
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
    const-string v2, "IO Exception"

    .line 190
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string p1, "Connect timeout"

    .line 188
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p1, "Socket timeout"

    .line 186
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p1, "Client Protocol Exception"

    .line 184
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-object v0

    :catch_4
    move-exception p1

    const-string v2, "Might be keystore exception"

    .line 199
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :catch_5
    const-string p1, "Unsupported Encoding Exception"

    .line 196
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/DMSUploadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accountConstants:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DMS(DMSUploadTask)"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->passWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/senseonics/util/DMSUploadTask;->userID:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/senseonics/util/AccountConstants;->prepareRequestStringForUploadingLoginData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->HasValidAccountInfo()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "PANIC: No Valid Account Info"

    .line 76
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "-1"

    .line 77
    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    return-object v1

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget v0, p0, Lcom/senseonics/util/DMSUploadTask;->hoursBack:I

    invoke-virtual {p1, v0}, Lcom/senseonics/util/AccountConstants;->prepareRequestStringForUploadingData(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedStartInPreference()V

    .line 88
    :goto_0
    invoke-direct {p0, p1}, Lcom/senseonics/util/DMSUploadTask;->uploadDeviceData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/senseonics/util/DMSUploadTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6

    .line 94
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 96
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UploadData Response:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DMS(DMSUploadTask)"

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    iget-object v1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/senseonics/util/AccountConstants;->getUploadResultFromResponse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    .line 104
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->fromValue(I)Lcom/senseonics/util/AccountConstants$MLDMSResult;

    move-result-object v1

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dmsError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->DataSaved:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v0}, Lcom/senseonics/util/AccountConstants;->setCurrentDateTimeToLastSyncedOnInPreference()V

    .line 116
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_0

    .line 117
    new-instance v4, Lcom/senseonics/events/DMSUploadResultEvent;

    invoke-direct {v4, v2}, Lcom/senseonics/events/DMSUploadResultEvent;-><init>(Z)V

    invoke-virtual {v0, v4}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;

    invoke-direct {v2}, Lcom/senseonics/events/LastSyncedOnDateTimeUpdatedEvent;-><init>()V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 123
    :cond_0
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->InvalidUserCredentials:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->isLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 140
    invoke-interface {v0, v1, v3, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 143
    :cond_2
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 144
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 145
    invoke-interface {v0, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/senseonics/util/DMSUploadTask;->response:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 151
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->NotConnectedToWifi:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 152
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 153
    invoke-interface {v0, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    goto :goto_0

    .line 156
    :cond_4
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 157
    iget-object v0, p0, Lcom/senseonics/util/DMSUploadTask;->dmsTaskCallback:Lcom/senseonics/util/DMSTaskCallback;

    if-eqz v0, :cond_5

    .line 158
    invoke-interface {v0, p1}, Lcom/senseonics/util/DMSTaskCallback;->TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    :cond_5
    :goto_0
    return-void
.end method
