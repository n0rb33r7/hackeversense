.class Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;
.super Landroid/os/AsyncTask;
.source "StatisticsWeeklyGraphFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidDataCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/senseonics/graph/util/WeeklyStatValue;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 77
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/WeeklyStatValue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    aget-object p1, p1, v0

    .line 82
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->-$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {p1, v0, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {p1, v0, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {p1, v0, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {p1, v0, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2, v0, v3, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2, v0, v3, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2, v0, v3, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2, v0, v3, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    sget-object v3, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v2, v0, v3, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getWeeklyStatValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Lcom/senseonics/graph/util/WeeklyStatValue;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 77
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/WeeklyStatValue;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {v0}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->-$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/graph/util/WeeklyStatValue;

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v3}, Lcom/senseonics/graph/util/WeeklyStatValue;->getAvg()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    const-string v3, "weekly debug"

    if-eqz v2, :cond_3

    const-string v2, "there is data"

    .line 119
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 121
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object p1, p1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    new-instance p1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable-IA;)V

    new-array v2, v4, [Landroid/content/Context;

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    new-instance p1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;

    iget-object v2, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p1, v2, v3}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph-IA;)V

    new-array v2, v4, [Landroid/content/Context;

    aput-object v0, v2, v1

    invoke-virtual {p1, v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayGraph;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_3
    const-string v0, "there is no data"

    .line 126
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->noStatisticsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v0, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->dismissProgressDialogIfNeeded()V

    goto :goto_2

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$ValidDataCheckTask;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->dismissProgressDialogIfNeeded()V

    :goto_2
    return-void
.end method
