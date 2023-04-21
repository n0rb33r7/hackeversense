.class public Lcom/senseonics/bluetoothle/TempProfileManager;
.super Ljava/lang/Object;
.source "TempProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;,
        Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;,
        Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final DURATION_MAX_HOUR:I = 0x24

.field public static final DURATION_MINUTE_OPTION_0:I = 0x0

.field public static final DURATION_MINUTE_OPTION_1:I = 0x1e

.field public static final DURATION_MIN_HOUR:I = 0x0

.field public static final TEMP_PROFILE_DURATION_DEFAULT_VALUE:I = 0x1e

.field public static final TEMP_PROFILE_EXPIRE_SECONDS:I = -0x1


# instance fields
.field private final NonTempGlucoseProfilePref:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TempGlucoseProfilePref:Ljava/lang/String;

.field private final TempProfileDurationPref:Ljava/lang/String;

.field private final TempProfileEnabledPref:Ljava/lang/String;

.field private final TempProfileHasPendingPopupPref:Ljava/lang/String;

.field private final TempProfileLastStartOnPref:Ljava/lang/String;

.field private final TempProfileUsedAtLeastOncePref:Ljava/lang/String;

.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/util/PreferenceObjectSaverRetriver;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TempProfileManager"

    .line 55
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "prefNonTempGlucoseProfile"

    .line 56
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->NonTempGlucoseProfilePref:Ljava/lang/String;

    const-string v0, "prefTempGlucoseProfile"

    .line 57
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempGlucoseProfilePref:Ljava/lang/String;

    const-string v0, "prefTempProfileEnabled"

    .line 58
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileEnabledPref:Ljava/lang/String;

    const-string v0, "prefTempProfileUsedAtLeastOnce"

    .line 59
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileUsedAtLeastOncePref:Ljava/lang/String;

    const-string v0, "prefTempProfileDuration"

    .line 60
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileDurationPref:Ljava/lang/String;

    const-string v0, "prefTempProfileLastStartOn"

    .line 61
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileLastStartOnPref:Ljava/lang/String;

    const-string v0, "prefTempProfileHasPendingPopup"

    .line 62
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TempProfileHasPendingPopupPref:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    .line 85
    iput-object p3, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 86
    iput-object p4, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 87
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    .line 88
    iput-object p6, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    .line 89
    iput-object p7, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    .line 90
    invoke-virtual {p7, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 91
    iput-object p8, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    .line 93
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 94
    new-instance p1, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    invoke-direct {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;-><init>()V

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setNonTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-nez p1, :cond_1

    .line 98
    new-instance p1, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    invoke-direct {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;-><init>()V

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x1e

    .line 102
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileDuration(I)V

    :cond_2
    return-void
.end method

.method private getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;
    .locals 1

    .line 190
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "\"Alarm Low\""

    goto :goto_0

    :cond_1
    const-string p1, "\"Alarm High\""

    goto :goto_0

    :cond_2
    const-string p1, "\"Target Low\""

    goto :goto_0

    :cond_3
    const-string p1, "\"Target High\""

    :goto_0
    return-object p1
.end method

.method private getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefNonTempGlucoseProfile"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->retrieveGlucoseProfileFromPreference(Ljava/lang/String;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    return-object v0
.end method

.method private getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 1

    .line 217
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefTempGlucoseProfile"

    invoke-virtual {v0, v1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->retrieveGlucoseProfileFromPreference(Ljava/lang/String;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    return-object v0
.end method

.method private getTempProfileUsedAtLeastOnce()Ljava/lang/Boolean;
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileUsedAtLeastOnce"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempProfileUsedAtLeastOnce:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getUsedAtLeastOnceForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z
    .locals 2

    const/4 v0, 0x0

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 315
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 318
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_AlarmLow()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_AlarmHigh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_TargetLow()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->isUsedAtLeastOnce_TargetHigh()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 340
    :cond_4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private hasValidThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z
    .locals 0

    .line 377
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private postTempProfileTurnedOffEvent()V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****** postTempProfileTurnedOffEvent: not bounded?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    invoke-virtual {p0, v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileHasPendingPopup(Z)V

    .line 642
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationUtility;->createTempProfileTurnedOffNotification()V

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBusPostTempOffEvent()V

    :goto_0
    return-void
.end method

.method private restoreOneGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 2

    .line 441
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 448
    :cond_0
    invoke-virtual {v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->hasInitialValues()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 451
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 452
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 453
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    :cond_1
    return-void
.end method

.method private setGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 5

    .line 419
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 422
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v0, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 428
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set NonTemp Condition II: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 431
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 434
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v4}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 437
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setNonTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefNonTempGlucoseProfile"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveGlucoseProfileIntoPreference(Ljava/lang/String;Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    return-void
.end method

.method private setProfileByType(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 1

    .line 234
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_TYPE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setNonTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    :goto_0
    return-void
.end method

.method private setTempGlucoseProfile(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "prefTempGlucoseProfile"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveGlucoseProfileIntoPreference(Ljava/lang/String;Lcom/senseonics/model/TempProfileModel/GlucoseProfile;)V

    return-void
.end method

.method private updateExtensionThresholds()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/UpdateExtensionEvent;

    invoke-direct {v1}, Lcom/senseonics/events/UpdateExtensionEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public eventBusPostTempOffEvent()V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****** eventBusPostTempOffEvent: not bounded?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->eventBus:Lde/greenrobot/event/EventBus;

    if-eqz v0, :cond_0

    .line 632
    new-instance v1, Lcom/senseonics/events/TempProfileTurnedOffEvent;

    invoke-direct {v1}, Lcom/senseonics/events/TempProfileTurnedOffEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public formatTempProfileTimeLeftGivenSeconds(J)Ljava/lang/String;
    .locals 5

    const-wide/16 v0, 0x3c

    .line 616
    div-long/2addr p1, v0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-gez v4, :cond_0

    move-wide p1, v2

    .line 622
    :cond_0
    rem-long v2, p1, v0

    long-to-int v2, v2

    .line 623
    div-long/2addr p1, v0

    long-to-int p1, p1

    .line 625
    iget-object p2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110306

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTempProfileDuration()I
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileDuration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->getSettingsIntValueForKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 144
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempProfileDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTempProfileEnabled()Ljava/lang/Boolean;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileEnabled"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getTempProfileHasPendingPopup()Z
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileHasPendingPopup"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempProfileHasPendingPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method getTempProfileLastStartOn()J
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileLastStartOn"

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getSettingsForLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 155
    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempProfileLastStartOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public getTempProfileRemainingTime()J
    .locals 10

    .line 549
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileStatus()Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    move-result-object v0

    .line 551
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v6

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v6, 0x3e8

    .line 554
    div-long/2addr v8, v6

    .line 555
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v6, v1

    sub-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v6

    goto :goto_0

    .line 562
    :cond_1
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, v4

    .line 566
    :goto_0
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTempProfileRemainingTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method public getTempProfileStatus()Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;
    .locals 7

    .line 574
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 578
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "***** PANIC 1: no Last Enabled Time *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    .line 582
    div-long/2addr v4, v0

    .line 583
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> Temp Profile Enabled secondsDiff: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " <<"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileDuration()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v0, v0

    cmp-long v2, v4, v2

    if-gez v2, :cond_1

    .line 587
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "***** PANIC 2: invalid Last Enabled Time *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    :cond_1
    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 590
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_IN_PROGRESS:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "***** PANIC 3: Expired *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_NEED_TO_DISABLE:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    goto :goto_0

    .line 597
    :cond_3
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;->TEMP_PROFILE_STATUS_ALREADY_DISABLED:Lcom/senseonics/bluetoothle/TempProfileManager$TEMP_PROFILE_STATUS;

    :goto_0
    return-object v0
.end method

.method public getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I
    .locals 1

    .line 251
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 254
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getAlarmLow()I

    move-result p1

    goto :goto_1

    .line 264
    :cond_1
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getAlarmHigh()I

    move-result p1

    goto :goto_1

    .line 260
    :cond_2
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getTargetLow()I

    move-result p1

    goto :goto_1

    .line 256
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->getTargetHigh()I

    move-result p1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method nonTempProfileToString()Ljava/lang/String;
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNonTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;)V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedHighAlarmThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    .line 498
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateExtensionThresholds()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedHighTargetThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;)V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedLowAlarmThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public onEvent(Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;)V
    .locals 3

    .line 479
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelChangedLowTargetThresholdEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;->getNewValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;->getNewValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V

    return-void
.end method

.method public restoreAllGlucoseProfilesToStateValueIfNeeded()V
    .locals 1

    .line 458
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreOneGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 459
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->restoreOneGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void
.end method

.method public setTempProfileDuration(I)V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileDuration"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method setTempProfileEnabled(Ljava/lang/Boolean;)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "prefTempProfileEnabled"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method setTempProfileHasPendingPopup(Z)V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileHasPendingPopup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileHasPendingPopup"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method setTempProfileLastStartOn(J)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileLastStartOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    const-string v1, "prefTempProfileLastStartOn"

    invoke-static {v0, v1, p1, p2}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method setTempProfileUsedAtLeastOnce(Ljava/lang/Boolean;)V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTempProfileUsedAtLeastOnce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "prefTempProfileUsedAtLeastOnce"

    invoke-static {v0, v1, p1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 2

    .line 280
    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 283
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string p2, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 287
    :cond_0
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setAlarmLow(I)V

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setAlarmHigh(I)V

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setTargetLow(I)V

    goto :goto_0

    .line 289
    :cond_4
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setTargetHigh(I)V

    .line 309
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->setProfileByType(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void
.end method

.method public setUsedAtLeastOnceForAttributeForProfileType(ZLcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V
    .locals 2

    .line 344
    invoke-direct {p0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->getProfileByType(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 347
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string p2, "PANIC: getProfileByType returned NULL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :cond_0
    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$1;->$SwitchMap$com$senseonics$bluetoothle$TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE:[I

    invoke-virtual {p2}, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_AlarmLow(Z)V

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_AlarmHigh(Z)V

    goto :goto_0

    .line 357
    :cond_3
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_TargetLow(Z)V

    goto :goto_0

    .line 353
    :cond_4
    invoke-virtual {v0, p1}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->setUsedAtLeastOnce_TargetHigh(Z)V

    .line 373
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->setProfileByType(Lcom/senseonics/model/TempProfileModel/GlucoseProfile;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    return-void
.end method

.method public startTempProfile(IIII)V
    .locals 4

    .line 502
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileUsedAtLeastOnce()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 505
    iget-object p1, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string p2, "PANIC: startTempProfile: already turned on"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 509
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileUsedAtLeastOnce(Ljava/lang/Boolean;)V

    .line 511
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileEnabled(Ljava/lang/Boolean;)V

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileLastStartOn(J)V

    .line 515
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdLow(I)V

    .line 516
    invoke-virtual {p0, p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdHigh(I)V

    .line 517
    invoke-virtual {p0, p3}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdLow(I)V

    .line 518
    invoke-virtual {p0, p4}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdHigh(I)V

    return-void
.end method

.method public stopTempProfile()V
    .locals 5

    .line 522
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileLastStartOn()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, "PANIC: stopTempProfile: already turned off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 527
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileEnabled(Ljava/lang/Boolean;)V

    .line 528
    invoke-virtual {p0, v1, v2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileLastStartOn(J)V

    .line 531
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdLow(I)V

    .line 532
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_TARGET_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeTargetThresholdHigh(I)V

    .line 533
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_LOW:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdLow(I)V

    .line 534
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    sget-object v1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;->GLUCOSE_PROFILE_ATTRIBUTE_ALARM_HIGH:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->writeAlarmThresholdHigh(I)V

    return-void
.end method

.method tempProfileToString()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempGlucoseProfile()Lcom/senseonics/model/TempProfileModel/GlucoseProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/model/TempProfileModel/GlucoseProfile;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method turnOffTempProfileIfNeeded()V
    .locals 5

    .line 604
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileRemainingTime()J

    move-result-wide v0

    .line 605
    iget-object v2, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffTempProfileIfNeeded seconds left: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>> turnOffTempProfileIfNeeded: turn off <<<<<<"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->stopTempProfile()V

    .line 610
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->postTempProfileTurnedOffEvent()V

    :cond_0
    return-void
.end method

.method updateGlucoseProfileUponTransmitterStateUpdatedForAttributeWithValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;I)V
    .locals 4

    .line 387
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, " -> "

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set NonTemp Condition I: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 392
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->hasValidThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Temp Condition A: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    goto/16 :goto_0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getThresholdForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)I

    move-result v0

    if-eq v0, p2, :cond_2

    .line 400
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PANIC: inconsistent value => disable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 401
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileEnabled(Ljava/lang/Boolean;)V

    const-wide/16 p1, 0x0

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/bluetoothle/TempProfileManager;->setTempProfileLastStartOn(J)V

    .line 403
    sget-object p1, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_NON_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->setGlucoseProfileToStateValue(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    .line 404
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->postTempProfileTurnedOffEvent()V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Temp Condition B: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    goto :goto_0

    .line 410
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileUsedAtLeastOnce()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 411
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-direct {p0, v0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getUsedAtLeastOnceForProfileTypeForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Temp Condition C: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getNameForAttribute(Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v0, Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;->GLUCOSE_PROFILE_TYPE_TEMP:Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;

    invoke-virtual {p0, p2, p1, v0}, Lcom/senseonics/bluetoothle/TempProfileManager;->setThresholdForAttributeForProfileType(ILcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_ATTRIBUTE;Lcom/senseonics/bluetoothle/TempProfileManager$GLUCOSE_PROFILE_TYPE;)V

    :cond_4
    :goto_0
    return-void
.end method

.method writeAlarmThresholdHigh(I)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseAlarmRequest(I)V

    return-void
.end method

.method writeAlarmThresholdLow(I)V
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteLowGlucoseAlarmRequest(I)V

    return-void
.end method

.method writeTargetThresholdHigh(I)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteHighGlucoseTarget(I)V

    return-void
.end method

.method writeTargetThresholdLow(I)V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TempProfileManager;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteLowGlucoseTargetRequest(I)V

    return-void
.end method
