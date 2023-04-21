.class public Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
.super Lcom/senseonics/fragments/BaseStatisticsFragment;
.source "StatisticsWeeklyGraphFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;,
        Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;,
        Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;
    }
.end annotation


# instance fields
.field view:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->removeMealTime()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;-><init>()V

    return-void
.end method

.method private removeMealTime()Z
    .locals 1

    .line 471
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeMealTime()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getEmailBody()Ljava/lang/String;
    .locals 2

    .line 467
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmailTitle()Ljava/lang/String;
    .locals 2

    .line 462
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 376
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 377
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 378
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 379
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, -0x7

    .line 380
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 381
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v0, "-7"

    invoke-virtual {p1, p2, v0, p3}, Lcom/senseonics/db/DatabaseManager;->getGlucoseArrayBetweenForReport(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 366
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 367
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 368
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 369
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, -0x7

    .line 370
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 371
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v0, "-7"

    invoke-virtual {p1, p2, v0}, Lcom/senseonics/db/DatabaseManager;->getGlucoseArrayBetweenForReport(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getWeeklyStatValue(Ljava/util/Calendar;I)Lcom/senseonics/graph/util/WeeklyStatValue;
    .locals 5

    .line 436
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 437
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 438
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 439
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, -0x7

    .line 440
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 442
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v0, "-7"

    invoke-virtual {p1, p2, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(ILjava/lang/String;)[I

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 446
    aget v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 450
    aget v1, p1, v1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 455
    aget p2, p1, p2

    .line 457
    :cond_2
    new-instance p1, Lcom/senseonics/graph/util/WeeklyStatValue;

    invoke-direct {p1, v0, v1, p2}, Lcom/senseonics/graph/util/WeeklyStatValue;-><init>(III)V

    return-object p1
.end method

.method public getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Lcom/senseonics/graph/util/WeeklyStatValue;
    .locals 5

    .line 411
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 412
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 413
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 414
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, -0x7

    .line 415
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 417
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v0, "-7"

    invoke-virtual {p1, p2, v0, p3}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 421
    aget-wide v2, p1, p2

    double-to-int p3, v2

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 425
    aget-wide v0, p1, v1

    double-to-int v0, v0

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 430
    aget-wide v1, p1, p2

    double-to-int p2, v1

    .line 432
    :cond_2
    new-instance p1, Lcom/senseonics/graph/util/WeeklyStatValue;

    invoke-direct {p1, p3, v0, p2}, Lcom/senseonics/graph/util/WeeklyStatValue;-><init>(III)V

    return-object p1
.end method

.method public getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Lcom/senseonics/graph/util/WeeklyStatValue;
    .locals 5

    .line 386
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 387
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 388
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 389
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, -0x7

    .line 390
    invoke-virtual {p1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 392
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const-string v0, "-7"

    invoke-virtual {p1, p2, v0}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)[D

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 396
    aget-wide v2, p1, p2

    double-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 400
    aget-wide v1, p1, v1

    double-to-int v1, v1

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    if-eqz p1, :cond_2

    const/4 p2, 0x2

    .line 405
    aget-wide v2, p1, p2

    double-to-int p2, v2

    .line 407
    :cond_2
    new-instance p1, Lcom/senseonics/graph/util/WeeklyStatValue;

    invoke-direct {p1, v0, v1, p2}, Lcom/senseonics/graph/util/WeeklyStatValue;-><init>(III)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseStatisticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->removeMealTime()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f0c0086

    goto :goto_0

    :cond_0
    const p3, 0x7f0c0087

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const p2, 0x7f0902a3

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    .line 44
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const p2, 0x7f0900ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    .line 46
    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->removeMealTime()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0903f5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget-object p3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-static {p2, p3, v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getTimeRangeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0903f8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget-object p3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-static {p2, p3, v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getTimeRangeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0903f6

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget-object p3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-static {p2, p3, v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getTimeRangeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0903f7

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    sget-object p3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-static {p2, p3, v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getTimeRangeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const p2, 0x7f0903e7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 54
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-static {p2}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p2

    const/4 p3, 0x6

    const/4 v1, -0x7

    .line 57
    invoke-virtual {p2, p3, v1}, Ljava/util/Calendar;->add(II)V

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-static {p3}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const p2, 0x7f0903d2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f11035c

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 63
    invoke-virtual {p0, p3, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 67
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    move-object p2, p1

    check-cast p2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {p2}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->createProgressDialogIfNeeded()V

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->showProgressDialogIfNeeded()V

    .line 71
    new-instance p2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask-IA;)V

    new-array p3, v1, [Landroid/content/Context;

    aput-object p1, p3, v0

    invoke-virtual {p2, p3}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    :cond_2
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    return-object p1
.end method
