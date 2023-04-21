.class public abstract Lcom/jjoe64/graphview/Graph;
.super Landroid/widget/LinearLayout;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jjoe64/graphview/Graph$EventGroup;,
        Lcom/jjoe64/graphview/Graph$ScaleManager;,
        Lcom/jjoe64/graphview/Graph$GlucoseSection;,
        Lcom/jjoe64/graphview/Graph$LegendAlign;,
        Lcom/jjoe64/graphview/Graph$GraphViewData;,
        Lcom/jjoe64/graphview/Graph$GraphViewContentView;,
        Lcom/jjoe64/graphview/Graph$GraphViewConfig;
    }
.end annotation


# instance fields
.field protected bottomPositionY:F

.field private currentDayType:Lcom/senseonics/graph/GraphView$DAY_TYPE;

.field private customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

.field private dashSize:I

.field private dashedLinePaint:Landroid/graphics/Paint;

.field private disableTouch:Z

.field private endDate:Ljava/util/Calendar;

.field protected eventGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$EventGroup;",
            ">;"
        }
    .end annotation
.end field

.field private eventPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field

.field protected eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

.field protected glucosePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;"
        }
    .end annotation
.end field

.field private final graphSeries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jjoe64/graphview/GraphViewSeries;",
            ">;"
        }
    .end annotation
.end field

.field private final graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

.field protected graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

.field protected graphwidth:F

.field private isLandscape:Z

.field private legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

.field private manager:Lcom/senseonics/graph/GraphView$ScrollManager;

.field private manualMinYValue:D

.field private manualYAxis:Z

.field private final numberformatter:[Ljava/text/NumberFormat;

.field private paddingTop:I

.field protected final paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/Rect;

.field private scalable:Z

.field private scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

.field private scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

.field private scrollable:Z

.field protected scrollableGraph:Z

.field private showLegend:Z

.field private startDate:Ljava/util/Calendar;

.field private textRect:Landroid/graphics/Rect;

.field private verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

.field private viewportStart:D


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->currentDayType:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgraphSeries(Lcom/jjoe64/graphview/Graph;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I
    .locals 0

    iget p0, p0, Lcom/jjoe64/graphview/Graph;->paddingTop:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpath(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscalable(Lcom/jjoe64/graphview/Graph;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jjoe64/graphview/Graph;->scalable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleDetector(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscaleManager(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/Graph$ScaleManager;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextRect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->textRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D
    .locals 2

    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputcurrentDayType(Lcom/jjoe64/graphview/Graph;Lcom/senseonics/graph/GraphView$DAY_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->currentDayType:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmanager(Lcom/jjoe64/graphview/Graph;Lcom/senseonics/graph/GraphView$ScrollManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputviewportStart(Lcom/jjoe64/graphview/Graph;D)V
    .locals 0

    iput-wide p1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetValues(Lcom/jjoe64/graphview/Graph;I)[Lcom/jjoe64/graphview/GraphViewDataInterface;
    .locals 0

    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/Graph;->getValues(I)[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;IIIZZ)V
    .locals 5

    .line 1080
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 92
    iput-boolean p2, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    .line 1048
    iput-boolean p2, p0, Lcom/jjoe64/graphview/Graph;->isLandscape:Z

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/text/NumberFormat;

    .line 1053
    iput-object v1, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    .line 1055
    iput-boolean p2, p0, Lcom/jjoe64/graphview/Graph;->showLegend:Z

    .line 1056
    sget-object v1, Lcom/jjoe64/graphview/Graph$LegendAlign;->MIDDLE:Lcom/jjoe64/graphview/Graph$LegendAlign;

    iput-object v1, p0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    .line 1081
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1083
    invoke-virtual {p0, v1}, Lcom/jjoe64/graphview/Graph;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1085
    iput-boolean p8, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    .line 1087
    new-instance p8, Landroid/graphics/Path;

    invoke-direct {p8}, Landroid/graphics/Path;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->path:Landroid/graphics/Path;

    .line 1090
    sget p8, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 p8, p8, 0x19

    .line 1092
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    const/16 v3, 0x258

    if-le v1, v3, :cond_0

    const/4 v1, 0x3

    .line 1093
    iput v1, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    .line 1094
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v1, v1, 0xf

    goto :goto_0

    .line 1096
    :cond_0
    iput v0, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    .line 1097
    sget v1, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v1, v1, 0xa

    .line 1099
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, p8

    invoke-direct {v3, p2, p7, v1, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/jjoe64/graphview/Graph;->textRect:Landroid/graphics/Rect;

    .line 1101
    new-instance p8, Landroid/graphics/Paint;

    invoke-direct {p8}, Landroid/graphics/Paint;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    .line 1102
    invoke-virtual {p8, v1, p2, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1103
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1104
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    new-array v0, v0, [F

    iget v3, p0, Lcom/jjoe64/graphview/Graph;->dashSize:I

    int-to-float v4, v3

    aput v4, v0, p2

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v0, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p8, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1106
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1107
    iget-object p8, p0, Lcom/jjoe64/graphview/Graph;->dashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1110
    new-instance p8, Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-direct {p8}, Lcom/jjoe64/graphview/GraphViewStyle;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    .line 1111
    invoke-virtual {p8, p1}, Lcom/jjoe64/graphview/GraphViewStyle;->useTextColorFromTheme(Landroid/content/Context;)V

    .line 1113
    new-instance p8, Landroid/graphics/Paint;

    invoke-direct {p8}, Landroid/graphics/Paint;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    .line 1114
    invoke-virtual {p8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1115
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    .line 1117
    iput-object p3, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    .line 1118
    iput-object p4, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    .line 1120
    iput p7, p0, Lcom/jjoe64/graphview/Graph;->paddingTop:I

    .line 1122
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p2, p7, p6, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1124
    sget p2, Lcom/senseonics/util/Utils;->GRAPH_GLUCOSE_MIN:I

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {p2, p3}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p2

    iput p2, p0, Lcom/jjoe64/graphview/Graph;->bottomPositionY:F

    .line 1127
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->glucosePoints:Ljava/util/List;

    .line 1129
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    .line 1130
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    .line 1132
    new-instance p2, Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-direct {p2, p0, p1, p9}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;-><init>(Lcom/jjoe64/graphview/Graph;Landroid/content/Context;Z)V

    iput-object p2, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    .line 1135
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p1}, Lcom/jjoe64/graphview/Graph;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getValues(I)[Lcom/jjoe64/graphview/GraphViewDataInterface;
    .locals 9

    .line 1141
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object p1, p1, Lcom/jjoe64/graphview/GraphViewSeries;->values:[Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 1142
    monitor-enter p1

    .line 1143
    :try_start_0
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    if-nez v0, :cond_0

    .line 1144
    monitor-exit p1

    return-object p1

    .line 1147
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1148
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 1149
    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 1150
    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    sget-wide v7, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 1152
    aget-object v1, p1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1156
    :cond_1
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1159
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1160
    aget-object v3, p1, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    :cond_3
    aget-object v3, p1, v2

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1167
    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jjoe64/graphview/GraphViewDataInterface;

    .line 1168
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1169
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    .line 1171
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addSeries(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;)V"
        }
    .end annotation

    .line 1181
    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/Graph;->setGlucosePoints(Ljava/util/List;)V

    .line 1183
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 1184
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1185
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1186
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/jjoe64/graphview/Graph$GraphViewData;

    move v4, v0

    .line 1188
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1189
    new-instance v5, Lcom/jjoe64/graphview/Graph$GraphViewData;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v6}, Lcom/senseonics/graph/util/Glucose;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/senseonics/graph/util/Glucose;

    .line 1190
    invoke-virtual {v8}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v8

    int-to-double v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1192
    :cond_0
    new-instance v2, Lcom/jjoe64/graphview/GraphViewSeries;

    invoke-direct {v2, v3}, Lcom/jjoe64/graphview/GraphViewSeries;-><init>([Lcom/jjoe64/graphview/GraphViewDataInterface;)V

    .line 1193
    invoke-virtual {v2, p0}, Lcom/jjoe64/graphview/GraphViewSeries;->addGraphView(Lcom/jjoe64/graphview/Graph;)V

    .line 1194
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1196
    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public abstract clickEvent(FF)V
.end method

.method protected drawHorizontalLabels(Landroid/graphics/Canvas;FFF[Ljava/lang/String;F)V
    .locals 9

    .line 1506
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 1507
    :goto_0
    array-length v2, p5

    if-ge v1, v2, :cond_2

    .line 1508
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphViewStyle;->getGridColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v0

    div-float v2, p6, v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    add-float/2addr v2, p3

    sub-float v5, p4, p2

    .line 1510
    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v2

    move v6, v2

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1511
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1512
    array-length v3, p5

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1513
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_0
    if-nez v1, :cond_1

    .line 1515
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1516
    :cond_1
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphViewStyle;->getHorizontalLabelsColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1517
    aget-object v3, p5, v1

    const/high16 v4, 0x40800000    # 4.0f

    sub-float v4, p4, v4

    iget-object v5, p0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected drawLegend(Landroid/graphics/Canvas;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1522
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendSpacing()I

    move-result v3

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendBorder()I

    move-result v4

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendWidth()I

    move-result v5

    float-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v2, v6

    .line 1528
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "draw legend size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GraphView"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v6, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    const/16 v7, 0xb4

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    add-int v6, v2, v3

    .line 1532
    iget-object v7, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/2addr v7, v6

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    int-to-float v7, v7

    int-to-float v5, v5

    sub-float v9, p3, v5

    int-to-float v8, v8

    sub-float/2addr v9, v8

    .line 1536
    sget-object v8, Lcom/jjoe64/graphview/Graph$2;->$SwitchMap$com$jjoe64$graphview$Graph$LegendAlign:[I

    iget-object v10, v0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    invoke-virtual {v10}, Lcom/jjoe64/graphview/Graph$LegendAlign;->ordinal()I

    move-result v10

    aget v8, v8, v10

    const/4 v10, 0x1

    if-eq v8, v10, :cond_1

    const/4 v10, 0x2

    if-eq v8, v10, :cond_0

    const/high16 v8, 0x41a00000    # 20.0f

    sub-float v8, p2, v8

    sub-float/2addr v8, v7

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendMarginBottom()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v8, v10

    goto :goto_0

    :cond_0
    const/high16 v8, 0x40000000    # 2.0f

    div-float v10, p2, v8

    div-float v8, v7, v8

    sub-float v8, v10, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    add-float/2addr v5, v9

    add-float/2addr v7, v8

    .line 1549
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v9, v8, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {v1, v10, v7, v7, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v5, 0x0

    .line 1552
    :goto_1
    iget-object v7, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 1553
    iget-object v7, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    iget-object v10, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v10, v10, Lcom/jjoe64/graphview/GraphViewSeries;->style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    iget v10, v10, Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;->color:I

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1554
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v10, v4

    add-float v11, v9, v10

    add-float/2addr v10, v8

    mul-int v12, v5, v6

    int-to-float v12, v12

    add-float v13, v10, v12

    int-to-float v14, v2

    add-float v15, v11, v14

    move/from16 v16, v2

    add-float v2, v13, v14

    invoke-direct {v7, v11, v13, v15, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1558
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphViewSeries;->description:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1559
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1560
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1561
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphViewSeries;->description:Ljava/lang/String;

    int-to-float v7, v3

    add-float/2addr v15, v7

    add-float/2addr v10, v14

    add-float/2addr v10, v12

    iget-object v7, v0, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v15, v10, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected abstract drawSeries(Landroid/graphics/Canvas;Ljava/util/ArrayList;FFFDDDDFLcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GlucoseSection;",
            ">;FFFDDDDF",
            "Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;",
            "Z)V"
        }
    .end annotation
.end method

.method protected formatLabel(DZ)Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    if-eqz v0, :cond_0

    .line 1588
    invoke-interface {v0, p1, p2, p3}, Lcom/jjoe64/graphview/CustomLabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v1, v0, p3

    if-nez v1, :cond_7

    .line 1595
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v1

    aput-object v1, v0, p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1596
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getMaxY()D

    move-result-wide v1

    :goto_0
    if-eqz p3, :cond_2

    .line 1597
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getMinY()D

    move-result-wide v3

    :goto_1
    sub-double/2addr v1, v3

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v1, v3

    if-gez v3, :cond_3

    .line 1599
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    :cond_3
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_4

    .line 1601
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    :cond_4
    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpg-double v3, v1, v3

    if-gez v3, :cond_5

    .line 1603
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    :cond_5
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_6

    .line 1605
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v0, v0, p3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto :goto_2

    .line 1607
    :cond_6
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object v1, v1, p3

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 1610
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    aget-object p3, v0, p3

    invoke-virtual {p3, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCustomLabelFormatter()Lcom/jjoe64/graphview/CustomLabelFormatter;
    .locals 1

    .line 1617
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    return-object v0
.end method

.method public getDayType(I)Lcom/senseonics/graph/GraphView$DAY_TYPE;
    .locals 2

    int-to-float p1, p1

    .line 1001
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1002
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1004
    :cond_0
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1005
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1006
    :cond_1
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1007
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1008
    :cond_2
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x41000000    # 8.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    .line 1009
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1010
    :cond_3
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    const/high16 v1, 0x41400000    # 12.0f

    div-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    .line 1011
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1012
    :cond_4
    sget v0, Lcom/senseonics/util/Utils;->daySubviewWidth:F

    div-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 1013
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1

    .line 1015
    :cond_5
    sget-object p1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    return-object p1
.end method

.method public getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 1497
    sget-object p1, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-object p1

    :cond_0
    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    .line 1499
    sget-object p1, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->DESCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    return-object p1

    :cond_1
    return-object p3
.end method

.method public getEventsManager()Lcom/jjoe64/graphview/LineGraphView$EventsManager;
    .locals 1

    .line 2066
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    return-object v0
.end method

.method public getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;
    .locals 1

    .line 1624
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    return-object v0
.end method

.method public getLegendAlign()Lcom/jjoe64/graphview/Graph$LegendAlign;
    .locals 1

    .line 1633
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-object v0
.end method

.method public getLegendWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1642
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jjoe64/graphview/GraphViewStyle;->getLegendWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getManager()Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object v0
.end method

.method public getMaxScroll()D
    .locals 2

    .line 989
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getMaxScroll()D

    move-result-wide v0

    return-wide v0
.end method

.method protected getMaxX(Z)D
    .locals 4

    .line 1656
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollableGraph:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_0

    .line 1659
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v0, v2

    return-wide v0

    .line 1661
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v0, p1

    return-wide v0
.end method

.method protected getMaxY()D
    .locals 2

    .line 1671
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    int-to-double v0, v0

    return-wide v0
.end method

.method protected getMinX(Z)D
    .locals 4

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 1685
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    cmpl-double p1, v2, v0

    if-eqz p1, :cond_0

    .line 1686
    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    :cond_0
    return-wide v0
.end method

.method protected getMinY()D
    .locals 8

    .line 1699
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->manualYAxis:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    const/4 v2, 0x0

    move v3, v2

    .line 1703
    :goto_0
    iget-object v4, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1704
    invoke-direct {p0, v3}, Lcom/jjoe64/graphview/Graph;->getValues(I)[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object v4

    move v5, v2

    .line 1705
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 1706
    aget-object v6, v4, v5

    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    cmpg-double v6, v6, v0

    if-gez v6, :cond_1

    .line 1707
    aget-object v0, v4, v5

    invoke-interface {v0}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1710
    :cond_3
    :goto_2
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getPosOnScreen(F)F
    .locals 7

    const/4 v0, 0x0

    .line 2048
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v1

    .line 2049
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    sub-double/2addr v1, v3

    float-to-double v5, p1

    sub-double/2addr v5, v3

    double-to-float p1, v5

    float-to-double v3, p1

    div-double/2addr v3, v1

    double-to-float p1, v3

    .line 2054
    iget v0, p0, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public getRectWidth()I
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public abstract hideEvent()V
.end method

.method public abstract ifEventAtPosition(F)Lcom/senseonics/events/EventPoint;
.end method

.method public abstract ifEventClick(FF)Z
.end method

.method public abstract ifGlucoseAtPosition(F)Lcom/senseonics/graph/util/Glucose;
.end method

.method public isDisableTouch()Z
    .locals 1

    .line 1714
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->disableTouch:Z

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .line 1718
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .line 1722
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->showLegend:Z

    return v0
.end method

.method public redrawAll()V
    .locals 3

    .line 1730
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->numberformatter:[Ljava/text/NumberFormat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1731
    aput-object v2, v0, v1

    .line 1733
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->invalidate()V

    .line 1734
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    return-void
.end method

.method public removeAllSeries()V
    .locals 2

    .line 1741
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/GraphViewSeries;

    .line 1742
    invoke-virtual {v1, p0}, Lcom/jjoe64/graphview/GraphViewSeries;->removeGraphView(Lcom/jjoe64/graphview/Graph;)V

    goto :goto_0

    .line 1744
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public removeSeries(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1772
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jjoe64/graphview/GraphViewSeries;

    invoke-virtual {p0, p1}, Lcom/jjoe64/graphview/Graph;->removeSeries(Lcom/jjoe64/graphview/GraphViewSeries;)V

    return-void

    .line 1769
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No series at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeSeries(Lcom/jjoe64/graphview/GraphViewSeries;)V
    .locals 1

    .line 1757
    invoke-virtual {p1, p0}, Lcom/jjoe64/graphview/GraphViewSeries;->removeGraphView(Lcom/jjoe64/graphview/Graph;)V

    .line 1758
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphSeries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1759
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public scrollToEnd()V
    .locals 4

    .line 1782
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1784
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v0

    .line 1785
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    .line 1790
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->invalidate()V

    .line 1791
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    return-void

    .line 1783
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GraphView is not scrollable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomLabelFormatter(Lcom/jjoe64/graphview/CustomLabelFormatter;)V
    .locals 0

    .line 1801
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->customLabelFormatter:Lcom/jjoe64/graphview/CustomLabelFormatter;

    return-void
.end method

.method public setDisableTouch(Z)V
    .locals 0

    .line 1811
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->disableTouch:Z

    return-void
.end method

.method public setEndDate(Ljava/util/Calendar;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    return-void
.end method

.method public setEventGroups(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    const/4 v1, 0x0

    .line 1324
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 1325
    invoke-virtual {v3, v0}, Lcom/jjoe64/graphview/Graph$EventGroup;->isNearOnScreen(Lcom/senseonics/events/EventPoint;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1326
    invoke-virtual {v3, v0}, Lcom/jjoe64/graphview/Graph$EventGroup;->addEvent(Lcom/senseonics/events/EventPoint;)V

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_0

    .line 1332
    new-instance v1, Lcom/jjoe64/graphview/Graph$EventGroup;

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v4

    .line 1333
    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v2

    int-to-float v5, v2

    .line 1334
    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getxOnScreen()F

    move-result v6

    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getyOnScreen()F

    move-result v7

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/jjoe64/graphview/Graph$EventGroup;-><init>(Lcom/jjoe64/graphview/Graph;FFFF)V

    .line 1335
    invoke-virtual {v1, v0}, Lcom/jjoe64/graphview/Graph$EventGroup;->addEvent(Lcom/senseonics/events/EventPoint;)V

    .line 1336
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setEventPoints(Ljava/util/List;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1203
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    .line 1204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    .line 1205
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p2, p3}, Lcom/senseonics/events/EventPoint;->setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0

    .line 1206
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1208
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->setUpEventGroups()V

    .line 1210
    :cond_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->redrawAll()V

    return-void
.end method

.method public setEventsManager(Lcom/jjoe64/graphview/LineGraphView$EventsManager;)V
    .locals 0

    .line 2070
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->eventsManager:Lcom/jjoe64/graphview/LineGraphView$EventsManager;

    return-void
.end method

.method public setGlucosePoints(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;)V"
        }
    .end annotation

    .line 1343
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->glucosePoints:Ljava/util/List;

    .line 1344
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1345
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/graph/util/Glucose;

    .line 1346
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2, v3, v4}, Lcom/senseonics/graph/util/Glucose;->setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGraphViewStyle(Lcom/jjoe64/graphview/GraphViewStyle;)V
    .locals 0

    .line 1820
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->graphViewStyle:Lcom/jjoe64/graphview/GraphViewStyle;

    return-void
.end method

.method public setIsLandscape(Z)V
    .locals 0

    .line 1983
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->isLandscape:Z

    return-void
.end method

.method public setLegendAlign(Lcom/jjoe64/graphview/Graph$LegendAlign;)V
    .locals 0

    .line 1836
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->legendAlign:Lcom/jjoe64/graphview/Graph$LegendAlign;

    return-void
.end method

.method public setLegendWidth(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1847
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getGraphViewStyle()Lcom/jjoe64/graphview/GraphViewStyle;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/GraphViewStyle;->setLegendWidth(I)V

    return-void
.end method

.method public setManager(Lcom/senseonics/graph/GraphView$ScrollManager;)V
    .locals 0

    .line 2078
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-void
.end method

.method public setManualYAxis(Z)V
    .locals 0

    .line 1858
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->manualYAxis:Z

    return-void
.end method

.method public declared-synchronized setScalable(Z)V
    .locals 2

    monitor-enter p0

    .line 1884
    :try_start_0
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->scalable:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1886
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;

    if-nez p1, :cond_0

    .line 1887
    iput-boolean v0, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    .line 1888
    new-instance p1, Lcom/jjoe64/graphview/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/jjoe64/graphview/Graph$1;

    invoke-direct {v1, p0}, Lcom/jjoe64/graphview/Graph$1;-><init>(Lcom/jjoe64/graphview/Graph;)V

    invoke-direct {p1, v0, v1}, Lcom/jjoe64/graphview/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/jjoe64/graphview/ScaleGestureDetector$SimpleOnScaleGestureListener;)V

    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->scaleDetector:Lcom/jjoe64/graphview/ScaleGestureDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1969
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setScaleManager(Lcom/jjoe64/graphview/Graph$ScaleManager;)V
    .locals 0

    .line 1880
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->scaleManager:Lcom/jjoe64/graphview/Graph$ScaleManager;

    return-void
.end method

.method public setScrollable(Z)V
    .locals 0

    .line 1979
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->scrollable:Z

    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0

    .line 1987
    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph;->showLegend:Z

    return-void
.end method

.method public setStartDate(Ljava/util/Calendar;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    return-void
.end method

.method public setUpEventGroups()V
    .locals 10

    const/4 v0, 0x0

    .line 1215
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v1

    .line 1216
    invoke-virtual {p0, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 1219
    iget-object v5, p0, Lcom/jjoe64/graphview/Graph;->eventPoints:Ljava/util/List;

    .line 1221
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_9

    .line 1222
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/senseonics/events/EventPoint;

    .line 1223
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v7

    .line 1226
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph;->isScrollable()Z

    move-result v8

    const/high16 v9, -0x3db80000    # -50.0f

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/jjoe64/graphview/Graph;->isLandscape:Z

    if-eqz v8, :cond_1

    .line 1229
    :cond_0
    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v8, :cond_1

    .line 1230
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setxOnScreen(F)V

    .line 1231
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setyOnScreen(F)V

    goto/16 :goto_3

    .line 1237
    :cond_1
    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v7, v8, :cond_8

    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v8, :cond_2

    goto :goto_2

    .line 1245
    :cond_2
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v8

    .line 1249
    sget-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v7, v9, :cond_4

    .line 1250
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v7

    .line 1251
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v7, v9, :cond_3

    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v7, v9, :cond_4

    .line 1254
    :cond_3
    sget v9, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v8, v9, :cond_4

    .line 1255
    sget-object v9, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v7, v9, :cond_4

    .line 1256
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    add-int/lit8 v8, v7, 0x1

    .line 1263
    :cond_4
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-ne v8, v7, :cond_5

    .line 1264
    sget v7, Lcom/senseonics/util/Utils;->EVENT_POSITION:I

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    goto :goto_1

    .line 1267
    :cond_5
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    if-le v8, v7, :cond_6

    .line 1268
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    goto :goto_1

    .line 1269
    :cond_6
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MIN_Y:I

    if-ge v8, v7, :cond_7

    .line 1270
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_MIN_Y:I

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v7, v8}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    goto :goto_1

    .line 1272
    :cond_7
    iget-object v7, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v7}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v7

    .line 1276
    :goto_1
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v8

    float-to-double v8, v8

    sub-double/2addr v8, v3

    double-to-float v8, v8

    float-to-double v8, v8

    div-double/2addr v8, v1

    double-to-float v8, v8

    .line 1278
    iget v9, p0, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float/2addr v9, v8

    .line 1280
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setxOnScreen(F)V

    .line 1281
    invoke-virtual {v6, v7}, Lcom/senseonics/events/EventPoint;->setyOnScreen(F)V

    goto :goto_3

    .line 1239
    :cond_8
    :goto_2
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setxOnScreen(F)V

    .line 1240
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setyOnScreen(F)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1284
    :cond_9
    invoke-virtual {p0, v5}, Lcom/jjoe64/graphview/Graph;->setEventGroups(Ljava/util/List;)V

    return-void
.end method

.method public setVerticalLineManager(Lcom/senseonics/graph/VerticalLineManager;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    return-void
.end method

.method public setViewPort(DD)V
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_2

    .line 2017
    iput-wide p1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    .line 2019
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    if-eqz v0, :cond_1

    .line 2020
    sput-wide p1, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 2021
    sput-wide p3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    .line 2023
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    double-to-float p4, v0

    invoke-static {p1, p2, p3, p4}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p1

    .line 2026
    iget-object p2, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    iget-wide v0, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    double-to-float v0, v0

    float-to-double v0, v0

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v0, v2

    double-to-float v0, v0

    invoke-static {p2, p3, p4, v0}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p2

    .line 2030
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 2032
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph;->startDate:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->endDate:Ljava/util/Calendar;

    iget-wide v1, p0, Lcom/jjoe64/graphview/Graph;->viewportStart:D

    double-to-float v1, v1

    float-to-double v1, v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 2031
    invoke-static {p3, p4, v0, v1}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p3

    .line 2037
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 2038
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2039
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    cmp-long p4, v0, v2

    if-lez p4, :cond_0

    .line 2040
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_0

    .line 2042
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph;->manager:Lcom/senseonics/graph/GraphView$ScrollManager;

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;)V

    :cond_1
    :goto_0
    return-void

    .line 2013
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Viewport size must be greater than 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public slide(F)V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->-$$Nest$monMoveGesture(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V

    return-void
.end method

.method public slideBackToEnd()V
    .locals 1

    .line 2062
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->-$$Nest$mslideBackToEnd(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)V

    return-void
.end method

.method public slideBackToStart()V
    .locals 1

    .line 2058
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph;->graphViewContentView:Lcom/jjoe64/graphview/Graph$GraphViewContentView;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->-$$Nest$mslideBackToStart(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)V

    return-void
.end method

.method public subDivideGlucosePoints([Lcom/jjoe64/graphview/GraphViewDataInterface;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/jjoe64/graphview/GraphViewDataInterface;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/jjoe64/graphview/Graph$GlucoseSection;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 1356
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 1358
    sget-object v4, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    .line 1360
    aget-object v6, v1, v3

    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    .line 1361
    aget-object v7, v1, v5

    invoke-interface {v7}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v7

    double-to-float v7, v7

    .line 1365
    invoke-virtual {v0, v6, v7, v4}, Lcom/jjoe64/graphview/Graph;->getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    move-result-object v4

    .line 1366
    aget-object v6, v1, v3

    .line 1367
    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    double-to-int v6, v6

    .line 1366
    invoke-static {v6, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v6

    .line 1369
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1370
    new-instance v8, Lcom/jjoe64/graphview/Graph$GraphViewData;

    aget-object v9, v1, v3

    invoke-interface {v9}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v9

    aget-object v3, v1, v3

    .line 1371
    invoke-interface {v3}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1370
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    .line 1375
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_6

    .line 1378
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jjoe64/graphview/Graph$GraphViewData;

    .line 1379
    invoke-virtual {v8}, Lcom/jjoe64/graphview/Graph$GraphViewData;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    .line 1380
    aget-object v9, v1, v3

    invoke-interface {v9}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v9

    double-to-float v9, v9

    .line 1382
    invoke-virtual {v0, v8, v9, v4}, Lcom/jjoe64/graphview/Graph;->getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    move-result-object v4

    .line 1384
    iget-object v10, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v9, v10}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I

    move-result v10

    if-nez v10, :cond_0

    float-to-int v6, v8

    .line 1387
    invoke-static {v6, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v6

    .line 1389
    aget-object v10, v1, v3

    invoke-interface {v10}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v10

    double-to-int v10, v10

    .line 1392
    :cond_0
    invoke-static {v10, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v10

    if-eq v6, v10, :cond_3

    .line 1398
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .line 1397
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jjoe64/graphview/Graph$GraphViewData;

    .line 1398
    invoke-virtual {v10}, Lcom/jjoe64/graphview/Graph$GraphViewData;->getX()D

    move-result-wide v10

    double-to-float v10, v10

    .line 1399
    aget-object v11, v1, v3

    invoke-interface {v11}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v11

    double-to-float v11, v11

    .line 1401
    iget-object v12, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v9, v12}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I

    move-result v12

    int-to-float v13, v12

    float-to-int v14, v9

    .line 1404
    iget-object v15, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1405
    invoke-static {v14, v15}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v14

    float-to-int v15, v8

    iget-object v5, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1406
    invoke-static {v15, v5}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v5

    float-to-int v15, v13

    move/from16 v16, v12

    iget-object v12, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    .line 1407
    invoke-static {v15, v12}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v12

    .line 1404
    invoke-static {v11, v14, v10, v5, v12}, Lcom/senseonics/graph/util/GraphUtils;->getXOnLine(FFFFF)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v10, v13, v10

    if-nez v10, :cond_1

    .line 1411
    iget-object v10, v0, Lcom/jjoe64/graphview/Graph;->rect:Landroid/graphics/Rect;

    invoke-static {v8, v9, v10}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelBetween(FFLandroid/graphics/Rect;)I

    move-result v12

    goto :goto_1

    :cond_1
    move/from16 v12, v16

    .line 1415
    :goto_1
    new-instance v8, Lcom/jjoe64/graphview/Graph$GraphViewData;

    float-to-double v10, v5

    float-to-double v14, v13

    invoke-direct {v8, v10, v11, v14, v15}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1416
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    new-instance v5, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-direct {v5, v7, v6}, Lcom/jjoe64/graphview/Graph$GlucoseSection;-><init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    .line 1421
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1425
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    cmpl-float v6, v13, v9

    if-nez v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    .line 1426
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 1427
    aget-object v6, v1, v6

    invoke-interface {v6}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v6

    double-to-float v9, v6

    .line 1429
    :cond_2
    invoke-virtual {v0, v13, v9, v4}, Lcom/jjoe64/graphview/Graph;->getDirection(FFLcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    move-result-object v4

    .line 1430
    invoke-static {v12, v4}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v6

    move-object v7, v5

    const/4 v8, 0x1

    goto :goto_2

    .line 1434
    :cond_3
    new-instance v5, Lcom/jjoe64/graphview/Graph$GraphViewData;

    aget-object v8, v1, v3

    .line 1435
    invoke-interface {v8}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v8

    aget-object v10, v1, v3

    invoke-interface {v10}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v10

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1434
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    array-length v5, v1

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    if-ne v3, v5, :cond_4

    .line 1438
    new-instance v5, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-direct {v5, v7, v6}, Lcom/jjoe64/graphview/Graph$GlucoseSection;-><init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    .line 1440
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :goto_2
    move v5, v8

    goto/16 :goto_0

    :cond_5
    if-eqz v1, :cond_6

    .line 1448
    aget-object v4, v1, v3

    .line 1449
    invoke-interface {v4}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v4

    double-to-int v4, v4

    sget-object v5, Lcom/senseonics/graph/util/GraphUtils$DIRECTION;->ASCENDANT:Lcom/senseonics/graph/util/GraphUtils$DIRECTION;

    .line 1448
    invoke-static {v4, v5}, Lcom/senseonics/graph/util/GraphUtils;->getGlucoseLevelColor(ILcom/senseonics/graph/util/GraphUtils$DIRECTION;)Lcom/senseonics/graph/util/GraphUtils$COLOR;

    move-result-object v4

    .line 1451
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    new-instance v6, Lcom/jjoe64/graphview/Graph$GraphViewData;

    aget-object v7, v1, v3

    invoke-interface {v7}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getX()D

    move-result-wide v7

    aget-object v1, v1, v3

    .line 1453
    invoke-interface {v1}, Lcom/jjoe64/graphview/GraphViewDataInterface;->getY()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/jjoe64/graphview/Graph$GraphViewData;-><init>(DD)V

    .line 1452
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    new-instance v1, Lcom/jjoe64/graphview/Graph$GlucoseSection;

    invoke-direct {v1, v5, v4}, Lcom/jjoe64/graphview/Graph$GlucoseSection;-><init>(Ljava/util/ArrayList;Lcom/senseonics/graph/util/GraphUtils$COLOR;)V

    .line 1458
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v2
.end method
