.class public Lcom/senseonics/fragments/StatisticsPieChartFragment;
.super Lcom/senseonics/fragments/BaseStatisticsFragment;
.source "StatisticsPieChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;
    }
.end annotation


# instance fields
.field private chartSize:I

.field private colors:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private paddingHorizontal:I

.field private pieChartLayout:Landroid/widget/RelativeLayout;

.field private rectf:Landroid/graphics/RectF;

.field private tvDateRange:Landroid/widget/TextView;

.field private types:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;-><init>()V

    return-void
.end method

.method private calculatePercentBase([I)[I
    .locals 9

    .line 253
    array-length v0, p1

    new-array v0, v0, [I

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    .line 256
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_0

    .line 257
    aget v7, p1, v4

    int-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 261
    :goto_1
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 262
    aget v7, p1, v4

    mul-int/lit8 v7, v7, 0x64

    int-to-double v7, v7

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v7, v7

    aput v7, v0, v4

    .line 263
    aget v7, v0, v4

    int-to-double v7, v7

    add-double/2addr v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double p1, v1, v4

    if-eqz p1, :cond_2

    .line 268
    aget p1, v0, v3

    int-to-double v6, p1

    sub-double/2addr v4, v1

    add-double/2addr v6, v4

    double-to-int p1, v6

    aput p1, v0, v3

    :cond_2
    return-object v0
.end method

.method private getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;
    .locals 1

    .line 286
    sget-object v0, Lcom/senseonics/fragments/StatisticsPieChartFragment$1;->$SwitchMap$com$senseonics$util$Utils$STATISTIC_TYPE2:[I

    invoke-virtual {p2}, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const-string p1, " "

    return-object p1

    :cond_0
    const p2, 0x7f110361

    .line 292
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p2, 0x7f11003b

    .line 290
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p2, 0x7f11001d

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private timesData([II)[I
    .locals 5

    .line 239
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 241
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    .line 242
    aget v4, p1, v2

    mul-int/2addr v4, p2

    div-int/lit8 v4, v4, 0x64

    aput v4, v0, v2

    .line 243
    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eq v3, p2, :cond_1

    .line 247
    aget p1, v0, v1

    sub-int/2addr p2, v3

    add-int/2addr p1, p2

    aput p1, v0, v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addListItem(Landroid/widget/LinearLayout;ILjava/lang/String;I)V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->inflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->inflater:Landroid/view/LayoutInflater;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00fc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903fa

    .line 226
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 227
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0902d3

    .line 229
    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, " %"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public generateStatistics(I)V
    .locals 7

    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, ")"

    const-string v3, " - "

    const-string v4, "("

    const/4 v5, 0x6

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v6, 0x2

    if-eq p1, v6, :cond_2

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    move-object p1, v1

    goto/16 :goto_0

    .line 121
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x5a

    .line 122
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "-90"

    goto/16 :goto_0

    .line 115
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x1e

    .line 116
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "-30"

    goto/16 :goto_0

    .line 109
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0xe

    .line 110
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "-14"

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x7

    .line 104
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "-7"

    goto :goto_0

    .line 97
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x1

    .line 98
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "-1"

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->tvDateRange:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->createProgressDialogIfNeeded()V

    .line 131
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->showProgressDialogIfNeeded()V

    .line 132
    new-instance v1, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;-><init>(Lcom/senseonics/fragments/StatisticsPieChartFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask-IA;)V

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment$FetchAndDisplayPieChartDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    return-void
.end method

.method protected getEmailBody()Ljava/lang/String;
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->returnTabNameString(I)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%d"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEmailTitle()Ljava/lang/String;
    .locals 2

    .line 276
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseStatisticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0083

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902a3

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900ee

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0902dc

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0903d2

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0903e7

    .line 51
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->tvDateRange:Landroid/widget/TextView;

    .line 52
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p3, v2, v0

    const p3, 0x7f110132

    .line 55
    invoke-virtual {p0, p3, v2}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 56
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    sget p2, Lcom/senseonics/util/Utils;->screenWidth:I

    int-to-double p2, p2

    const-wide v2, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr p2, v2

    double-to-int p2, p2

    .line 61
    iput p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    .line 63
    iput v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    .line 64
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    int-to-float v2, p3

    int-to-float v3, p3

    iget v4, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    add-int v5, p3, v4

    int-to-float v5, v5

    add-int/2addr p3, v4

    int-to-float p3, p3

    invoke-direct {p2, v2, v3, v5, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->rectf:Landroid/graphics/RectF;

    const/4 p2, 0x3

    new-array p3, p2, [I

    .line 67
    iput-object p3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    .line 68
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060078

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, p3, v0

    .line 69
    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f060070

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, p3, v1

    .line 70
    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f06006b

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, p3, v3

    new-array p2, p2, [Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    sget-object v2, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->ABOVE_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-direct {p0, p3, v2}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    .line 74
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->BELOW_TARGET_LEVEL:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-direct {p0, p3, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v1

    .line 75
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    sget-object v0, Lcom/senseonics/util/Utils$STATISTIC_TYPE2;->WITHIN_TARGET_LEVELS:Lcom/senseonics/util/Utils$STATISTIC_TYPE2;

    invoke-direct {p0, p3, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->getLegendText(Landroid/content/Context;Lcom/senseonics/util/Utils$STATISTIC_TYPE2;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v3

    .line 77
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->initTabs(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->updateTabSelection()V

    return-object p1
.end method

.method public refreshContent([ILandroid/content/Context;)V
    .locals 6

    .line 191
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 193
    array-length v0, p1

    new-array v0, v0, [I

    .line 194
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->calculatePercentBase([I)[I

    move-result-object p1

    const/16 v0, 0x168

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->timesData([II)[I

    move-result-object v0

    .line 197
    new-instance v1, Lcom/senseonics/util/PieChart;

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->rectf:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    invoke-direct {v1, p2, v2, v3, v0}, Lcom/senseonics/util/PieChart;-><init>(Landroid/content/Context;Landroid/graphics/RectF;[I[I)V

    .line 198
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 200
    invoke-virtual {v1, v2}, Lcom/senseonics/util/PieChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 206
    iget v2, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->paddingHorizontal:I

    iget v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->chartSize:I

    add-int/2addr v2, v3

    div-int/lit8 v3, v3, 0xa

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 208
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p2, 0x7f080159

    .line 209
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 p2, 0x1

    .line 210
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x0

    .line 211
    :goto_0
    array-length v3, v0

    if-ge p2, v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->colors:[I

    aget v3, v3, p2

    iget-object v4, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->types:[Ljava/lang/String;

    aget-object v4, v4, p2

    aget v5, p1, p2

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->addListItem(Landroid/widget/LinearLayout;ILjava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 216
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->pieChartLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setSelected(ILandroid/widget/LinearLayout;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->selectedState:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsPieChartFragment;->selectedState:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsPieChartFragment;->generateStatistics(I)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
