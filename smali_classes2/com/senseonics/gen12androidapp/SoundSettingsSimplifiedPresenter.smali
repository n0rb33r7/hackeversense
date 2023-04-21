.class public Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "SoundSettingsSimplifiedPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;,
        Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;",
        ">;"
    }
.end annotation


# instance fields
.field private final DISCONNECT_MINUTES_MAX:I

.field private final DISCONNECT_MINUTES_MIN:I

.field private final HIGH_SNOOZE_MAX:I

.field private final HIGH_SNOOZE_MIN:I

.field private final LOW_SNOOZE_MAX:I

.field private final LOW_SNOOZE_MIN:I

.field private alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

.field private supportDisconnectMinuteSetting:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetbluetoothServiceCommandClient(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotificationDndManager(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/util/NotificationDndManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshView(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->refreshView()V

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/util/AlarmRingtoneManager;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/Context;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;Lcom/senseonics/util/NotificationDndManager;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->LOW_SNOOZE_MIN:I

    const/16 v1, 0x1e

    .line 37
    iput v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->LOW_SNOOZE_MAX:I

    const/16 v2, 0xf

    .line 38
    iput v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->HIGH_SNOOZE_MIN:I

    const/16 v2, 0xb4

    .line 39
    iput v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->HIGH_SNOOZE_MAX:I

    .line 40
    iput v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->DISCONNECT_MINUTES_MIN:I

    .line 41
    iput v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->DISCONNECT_MINUTES_MAX:I

    .line 67
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    .line 68
    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 69
    iput-object p3, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 70
    iput-object p4, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 71
    iput-object p5, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    .line 72
    iput-object p6, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 73
    iput-object p7, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    .line 74
    iput-object p8, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    .line 76
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForDelayBLEDisconnectionAlarm()Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    return-void
.end method

.method private getDNDSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 267
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$5;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    return-object v0
.end method

.method private getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;
    .locals 3

    .line 171
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    const/16 v1, 0x1e

    const/4 v2, 0x5

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, v2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_0
    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    if-ne p1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/16 v1, 0xb4

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, v2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    :goto_0
    new-instance v1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$1;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Ljava/util/ArrayList;Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)V

    .line 203
    new-instance v2, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$2;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;)V

    return-object v2
.end method

.method private getLowGlucoseOverrideSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 237
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    return-object v0
.end method

.method private getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 227
    new-instance v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$3;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;Ljava/lang/String;)V

    return-object v0
.end method

.method private hideProgressAndRefresh()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->hideProgress()V

    .line 141
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->refreshView()V

    return-void
.end method

.method private refreshView()V
    .locals 15

    .line 145
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v2

    .line 146
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v3

    .line 148
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationDndManager;->shouldAlwaysDisableOverride()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v13, v0

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v14

    .line 151
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 154
    invoke-virtual {v4}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayLowAlarmSound()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 155
    invoke-virtual {v5}, Lcom/senseonics/util/AlarmRingtoneManager;->getDayHighAlarmSound()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 156
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmRepeatIntervalDayTime()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 157
    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmRepeatIntervalDayTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 158
    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getDelayBLEDisconnectionAlarm()I

    move-result v8

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 159
    invoke-virtual {v9}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v9

    xor-int/2addr v9, v1

    .line 160
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getDNDSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v10

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    .line 161
    invoke-virtual {v1}, Lcom/senseonics/util/NotificationDndManager;->isOverridePhoneSettingLowGlucoseAlarmEnabled()Z

    move-result v11

    .line 162
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLowGlucoseOverrideSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v12

    move-object v1, v0

    .line 151
    invoke-interface/range {v1 .. v14}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->refreshView(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;ZI)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;)V
    .locals 10

    .line 81
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationDndManager;->shouldAlwaysDisableOverride()Z

    move-result v0

    const v1, 0x7f1102ec

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    const v2, 0x7f1102ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v9, v0

    const-string v0, "LowAlarmDay"

    .line 89
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v2

    const-string v0, "HighAlarmDay"

    .line 90
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getSoundSelectionClickListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v3

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->LOW:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    .line 91
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;

    move-result-object v4

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->HIGH:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    .line 92
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;

    move-result-object v5

    sget-object v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;->MINUTE:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;

    .line 93
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLayoutClickListener(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$LAYOUT_TYPE;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 94
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    const/4 v1, 0x0

    const/16 v7, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v7

    .line 95
    :goto_1
    iget-object v8, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->notificationDndManager:Lcom/senseonics/util/NotificationDndManager;

    invoke-virtual {v8}, Lcom/senseonics/util/NotificationDndManager;->shouldHideOverride()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto :goto_2

    :cond_2
    move v8, v1

    :goto_2
    move-object v1, p1

    move v7, v0

    .line 88
    invoke-interface/range {v1 .. v9}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->setupView(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;IILjava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->refreshView()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->attach(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 103
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 104
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->uploadThresholdInfoToDMS()V

    .line 119
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;)V
    .locals 0

    .line 113
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->uploadThresholdInfoToDMS()V

    .line 114
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedVibrateModeEvent;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->uploadThresholdInfoToDMS()V

    .line 109
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->hideProgressAndRefresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForDelayBLEDisconnectionAlarm()Z

    move-result p1

    .line 133
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    if-eq v0, p1, :cond_1

    .line 134
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->supportDisconnectMinuteSetting:Z

    .line 135
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-interface {v0, p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->setDisconnectLayoutVisibility(I)V

    :cond_1
    return-void
.end method
