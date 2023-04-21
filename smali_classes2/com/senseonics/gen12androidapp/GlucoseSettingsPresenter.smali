.class public Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "GlucoseSettingsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private hasSupport:Z

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

.field private settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

.field private settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

.field private settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

.field private settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

.field private settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

.field private settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

.field private settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

.field private settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

.field private settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

.field private settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

.field private settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

.field private thresholdsController:Lcom/senseonics/util/ThresholdsController;


# direct methods
.method static bridge synthetic -$$Nest$fgetbluetoothServiceCommandClient(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogUtils(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/model/TransmitterStateModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettempProfileManager(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/bluetoothle/TempProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetthresholdsController(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)Lcom/senseonics/util/ThresholdsController;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisplayTempProfileEnabledWarning(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->displayTempProfileEnabledWarning()V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    .line 81
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    move-object v1, p1

    .line 83
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    move-object v1, p2

    .line 84
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    move-object v1, p3

    .line 85
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v1, p4

    .line 86
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    move-object v2, p5

    .line 87
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    move-object v2, p6

    .line 88
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, p7

    .line 89
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v2, p8

    .line 90
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    move-object v2, p9

    .line 92
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    move-object v2, p10

    .line 93
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    move-object v2, p11

    .line 94
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    move-object v2, p12

    .line 95
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    move-object/from16 v2, p13

    .line 96
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    move-object/from16 v2, p14

    .line 97
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    move-object/from16 v2, p15

    .line 98
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    move-object/from16 v2, p16

    .line 99
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    move-object/from16 v2, p17

    .line 100
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    move-object/from16 v2, p18

    .line 101
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    move-object/from16 v2, p19

    .line 102
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    move-object/from16 v2, p20

    .line 103
    iput-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    .line 105
    invoke-virtual {p4}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result v1

    iput-boolean v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    return-void
.end method

.method private displayTempProfileEnabledWarning()V
    .locals 7

    .line 465
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    const/4 v2, 0x0

    const v3, 0x7f110305

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void
.end method

.method private getHeaderClickListener(III)Landroid/view/View$OnClickListener;
    .locals 1

    .line 469
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableExpandCollapseGlucoseSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$6;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;III)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPredictiveRateLayoutClickListener(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 435
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$4;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)V

    return-object v0
.end method

.method private getPredictiveRatePickerManager(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 1

    .line 449
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$5;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-object v0
.end method

.method private getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    .line 422
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;

    invoke-direct {v0, p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$3;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)V

    return-object v0
.end method

.method private getTextColorForAlertText(ZZ)I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result p1

    return p1
.end method

.method private getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 295
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$1;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)V

    return-object v0
.end method

.method private getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 1

    .line 312
    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$2;-><init>(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;Lcom/senseonics/gen12androidapp/ThresholdSetting;II)V

    return-object v0
.end method

.method private refreshAlarmGlucoseLevels()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 193
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private refreshAlarmGlucoseLevels_Additional()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshHighGlucoseAlarmSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V

    .line 203
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V
    .locals 10

    .line 283
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v6

    .line 284
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v7

    .line 285
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 286
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getViewID()I

    move-result v2

    .line 287
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLayoutID()I

    move-result v3

    .line 288
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLabelTvID()I

    move-result v4

    .line 289
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTvID()I

    move-result v5

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    iget-object v9, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 290
    invoke-virtual {p1, v0, v8, v9}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getModelValueString(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/lang/String;

    move-result-object v8

    .line 285
    invoke-interface/range {v1 .. v8}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->refreshGlucoseSection(IIIIZILjava/lang/String;)V

    return-void
.end method

.method private refreshHighGlucoseAlarmSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 242
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v10

    .line 243
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z

    move-result v15

    .line 244
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v12

    .line 245
    invoke-direct {v0, v10, v15}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getTextColorForAlertText(ZZ)I

    move-result v13

    .line 247
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getViewID()I

    move-result v4

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchTvID()I

    move-result v5

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchID()I

    move-result v6

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLayoutID()I

    move-result v7

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLabelTvID()I

    move-result v8

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTvID()I

    move-result v9

    and-int v11, v10, v15

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    iget-object v14, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    move/from16 v16, v15

    iget-object v15, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 255
    invoke-virtual {v1, v2, v14, v15}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getModelValueString(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/bluetoothle/TempProfileManager;)Ljava/lang/String;

    move-result-object v14

    .line 257
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    move/from16 v15, v16

    move-object/from16 v16, v1

    .line 247
    invoke-interface/range {v3 .. v16}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->refreshHighGlucoseAlarmSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private refreshPredictiveAlerts()V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshPredictiveHighAlerts()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshPredictiveLowAlerts()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 405
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v10

    .line 406
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getModelSwitchValue(Lcom/senseonics/model/TransmitterStateModel;)Z

    move-result v15

    .line 407
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v12

    .line 408
    invoke-direct {v0, v10, v15}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getTextColorForAlertText(ZZ)I

    move-result v13

    .line 410
    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getViewID()I

    move-result v4

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchTvID()I

    move-result v5

    .line 413
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchID()I

    move-result v6

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueLayoutID()I

    move-result v7

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueLabelTvID()I

    move-result v8

    .line 416
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueTvID()I

    move-result v9

    if-eqz v10, :cond_0

    if-eqz v15, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v11, v2

    iget-object v2, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    iget-object v14, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->context:Landroid/content/Context;

    .line 417
    invoke-virtual {v1, v2, v14}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getModelValueString(Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {p0 .. p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getSwitchChangeListener(Lcom/senseonics/gen12androidapp/GlucoseSettingInterface;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v16

    .line 410
    invoke-interface/range {v3 .. v16}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->refreshPredictiveRateSection(IIIIIIZZIILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private refreshRateAlerts()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshRateFallingAlerts()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshRateRisingAlerts()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private refreshTargetGlucoseLevels()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 214
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private refreshViews()V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshAlarmGlucoseLevels_Additional()V

    .line 172
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshTargetGlucoseLevels()V

    .line 173
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveHighAlerts()V

    .line 174
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveLowAlerts()V

    .line 175
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshRateFallingAlerts()V

    .line 176
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshRateRisingAlerts()V

    goto :goto_0

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshAlarmGlucoseLevels()V

    .line 179
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshTargetGlucoseLevels()V

    .line 180
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshPredictiveAlerts()V

    .line 181
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshRateAlerts()V

    :goto_0
    return-void
.end method

.method private setupAlarmGlucoseLevels()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 188
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private setupAlarmGlucoseLevels_Additional()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupHighGlucoseAlarmAdditionalSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V

    .line 198
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V
    .locals 8

    .line 261
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 262
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getViewID()I

    move-result v2

    .line 263
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLayoutID()I

    move-result v3

    .line 264
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueLabelTvID()I

    move-result v4

    .line 265
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTvID()I

    move-result v5

    .line 268
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getViewID()I

    move-result v0

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTvID()I

    move-result v6

    invoke-direct {p0, p1, v0, v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v0

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v6

    .line 270
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getValueTitleID()I

    move-result v7

    .line 261
    invoke-interface/range {v1 .. v7}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupGlucoseSection(IIIILandroid/view/View$OnClickListener;I)V

    .line 273
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 274
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSectionParentID()I

    move-result v1

    .line 275
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getHeaderSectionID()I

    move-result v2

    .line 276
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSectionParentID()I

    move-result v3

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getBodySectionID()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getArrowImageID()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 273
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getSectionParentID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getBodySectionID()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting;->getArrowImageID()I

    move-result p1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupSectionExpandCollapse(IIIZ)V

    return-void
.end method

.method private setupHighGlucoseAlarmAdditionalSection(Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;)V
    .locals 10

    .line 218
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 219
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getViewID()I

    move-result v2

    .line 220
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchTvID()I

    move-result v3

    .line 221
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLayoutID()I

    move-result v4

    .line 222
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueLabelTvID()I

    move-result v5

    .line 223
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTvID()I

    move-result v6

    .line 226
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getViewID()I

    move-result v0

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTvID()I

    move-result v7

    invoke-direct {p0, p1, v0, v7}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdPickerManager(Lcom/senseonics/gen12androidapp/ThresholdSetting;II)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v0

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getThresholdLayoutClickListener(Lcom/senseonics/gen12androidapp/ThresholdSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v7

    .line 228
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getValueTitleID()I

    move-result v8

    .line 229
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSwitchTitleID()I

    move-result v9

    .line 218
    invoke-interface/range {v1 .. v9}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupHighGlucoseAlarmSection(IIIIILandroid/view/View$OnClickListener;II)V

    .line 232
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 233
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSectionParentID()I

    move-result v1

    .line 234
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getHeaderSectionID()I

    move-result v2

    .line 235
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSectionParentID()I

    move-result v3

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getBodySectionID()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getArrowImageID()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 232
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getSectionParentID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getBodySectionID()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;->getArrowImageID()I

    move-result p1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupSectionExpandCollapse(IIIZ)V

    return-void
.end method

.method private setupPredictiveAlerts()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupPredictiveHighAlerts()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupPredictiveLowAlerts()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V
    .locals 7

    .line 387
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 388
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getViewID()I

    move-result v2

    .line 389
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchTvID()I

    move-result v3

    .line 390
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getValueLayoutID()I

    move-result v4

    .line 391
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getPredictiveRatePickerManager(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)Lcom/senseonics/events/EventUtils$PickerManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getPredictiveRateLayoutClickListener(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;Lcom/senseonics/events/EventUtils$PickerManager;)Landroid/view/View$OnClickListener;

    move-result-object v5

    .line 392
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSwitchTitleID()I

    move-result v6

    .line 387
    invoke-interface/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupPredictiveRateSection(IIILandroid/view/View$OnClickListener;I)V

    .line 395
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    .line 396
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSectionParentID()I

    move-result v1

    .line 397
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getHeaderSectionID()I

    move-result v2

    .line 398
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSectionParentID()I

    move-result v3

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getBodySectionID()I

    move-result v4

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getArrowImageID()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->getHeaderClickListener(III)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 395
    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupTableSectionTapEvent(IILandroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getSectionParentID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getBodySectionID()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/PredictiveRateSetting;->getArrowImageID()I

    move-result p1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->setupSectionExpandCollapse(IIIZ)V

    return-void
.end method

.method private setupRateAlerts()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupRateFallingAlerts()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupRateRisingAlerts()V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveRateSection(Lcom/senseonics/gen12androidapp/PredictiveRateSetting;)V

    return-void
.end method

.method private setupTargetGlucoseLevels()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    .line 209
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupGlucoseLevelSection(Lcom/senseonics/gen12androidapp/ThresholdSetting;)V

    return-void
.end method

.method private setupViews()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupAlarmGlucoseLevels_Additional()V

    .line 156
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupTargetGlucoseLevels()V

    .line 157
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveHighAlerts()V

    .line 158
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveLowAlerts()V

    .line 159
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupRateFallingAlerts()V

    .line 160
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupRateRisingAlerts()V

    goto :goto_0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupAlarmGlucoseLevels()V

    .line 163
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupTargetGlucoseLevels()V

    .line 164
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupPredictiveAlerts()V

    .line 165
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupRateAlerts()V

    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupViews()V

    .line 114
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->attach(Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;)V

    return-void
.end method

.method public detach()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;->detach()V

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method getLayoutID()I
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->getGlucoseSettingLayout(Z)I

    move-result v0

    return v0
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->hideProgress()V

    .line 139
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/GlucoseSettingsChangedEvent;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/UpdateExtensionEvent;

    invoke-direct {v0}, Lcom/senseonics/events/UpdateExtensionEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 131
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;->uploadThresholdInfoToDMS()V

    .line 133
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->hideProgress()V

    .line 134
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->hasSupportForHighGluAlarmPredRateHighLowSettings()Z

    move-result p1

    .line 145
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    if-eq v0, p1, :cond_0

    .line 146
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    .line 147
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->view:Ljava/lang/Object;

    check-cast p1, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;

    invoke-interface {p1}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter$GlucoseSettingsView;->replaceLayout()V

    .line 148
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->setupViews()V

    .line 149
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->refreshViews()V

    :cond_0
    return-void
.end method

.method setHasSupport(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;->hasSupport:Z

    return-void
.end method
