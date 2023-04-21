.class public Lcom/senseonics/util/AppUpdateChecker;
.super Ljava/lang/Object;
.source "AppUpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;,
        Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;,
        Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;,
        Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final CHECK_INTERVAL:I

.field private final TAG:Ljava/lang/String;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static bridge synthetic -$$Nest$fputprocessState(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecodeVersionFile(Lcom/senseonics/util/AppUpdateChecker;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/AppUpdateChecker;->decodeVersionFile(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetVersionFile(Lcom/senseonics/util/AppUpdateChecker;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/util/AppUpdateChecker;->getVersionFile()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetCurrentDateTimeToAppUpdateLastCheckedInPreference(Lcom/senseonics/util/AppUpdateChecker;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->setCurrentDateTimeToAppUpdateLastCheckedInPreference(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/bluetoothle/DialogUtils;Landroid/content/SharedPreferences;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5a0

    .line 30
    iput v0, p0, Lcom/senseonics/util/AppUpdateChecker;->CHECK_INTERVAL:I

    const-string v0, "AppUpdate"

    .line 32
    iput-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->TAG:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 70
    iput-object p2, p0, Lcom/senseonics/util/AppUpdateChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 72
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void
.end method

.method private checkIfValidVersionString(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    .line 252
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 254
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 259
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 261
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;
    .locals 6

    const-string v0, "\""

    const-string v1, ""

    .line 271
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    .line 272
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 277
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-direct {p0, p2}, Lcom/senseonics/util/AppUpdateChecker;->checkIfValidVersionString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_1
    if-eqz p1, :cond_a

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->checkIfValidVersionString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 291
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_3
    const-string v0, "\\."

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 296
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    .line 297
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    .line 298
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 301
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 303
    aget-object v0, p2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 304
    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 305
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-le v0, v2, :cond_4

    .line 309
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_4
    if-ge v0, v2, :cond_5

    .line 311
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_5
    if-le v1, v4, :cond_6

    .line 316
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_6
    if-ge v1, v4, :cond_7

    .line 318
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_7
    if-le p2, p1, :cond_8

    .line 323
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    :cond_8
    if-ge p2, p1, :cond_9

    .line 325
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    .line 328
    :cond_9
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_SAME:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    .line 286
    :cond_a
    :goto_0
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1

    .line 278
    :cond_b
    :goto_1
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_OLDER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    return-object p1
.end method

.method private decodeVersionFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v0, "\r"

    const-string v1, ""

    .line 216
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 217
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstLine:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUpdate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 224
    aget-object v2, p1, v0

    const/4 v3, 0x1

    .line 225
    aget-object p1, p1, v3

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "otherInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 231
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {p1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 232
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server app version:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my version:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0, p1, v2}, Lcom/senseonics/util/AppUpdateChecker;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    move-result-object p1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compare result: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;->FIND_NEWER:Lcom/senseonics/util/AppUpdateChecker$MLVersionCompare;

    if-ne p1, v0, :cond_0

    .line 242
    iget-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1, p2, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->fireUpdateAppPopup(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getAppUpdateLastCheckedDateTimeFromPreference(Landroid/content/Context;)J
    .locals 2

    const-string v0, "AppUpdateLastCheckedDateTime"

    .line 85
    invoke-static {p1, v0}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getVersionFile()Ljava/lang/String;
    .locals 6

    const-string v0, "-1"

    const-string v1, "AppUpdate"

    .line 166
    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 168
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v3

    const-string v4, "ntlm"

    new-instance v5, Lcom/senseonics/util/NTLMSchemeFactory;

    invoke-direct {v5}, Lcom/senseonics/util/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lorg/apache/http/auth/AuthSchemeFactory;)V

    const-string v3, "https://www.eversensedms.com/MMAReleases/AndroidMMAAppStoreVersion.txt"

    .line 171
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    .line 176
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 177
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 183
    invoke-static {v2}, Lcom/senseonics/util/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v4

    :cond_0
    return-object v3

    :catch_0
    move-exception v2

    .line 198
    :try_start_2
    sget-object v4, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->ServerError:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v5, "IO Exception"

    .line 199
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 195
    :catch_1
    sget-object v4, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v2, "Connect timeout"

    .line 196
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :catch_2
    sget-object v4, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->Timeout:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;

    const-string v2, "Socket timeout"

    .line 193
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string v2, "Client Protocol Exception"

    .line 190
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 202
    :goto_0
    sget-object v1, Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;->None:Lcom/senseonics/util/AppUpdateChecker$MLCheckResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eq v4, v1, :cond_1

    return-object v0

    :cond_1
    return-object v3

    :catch_4
    const-string v2, "Might be keystore exception"

    .line 207
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isItTimeToCheck(Landroid/content/Context;)Z
    .locals 8

    .line 90
    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AppUpdateLastCheckedDateTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->resetAppUpdateLastCheckedInPreference(Landroid/content/Context;)V

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->getAppUpdateLastCheckedDateTimeFromPreference(Landroid/content/Context;)J

    move-result-wide v0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentTimeInMills:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|lastCheckTimeInMillis:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|diff:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppUpdate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    const/4 v2, 0x0

    if-gez v0, :cond_1

    const-string v0, "invalid time"

    .line 101
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->resetAppUpdateLastCheckedInPreference(Landroid/content/Context;)V

    return v2

    :cond_1
    const-wide/32 v6, 0x5265c00

    cmp-long p1, v4, v6

    if-gez p1, :cond_2

    const-string p1, "Less than (1440 minutes)"

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private resetAppUpdateLastCheckedInPreference(Landroid/content/Context;)V
    .locals 3

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "AppUpdateLastCheckedDateTime"

    invoke-static {p1, v2, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private setCurrentDateTimeToAppUpdateLastCheckedInPreference(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "AppUpdateLastCheckedDateTime"

    .line 81
    invoke-static {p1, v2, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public checkForSoftwareUpdate(Landroid/content/Context;)V
    .locals 3

    .line 116
    invoke-direct {p0, p1}, Lcom/senseonics/util/AppUpdateChecker;->isItTimeToCheck(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AppUpdate"

    if-nez v0, :cond_0

    const-string p1, "PANIC: it is not the time"

    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    sget-object v2, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    if-ne v0, v2, :cond_1

    const-string p1, "PANIC: processed already started!"

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_1
    sget-object v0, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->STARTED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    iput-object v0, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    .line 128
    invoke-static {p1}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "PANIC: No Internet"

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object p1, Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;->ENDED:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    iput-object p1, p0, Lcom/senseonics/util/AppUpdateChecker;->processState:Lcom/senseonics/util/AppUpdateChecker$CheckProcessState;

    return-void

    .line 134
    :cond_2
    new-instance v0, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;-><init>(Lcom/senseonics/util/AppUpdateChecker;Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask-IA;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/senseonics/util/AppUpdateChecker$getLastestAppAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
