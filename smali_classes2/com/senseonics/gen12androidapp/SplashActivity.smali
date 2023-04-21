.class public Lcom/senseonics/gen12androidapp/SplashActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "SplashActivity.java"


# instance fields
.field protected accountConstants:Lcom/senseonics/util/AccountConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected germanyManager:Lcom/senseonics/account/GermanyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field protected repository:Lcom/senseonics/compatibility/DeviceCompatibilityRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mstartActivityBasedOnCompatibility(Lcom/senseonics/gen12androidapp/SplashActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivityBasedOnCompatibility(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private checkCompatibilityFromDMS()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->repository:Lcom/senseonics/compatibility/DeviceCompatibilityRepository;

    .line 128
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->getDeviceCompatibilitySuccessAction()Lrx/functions/Action1;

    move-result-object v1

    .line 129
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->getDeviceCompatibilityErrorAction()Lrx/functions/Action1;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/senseonics/compatibility/DeviceCompatibilityRepository;->getCompatibilityResult(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private checkCompatibilityFromLocal()Z
    .locals 11

    const-string v0, "Model"

    const/4 v1, 0x0

    .line 176
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->loadJSONFromAsset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 178
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 179
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 180
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 181
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "Json Object"

    .line 183
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current Device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " brand:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " product:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " model:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Version:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SDK_int:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v1

    .line 184
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 186
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "Manufacturer"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 188
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 190
    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    :cond_0
    const/16 v8, 0x1a

    if-lt v6, v8, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    return v1
.end method

.method private getDeviceCompatibilityErrorAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/senseonics/gen12androidapp/SplashActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SplashActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-object v0
.end method

.method private getDeviceCompatibilitySuccessAction()Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/senseonics/gen12androidapp/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SplashActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-object v0
.end method

.method private loadJSONFromAsset()Ljava/lang/String;
    .locals 2

    .line 204
    :try_start_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Device_List_OUS_XL2.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 206
    new-array v1, v1, [B

    .line 207
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 208
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 209
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private startActivityBasedOnCompatibility(Ljava/lang/Boolean;)V
    .locals 1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->startEULA()V

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/DeviceCompatibilityActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    return-void
.end method

.method private startEULA()V
    .locals 2

    .line 164
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveFirstRunForCompatibility(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->isTaskRoot()Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0038

    .line 58
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->setContentView(I)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    invoke-virtual {p1}, Lcom/senseonics/util/AccountConstants;->presetLoggedInAndEnableAutoSync()V

    .line 64
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    invoke-virtual {p1}, Lcom/senseonics/util/AlarmRingtoneManager;->setAlarmSoundsToDefaults()V

    .line 67
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreAllGlucoseProfilesToStateValueIfNeeded()V

    .line 70
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result p1

    .line 71
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v0

    if-nez p1, :cond_1

    if-nez v0, :cond_2

    .line 73
    :cond_1
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveFirstRunForCompatibility(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 74
    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 79
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveFirstRunForCompatibility(Landroid/content/Context;)V

    .line 84
    :cond_3
    invoke-static {p0}, Lcom/senseonics/util/Utils;->hasNewEULA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 85
    invoke-static {p0, v1}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 88
    :cond_4
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRunForCompatibility(Landroid/content/Context;)Z

    move-result v1

    .line 89
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfEulaAccepted(Landroid/content/Context;)Z

    move-result v2

    .line 90
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v3

    if-eqz v1, :cond_6

    .line 94
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->checkCompatibilityFromLocal()Z

    move-result p1

    if-nez p1, :cond_5

    .line 97
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->checkCompatibilityFromDMS()V

    goto :goto_1

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/senseonics/gen12androidapp/SplashActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SplashActivity;Z)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    if-nez v2, :cond_7

    .line 109
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->startEULA()V

    .line 110
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    goto :goto_1

    :cond_7
    if-nez p1, :cond_8

    .line 112
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {p1}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 113
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    .line 115
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    .line 117
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :cond_a
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity;->finish()V

    :goto_1
    return-void
.end method
