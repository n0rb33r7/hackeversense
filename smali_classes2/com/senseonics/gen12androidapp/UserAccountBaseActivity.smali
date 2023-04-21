.class public Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "UserAccountBaseActivity.java"

# interfaces
.implements Lcom/senseonics/util/DMSTaskCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$checkAndUpdatePasswordAsynctask;
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field protected btnSync:Landroid/widget/TextView;

.field protected contentLayout:Landroid/widget/LinearLayout;

.field protected dialog:Landroid/app/Dialog;

.field protected dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected userID:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mcheckAndUpdatePassword(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->checkAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdismissProgressDialog(Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissProgressDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    .line 44
    sget-object v0, Lcom/senseonics/util/AccountConstants$MLDMSResult;->None:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    const-string v0, "DMS(UABaseActivity)"

    .line 45
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    return-void
.end method

.method private checkAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "-1"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, ""

    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v2, p2}, Lcom/senseonics/util/AccountConstants;->generateBase64RFC2898(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v3, p2}, Lcom/senseonics/util/AccountConstants;->stringToBase64Data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 98
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {v3, p1, v2, p2}, Lcom/senseonics/util/AccountConstants;->generateCheckAndUpdatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance p2, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {p2, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    const-string v2, "https://harmonyservice.eversensedms.com/AgentServerHost.svc"

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 103
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "http://tempuri.org/IAgentServerService/CheckAndUpdatePassword"

    .line 101
    invoke-virtual {p1, v2, v3, p2}, Lcom/senseonics/util/AccountConstants;->formHttpPost(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/entity/StringEntity;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object p1

    .line 107
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    .line 108
    invoke-virtual {p2, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 109
    new-instance v1, Lcom/senseonics/util/DMSSSLSocketFactory;

    invoke-direct {v1, p2}, Lcom/senseonics/util/DMSSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 110
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p2, v1}, Lcom/senseonics/util/AccountConstants;->createHttpClient(Lorg/apache/http/conn/ssl/SSLSocketFactory;)Lorg/apache/http/client/HttpClient;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 115
    :try_start_1
    invoke-interface {p2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 116
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

    .line 126
    :try_start_2
    sget-object p2, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ServerError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 127
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string v1, "IO Exception"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 123
    :catch_1
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 124
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Connect timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :catch_2
    sget-object p1, Lcom/senseonics/util/AccountConstants$MLDMSResult;->Timeout:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dmsError:Lcom/senseonics/util/AccountConstants$MLDMSResult;

    .line 121
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Socket timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :catch_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Client Protocol Exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    return-object v0

    .line 136
    :catch_4
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Might be keystore exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 133
    :catch_5
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->Tag:Ljava/lang/String;

    const-string p2, "Unsupported Encoding Exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    return-object v1
.end method

.method private dismissDialog()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private setTextForBtnSync(Ljava/lang/String;)V
    .locals 1

    .line 84
    instance-of v0, p0, Lcom/senseonics/gen12androidapp/UserAccountActivity;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->btnSync:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V

    .line 364
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->resetBtnTextDismissProgressDialog()V

    return-void
.end method

.method public TaskDone(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;)V
    .locals 1

    .line 294
    sget-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f110340

    .line 323
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f110343

    .line 324
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    const p1, 0x7f11015c

    .line 318
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f11015a

    .line 319
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    const p1, 0x7f110158

    .line 314
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f110156

    .line 315
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    move-object p1, v0

    goto :goto_1

    :pswitch_3
    const p1, 0x7f11017b

    .line 308
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f11017a

    .line 309
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    const p1, 0x7f1102d1

    .line 304
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f1102d2

    .line 305
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    const p1, 0x7f11035e

    .line 300
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateInternetDisconnectedAlertText()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f110171

    goto :goto_0

    :cond_0
    const p1, 0x7f11035f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_6
    const p1, 0x7f110281

    .line 296
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const p1, 0x7f110282

    .line 297
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 328
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected displayDMSResult(Lcom/senseonics/util/AccountConstants$MLDMSResult;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    .line 258
    sget-object v0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity$1;->$SwitchMap$com$senseonics$util$AccountConstants$MLDMSResult:[I

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants$MLDMSResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const p1, 0x7f110340

    .line 284
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f110343

    .line 285
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const p1, 0x7f110172

    .line 279
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f110173

    .line 280
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const p1, 0x7f11017b

    .line 274
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f11017a

    .line 275
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const p1, 0x7f110128

    .line 269
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f110129

    .line 270
    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const p1, 0x7f1100af

    .line 261
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1100b0

    .line 262
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "%@"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 264
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 289
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected displayDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 332
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissDialog()V

    .line 333
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dialog:Landroid/app/Dialog;

    .line 335
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected findViewForBtnSync()V
    .locals 1

    const v0, 0x7f0900c3

    .line 79
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->btnSync:Landroid/widget/TextView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->initAccountSecurePreference()V

    .line 56
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->initAccountPreferences()V

    .line 58
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f1202ee

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f08009b

    .line 59
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissDialog()V

    .line 71
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissProgressDialog()V

    .line 72
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method protected resetBtnTextDismissProgressDialog()V
    .locals 1

    const v0, 0x7f1102fb

    .line 339
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->setTextForBtnSync(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/UserAccountBaseActivity;->dismissProgressDialog()V

    return-void
.end method

.method protected setupBtnSyncOnClickEvent()V
    .locals 0

    return-void
.end method
