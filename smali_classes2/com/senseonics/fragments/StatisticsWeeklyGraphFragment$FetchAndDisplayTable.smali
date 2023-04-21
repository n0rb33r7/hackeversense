.class Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;
.super Landroid/os/AsyncTask;
.source "StatisticsWeeklyGraphFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchAndDisplayTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/senseonics/gen12androidapp/MealTimeStatistics;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;


# direct methods
.method private constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;-><init>(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 138
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/gen12androidapp/MealTimeStatistics;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 141
    aget-object v1, p1, v1

    .line 143
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {v3}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->-$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    new-instance v1, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    sget-object v5, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour0_6:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v3, v4, v5}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Ljava/util/List;

    move-result-object v5

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 147
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v6

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v7

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 148
    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v8

    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v9

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 150
    new-instance v3, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour6_12:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v4, v5, v6}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Ljava/util/List;

    move-result-object v11

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 151
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v12

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v13

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 152
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v14

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v15

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 154
    new-instance v10, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour12_18:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v4, v5, v6}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Ljava/util/List;

    move-result-object v5

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 155
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v6

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v7

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 156
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v8

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 158
    new-instance v4, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->Hour18_24:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    invoke-virtual {v5, v6, v7}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;)Ljava/util/List;

    move-result-object v12

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 159
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v13

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v14

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 160
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v15

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v16

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 161
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 166
    :cond_0
    new-instance v3, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v4, v5, v6, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 167
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v19

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v20

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 168
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v21

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v22

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v22}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 170
    new-instance v10, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    sget-object v6, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->LUNCH:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v4, v5, v6, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 171
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v6

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v7

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 172
    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v8

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 174
    new-instance v4, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget-object v7, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SNACK:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v5, v6, v7, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 175
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v13

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v14

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 176
    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v15

    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v16

    move-object v11, v4

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 178
    new-instance v5, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    sget-object v8, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->DINNER:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v6, v7, v8, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v18

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 179
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v19

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v20

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 180
    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v21

    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v22

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v22}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 182
    new-instance v6, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    iget-object v7, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    sget-object v9, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->SLEEP:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v7, v8, v9, v1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getGlucoseArrayValue(Ljava/util/Calendar;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 183
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v13

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseTarget()I

    move-result v14

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 184
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseTarget()I

    move-result v15

    iget-object v1, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v1, v1, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v16

    move-object v11, v6

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;-><init>(Ljava/util/List;IIII)V

    .line 185
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 138
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/gen12androidapp/MealTimeStatistics;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 200
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-virtual {v2}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v1, :cond_23

    .line 202
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->-$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    :goto_0
    if-ne v3, v4, :cond_23

    if-eqz v2, :cond_23

    .line 203
    iget-object v2, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v2, v2, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v3, 0x7f09009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 204
    iget-object v3, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v3, v3, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v4, 0x7f09036b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v6, 0x7f090421

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 206
    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v7, 0x7f09001a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 207
    iget-object v7, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v8, 0x7f0900ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 208
    iget-object v8, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v8, v8, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v9, 0x7f090216

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 209
    iget-object v9, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v9, v9, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v10, 0x7f0901b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 211
    iget-object v10, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v10, v10, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v11, 0x7f09009f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 212
    iget-object v11, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v11, v11, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v12, 0x7f09036d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 213
    iget-object v12, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v12, v12, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v13, 0x7f090423

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 214
    iget-object v13, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v13, v13, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v14, 0x7f09001c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 215
    iget-object v14, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v14, v14, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v15, 0x7f0900ad

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 216
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v5, 0x7f0901b5

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 217
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v16, v5

    const v5, 0x7f09021c

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 219
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v17, v5

    const v5, 0x7f0900a1

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 220
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v18, v5

    const v5, 0x7f09036f

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 221
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v19, v5

    const v5, 0x7f090425

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 222
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v20, v5

    const v5, 0x7f09001e

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 223
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v21, v5

    const v5, 0x7f0900af

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 224
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v22, v5

    const v5, 0x7f0901b7

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 225
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v23, v5

    const v5, 0x7f09021e

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 227
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v24, v5

    const v5, 0x7f09009e

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 228
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v25, v5

    const v5, 0x7f09036c

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 229
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v26, v5

    const v5, 0x7f090422

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 230
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v27, v5

    const v5, 0x7f09001b

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 231
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v28, v5

    const v5, 0x7f0900ac

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 232
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    move-object/from16 v29, v5

    const v5, 0x7f090217

    invoke-virtual {v15, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 233
    iget-object v15, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v15, v15, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v0, 0x7f0901b2

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v15, 0x0

    .line 235
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    const/4 v15, 0x1

    .line 236
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    const/4 v15, 0x2

    .line 237
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    move-object/from16 v33, v0

    const/4 v0, 0x3

    .line 238
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    .line 240
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v34

    const/high16 v35, -0x40800000    # -1.0f

    cmpl-float v34, v34, v35

    if-eqz v34, :cond_1

    .line 241
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_1
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v1

    cmpl-float v1, v1, v35

    const-string v2, "%.1f"

    if-eqz v1, :cond_2

    .line 243
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v36, v0

    move-object/from16 v34, v5

    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/16 v31, 0x0

    aput-object v5, v0, v31

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move-object/from16 v36, v0

    move-object/from16 v34, v5

    .line 244
    :goto_1
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v0

    cmpl-float v0, v0, v35

    const-string v1, "%"

    const-string v3, "%.0f"

    if-eqz v0, :cond_3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v38, v14

    move-object/from16 v37, v15

    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v31, 0x0

    aput-object v15, v14, v31

    invoke-static {v5, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    move-object/from16 v38, v14

    move-object/from16 v37, v15

    .line 246
    :goto_2
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-static {v4, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_4
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_5

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v6, v14

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_5
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_6

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_6
    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_7

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :cond_7
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_8

    .line 256
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_8
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_9

    .line 258
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_9
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_a

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_a
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_b

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_b
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_c

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, v38

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_c
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_d

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v17

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :cond_d
    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_e

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v16

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_e
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_f

    .line 271
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_f
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_10

    .line 273
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v19

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    :cond_10
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_11

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_11
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_12

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v21

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_12
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_13

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    :cond_13
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_14

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v24

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_14
    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_15

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v37 .. v37}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_15
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_16

    .line 286
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_16
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_17

    .line 288
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_17
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_18

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v27

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    :cond_18
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_19

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v28

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_19
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_1a

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v29

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_1a
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_1b

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v34

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :cond_1b
    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v0

    cmpl-float v0, v0, v35

    if-eqz v0, :cond_1c

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual/range {v36 .. v36}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v33

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    move-object/from16 v0, p0

    .line 300
    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    invoke-static {v4}, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->-$$Nest$mremoveMealTime(Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 301
    iget-object v4, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v4, v4, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v5, 0x7f0900a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 302
    iget-object v5, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v5, v5, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v6, 0x7f09036e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 303
    iget-object v6, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v6, v6, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v7, 0x7f090424

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 304
    iget-object v7, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v7, v7, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v8, 0x7f09001d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 305
    iget-object v8, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v8, v8, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v9, 0x7f0900ae

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 306
    iget-object v9, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v9, v9, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v10, 0x7f09021d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 307
    iget-object v10, v0, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment$FetchAndDisplayTable;->this$0:Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;

    iget-object v10, v10, Lcom/senseonics/fragments/StatisticsWeeklyGraphFragment;->view:Landroid/view/View;

    const v11, 0x7f0901b6

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    move-object/from16 v11, p1

    const/4 v12, 0x4

    .line 308
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/senseonics/gen12androidapp/MealTimeStatistics;

    .line 309
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v12

    cmpl-float v12, v12, v35

    if-eqz v12, :cond_1d

    .line 310
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getAverage()F

    move-result v12

    invoke-static {v12}, Lcom/senseonics/util/Utils;->getGlucoseLevelValueNoDecs(F)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :cond_1d
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v4

    cmpl-float v4, v4, v35

    if-eqz v4, :cond_1e

    .line 312
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getFirstStdDev()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-static {v4, v2, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_1e
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v2

    cmpl-float v2, v2, v35

    if-eqz v2, :cond_1f

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentWithin()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v4, v3, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_1f
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v2

    cmpl-float v2, v2, v35

    if-eqz v2, :cond_20

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v6, v12

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_20
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v2

    cmpl-float v2, v2, v35

    if-eqz v2, :cond_21

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowTarget()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_21
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v2

    cmpl-float v2, v2, v35

    if-eqz v2, :cond_22

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentBelowLow()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_22
    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v2

    cmpl-float v2, v2, v35

    if-eqz v2, :cond_23

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v11}, Lcom/senseonics/gen12androidapp/MealTimeStatistics;->getPercentAboveHigh()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_23
    return-void
.end method
