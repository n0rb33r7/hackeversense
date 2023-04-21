.class public Lcom/senseonics/account/GermanyManager;
.super Ljava/lang/Object;
.source "GermanyManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final prefIsOfflineMode:Ljava/lang/String; = "isOfflineMode"


# instance fields
.field private preferences:Landroid/content/SharedPreferences;

.field private repository:Lcom/senseonics/uploadData/UploadPublicDataRepository;

.field private stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

.field private userAccountModel:Lcom/senseonics/account/UserAccountModel;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/util/StateModelUploadUtility;Lcom/senseonics/uploadData/UploadPublicDataRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/senseonics/account/GermanyManager;->preferences:Landroid/content/SharedPreferences;

    .line 37
    iput-object p2, p0, Lcom/senseonics/account/GermanyManager;->userAccountModel:Lcom/senseonics/account/UserAccountModel;

    .line 38
    iput-object p3, p0, Lcom/senseonics/account/GermanyManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    .line 39
    iput-object p4, p0, Lcom/senseonics/account/GermanyManager;->repository:Lcom/senseonics/uploadData/UploadPublicDataRepository;

    return-void
.end method

.method private clearAccountInfo()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/senseonics/account/GermanyManager;->userAccountModel:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->clearAllUserData()V

    return-void
.end method

.method private getErrorAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/senseonics/account/GermanyManager$2;

    invoke-direct {v0, p0}, Lcom/senseonics/account/GermanyManager$2;-><init>(Lcom/senseonics/account/GermanyManager;)V

    return-object v0
.end method

.method public static getEulaVersion()Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isGermany()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DE-2021-12"

    goto :goto_0

    :cond_0
    const-string v0, "EU-2021-09"

    :goto_0
    return-object v0
.end method

.method private getIsOfflineMode()Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/senseonics/account/GermanyManager;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "isOfflineMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/senseonics/account/GermanyManager$1;

    invoke-direct {v0, p0}, Lcom/senseonics/account/GermanyManager$1;-><init>(Lcom/senseonics/account/GermanyManager;)V

    return-object v0
.end method

.method private static isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isGermany()Z
    .locals 2

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOfflineModeEnabledFrom(Landroid/content/Context;)Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isOfflineMode"

    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setIsOfflineMode(Z)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/senseonics/account/GermanyManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isOfflineMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public enterOfflineMode()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, v0}, Lcom/senseonics/account/GermanyManager;->setIsOfflineMode(Z)V

    .line 56
    invoke-direct {p0}, Lcom/senseonics/account/GermanyManager;->clearAccountInfo()V

    return-void
.end method

.method public exitOfflineMode()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0}, Lcom/senseonics/account/GermanyManager;->setIsOfflineMode(Z)V

    return-void
.end method

.method public isOfflineModeEnabled()Z
    .locals 1

    .line 64
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/senseonics/account/GermanyManager;->getIsOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public upload()V
    .locals 4

    .line 72
    invoke-virtual {p0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/senseonics/account/GermanyManager;->repository:Lcom/senseonics/uploadData/UploadPublicDataRepository;

    iget-object v1, p0, Lcom/senseonics/account/GermanyManager;->stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;

    invoke-virtual {v1}, Lcom/senseonics/util/StateModelUploadUtility;->fetchPublicUserInfo()Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/account/GermanyManager;->getSuccessAction()Lrx/functions/Action1;

    move-result-object v2

    invoke-direct {p0}, Lcom/senseonics/account/GermanyManager;->getErrorAction()Lrx/functions/Action1;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/uploadData/UploadPublicDataRepository;->uploadPublicUserInfo(Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method
