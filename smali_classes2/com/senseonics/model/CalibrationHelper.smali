.class public Lcom/senseonics/model/CalibrationHelper;
.super Ljava/lang/Object;
.source "CalibrationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;,
        Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final RETRY_CAL_BLINDED_WAIT_HOURS:I

.field private final RETRY_CAL_NOT_READY_WAIT_MINUTES:I

.field private final RETRY_CAL_RATE_WAIT_HOURS:I

.field private final RETRY_CAL_REJECTED_WAIT_MINUTES:I

.field private final RETRY_CAL_TOO_DIFFERENT_WAIT_HOURS:I

.field private final RETRY_CAL_TOO_HIGH_WAIT_HOURS:I

.field private final RETRY_CAL_TOO_LOW_WAIT_HOURS:I

.field private context:Landroid/content/Context;

.field private justSubmittedCalibrationEvent:Lcom/senseonics/events/CalibrationEventPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_TOO_LOW_WAIT_HOURS:I

    const/4 v1, 0x5

    .line 18
    iput v1, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_REJECTED_WAIT_MINUTES:I

    const/4 v1, 0x6

    .line 19
    iput v1, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_BLINDED_WAIT_HOURS:I

    const/16 v1, 0x1e

    .line 20
    iput v1, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_NOT_READY_WAIT_MINUTES:I

    .line 21
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_TOO_DIFFERENT_WAIT_HOURS:I

    .line 22
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_RATE_WAIT_HOURS:I

    .line 23
    iput v0, p0, Lcom/senseonics/model/CalibrationHelper;->RETRY_CAL_TOO_HIGH_WAIT_HOURS:I

    .line 30
    iput-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getJustSubmittedCalibrationEvent()Lcom/senseonics/events/CalibrationEventPoint;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/senseonics/model/CalibrationHelper;->justSubmittedCalibrationEvent:Lcom/senseonics/events/CalibrationEventPoint;

    return-object v0
.end method

.method public getShortTitleForCalibrationUseFlag(I)Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getShortTitle()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextForCalibrationUseFlag(IILcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 7

    .line 132
    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getMessage()I

    move-result v0

    .line 136
    sget-object v1, Lcom/senseonics/model/CalibrationHelper$1;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_USE_FLAG:[I

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x3

    const v2, 0x7f110067

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    packed-switch p1, :pswitch_data_0

    .line 239
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 232
    :pswitch_1
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f110068

    .line 235
    :goto_0
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 225
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v2, 0x7f110059

    .line 228
    :goto_1
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 208
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v5, [Ljava/lang/Object;

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 212
    :pswitch_4
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f110060

    goto :goto_2

    .line 215
    :cond_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f11005e

    goto :goto_2

    :cond_3
    const p1, 0x7f11005d

    .line 221
    :goto_2
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 200
    :pswitch_5
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->fixTypoCalRejectMsgNotEnoughData()Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f110053

    goto :goto_3

    :cond_4
    const p1, 0x7f110052

    .line 205
    :goto_3
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p3, v5, [Ljava/lang/Object;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v4

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 197
    :pswitch_6
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p2, v5, [Ljava/lang/Object;

    const/16 p3, 0x1e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 189
    :pswitch_7
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f110051

    goto :goto_4

    :cond_5
    const p1, 0x7f11005b

    .line 192
    :goto_4
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 193
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 194
    :cond_6
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array p3, v5, [Ljava/lang/Object;

    aput-object v6, p3, v4

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 174
    :pswitch_8
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f110055

    goto :goto_5

    :cond_7
    const p1, 0x7f110063

    .line 177
    :goto_5
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 178
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v0, v1, [Ljava/lang/Object;

    .line 180
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxCalibrationThreshold()I

    move-result v1

    invoke-static {p2, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 181
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMinCalibrationThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    .line 182
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxCalibrationThreshold()I

    move-result p3

    invoke-static {v1, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v3

    .line 178
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 183
    :cond_8
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v0, v3, [Ljava/lang/Object;

    .line 185
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxCalibrationThreshold()I

    move-result p3

    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v4

    aput-object v6, v0, v5

    .line 183
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 159
    :pswitch_9
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f110056

    goto :goto_6

    :cond_9
    const p1, 0x7f110065

    .line 162
    :goto_6
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 163
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v0, v1, [Ljava/lang/Object;

    .line 165
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMinCalibrationThreshold()I

    move-result v1

    invoke-static {p2, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 166
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMinCalibrationThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    .line 167
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMaxCalibrationThreshold()I

    move-result p3

    invoke-static {v1, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v3

    .line 163
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_9

    .line 168
    :cond_a
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v0, v3, [Ljava/lang/Object;

    .line 170
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getMinCalibrationThreshold()I

    move-result p3

    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v4

    aput-object v6, v0, v5

    .line 168
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 145
    :pswitch_a
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f110044

    goto :goto_7

    :cond_b
    const p1, 0x7f110061

    .line 148
    :goto_7
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 149
    iget-object v0, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v1, v3, [Ljava/lang/Object;

    .line 151
    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v4

    iget-object p3, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    .line 152
    invoke-static {p3, p2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v5

    .line 149
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 153
    :cond_c
    iget-object p3, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v0, v3, [Ljava/lang/Object;

    .line 155
    invoke-static {p3, p2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    aput-object v6, v0, v5

    .line 153
    invoke-virtual {p3, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 139
    :pswitch_b
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f110043

    goto :goto_8

    :cond_d
    const p1, 0x7f110046

    .line 142
    :goto_8
    iget-object p2, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v4

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_9
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTitleForCalibrationUseFlag(I)Ljava/lang/String;
    .locals 3

    .line 42
    invoke-static {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getTitle()I

    move-result v0

    .line 45
    sget-object v1, Lcom/senseonics/model/CalibrationHelper$1;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_USE_FLAG:[I

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const v1, 0x7f110045

    const v2, 0x7f110050

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 115
    :pswitch_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_0

    :goto_0
    move v0, v2

    goto/16 :goto_3

    :cond_0
    const p1, 0x7f110069

    :goto_1
    move v0, p1

    goto/16 :goto_3

    .line 109
    :pswitch_1
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f11005a

    goto :goto_1

    .line 103
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x7f11004d

    goto :goto_1

    .line 97
    :pswitch_3
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7f11004f

    goto :goto_1

    .line 91
    :pswitch_4
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const p1, 0x7f11005f

    goto :goto_1

    .line 84
    :pswitch_5
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    const p1, 0x7f110054

    goto :goto_1

    .line 78
    :pswitch_6
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    const p1, 0x7f110058

    goto :goto_1

    .line 72
    :pswitch_7
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    const p1, 0x7f11005c

    goto :goto_1

    .line 66
    :pswitch_8
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    const p1, 0x7f110064

    goto :goto_1

    .line 60
    :pswitch_9
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    const p1, 0x7f110066

    goto :goto_1

    .line 54
    :pswitch_a
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_a

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_a
    const p1, 0x7f110062

    goto :goto_1

    .line 48
    :pswitch_b
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewCalAcceptRejectText()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_2

    :cond_b
    const p1, 0x7f110047

    goto :goto_1

    .line 124
    :goto_3
    iget-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setJustSubmittedCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/senseonics/model/CalibrationHelper;->justSubmittedCalibrationEvent:Lcom/senseonics/events/CalibrationEventPoint;

    return-void
.end method
