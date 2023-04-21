.class public Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "LandscapeGraphViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$LandscapeLineScrollManager;
    }
.end annotation


# instance fields
.field emailer:Lcom/senseonics/util/Emailer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private endDate:Ljava/util/Calendar;

.field private graphView:Lcom/jjoe64/graphview/LineGraphView;

.field intentUtils:Lcom/senseonics/util/IntentUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field layout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a1
    .end annotation
.end field

.field progressBar:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e6
    .end annotation
.end field

.field shareImageButton:Landroid/widget/ImageButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09033a
    .end annotation
.end field

.field spinner:Landroid/widget/Spinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090355
    .end annotation
.end field

.field private startDate:Ljava/util/Calendar;

.field title:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cf
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetendDate(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Lcom/jjoe64/graphview/LineGraphView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartDate(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputgraphView(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;Lcom/jjoe64/graphview/LineGraphView;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    return-void
.end method

.method static bridge synthetic -$$Nest$moneThirdMyHeight(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->oneThirdMyHeight()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mputDataInGraph(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->putDataInGraph()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDateInTitle(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->setDateInTitle()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private addGraph()V
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->updateStartAndEndDates()V

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v1, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$4;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private getSelectedDays()I
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private oneThirdMyHeight()I
    .locals 1

    const v0, 0x1020002

    .line 156
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private putDataInGraph()V
    .locals 4

    .line 171
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->updateStartAndEndDates()V

    .line 172
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->intentUtils:Lcom/senseonics/util/IntentUtils;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/senseonics/util/IntentUtils;->refreshGraphFromCache(Ljava/util/Calendar;Ljava/util/Calendar;Z)V

    .line 173
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setDateInTitle()V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStartAndEndDates()V
    .locals 3

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    .line 162
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getSelectedDays()I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    mul-int/lit8 v0, v0, -0x1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008c

    .line 58
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->setContentView(I)V

    .line 59
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    const p1, 0x7f0903d5

    .line 61
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$1;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901fc

    .line 69
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    .line 71
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->shareImageButton:Landroid/widget/ImageButton;

    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$2;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->spinner:Landroid/widget/Spinner;

    new-instance v0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity$3;-><init>(Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->addGraph()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/graph/events/GraphCacheEvent;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/LineGraphView;->removeAllSeries()V

    .line 179
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/jjoe64/graphview/LineGraphView;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 180
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->setStartDate(Ljava/util/Calendar;)V

    .line 181
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->setEndDate(Ljava/util/Calendar;)V

    .line 182
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/LineGraphView;->removeAllSeries()V

    .line 183
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object v1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->glucoseValues:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/LineGraphView;->addSeries(Ljava/util/List;)V

    .line 184
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->getSelectedDays()I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->graphView:Lcom/jjoe64/graphview/LineGraphView;

    iget-object p1, p1, Lcom/senseonics/graph/events/GraphCacheEvent;->events:Ljava/util/List;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->startDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, v1, v2}, Lcom/jjoe64/graphview/LineGraphView;->setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 98
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->putDataInGraph()V

    .line 100
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/LandscapeGraphViewActivity;->setDateInTitle()V

    return-void
.end method
