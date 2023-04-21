.class public Lcom/senseonics/fragments/NotificationsFragmentUI;
.super Lcom/senseonics/fragments/NotificationsFragment;
.source "NotificationsFragmentUI.java"


# instance fields
.field clickCount:I

.field currentAep:Lcom/senseonics/events/AlertEventPoint;

.field currentType:I

.field mNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation
.end field

.field uiTransparentButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/senseonics/fragments/NotificationsFragment;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->mNotifications:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    return-void
.end method


# virtual methods
.method public createNotification(ILjava/util/Calendar;IIIZZZZZ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v1, p4

    .line 415
    invoke-super/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragment;->getAdapter()Lcom/senseonics/util/NotificationsAdapter;

    move-result-object v9

    .line 416
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-super/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragment;->getActivity()Landroid/app/Activity;

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/NotificationsFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 423
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    aget-object v12, v2, p3

    .line 428
    sget-object v2, Lcom/senseonics/fragments/NotificationsFragmentUI$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v12}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v13, 0x7f110220

    const/4 v3, 0x1

    const-string v4, " "

    const/4 v15, 0x0

    const-string v5, ""

    const-string v6, "TX000123"

    packed-switch v2, :pswitch_data_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    const/4 v14, 0x0

    goto/16 :goto_11

    .line 633
    :pswitch_0
    new-instance v1, Lcom/senseonics/events/EventPoint;

    invoke-direct {v1, v8, v7}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 634
    invoke-virtual {v1, v6}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 635
    invoke-virtual {v1, v2}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 636
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 637
    invoke-virtual {v1, v5}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 639
    invoke-static/range {p5 .. p5}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    .line 641
    invoke-virtual {v1, v4}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 644
    sget-object v7, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v7, :cond_1

    .line 646
    invoke-virtual {v1, v2}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 649
    :cond_1
    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz p6, :cond_2

    .line 653
    invoke-virtual {v11, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 655
    :cond_2
    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object v7

    :goto_1
    const v13, 0x7f110342

    if-ne v2, v13, :cond_3

    .line 659
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v2

    const/4 v13, -0x1

    if-eq v2, v13, :cond_3

    .line 661
    invoke-static {v11, v7, v2}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v7

    goto :goto_2

    :cond_4
    const-string v2, ""

    .line 666
    :goto_2
    iget-object v7, v0, Lcom/senseonics/fragments/NotificationsFragmentUI;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v7

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-virtual/range {v16 .. v21}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v7, p7

    if-ne v7, v3, :cond_5

    .line 671
    sget-object v3, Lcom/senseonics/util/Utils;->BATTERY_EVENT_TAG:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    new-instance v14, Lcom/senseonics/util/Notification;

    .line 673
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object/from16 p1, v14

    move-object/from16 p2, v2

    move-object/from16 p3, v6

    move-wide/from16 p4, v7

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_11

    :cond_5
    if-nez p8, :cond_6

    .line 675
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v3, :cond_6

    goto :goto_3

    :cond_6
    if-nez p9, :cond_7

    .line 676
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v3, :cond_7

    goto :goto_3

    :cond_7
    if-nez p10, :cond_8

    .line 677
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v3, :cond_8

    :goto_3
    goto/16 :goto_0

    .line 679
    :cond_8
    new-instance v14, Lcom/senseonics/util/Notification;

    .line 680
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object/from16 p1, v14

    move-object/from16 p2, v2

    move-object/from16 p3, v6

    move-wide/from16 p4, v7

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_11

    .line 614
    :pswitch_1
    new-instance v1, Lcom/senseonics/events/EventPoint;

    invoke-direct {v1, v8, v7}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;I)V

    .line 615
    invoke-virtual {v1, v6}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1, v12}, Lcom/senseonics/events/EventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 617
    invoke-virtual {v1, v5}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 618
    iget-object v2, v0, Lcom/senseonics/fragments/NotificationsFragmentUI;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v2, v12}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    if-eqz p6, :cond_9

    .line 621
    new-instance v2, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v3

    .line 622
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v4

    .line 623
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_4

    .line 625
    :cond_9
    new-instance v2, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventNameNotTranslated(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v3

    .line 626
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v4

    .line 627
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v1

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_4
    move-object v14, v2

    goto/16 :goto_10

    .line 565
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    aget-object v5, v1, p5

    .line 567
    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt v7, v1, :cond_a

    .line 568
    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 570
    :cond_a
    invoke-static {v11, v7}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_5
    move-object v13, v1

    .line 572
    new-instance v4, Lcom/senseonics/events/AlertEventPoint;

    sget-object v16, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v1, v4

    move-object v2, v12

    move-object/from16 v3, p2

    move-object v14, v4

    move/from16 v4, p1

    move-object v7, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 575
    move-object v4, v14

    check-cast v4, Lcom/senseonics/events/AlertEventPoint;

    iput-object v14, v0, Lcom/senseonics/fragments/NotificationsFragmentUI;->currentAep:Lcom/senseonics/events/AlertEventPoint;

    .line 576
    invoke-virtual {v14, v7}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 578
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v12, v1, :cond_d

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v1, :cond_b

    goto :goto_6

    :cond_b
    const v1, 0x3e0f5c29    # 0.14f

    .line 589
    invoke-virtual {v14, v1}, Lcom/senseonics/events/EventPoint;->setRateValue(F)V

    if-eqz p6, :cond_c

    .line 591
    invoke-static {v11, v12}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 593
    :cond_c
    invoke-static {v12}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_d
    :goto_6
    const/16 v1, 0xa

    .line 581
    invoke-virtual {v14, v1}, Lcom/senseonics/events/EventPoint;->setPredictiveMinutes(I)V

    if-eqz p6, :cond_e

    .line 583
    invoke-static {v11, v12}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 585
    :cond_e
    invoke-static {v12}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    .line 597
    :goto_7
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v2, :cond_f

    .line 598
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v14, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_8

    .line 599
    :cond_f
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v2, :cond_10

    .line 600
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v14, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_8

    .line 601
    :cond_10
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v2, :cond_11

    .line 602
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v14, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_8

    .line 603
    :cond_11
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v2, :cond_12

    .line 604
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v14, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 607
    :cond_12
    :goto_8
    new-instance v2, Lcom/senseonics/util/Notification;

    .line 608
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-object/from16 p1, v2

    move-object/from16 p2, v1

    move-object/from16 p3, v13

    move-wide/from16 p4, v3

    move-object/from16 p6, v14

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    move-object v1, v14

    const/4 v4, 0x0

    move-object v14, v2

    goto/16 :goto_11

    :pswitch_3
    move-object v14, v6

    .line 511
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v1

    aget-object v6, v1, p5

    .line 513
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v1

    aget-object v16, v1, v3

    .line 514
    new-instance v5, Lcom/senseonics/events/AlertEventPoint;

    move-object v1, v5

    move-object v2, v12

    move-object/from16 v3, p2

    move/from16 v4, p1

    move-object v13, v5

    move-object v5, v6

    move-object/from16 v22, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 516
    move-object v5, v13

    check-cast v5, Lcom/senseonics/events/AlertEventPoint;

    iput-object v13, v0, Lcom/senseonics/fragments/NotificationsFragmentUI;->currentAep:Lcom/senseonics/events/AlertEventPoint;

    .line 517
    iput v15, v0, Lcom/senseonics/fragments/NotificationsFragmentUI;->currentType:I

    .line 518
    invoke-virtual {v13, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 520
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v1, :cond_15

    if-eqz p6, :cond_13

    move-object/from16 v1, v22

    .line 522
    invoke-static {v11, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_13
    move-object/from16 v1, v22

    .line 524
    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 527
    :goto_9
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_14

    .line 528
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v13, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 529
    :cond_14
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_19

    .line 530
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v13, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    :cond_15
    move-object/from16 v1, v22

    .line 532
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v12, v2, :cond_18

    if-eqz p6, :cond_16

    .line 534
    invoke-static {v11, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 536
    :cond_16
    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 539
    :goto_a
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_17

    .line 540
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v13, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 541
    :cond_17
    sget-object v3, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v3, :cond_19

    .line 542
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v13, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 545
    :cond_18
    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 548
    :cond_19
    :goto_b
    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt v7, v1, :cond_1a

    const v1, 0x7f110220

    .line 549
    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 551
    :cond_1a
    invoke-static {v11, v7}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 554
    :goto_c
    new-instance v3, Lcom/senseonics/util/Notification;

    .line 555
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 p1, v3

    move-object/from16 p2, v2

    move-object/from16 p3, v1

    move-wide/from16 p4, v4

    move-object/from16 p6, v13

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    move-object v14, v3

    move-object v1, v13

    goto/16 :goto_10

    :pswitch_4
    move-object v14, v6

    .line 494
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v1

    aget-object v1, v1, v15

    const/16 v2, 0xa

    .line 497
    new-instance v3, Lcom/senseonics/events/ExerciseEventPoint;

    move-object/from16 p3, v3

    move-object/from16 p4, p2

    move/from16 p5, p1

    move/from16 p6, v2

    move-object/from16 p7, v1

    move-object/from16 p8, v5

    invoke-direct/range {p3 .. p8}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(Ljava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v3, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 500
    move-object v1, v3

    check-cast v1, Lcom/senseonics/events/ExerciseEventPoint;

    .line 501
    invoke-virtual {v3, v11}, Lcom/senseonics/events/ExerciseEventPoint;->getDurationText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 502
    new-instance v2, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move-wide/from16 p4, v5

    move-object/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_d

    :pswitch_5
    move-object v14, v6

    .line 481
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v1

    aget-object v1, v1, v15

    .line 483
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v2

    aget-object v2, v2, v15

    .line 485
    new-instance v3, Lcom/senseonics/events/HealthEventPoint;

    move-object/from16 p3, v3

    move-object/from16 p4, p2

    move/from16 p5, p1

    move-object/from16 p6, v1

    move-object/from16 p7, v2

    move-object/from16 p8, v5

    invoke-direct/range {p3 .. p8}, Lcom/senseonics/events/HealthEventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v3, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 488
    new-instance v2, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-static {v11, v1}, Lcom/senseonics/events/EventUtils;->getHealthConditionName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)Ljava/lang/String;

    move-result-object v1

    .line 490
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move-wide/from16 p4, v5

    move-object/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_d
    move-object v14, v2

    move-object v1, v3

    goto/16 :goto_10

    :pswitch_6
    move-object v14, v6

    .line 467
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v1

    aget-object v1, v1, v15

    const/4 v2, 0x0

    .line 470
    new-instance v3, Lcom/senseonics/events/InsulinEventPoint;

    const/4 v6, 0x0

    move-object/from16 p3, v3

    move-object/from16 p4, p2

    move/from16 p5, p1

    move/from16 p6, v6

    move-object/from16 p7, v1

    move-object/from16 p8, v5

    invoke-direct/range {p3 .. p8}, Lcom/senseonics/events/InsulinEventPoint;-><init>(Ljava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v3, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f11033e

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    new-instance v5, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    move-object/from16 p1, v5

    move-object/from16 p2, v6

    move-object/from16 p3, v1

    move-wide/from16 p4, v7

    move-object/from16 p6, v3

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    move-object v1, v3

    goto :goto_e

    :pswitch_7
    move-object v14, v6

    .line 453
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v1

    aget-object v1, v1, v15

    .line 456
    new-instance v2, Lcom/senseonics/events/MealEventPoint;

    const/4 v3, 0x0

    move-object/from16 p3, v2

    move-object/from16 p4, p2

    move/from16 p5, p1

    move-object/from16 p6, v1

    move/from16 p7, v3

    move-object/from16 p8, v5

    invoke-direct/range {p3 .. p8}, Lcom/senseonics/events/MealEventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 458
    invoke-virtual {v2, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f11013b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 461
    new-instance v5, Lcom/senseonics/util/Notification;

    invoke-static {v11, v1}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 p1, v5

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-wide/from16 p4, v6

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    move-object v1, v2

    :goto_e
    move-object v14, v5

    goto :goto_10

    :pswitch_8
    move-object v14, v6

    .line 442
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v8, v7, v1, v5}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 444
    invoke-virtual {v2, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 445
    invoke-static {v11, v7}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 447
    new-instance v3, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move-wide/from16 p4, v5

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_f

    :pswitch_9
    move-object v14, v6

    .line 431
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v8, v7, v1, v5}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 433
    invoke-virtual {v2, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 434
    invoke-static {v11, v7}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 436
    new-instance v3, Lcom/senseonics/util/Notification;

    invoke-static {v11, v12}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v4

    .line 438
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v1

    move-wide/from16 p4, v5

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_f
    move-object v1, v2

    move-object v14, v3

    :goto_10
    const/4 v4, 0x0

    :goto_11
    if-eqz v14, :cond_1b

    .line 687
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-virtual {v9, v10}, Lcom/senseonics/util/NotificationsAdapter;->setNotifications(Ljava/util/ArrayList;)V

    .line 691
    invoke-virtual {v0, v12, v1, v4}, Lcom/senseonics/fragments/NotificationsFragmentUI;->displayLatestEventDialog(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 692
    iget-object v1, v0, Lcom/senseonics/fragments/NotificationsFragmentUI;->mNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1, v15, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
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

.method public displayLatestEventDialog(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 1

    .line 697
    sget-object v0, Lcom/senseonics/fragments/NotificationsFragmentUI$3;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x3e8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 720
    :pswitch_0
    new-instance p1, Lcom/senseonics/util/dialogs/NotificationDialogInfo;

    invoke-direct {p1, p2, p3, v0}, Lcom/senseonics/util/dialogs/NotificationDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;I)V

    .line 721
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createNotificationDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/NotificationDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 714
    :pswitch_1
    new-instance p1, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;

    invoke-direct {p1, p2, v0}, Lcom/senseonics/util/dialogs/CalibrateDialogInfo;-><init>(Lcom/senseonics/events/EventPoint;I)V

    .line 715
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragmentUI;->provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/senseonics/bluetoothle/DialogUtils;->createCalibrateDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/CalibrateDialogInfo;Lcom/senseonics/util/dialogs/NotificationDialogManager;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 708
    :pswitch_2
    new-instance p1, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;

    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->currentAep:Lcom/senseonics/events/AlertEventPoint;

    invoke-direct {p1, p2, v0}, Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 709
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/PredictiveRateAlertDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 701
    :pswitch_3
    new-instance p1, Lcom/senseonics/util/dialogs/AlertDialogInfo;

    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->currentAep:Lcom/senseonics/events/AlertEventPoint;

    invoke-direct {p1, p2, v0}, Lcom/senseonics/util/dialogs/AlertDialogInfo;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 702
    iget-object p2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/NotificationsFragmentUI;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/AlertDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
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

.method protected initView(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0902a3

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900ba

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 52
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    .line 53
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 54
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v3, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    const-string v1, "ClickMe"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 65
    invoke-super {p0, p1}, Lcom/senseonics/fragments/NotificationsFragment;->initView(Landroid/view/View;)V

    .line 67
    iget-object p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->uiTransparentButton:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/fragments/NotificationsFragmentUI$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragmentUI$1;-><init>(Lcom/senseonics/fragments/NotificationsFragmentUI;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 12

    .line 93
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0x64

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 99
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v1, 0x64

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NotificationDialogEvent;)V
    .locals 11

    .line 153
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 v1, 0x64

    .line 397
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x2a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 401
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_1
    const/16 v1, 0x64

    .line 389
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x2b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 393
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_2
    const/16 v1, 0x64

    .line 381
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x21

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 385
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x64

    .line 373
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x1d

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 377
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x64

    .line 365
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 369
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x64

    .line 357
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x1b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 361
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0x64

    .line 349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 353
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_7
    const/16 v1, 0x64

    .line 341
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x19

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 345
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x64

    .line 333
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 337
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_9
    const/16 v1, 0x64

    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 329
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_a
    const/16 v1, 0x64

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 321
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_b
    const/16 v1, 0x64

    .line 308
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 312
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0x64

    .line 300
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 304
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x64

    .line 292
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 296
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_e
    const/16 v1, 0x64

    .line 284
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 288
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_f
    const/16 v1, 0x64

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 280
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_10
    const/16 v1, 0x64

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 272
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_11
    const/16 v1, 0x64

    .line 260
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 264
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_12
    const/16 v1, 0x64

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 256
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_13
    const/16 v1, 0x64

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 248
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_14
    const/16 v1, 0x64

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 240
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_15
    const/16 v1, 0x64

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 232
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_16
    const/16 v1, 0x64

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x29

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 224
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_17
    const/16 v1, 0x64

    .line 212
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x26

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 216
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_18
    const/16 v1, 0x64

    .line 204
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x25

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 208
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_19
    const/16 v1, 0x64

    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x1e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 200
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto/16 :goto_0

    :pswitch_1a
    const/16 v1, 0x64

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x24

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 192
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :pswitch_1b
    const/16 v1, 0x64

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/16 v5, 0x22

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 184
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :pswitch_1c
    const/16 v1, 0x64

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 176
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :pswitch_1d
    const/16 v1, 0x64

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 168
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :pswitch_1e
    const/16 v1, 0x64

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 160
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 12

    .line 113
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0x64

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 119
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v1, 0x64

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 12

    .line 133
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const/16 v2, 0x64

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    .line 139
    iget p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/16 v1, 0x64

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/NotificationsFragmentUI;->createNotification(ILjava/util/Calendar;IIIZZZZZ)V

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->clickCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/senseonics/fragments/NotificationsFragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setIsBluetoothEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/model/SIGNAL_STRENGTH;->GOOD:Lcom/senseonics/model/SIGNAL_STRENGTH;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "102204"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterModelNumber(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "80535"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterSerialNumber(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "TX000123"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterName(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/senseonics/fragments/NotificationsFragmentUI;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const-string v1, "23456"

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setLinkedSensorId(Ljava/lang/String;)V

    return-void
.end method

.method public provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 727
    new-instance v0, Lcom/senseonics/fragments/NotificationsFragmentUI$2;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/NotificationsFragmentUI$2;-><init>(Lcom/senseonics/fragments/NotificationsFragmentUI;)V

    return-object v0
.end method
