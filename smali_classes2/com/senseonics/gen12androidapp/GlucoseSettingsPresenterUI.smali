.class public Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;
.super Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;
.source "GlucoseSettingsPresenterUI.java"


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

.field private eventBus:Lde/greenrobot/event/EventBus;

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
.method public constructor <init>(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    .line 68
    invoke-direct/range {p0 .. p20}, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenter;-><init>(Lcom/senseonics/util/ThresholdsController;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;)V

    move-object v1, p1

    .line 90
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->thresholdsController:Lcom/senseonics/util/ThresholdsController;

    move-object v1, p2

    .line 91
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    move-object v1, p3

    .line 92
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v1, p4

    .line 93
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->model:Lcom/senseonics/model/TransmitterStateModel;

    move-object v1, p5

    .line 94
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->context:Landroid/content/Context;

    move-object v1, p6

    .line 95
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v1, p7

    .line 96
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v1, p8

    .line 97
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->dmsStateModelSyncManagerSwitcher:Lcom/senseonics/bluetoothle/DMSStateModelSyncManagerSwitcher;

    move-object v1, p9

    .line 99
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingHighAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm;

    move-object v1, p10

    .line 100
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingLowAlarm:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm;

    move-object v1, p11

    .line 101
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingHighAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighAlarm_Additional;

    move-object v1, p12

    .line 102
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingLowAlarmAdditional:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowAlarm_Additional;

    move-object v1, p13

    .line 103
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingHighTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_HighTarget;

    move-object/from16 v1, p14

    .line 104
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingLowTarget:Lcom/senseonics/gen12androidapp/ThresholdSetting_LowTarget;

    move-object/from16 v1, p15

    .line 105
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingPredictive:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts;

    move-object/from16 v1, p16

    .line 106
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingPredictiveHigh:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_High;

    move-object/from16 v1, p17

    .line 107
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingPredictiveLow:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_PredictiveAlerts_Low;

    move-object/from16 v1, p18

    .line 108
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingRate:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts;

    move-object/from16 v1, p19

    .line 109
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingRateFalling:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Falling;

    move-object/from16 v1, p20

    .line 110
    iput-object v1, v0, Lcom/senseonics/gen12androidapp/GlucoseSettingsPresenterUI;->settingRateRising:Lcom/senseonics/gen12androidapp/PredictiveRateSetting_RateAlerts_Rising;

    return-void
.end method
