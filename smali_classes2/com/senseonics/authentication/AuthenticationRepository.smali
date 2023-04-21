.class public Lcom/senseonics/authentication/AuthenticationRepository;
.super Ljava/lang/Object;
.source "AuthenticationRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/authentication/AuthenticationRepository$Header;
    }
.end annotation


# static fields
.field static final TOKEN_SHOULD_REFRESH_HOUR_LIMIT:I = 0x12


# instance fields
.field private context:Landroid/content/Context;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private loginService:Lcom/senseonics/api/UserLoginService;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private timeProvider:Lcom/senseonics/util/TimeProvider;


# direct methods
.method public constructor <init>(Lcom/senseonics/api/UserLoginService;Lcom/senseonics/util/TimeProvider;Lcom/senseonics/account/UserAccountModel;Lde/greenrobot/event/EventBus;Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/senseonics/authentication/AuthenticationRepository;->loginService:Lcom/senseonics/api/UserLoginService;

    .line 37
    iput-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 38
    iput-object p3, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    .line 39
    iput-object p4, p0, Lcom/senseonics/authentication/AuthenticationRepository;->eventBus:Lde/greenrobot/event/EventBus;

    .line 40
    iput-object p5, p0, Lcom/senseonics/authentication/AuthenticationRepository;->context:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized getAccessToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationRepository;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 49
    invoke-virtual {v1}, Lcom/senseonics/util/TimeProvider;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v3}, Lcom/senseonics/account/UserAccountModel;->getAccountAccessTokenTimeFromPreference()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    const-wide/16 v2, 0x12

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isAccountLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->getAccountAccessTokenFromPreference()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 52
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/senseonics/authentication/AuthenticationRepository;->getAccessTokenUsingCredential()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAccessTokenUsingCredential()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isAccountLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isIamInvalidCredential()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lretrofit2/HttpException;

    invoke-static {}, Lcom/senseonics/authentication/IamTokenError;->generateErrorResponseInvalidCredential()Lretrofit2/Response;

    move-result-object v1

    invoke-direct {v0, v1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw v0

    .line 63
    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    throw v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationRepository;->loginService:Lcom/senseonics/api/UserLoginService;

    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    .line 71
    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->getUsername()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    .line 72
    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->getPassword()Ljava/lang/String;

    move-result-object v6

    const-string v2, "password"

    const-string v3, "eversenseMMAAndroid"

    const-string v4, "6ksPx#]~wQ3U"

    .line 67
    invoke-interface/range {v1 .. v6}, Lcom/senseonics/api/UserLoginService;->authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v1}, Lcom/senseonics/account/UserAccountModel;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/senseonics/authentication/AuthenticationRepository;->getTokenFromResponse(Lretrofit2/Response;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenFromResponse(Lretrofit2/Response;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/senseonics/authentication/SenseonicsTokenDto;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit2/HttpException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/authentication/SenseonicsTokenDto;

    .line 79
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/account/UserAccountModel;->saveUserInfo(Lcom/senseonics/authentication/SenseonicsTokenDto;Ljava/lang/String;)V

    .line 81
    iget-object p2, p0, Lcom/senseonics/authentication/AuthenticationRepository;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/senseonics/authentication/IamTokenError;->clearIamUnlockTime(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 86
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p2

    .line 87
    invoke-static {p1}, Lcom/senseonics/authentication/IamTokenError;->getResponseErrorBodyString(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/senseonics/authentication/IamTokenError;->getIamTokenErrorTypeFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError$Type;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/senseonics/authentication/IamTokenError$Type;->LockedOut:Lcom/senseonics/authentication/IamTokenError$Type;

    if-eq v0, v1, :cond_1

    .line 93
    sget-object v1, Lcom/senseonics/authentication/IamTokenError$Type;->InvalidCredential:Lcom/senseonics/authentication/IamTokenError$Type;

    if-ne v0, v1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/authentication/IamTokenError;->clearIamUnlockTime(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isAccountLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->model:Lcom/senseonics/account/UserAccountModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/account/UserAccountModel;->setIamInvalidCredential(Z)V

    .line 101
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->NewPasswordDetected:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/senseonics/authentication/AuthenticationRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/authentication/IamTokenError;->updateIamUnlockTimeIfNeeded(Landroid/content/Context;)V

    .line 105
    :cond_2
    :goto_0
    new-instance v0, Lretrofit2/HttpException;

    invoke-static {p2, p1}, Lcom/senseonics/authentication/IamTokenError;->generateErrorResponse(ILjava/lang/String;)Lretrofit2/Response;

    move-result-object p1

    invoke-direct {v0, p1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw v0
.end method


# virtual methods
.method getAuthHeader()Lcom/senseonics/authentication/AuthenticationRepository$Header;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/senseonics/authentication/AuthenticationRepository$Header;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/authentication/AuthenticationRepository;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-direct {v0, v2, v1}, Lcom/senseonics/authentication/AuthenticationRepository$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
