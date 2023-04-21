.class Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;
.super Landroidx/legacy/app/FragmentPagerAdapter;
.source "StatisticsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsFragment;


# direct methods
.method public constructor <init>(Lcom/senseonics/fragments/StatisticsFragment;Landroid/app/FragmentManager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    .line 155
    invoke-direct {p0, p2}, Landroidx/legacy/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 156
    new-instance p2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;-><init>()V

    invoke-static {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->-$$Nest$fputstatisticsWeeklyGraphFragment(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V

    .line 157
    new-instance p2, Lcom/senseonics/fragments/StatisticsPieChartFragment;

    invoke-direct {p2}, Lcom/senseonics/fragments/StatisticsPieChartFragment;-><init>()V

    invoke-static {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->-$$Nest$fputstatisticsChartFragment(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsPieChartFragment;)V

    .line 158
    new-instance p2, Lcom/senseonics/fragments/StatisticsListFragment;

    invoke-direct {p2}, Lcom/senseonics/fragments/StatisticsListFragment;-><init>()V

    invoke-static {p1, p2}, Lcom/senseonics/fragments/StatisticsFragment;->-$$Nest$fputstatisticsListFragment(Lcom/senseonics/fragments/StatisticsFragment;Lcom/senseonics/fragments/StatisticsListFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/app/Fragment;
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->getItem(I)Lcom/senseonics/fragments/BaseStatisticsFragment;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lcom/senseonics/fragments/BaseStatisticsFragment;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsFragment;->-$$Nest$fgetstatisticsListFragment(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsListFragment;

    move-result-object p1

    return-object p1

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsFragment;->-$$Nest$fgetstatisticsChartFragment(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsPieChartFragment;

    move-result-object p1

    return-object p1

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsFragment$MyPagerAdapter;->this$0:Lcom/senseonics/fragments/StatisticsFragment;

    invoke-static {p1}, Lcom/senseonics/fragments/StatisticsFragment;->-$$Nest$fgetstatisticsWeeklyGraphFragment(Lcom/senseonics/fragments/StatisticsFragment;)Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    move-result-object p1

    return-object p1
.end method
