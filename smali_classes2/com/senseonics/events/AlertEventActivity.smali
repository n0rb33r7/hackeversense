.class public Lcom/senseonics/events/AlertEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "AlertEventActivity.java"


# instance fields
.field private dateTextView:Landroid/widget/TextView;

.field protected eventTypeTextView:Landroid/widget/TextView;

.field private glucoseUnit:Ljava/lang/String;

.field private notificationECNoTextView:Landroid/widget/TextView;

.field private notificationImageView:Landroid/widget/ImageView;

.field private thresholdTextView:Landroid/widget/TextView;

.field private unitGlucoseTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 24
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f1100d3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/senseonics/events/AlertEventActivity;->hasSaveButton:Z

    .line 30
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->inflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0c008d

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090172

    .line 31
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->dateTextView:Landroid/widget/TextView;

    const p1, 0x7f090173

    .line 32
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    const p1, 0x7f0902ad

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    const p1, 0x7f0903c6

    .line 34
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    const p1, 0x7f0902ae

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->notificationImageView:Landroid/widget/ImageView;

    const p1, 0x7f090198

    .line 36
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->unitGlucoseTextView:Landroid/widget/TextView;

    .line 39
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->currentDate:Ljava/util/Calendar;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->dateTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/senseonics/util/TimeProvider;->formatWeekDateTime(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt p1, v0, :cond_0

    const p1, 0x7f110220

    .line 45
    invoke-virtual {p0, p1}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/senseonics/events/AlertEventActivity;->unitGlucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/senseonics/events/AlertEventActivity;->update()V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 16

    move-object/from16 v0, p0

    .line 57
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v1, Lcom/senseonics/events/AlertEventPoint;

    .line 58
    invoke-virtual {v1}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    .line 60
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisHighGlocosePercent()I

    move-result v2

    .line 61
    iget-object v3, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisLowGlucoseValueMgDl()I

    move-result v3

    .line 62
    iget-object v4, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisHighPredictiveGlocosePercent()I

    move-result v4

    .line 63
    iget-object v5, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHysteresisLowPredictiveGlucoseValueMgDl()I

    move-result v5

    .line 66
    iget-object v6, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v6

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "%.1f"

    const/high16 v11, 0x42c80000    # 100.0f

    const v12, 0x7f110021

    const-string v13, ")"

    const-string v14, "(+/- "

    const-string v15, " "

    if-ne v6, v7, :cond_3

    .line 67
    iget-object v4, v0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v12}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget-object v4, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v4, :cond_1

    .line 70
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v11

    .line 73
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    float-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v3, v5

    if-lez v1, :cond_0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v3

    invoke-static {v0, v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    :goto_0
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 82
    :cond_1
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v1, v3

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v4

    if-lez v1, :cond_2

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v2

    invoke-static {v0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 87
    :cond_2
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_1
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 93
    :cond_3
    iget-object v6, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v6

    sget-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v6, v7, :cond_7

    .line 94
    iget-object v4, v0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v12}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    sget-object v4, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v4, :cond_5

    .line 96
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v11

    .line 99
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    float-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v3

    invoke-static {v0, v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 104
    :cond_4
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :goto_2
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 108
    :cond_5
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v1, v3

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v4

    if-lez v1, :cond_6

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v2

    invoke-static {v0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 113
    :cond_6
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_3
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 120
    :cond_7
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v1, v2, :cond_8

    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 121
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v1, v2, :cond_c

    .line 122
    :cond_8
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v3}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v12}, Lcom/senseonics/events/AlertEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v1, v2, :cond_a

    .line 124
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelFloatValue(I)F

    move-result v1

    int-to-float v2, v4

    mul-float/2addr v1, v2

    div-float/2addr v1, v11

    .line 127
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    float-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v3, v5

    if-lez v1, :cond_9

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v3

    invoke-static {v0, v3}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->glucoseUnit:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 132
    :cond_9
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :goto_4
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 136
    :cond_a
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v1, v5

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v1, v1, v3

    if-lez v1, :cond_b

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v2

    invoke-static {v0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v5}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 141
    :cond_b
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_5
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->thresholdTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_c
    :goto_6
    iget-object v1, v0, Lcom/senseonics/events/AlertEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result v1

    .line 148
    iget-object v2, v0, Lcom/senseonics/events/AlertEventActivity;->notificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
