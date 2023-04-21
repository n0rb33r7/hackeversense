.class public Lcom/senseonics/events/NotificationEventActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "NotificationEventActivity.java"


# instance fields
.field protected currentDate:Ljava/util/Calendar;

.field private dateTextView:Landroid/widget/TextView;

.field protected eventPoint:Lcom/senseonics/events/EventPoint;

.field private eventTypeTextView:Landroid/widget/TextView;

.field private notificationDetailsTextView:Landroid/widget/TextView;

.field private notificationECNoTextView:Landroid/widget/TextView;

.field private notificationImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 26
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a1

    .line 28
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->initializeLayout(I)Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Lcom/senseonics/events/NotificationEventActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/events/NotificationEventActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090173

    .line 31
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    const p1, 0x7f090172

    .line 32
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->dateTextView:Landroid/widget/TextView;

    const p1, 0x7f0902ac

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    const p1, 0x7f0902ae

    .line 34
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationImageView:Landroid/widget/ImageView;

    const p1, 0x7f0902ad

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/events/NotificationEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p0}, Lcom/senseonics/events/NotificationEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "eventPoint"

    if-eqz p1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/senseonics/events/EventPoint;

    iput-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 43
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    .line 54
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/senseonics/events/EventPoint;

    iput-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 57
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result p1

    .line 58
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v4

    .line 61
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v6

    .line 63
    sget-object v0, Lcom/senseonics/events/NotificationEventActivity$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "0"

    const-string v2, " "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 105
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v0

    if-lez v0, :cond_2

    .line 111
    invoke-virtual {p0, v0}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v7, 0x7f110342

    if-ne v0, v7, :cond_3

    .line 114
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    .line 116
    invoke-static {p0, v3, v0}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    .line 121
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->suspiciousCalAlertsNewEc()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 125
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationNowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_4

    .line 126
    invoke-static {v6}, Lcom/senseonics/util/Utils;->getCalPhaseFromCalAlertNote(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_4
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v0, p1}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->suspiciousCalAlertsNewEc()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 90
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_6

    .line 92
    :cond_5
    invoke-static {v6}, Lcom/senseonics/util/Utils;->getCalPhaseFromCalAlertNote(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {v3}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_6
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->alertHelper:Lcom/senseonics/util/AlertHelper;

    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 68
    :pswitch_2
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v0, :cond_7

    .line 69
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 70
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result v1

    goto :goto_1

    .line 72
    :cond_7
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 73
    iget-object v1, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result v1

    .line 76
    :goto_1
    iget-object v3, p0, Lcom/senseonics/events/NotificationEventActivity;->eventTypeTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/senseonics/events/NotificationEventActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationECNoTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getECString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->notificationDetailsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/senseonics/events/NotificationEventActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertText(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;FLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/senseonics/events/NotificationEventActivity;->dateTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 141
    iget-object v0, p0, Lcom/senseonics/events/NotificationEventActivity;->currentDate:Ljava/util/Calendar;

    invoke-static {v0, p0}, Lcom/senseonics/util/TimeProvider;->formatWeekDateTime(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
