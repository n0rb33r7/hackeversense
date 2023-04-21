.class public Lcom/senseonics/fragments/PopupGraphManagerView;
.super Landroid/widget/RelativeLayout;
.source "PopupGraphManagerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c008a

    .line 36
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private setDashTextBold(Landroid/widget/TextView;)V
    .locals 2

    .line 268
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public putEventPopUp(FLcom/senseonics/events/EventPoint;II)V
    .locals 14

    .line 148
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v0

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v0, v1, :cond_0

    .line 149
    sget-object v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v0

    .line 151
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 155
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/senseonics/fragments/PopupGraphManagerView$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const v1, 0x106000b

    const v2, 0x7f0801ca

    const v5, 0x7f080061

    const v6, 0x7f08005d

    const-string v7, " "

    const-string v8, ":"

    const v9, 0x7f060074

    const v10, 0x106000c

    const v11, 0x7f060022

    const v12, 0x7f060073

    const-string v13, ""

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    move v9, v0

    move v8, v1

    move-object v5, v7

    move v7, v10

    goto/16 :goto_5

    .line 248
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/senseonics/events/ExerciseEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/senseonics/events/EventUtils;->getExerciseIntensityName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/senseonics/events/ExerciseEventPoint;->getDurationText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800f7

    goto/16 :goto_1

    .line 241
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/senseonics/events/HealthEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/senseonics/events/EventUtils;->getHealthConditionName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/events/EventUtils;->getHealthSeverityName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800fd

    goto/16 :goto_1

    .line 233
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/senseonics/events/InsulinEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/senseonics/events/EventUtils;->getInsulinTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$INSULIN_TYPE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f11033e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800ff

    goto :goto_1

    .line 226
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p2

    check-cast v2, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f11013b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080101

    :goto_1
    move-object v5, v0

    move-object v6, v1

    move v9, v2

    move v8, v11

    move v7, v12

    goto/16 :goto_6

    .line 220
    :pswitch_4
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800f9

    goto/16 :goto_4

    :pswitch_5
    const v0, 0x7f060070

    .line 212
    move-object/from16 v5, p2

    check-cast v5, Lcom/senseonics/events/AlertEventPoint;

    .line 213
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v5

    move v8, v0

    move v7, v1

    move v9, v2

    goto/16 :goto_5

    .line 200
    :pswitch_6
    move-object/from16 v0, p2

    check-cast v0, Lcom/senseonics/events/AlertEventPoint;

    .line 201
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v8, v9

    move v7, v10

    move-object v6, v13

    move v9, v2

    goto :goto_6

    .line 190
    :pswitch_7
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110273

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 183
    :pswitch_8
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 175
    :pswitch_9
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110254

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    move v8, v9

    move v7, v10

    move-object v6, v13

    move v9, v5

    move-object v5, v0

    goto :goto_6

    .line 168
    :pswitch_a
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110258

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v5, v0

    move v8, v9

    move v7, v10

    move v9, v6

    goto :goto_5

    .line 162
    :pswitch_b
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static/range {p2 .. p2}, Lcom/senseonics/util/Utils;->getEventImageResId(Lcom/senseonics/events/EventPoint;)I

    move-result v1

    :goto_4
    move-object v5, v0

    move v9, v1

    move v8, v11

    move v7, v12

    :goto_5
    move-object v6, v13

    :goto_6
    move-object v1, p0

    move v2, p1

    move/from16 v10, p3

    move/from16 v11, p4

    .line 262
    invoke-virtual/range {v1 .. v11}, Lcom/senseonics/fragments/PopupGraphManagerView;->putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public putGlucosePopUp(FLcom/senseonics/graph/util/Glucose;IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 13

    move-object/from16 v0, p5

    .line 112
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v9

    .line 115
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 116
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 117
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, " "

    :goto_0
    move-object v6, v1

    .line 125
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getNotificationIconForGlucose(I)I

    move-result v10

    .line 127
    invoke-virtual {p2}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v8

    const-string v7, ""

    move-object v2, p0

    move v3, p1

    move/from16 v11, p3

    move/from16 v12, p4

    .line 128
    invoke-virtual/range {v2 .. v12}, Lcom/senseonics/fragments/PopupGraphManagerView;->putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method public putNoSensorGlucosePopUp(FII)V
    .locals 11

    .line 133
    sget-object v2, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11021a

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    const-string v5, ""

    const v6, 0x7f060021

    const v7, 0x106000b

    const/4 v8, -0x1

    move-object v0, p0

    move v1, p1

    move v9, p2

    move v10, p3

    .line 142
    invoke-virtual/range {v0 .. v10}, Lcom/senseonics/fragments/PopupGraphManagerView;->putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method

.method putPopUp(FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p10

    add-int v6, v4, v5

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", my: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", alert: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", arrowSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PopupGraphManagerView"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x1

    invoke-direct {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    invoke-virtual {v0, v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f090199

    .line 51
    invoke-virtual {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v7, p2

    .line 52
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f060021

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    invoke-direct {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->setDashTextBold(Landroid/widget/TextView;)V

    const v6, 0x7f0903c7

    .line 57
    invoke-virtual {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v7, p3

    .line 58
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090198

    .line 61
    invoke-virtual {v0, v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v7, 0x7f0902df

    .line 66
    invoke-virtual {v0, v7}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f0902a9

    .line 69
    invoke-virtual {v0, v6}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 71
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    sget-object v10, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v11, 0x2

    new-array v12, v11, [I

    const/4 v13, 0x0

    aput v8, v12, v13

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    aput v14, v12, v15

    invoke-direct {v9, v10, v12}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v10, 0x0

    .line 79
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 80
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v7, 0x7f0901cb

    .line 82
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/16 v9, 0x8

    if-eq v3, v8, :cond_0

    .line 84
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const v3, 0x7f0903af

    .line 92
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v7, p4

    .line 94
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090413

    .line 96
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v1, p5

    .line 98
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v0, v13}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    const v1, 0x7f0902e1

    .line 101
    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/senseonics/view/Arrow;

    .line 102
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    div-int/lit8 v4, v5, 0x2

    int-to-float v4, v4

    sub-float v4, p1, v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/senseonics/view/Arrow;->setBackgroundColor(I)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/senseonics/fragments/PopupGraphManagerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/senseonics/view/Arrow;->setTriangleColor(I)V

    .line 107
    invoke-virtual {v1, v3}, Lcom/senseonics/view/Arrow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
