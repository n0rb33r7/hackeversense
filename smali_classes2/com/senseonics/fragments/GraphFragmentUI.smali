.class public Lcom/senseonics/fragments/GraphFragmentUI;
.super Lcom/senseonics/fragments/GraphFragment;
.source "GraphFragmentUI.java"


# instance fields
.field clickCount:I

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field layout:Landroid/widget/RelativeLayout;

.field setTargetWithStatusUI:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->clickCount:I

    return-void
.end method


# virtual methods
.method public changeGlucoseDisplayValue()V
    .locals 4

    .line 107
    iget v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->clickCount:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 192
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 193
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    .line 194
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCountdown(J)V

    .line 195
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCalibrationsMadeInThisPhase(I)V

    .line 197
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setReadyForCalibrationState(I)V

    .line 198
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setNextScheduledCalibration(Ljava/util/Calendar;)V

    .line 199
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setSensorInsertionDateAndTime(Ljava/util/Calendar;)V

    goto/16 :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    .line 186
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-wide/32 v2, 0xc350

    invoke-virtual {v0, v2, v3}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCountdown(J)V

    .line 187
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCalibrationsMadeInThisPhase(I)V

    .line 188
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, -0x1

    .line 178
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    const/4 v3, 0x0

    .line 179
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 180
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 181
    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v0}, Lcom/senseonics/model/TransmitterStateModel;->setSensorInsertionDateAndTime(Ljava/util/Calendar;)V

    .line 182
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    .line 171
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCalibrationsMadeInThisPhase(I)V

    .line 172
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 173
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V

    goto/16 :goto_0

    .line 167
    :pswitch_4
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorStability:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 164
    :pswitch_5
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 161
    :pswitch_6
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 158
    :pswitch_7
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 155
    :pswitch_8
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 152
    :pswitch_9
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 149
    :pswitch_a
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_0

    .line 146
    :pswitch_b
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 143
    :pswitch_c
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 140
    :pswitch_d
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 137
    :pswitch_e
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->InvalidSensorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 134
    :pswitch_f
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->ReaderTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 131
    :pswitch_10
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorLowTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 128
    :pswitch_11
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorTemperatureAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 125
    :pswitch_12
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_0

    .line 122
    :pswitch_13
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/16 v2, 0x4b

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    goto :goto_0

    .line 119
    :pswitch_14
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/16 v2, 0xb4

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    goto :goto_0

    .line 116
    :pswitch_15
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    goto :goto_0

    .line 113
    :pswitch_16
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/16 v2, 0x118

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    goto :goto_0

    .line 109
    :pswitch_17
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/16 v2, 0x82

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    .line 110
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v2, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0, v2}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V

    .line 202
    :goto_0
    iget v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->clickCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->clickCount:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected init(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/senseonics/fragments/GraphFragment;->init(Landroid/view/View;Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragmentUI;->getLayout()Landroid/widget/RelativeLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->layout:Landroid/widget/RelativeLayout;

    .line 35
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    .line 36
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xc

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0x14

    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xd

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0x1e

    .line 40
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 41
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->layout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    const-string p2, "Hello_World"

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 45
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 47
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    new-instance p2, Lcom/senseonics/fragments/GraphFragmentUI$1;

    invoke-direct {p2, p0}, Lcom/senseonics/fragments/GraphFragmentUI$1;-><init>(Lcom/senseonics/fragments/GraphFragmentUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragmentUI;->setTargetWithStatusUI:Landroid/widget/TextView;

    new-instance p2, Lcom/senseonics/fragments/GraphFragmentUI$2;

    invoke-direct {p2, p0}, Lcom/senseonics/fragments/GraphFragmentUI$2;-><init>(Lcom/senseonics/fragments/GraphFragmentUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/senseonics/fragments/GraphFragment;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setIsBluetoothEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 75
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V

    .line 76
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->BL_25:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)V

    .line 77
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "102204"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterModelNumber(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "80535"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterSerialNumber(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "TX000123"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterName(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "23456"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setLinkedSensorId(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 82
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCalibrationsMadeInThisPhase(I)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    return-void
.end method
