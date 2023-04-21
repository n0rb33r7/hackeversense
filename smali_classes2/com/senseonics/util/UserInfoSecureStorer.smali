.class public Lcom/senseonics/util/UserInfoSecureStorer;
.super Ljava/lang/Object;
.source "UserInfoSecureStorer.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private saltedSecurePrefs:Lcom/securepreferences/SecurePreferences;

.field private securePrefs:Lcom/securepreferences/SecurePreferences;

.field private timeProvider:Lcom/senseonics/util/TimeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/util/TimeProvider;Lcom/securepreferences/SecurePreferences;Lcom/securepreferences/SecurePreferences;)V
    .locals 0
    .param p3    # Lcom/securepreferences/SecurePreferences;
        .annotation runtime Ljavax/inject/Named;
            value = "SecurePref"
        .end annotation
    .end param
    .param p4    # Lcom/securepreferences/SecurePreferences;
        .annotation runtime Ljavax/inject/Named;
            value = "SaltedSecurePref"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer;->timeProvider:Lcom/senseonics/util/TimeProvider;

    .line 47
    iput-object p3, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    .line 48
    iput-object p4, p0, Lcom/senseonics/util/UserInfoSecureStorer;->saltedSecurePrefs:Lcom/securepreferences/SecurePreferences;

    .line 51
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateSecurePrefsAndLogoutIfNeededOnce()V

    return-void
.end method

.method private getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->saltedSecurePrefs:Lcom/securepreferences/SecurePreferences;

    return-object v0
.end method

.method private getSecureSettingsForLong(Ljava/lang/String;Lcom/securepreferences/SecurePreferences;)Ljava/lang/Long;
    .locals 3

    const-wide/16 v0, -0x1

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p2, p1, v1, v2}, Lcom/securepreferences/SecurePreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private getSecureSettingsForString(Ljava/lang/String;Lcom/securepreferences/SecurePreferences;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 94
    :try_start_0
    invoke-virtual {p2, p1, v0}, Lcom/securepreferences/SecurePreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private logoutIfNeeded()V
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccountUserName"

    .line 239
    invoke-virtual {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->setLoggedIn(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private migrateKeyForLong(Ljava/lang/String;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0, p1}, Lcom/securepreferences/SecurePreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-direct {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForLong(Ljava/lang/String;Lcom/securepreferences/SecurePreferences;)Ljava/lang/Long;

    move-result-object v0

    .line 232
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method private migrateKeyForString(Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-virtual {v0, p1}, Lcom/securepreferences/SecurePreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->securePrefs:Lcom/securepreferences/SecurePreferences;

    invoke-direct {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;Lcom/securepreferences/SecurePreferences;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private migrateSecurePrefs()V
    .locals 1

    const-string v0, "AccountAccessToken"

    .line 210
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    .line 211
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForLong(Ljava/lang/String;)V

    const-string v0, "AccountFirstName"

    .line 212
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    const-string v0, "AccountLastName"

    .line 213
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    const-string v0, "AccountProfileImage"

    .line 214
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    const-string v0, "AccountRefreshToken"

    .line 216
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    const-string v0, "AccountUserID"

    .line 217
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    const-string v0, "AccountUserName"

    .line 218
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    const-string v0, "AccountUserPassword"

    .line 219
    invoke-direct {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateKeyForString(Ljava/lang/String;)V

    return-void
.end method

.method private migrateSecurePrefsAndLogoutIfNeededOnce()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const-string v1, "MigrateSecurePrefsAndLogoutIfNeededOnce"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 204
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->migrateSecurePrefs()V

    .line 205
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->logoutIfNeeded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearAccessTokenTime()V
    .locals 3

    .line 82
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public clearAllUserData()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->setLoggedIn(Landroid/content/Context;Z)V

    .line 153
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    const-string v1, "AccountUserName"

    .line 154
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountUserID"

    .line 155
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountUserPassword"

    .line 156
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountRefreshToken"

    .line 157
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountAccessToken"

    .line 158
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountFirstName"

    .line 161
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountLastName"

    .line 162
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountProfileImage"

    .line 163
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 164
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public clearUserData()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->setLoggedIn(Landroid/content/Context;Z)V

    .line 141
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    const-string v1, "AccountUserPassword"

    .line 142
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountRefreshToken"

    .line 143
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountAccessToken"

    .line 144
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public clearUserTokens()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    const-string v1, "AccountRefreshToken"

    .line 132
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "AccountAccessToken"

    .line 133
    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/securepreferences/SecurePreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/securepreferences/SecurePreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getMemberList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;"
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 179
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/senseonics/util/UserInfoSecureStorer$1;

    invoke-direct {v2, p0}, Lcom/senseonics/util/UserInfoSecureStorer$1;-><init>(Lcom/senseonics/util/UserInfoSecureStorer;)V

    .line 183
    invoke-virtual {v2}, Lcom/senseonics/util/UserInfoSecureStorer$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 180
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method getSecureSettingsForLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForLong(Ljava/lang/String;Lcom/securepreferences/SecurePreferences;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSecureSettingsForString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->getSecureSettingsForString(Ljava/lang/String;Lcom/securepreferences/SecurePreferences;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isLoggedIn()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public saveMemberList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/mycircle/model/MyCirclePeerModel;",
            ">;)V"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 171
    sget-object v0, Lcom/senseonics/util/Utils;->prefAccountMemberList:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveProfileImage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AccountProfileImage"

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 3

    .line 189
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    .line 190
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/securepreferences/SecurePreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/senseonics/util/UserInfoSecureStorer;->getDefaultSecurePrefs()Lcom/securepreferences/SecurePreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences;->edit()Lcom/securepreferences/SecurePreferences$Editor;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/securepreferences/SecurePreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-virtual {v0}, Lcom/securepreferences/SecurePreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUserInfo(Lcom/senseonics/authentication/SenseonicsTokenDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->setLoggedIn(Landroid/content/Context;Z)V

    const-string v0, "AccountUserName"

    .line 57
    invoke-virtual {p0, v0, p2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getRefreshToken()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AccountRefreshToken"

    invoke-virtual {p0, v0, p2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/senseonics/authentication/SenseonicsTokenDto;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountAccessToken"

    invoke-virtual {p0, p2, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p1, Lcom/senseonics/util/Utils;->prefAccountAccessTokenTime:Ljava/lang/String;

    iget-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer;->timeProvider:Lcom/senseonics/util/TimeProvider;

    invoke-virtual {p2}, Lcom/senseonics/util/TimeProvider;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "AccountUserPassword"

    .line 61
    invoke-virtual {p0, p1, p3}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveUserProfile(Lcom/senseonics/mycircle/model/UserProfileDto;)V
    .locals 2

    .line 65
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getFirstName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountFirstName"

    invoke-virtual {p0, v1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getLastName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountLastName"

    invoke-virtual {p0, v1, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getProfileImageBase64()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/util/UserInfoSecureStorer;->saveProfileImage(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lcom/senseonics/mycircle/model/UserProfileDto;->getUserId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountUserID"

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/util/UserInfoSecureStorer;->saveSecureSettings(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
