.class public Lcom/senseonics/fragments/StatisticsListFragment;
.super Lcom/senseonics/fragments/BaseStatisticsFragment;
.source "StatisticsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;
    }
.end annotation


# instance fields
.field private adapter:Lcom/senseonics/util/StatisticsAdapter;

.field private listView:Landroid/widget/ListView;

.field private statistics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Statistics;",
            ">;"
        }
    .end annotation
.end field

.field private tvDateRange:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/senseonics/fragments/StatisticsListFragment;)Lcom/senseonics/util/StatisticsAdapter;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->adapter:Lcom/senseonics/util/StatisticsAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstatistics(Lcom/senseonics/fragments/StatisticsListFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsListFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->removeMealTime()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseStatisticsFragment;-><init>()V

    return-void
.end method

.method private removeMealTime()Z
    .locals 1

    .line 255
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeMealTime()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;[D)V
    .locals 9

    if-eqz p2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v8, Lcom/senseonics/util/Statistics;

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    double-to-int v3, v1

    const/4 v1, 0x1

    aget-wide v1, p2, v1

    double-to-int v4, v1

    const/4 v1, 0x2

    aget-wide v1, p2, v1

    double-to-int v5, v1

    const/4 v1, 0x4

    aget-wide v1, p2, v1

    .line 236
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;IIID)V

    .line 235
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v7, Lcom/senseonics/util/Statistics;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;IIID)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public addStatistics(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;[D)V
    .locals 9

    if-eqz p2, :cond_0

    .line 226
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v8, Lcom/senseonics/util/Statistics;

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    double-to-int v3, v1

    const/4 v1, 0x1

    aget-wide v1, p2, v1

    double-to-int v4, v1

    const/4 v1, 0x2

    aget-wide v1, p2, v1

    double-to-int v5, v1

    const/4 v1, 0x4

    aget-wide v1, p2, v1

    .line 227
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;IIID)V

    .line 226
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    new-instance v7, Lcom/senseonics/util/Statistics;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/util/Statistics;-><init>(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;IIID)V

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
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

    .line 103
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x5a

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

    const-string p1, "-90"

    goto/16 :goto_0

    .line 96
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0x1e

    .line 97
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 98
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

    .line 89
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, -0xe

    .line 90
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 91
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

    .line 83
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x7

    .line 84
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 85
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

    .line 77
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lcom/senseonics/util/Utils;->getDayStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    const/4 v1, -0x1

    .line 78
    invoke-virtual {p1, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 79
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

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->tvDateRange:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MainActivity;->getStatisticsFragment()Lcom/senseonics/fragments/StatisticsFragment;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->createProgressDialogIfNeeded()V

    .line 113
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->showProgressDialogIfNeeded()V

    .line 114
    new-instance v1, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;-><init>(Lcom/senseonics/fragments/StatisticsListFragment;Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask-IA;)V

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/senseonics/fragments/StatisticsListFragment$FetchAndDisplayListDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    return-void
.end method

.method protected getEmailBody()Ljava/lang/String;
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/StatisticsListFragment;->returnTabNameString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f6

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
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->reportTabSelectionHandler:Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ReportTabSelectionHandler;->getSelectedTab()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/StatisticsListFragment;->returnTabNameString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%d"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseStatisticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 38
    invoke-direct {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->removeMealTime()Z

    move-result p2

    if-eqz p2, :cond_0

    const p2, 0x7f0c0084

    goto :goto_0

    :cond_0
    const p2, 0x7f0c0085

    :goto_0
    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902a3

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900ee

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->contentLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f09020d

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->listView:Landroid/widget/ListView;

    const p2, 0x7f0903d2

    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f0903e7

    .line 44
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/StatisticsListFragment;->tvDateRange:Landroid/widget/TextView;

    .line 45
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 47
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p3}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f11022e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/StatisticsListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 49
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment;->initTabs(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->updateTabSelection()V

    .line 57
    new-instance p2, Lcom/senseonics/util/StatisticsAdapter;

    invoke-virtual {p0}, Lcom/senseonics/fragments/StatisticsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->statistics:Ljava/util/ArrayList;

    invoke-direct {p2, p3, v0}, Lcom/senseonics/util/StatisticsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p2, p0, Lcom/senseonics/fragments/StatisticsListFragment;->adapter:Lcom/senseonics/util/StatisticsAdapter;

    .line 58
    iget-object p3, p0, Lcom/senseonics/fragments/StatisticsListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public setSelected(ILandroid/widget/LinearLayout;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->selectedState:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsListFragment;->selectedState:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsListFragment;->generateStatistics(I)V

    .line 68
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/senseonics/fragments/BaseStatisticsFragment;->setSelected(ILandroid/widget/LinearLayout;)V

    return-void
.end method
