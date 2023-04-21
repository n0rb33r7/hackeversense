.class public Lcom/senseonics/view/CommonErrorHandler;
.super Ljava/lang/Object;
.source "CommonErrorHandler.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/senseonics/view/CommonErrorHandler;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getThrowableError(Ljava/lang/Throwable;)Lcom/senseonics/authentication/ThrowableError;
    .locals 5

    .line 39
    sget-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->Unknown:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    .line 42
    instance-of v1, p1, Lretrofit2/HttpException;

    if-eqz v1, :cond_1

    move-object v2, p1

    check-cast v2, Lretrofit2/HttpException;

    invoke-virtual {v2}, Lretrofit2/HttpException;->code()I

    move-result v3

    const/16 v4, 0x190

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lretrofit2/HttpException;->code()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1

    .line 43
    :cond_0
    sget-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->IncorrectEmailOrPassword:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, p1}, Lcom/senseonics/view/CommonErrorHandler;->isInternetDisconnectedThrowable(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    sget-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->InternetDisconnected:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 49
    check-cast p1, Lretrofit2/HttpException;

    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object p1

    .line 50
    invoke-static {p1}, Lcom/senseonics/authentication/IamTokenError;->getResponseErrorBodyString(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/senseonics/authentication/IamTokenError;->getIamTokenErrorTypeFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError$Type;

    move-result-object v1

    .line 52
    sget-object v2, Lcom/senseonics/authentication/IamTokenError$Type;->InvalidCredential:Lcom/senseonics/authentication/IamTokenError$Type;

    if-ne v1, v2, :cond_3

    .line 53
    sget-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->IamInvalidCredential:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    goto :goto_1

    .line 55
    :cond_3
    sget-object v2, Lcom/senseonics/authentication/IamTokenError$Type;->LockedOut:Lcom/senseonics/authentication/IamTokenError$Type;

    if-ne v1, v2, :cond_4

    .line 56
    sget-object v0, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->IamLockedOut:Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 61
    :goto_1
    new-instance v1, Lcom/senseonics/authentication/ThrowableError;

    invoke-direct {v1, v0, p1}, Lcom/senseonics/authentication/ThrowableError;-><init>(Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;Ljava/lang/String;)V

    return-object v1
.end method

.method public isInternetDisconnectedThrowable(Ljava/lang/Throwable;)Z
    .locals 1

    .line 33
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/net/SocketException;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 9

    .line 66
    invoke-virtual {p0, p2}, Lcom/senseonics/view/CommonErrorHandler;->getThrowableError(Ljava/lang/Throwable;)Lcom/senseonics/authentication/ThrowableError;

    move-result-object p2

    .line 68
    sget-object v0, Lcom/senseonics/view/CommonErrorHandler$1;->$SwitchMap$com$senseonics$authentication$ThrowableError$ThrowableErrorCode:[I

    invoke-virtual {p2}, Lcom/senseonics/authentication/ThrowableError;->getCode()Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/authentication/ThrowableError$ThrowableErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 p2, 0x2

    if-eq v0, p2, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    .line 103
    invoke-virtual {p0, p1, p3}, Lcom/senseonics/view/CommonErrorHandler;->showUnknownErrorDialog(Lcom/senseonics/view/DialogShowingView;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/senseonics/view/CommonErrorHandler;->showInternetDisconnectedDialog(Lcom/senseonics/view/DialogShowingView;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f11017b

    const v3, 0x7f11017a

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p3

    .line 90
    invoke-interface/range {v1 .. v6}, Lcom/senseonics/view/DialogShowingView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p2, p0, Lcom/senseonics/view/CommonErrorHandler;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/senseonics/authentication/IamTokenError;->getLockedOutTitleMessage(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    .line 81
    aget-object v4, p2, v1

    aget-object v5, p2, v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/senseonics/view/DialogShowingView;->showDialogWithCustomTitleAndMessage(Ljava/lang/String;Ljava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/senseonics/view/CommonErrorHandler;->context:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/senseonics/authentication/IamTokenError;->getInvalidCredentialTitleMessage(Lcom/senseonics/authentication/ThrowableError;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    .line 71
    aget-object v4, p2, v1

    aget-object v5, p2, v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/senseonics/view/DialogShowingView;->showDialogWithCustomTitleAndMessage(Ljava/lang/String;Ljava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    :goto_0
    return-void
.end method

.method public showInternetDisconnectedDialog(Lcom/senseonics/view/DialogShowingView;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 7

    .line 111
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateInternetDisconnectedAlertText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110171

    goto :goto_0

    :cond_0
    const v0, 0x7f11035f

    :goto_0
    move v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v2, 0x7f11035e

    move-object v1, p1

    move-object v5, p2

    .line 109
    invoke-interface/range {v1 .. v6}, Lcom/senseonics/view/DialogShowingView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

.method public showUnknownErrorDialog(Lcom/senseonics/view/DialogShowingView;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 6

    const v1, 0x7f110340

    const v2, 0x7f110343

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p2

    .line 119
    invoke-interface/range {v0 .. v5}, Lcom/senseonics/view/DialogShowingView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method
