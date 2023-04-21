.class public Lcom/senseonics/util/StatisticsAdapter;
.super Landroid/widget/BaseAdapter;
.source "StatisticsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/util/StatisticsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private grayColor:I

.field private inflater:Landroid/view/LayoutInflater;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Statistics;",
            ">;"
        }
    .end annotation
.end field

.field private whiteColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Statistics;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 25
    iput-object p2, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060064

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/util/StatisticsAdapter;->grayColor:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106000d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/util/StatisticsAdapter;->whiteColor:I

    return-void
.end method

.method private removeMealTime()Z
    .locals 1

    .line 112
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeMealTime()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_1

    .line 53
    new-instance p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;-><init>(Lcom/senseonics/util/StatisticsAdapter;Lcom/senseonics/util/StatisticsAdapter$ViewHolder-IA;)V

    .line 54
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/senseonics/util/StatisticsAdapter;->removeMealTime()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c010b

    goto :goto_0

    :cond_0
    const v1, 0x7f0c010c

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f09035f

    .line 55
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->startTextView:Landroid/widget/TextView;

    const v0, 0x7f09009c

    .line 56
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->avgTextView:Landroid/widget/TextView;

    const v0, 0x7f090212

    .line 57
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->lowTextView:Landroid/widget/TextView;

    const v0, 0x7f0901ab

    .line 58
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->highTextView:Landroid/widget/TextView;

    const v0, 0x7f0900f7

    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, p3

    move-object p3, p2

    move-object p2, v5

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;

    .line 65
    :goto_1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    .line 66
    iget v0, p0, Lcom/senseonics/util/StatisticsAdapter;->whiteColor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 68
    :cond_2
    iget v0, p0, Lcom/senseonics/util/StatisticsAdapter;->grayColor:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    :goto_2
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/senseonics/util/Statistics;

    .line 72
    invoke-direct {p0}, Lcom/senseonics/util/StatisticsAdapter;->removeMealTime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getTimeRange()Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getTimeRangeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getMealType()Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getMealTimeString(Landroid/content/Context;Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_3
    iget-object v1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->startTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getAverage()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f110220

    if-eq v0, v1, :cond_4

    .line 79
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v3, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->avgTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 82
    :cond_4
    iget-object v0, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->avgTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :goto_4
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getLow()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 86
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v3, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->lowTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 89
    :cond_5
    iget-object v0, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->lowTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_5
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getHigh()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 93
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->highTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 96
    :cond_6
    iget-object v0, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->highTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_6
    invoke-virtual {p1}, Lcom/senseonics/util/Statistics;->getCount()D

    move-result-wide v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v3

    if-eqz p1, :cond_7

    .line 100
    iget-object p1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    double-to-float p3, v0

    invoke-static {p3}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(F)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 102
    :cond_7
    iget-object p1, p3, Lcom/senseonics/util/StatisticsAdapter$ViewHolder;->countTextView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/senseonics/util/StatisticsAdapter;->context:Landroid/content/Context;

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-object p2
.end method
