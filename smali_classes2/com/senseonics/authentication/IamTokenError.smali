.class public Lcom/senseonics/authentication/IamTokenError;
.super Ljava/lang/Object;
.source "IamTokenError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/authentication/IamTokenError$Type;
    }
.end annotation


# static fields
.field private static final LOCKOUT_PERIOD:I = 0x1e

.field private static final MAX_ATTEMPT:I = 0x3


# instance fields
.field private error:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field private errorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_code"
    .end annotation
.end field

.field private errorDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error_description"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearIamUnlockTime(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 158
    invoke-static {p0, v0, v1}, Lcom/senseonics/util/Utils;->setIamUnlockTime(Landroid/content/Context;J)V

    return-void
.end method

.method public static generateErrorResponse(ILjava/lang/String;)Lretrofit2/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Response<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 98
    invoke-static {p1, v0}, Lokhttp3/ResponseBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p0, p1}, Lretrofit2/Response;->error(ILokhttp3/ResponseBody;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public static generateErrorResponseInvalidCredential()Lretrofit2/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Response<",
            "*>;"
        }
    .end annotation

    const/16 v0, 0x190

    const-string v1, "{\"error\":\"invalid_grant\",\"error_description\":\"invalid credentials.RemainingAttempt:0\",\"error_code\":6008}"

    .line 103
    invoke-static {v0, v1}, Lcom/senseonics/authentication/IamTokenError;->generateErrorResponse(ILjava/lang/String;)Lretrofit2/Response;

    move-result-object v0

    return-object v0
.end method

.method private static getIamTokenErrorFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 44
    :try_start_0
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 45
    const-class v2, Lcom/senseonics/authentication/IamTokenError;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/senseonics/authentication/IamTokenError;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 50
    iget-object v1, p0, Lcom/senseonics/authentication/IamTokenError;->error:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/senseonics/authentication/IamTokenError;->errorDescription:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/senseonics/authentication/IamTokenError;->errorCode:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public static getIamTokenErrorTypeFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError$Type;
    .locals 3

    .line 54
    sget-object v0, Lcom/senseonics/authentication/IamTokenError$Type;->None:Lcom/senseonics/authentication/IamTokenError$Type;

    .line 56
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getIamTokenErrorFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 58
    iget-object p0, p0, Lcom/senseonics/authentication/IamTokenError;->errorCode:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1778

    if-ne v1, v2, :cond_0

    .line 66
    sget-object v0, Lcom/senseonics/authentication/IamTokenError$Type;->InvalidCredential:Lcom/senseonics/authentication/IamTokenError$Type;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x138d

    if-ne p0, v1, :cond_1

    .line 68
    sget-object v0, Lcom/senseonics/authentication/IamTokenError$Type;->LockedOut:Lcom/senseonics/authentication/IamTokenError$Type;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getIamUnlockTime(Landroid/content/Context;)J
    .locals 2

    .line 142
    invoke-static {p0}, Lcom/senseonics/util/Utils;->getIamUnlockTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInvalidCredentialTitleMessage(Lcom/senseonics/authentication/ThrowableError;Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .line 167
    invoke-static {p1}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array p0, v3, [Ljava/lang/String;

    const v0, 0x7f110158

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    const v0, 0x7f110156

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/authentication/ThrowableError;->getErrorBody()Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getRemainingAttemptFromResponseBodyString(Ljava/lang/String;)I

    move-result p0

    .line 174
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->isValidRemainingAttempt(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getMadeAttempt(I)I

    move-result v0

    new-array v4, v3, [Ljava/lang/String;

    const v5, 0x7f110159

    .line 177
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f110157

    new-array v3, v3, [Ljava/lang/Object;

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    move-object p0, v4

    goto :goto_0

    :cond_1
    new-array p0, v3, [Ljava/lang/String;

    const v0, 0x7f11017b

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    const v0, 0x7f11017a

    .line 182
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    :goto_0
    return-object p0
.end method

.method public static getLockedOutTitleMessage(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6

    .line 192
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 193
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getIamUnlockTime(Landroid/content/Context;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    invoke-static {v0, p0}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f11015c

    if-eqz v1, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    .line 199
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f11015a

    .line 200
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3

    goto :goto_0

    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    .line 203
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f11015b

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    .line 204
    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private static getMadeAttempt(I)I
    .locals 0

    rsub-int/lit8 p0, p0, 0x3

    return p0
.end method

.method private static getRemainingAttemptFromResponseBodyString(Ljava/lang/String;)I
    .locals 2

    .line 113
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getIamTokenErrorTypeFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError$Type;

    move-result-object v0

    .line 114
    sget-object v1, Lcom/senseonics/authentication/IamTokenError$Type;->InvalidCredential:Lcom/senseonics/authentication/IamTokenError$Type;

    if-ne v0, v1, :cond_1

    .line 115
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getIamTokenErrorFromResponseBodyString(Ljava/lang/String;)Lcom/senseonics/authentication/IamTokenError;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/senseonics/authentication/IamTokenError;->errorDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const-string v0, ":"

    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 118
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    .line 120
    :try_start_0
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static getResponseErrorBodyString(Lretrofit2/Response;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static isValidRemainingAttempt(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateIamUnlockTimeIfNeeded(Landroid/content/Context;)V
    .locals 8

    .line 146
    invoke-static {p0}, Lcom/senseonics/authentication/IamTokenError;->getIamUnlockTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 148
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sub-long v6, v0, v4

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v2, v4

    .line 153
    invoke-static {p0, v2, v3}, Lcom/senseonics/util/Utils;->setIamUnlockTime(Landroid/content/Context;J)V

    :goto_0
    return-void
.end method
