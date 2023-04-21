.class Lcom/jjoe64/graphview/Graph$GraphViewContentView;
.super Landroid/view/View;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphViewContentView"
.end annotation


# static fields
.field private static final ADD_EVENT_DELAY_MILLISECONDS:I = 0xfa

.field private static final ALPHA_STEP:I = 0x32

.field private static final FADE_MILLISECONDS:I = 0x64

.field private static final FADE_STEP:I = 0x13

.field private static final SINGLE_TAP_LOCK_MILLISECONDS:I = 0x2ee

.field private static final TAPPING_ALPHT_START:I = 0xff

.field private static final TAPPING_CIRCLE_RADIUS:I = 0x64


# instance fields
.field private bottomTextPaint:Landroid/graphics/Paint;

.field private clickDetectDistance:I

.field private clickedX:F

.field private clickedY:F

.field private dashedLinePaint:Landroid/graphics/Paint;

.field private eventPaint:Landroid/graphics/Paint;

.field private firstPointStart:Landroid/graphics/Point;

.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private handler:Landroid/os/Handler;

.field private horizontalDashedLinePaint:Landroid/graphics/Paint;

.field private horizontalLinePaint:Landroid/graphics/Paint;

.field private horizontalThickLinePaint:Landroid/graphics/Paint;

.field private isEventClicked:Z

.field private isLongTap:Z

.field private isTapAddEventInProgress:Z

.field private lastTouchEventX:F

.field private levelTextPaint:Landroid/graphics/Paint;

.field private longPressDetectDistance:I

.field private runnable:Ljava/lang/Runnable;

.field private scrollingStarted:Z

.field private shouldDrawVerticalLines:Z

.field private singleTappedX:F

.field private singleTappedY:F

.field private tappingEffectAlpha:I

.field private textHeight:F

.field private textPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/jjoe64/graphview/Graph;


# direct methods
.method static bridge synthetic -$$Nest$fgetfirstPointStart(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisLongTap(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisTapAddEventInProgress(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isTapAddEventInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisEventClicked(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisTapAddEventInProgress(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isTapAddEventInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsingleTappedX(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V
    .locals 0

    iput p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->singleTappedX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsingleTappedY(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V
    .locals 0

    iput p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->singleTappedY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtappingEffectAlpha(Lcom/jjoe64/graphview/Graph$GraphViewContentView;I)V
    .locals 0

    iput p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->tappingEffectAlpha:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monMoveGesture(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->onMoveGesture(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mslide(Lcom/jjoe64/graphview/Graph$GraphViewContentView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slide(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mslideBackToEnd(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mslideBackToStart(Lcom/jjoe64/graphview/Graph$GraphViewContentView;)V
    .locals 0

    invoke-direct {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToStart()V

    return-void
.end method

.method public constructor <init>(Lcom/jjoe64/graphview/Graph;Landroid/content/Context;Z)V
    .locals 10

    .line 140
    iput-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    .line 141
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    const/16 v1, 0xa

    .line 811
    iput v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickDetectDistance:I

    const/4 v1, 0x2

    rsub-int/lit8 v2, v1, 0xa

    .line 812
    iput v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->longPressDetectDistance:I

    .line 142
    iput-boolean p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->shouldDrawVerticalLines:Z

    .line 143
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x106000b

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-super {p0, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalLinePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 149
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 150
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalLinePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->dashedLinePaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    .line 156
    invoke-virtual {p3, v5, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 157
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->dashedLinePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 158
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->dashedLinePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/DashPathEffect;

    new-array v8, v1, [F

    const/16 v9, 0xc

    int-to-float v9, v9

    aput v9, v8, v0

    aput v9, v8, v3

    invoke-direct {v7, v8, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 160
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->dashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 161
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->dashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    .line 165
    invoke-virtual {p3, v5, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 166
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/DashPathEffect;

    new-array v1, v1, [F

    aput v9, v1, v0

    aput v9, v1, v3

    invoke-direct {v7, v1, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 169
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->eventPaint:Landroid/graphics/Paint;

    .line 174
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->eventPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 176
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->eventPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 178
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    .line 179
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 181
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f060021

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 184
    new-instance p3, Landroid/graphics/Paint;

    const/16 v4, 0x41

    invoke-direct {p3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->bottomTextPaint:Landroid/graphics/Paint;

    .line 186
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->bottomTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 189
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->bottomTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 190
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->bottomTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 192
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    .line 194
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    invoke-virtual {p3, v4, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 197
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 198
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 203
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalThickLinePaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalThickLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalThickLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 210
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    const-string v1, "12PMg"

    invoke-static {v1, p3}, Lcom/senseonics/graph/util/GraphUtils;->measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    .line 212
    new-instance p3, Lcom/jjoe64/graphview/SimpleScrollManager;

    invoke-direct {p3}, Lcom/jjoe64/graphview/SimpleScrollManager;-><init>()V

    invoke-static {p1, p3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fputmanager(Lcom/jjoe64/graphview/Graph;Lcom/senseonics/graph/GraphView$ScrollManager;)V

    .line 214
    iput-boolean v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isTapAddEventInProgress:Z

    .line 215
    iput v5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->tappingEffectAlpha:I

    .line 217
    new-instance p3, Landroidx/core/view/GestureDetectorCompat;

    new-instance v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;

    invoke-direct {v0, p0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$1;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Lcom/jjoe64/graphview/Graph;)V

    invoke-direct {p3, p2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method private DrawTappingEffect(Landroid/graphics/Canvas;)V
    .locals 11

    .line 340
    iget-boolean v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isTapAddEventInProgress:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x64

    .line 342
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 343
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 345
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 347
    iget v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->tappingEffectAlpha:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 353
    :goto_0
    iget v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->tappingEffectAlpha:I

    add-int/lit8 v1, v1, -0x32

    iput v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->tappingEffectAlpha:I

    .line 355
    iget v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->singleTappedX:F

    iget v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->singleTappedY:F

    int-to-float v0, v0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const-wide/16 v5, 0x13

    .line 356
    iget p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->singleTappedX:F

    sub-float v1, p1, v0

    float-to-int v7, v1

    iget v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->singleTappedY:F

    sub-float v2, v1, v0

    float-to-int v8, v2

    add-float/2addr p1, v0

    float-to-int v9, p1

    add-float/2addr v1, v0

    float-to-int v10, v1

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->postInvalidateDelayed(JIIII)V

    :cond_1
    return-void
.end method

.method private drawSectionLines(Landroid/graphics/Canvas;)V
    .locals 35

    move-object/from16 v12, p0

    .line 392
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v13

    .line 394
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v3

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v14

    .line 398
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    sget-wide v1, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->getDayType(I)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fputcurrentDayType(Lcom/jjoe64/graphview/Graph;Lcom/senseonics/graph/GraphView$DAY_TYPE;)V

    .line 402
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    const/4 v15, 0x0

    invoke-virtual {v0, v15}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v0

    .line 403
    iget-object v2, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v2, v15}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v16

    sub-double v18, v0, v16

    .line 405
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    .line 407
    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 408
    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 409
    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 410
    invoke-virtual {v0, v1, v15}, Ljava/util/Calendar;->set(II)V

    .line 411
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    add-long/2addr v1, v3

    invoke-virtual {v14, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 413
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    .line 414
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    const/16 v11, 0x10

    .line 415
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 416
    invoke-virtual {v14, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 418
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX4_24SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    const/16 v24, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX8_TO_WIDTHX12_48SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    if-ne v0, v1, :cond_5

    :cond_0
    int-to-long v0, v9

    move-wide/from16 v25, v0

    move-wide/from16 v7, v20

    :goto_0
    cmp-long v0, v7, v22

    if-gtz v0, :cond_5

    .line 424
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 425
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 427
    invoke-virtual {v6, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v9, v10, :cond_3

    int-to-long v4, v0

    cmp-long v0, v25, v4

    if-eqz v0, :cond_3

    if-nez v9, :cond_1

    sub-long/2addr v7, v4

    move-wide/from16 v28, v4

    move-object v15, v6

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v11, v24

    move-wide v9, v7

    goto :goto_2

    :cond_1
    if-nez v10, :cond_2

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-wide v1, v7

    move-object/from16 v3, p1

    move-wide/from16 v28, v4

    move-object v4, v6

    move-object v5, v13

    move-object v15, v6

    move-object v6, v14

    move-wide/from16 v30, v7

    move-wide/from16 v7, v16

    move/from16 v32, v9

    move/from16 v33, v10

    move-wide/from16 v9, v18

    move/from16 v11, v27

    .line 434
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawLine12Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    add-long v7, v30, v25

    move-wide v9, v7

    goto :goto_1

    :cond_2
    move-wide/from16 v28, v4

    move-object v15, v6

    move-wide/from16 v30, v7

    move/from16 v32, v9

    move/from16 v33, v10

    move-wide/from16 v9, v30

    :goto_1
    const/4 v11, 0x0

    .line 439
    :goto_2
    invoke-virtual {v15, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    move-wide/from16 v7, v16

    move-wide/from16 v30, v9

    move-wide/from16 v9, v18

    .line 440
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawLine12Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    move-wide/from16 v25, v28

    goto :goto_3

    :cond_3
    move-object v15, v6

    move-wide/from16 v30, v7

    move/from16 v32, v9

    move/from16 v33, v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    .line 443
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawLine12Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    :goto_3
    move-wide/from16 v7, v30

    .line 446
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    iget-object v2, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/graph/GraphView$DAY_TYPE;->WIDTHX2_12SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    if-ne v2, v3, :cond_4

    const/4 v2, 0x2

    goto :goto_4

    :cond_4
    move/from16 v2, v24

    :goto_4
    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr v7, v0

    move/from16 v9, v32

    move/from16 v10, v33

    const/16 v11, 0x10

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_5
    move/from16 v32, v9

    move/from16 v33, v10

    .line 450
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->HALFWIDTH_6SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    if-ne v0, v1, :cond_a

    move/from16 v15, v32

    int-to-long v0, v15

    move-wide/from16 v25, v0

    move-wide/from16 v9, v20

    :goto_5
    cmp-long v0, v9, v22

    if-gtz v0, :cond_9

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 455
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v7, 0x10

    .line 456
    invoke-virtual {v11, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move/from16 v8, v33

    if-eq v15, v8, :cond_8

    int-to-long v5, v0

    cmp-long v0, v25, v5

    if-eqz v0, :cond_8

    if-nez v15, :cond_6

    sub-long/2addr v9, v5

    move-wide/from16 v28, v5

    move/from16 v34, v8

    move/from16 v32, v15

    move-object v15, v11

    move/from16 v11, v24

    goto :goto_7

    :cond_6
    if-nez v8, :cond_7

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object/from16 v3, p1

    move-object v4, v11

    move-wide/from16 v28, v5

    move-object v5, v13

    move-object v6, v14

    move/from16 v34, v8

    move-wide/from16 v7, v16

    move-wide/from16 v30, v9

    move-wide/from16 v9, v18

    move/from16 v32, v15

    move-object v15, v11

    move/from16 v11, v27

    .line 463
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawLine6Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    add-long v9, v30, v25

    goto :goto_6

    :cond_7
    move-wide/from16 v28, v5

    move/from16 v34, v8

    move-wide/from16 v30, v9

    move/from16 v32, v15

    move-object v15, v11

    :goto_6
    const/4 v11, 0x0

    .line 468
    :goto_7
    invoke-virtual {v15, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    move-wide/from16 v7, v16

    move-wide/from16 v30, v9

    move-wide/from16 v9, v18

    .line 469
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawLine6Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    move-wide/from16 v25, v28

    goto :goto_8

    :cond_8
    move/from16 v34, v8

    move-wide/from16 v30, v9

    move/from16 v32, v15

    move-object v15, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-object/from16 v3, p1

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    .line 472
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawLine6Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    :goto_8
    move-wide/from16 v9, v30

    .line 475
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    add-long/2addr v9, v0

    move/from16 v15, v32

    move/from16 v33, v34

    goto/16 :goto_5

    :cond_9
    move/from16 v32, v15

    :cond_a
    move/from16 v34, v33

    .line 479
    iget-object v0, v12, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetcurrentDayType(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$DAY_TYPE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/graph/GraphView$DAY_TYPE;->THIRDWIDTH_2SECTION:Lcom/senseonics/graph/GraphView$DAY_TYPE;

    if-ne v0, v1, :cond_e

    move/from16 v15, v32

    int-to-long v0, v15

    move-wide/from16 v9, v20

    move-wide/from16 v20, v0

    :goto_9
    cmp-long v0, v9, v22

    if-gtz v0, :cond_e

    .line 484
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 485
    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v11, 0x10

    .line 486
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move/from16 v7, v34

    if-eq v15, v7, :cond_d

    int-to-long v5, v0

    cmp-long v0, v20, v5

    if-eqz v0, :cond_d

    if-nez v15, :cond_b

    sub-long/2addr v9, v5

    goto :goto_a

    :cond_b
    if-nez v7, :cond_c

    add-long v9, v9, v20

    .line 494
    :cond_c
    :goto_a
    invoke-virtual {v4, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object/from16 v3, p1

    move-wide/from16 v24, v5

    move-object v5, v13

    move-object v6, v14

    move/from16 v26, v7

    move-wide/from16 v7, v16

    move-wide/from16 v27, v9

    move-wide/from16 v9, v18

    move/from16 v29, v11

    move/from16 v11, v20

    .line 495
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawDayLineForCalendar(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    move-wide/from16 v20, v24

    move-wide/from16 v9, v27

    goto :goto_b

    :cond_d
    move/from16 v26, v7

    move/from16 v29, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object/from16 v3, p1

    move-object v5, v13

    move-object v6, v14

    move-wide/from16 v7, v16

    move-wide/from16 v24, v9

    move-wide/from16 v9, v18

    .line 498
    invoke-virtual/range {v0 .. v11}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawDayLineForCalendar(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V

    move-wide/from16 v9, v24

    .line 500
    :goto_b
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    add-long/2addr v9, v0

    move/from16 v34, v26

    goto :goto_9

    :cond_e
    return-void
.end method

.method private getDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2

    .line 607
    invoke-static {p1}, Lcom/senseonics/util/TimeProvider;->formatDateForGraph(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110318

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 601
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 602
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 603
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    move v0, v3

    :cond_0
    return v0

    .line 599
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The dates must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onMoveGesture(F)V
    .locals 10

    .line 752
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_3

    .line 753
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v1

    float-to-double v3, p1

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    mul-double/2addr v3, v5

    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget p1, p1, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    float-to-double v5, p1

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fputviewportStart(Lcom/jjoe64/graphview/Graph;D)V

    .line 754
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 757
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v0

    .line 758
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getMaxScroll()D

    move-result-wide v2

    .line 760
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v4

    cmpg-double p1, v4, v0

    if-gez p1, :cond_0

    .line 761
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1, v0, v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fputviewportStart(Lcom/jjoe64/graphview/Graph;D)V

    goto :goto_0

    .line 762
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v0, v4

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    .line 763
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    sub-double/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fputviewportStart(Lcom/jjoe64/graphview/Graph;D)V

    .line 765
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 767
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {p1, v0, v1, v2}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object p1

    .line 770
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v3, v3

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v3, v5

    double-to-float v3, v3

    .line 771
    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v0

    .line 777
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v1

    .line 779
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v3

    iget-object v4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v4, v4

    sget-wide v6, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 778
    invoke-static {v1, v2, v3, v4}, Lcom/senseonics/graph/util/GraphUtils;->getDateForPositionX(ILjava/util/Calendar;Ljava/util/Calendar;F)Ljava/util/Calendar;

    move-result-object v1

    .line 784
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 785
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 786
    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->DAY:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 787
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetmanager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;Ljava/util/Date;)V

    goto :goto_1

    .line 789
    :cond_2
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetmanager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/GraphView$ScrollManager;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/senseonics/graph/GraphView$ScrollManager;->dayChanged(Ljava/util/Date;)V

    .line 792
    :goto_1
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    :cond_3
    return-void
.end method

.method private slide(F)V
    .locals 7

    .line 798
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v1

    float-to-double v3, p1

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    mul-double/2addr v3, v5

    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget p1, p1, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    float-to-double v5, p1

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fputviewportStart(Lcom/jjoe64/graphview/Graph;D)V

    .line 801
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v0

    sput-wide v0, Lcom/senseonics/graph/util/GraphUtils;->viewportStart:D

    .line 802
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    :cond_0
    return-void
.end method

.method private slideBackToEnd()V
    .locals 9

    .line 712
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getMaxScroll()D

    move-result-wide v0

    .line 713
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 715
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v2

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    add-double/2addr v2, v4

    cmpl-double v2, v2, v0

    if-lez v2, :cond_0

    .line 717
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 718
    new-instance v4, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;

    invoke-direct {v4, p0, v0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$3;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;D)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x5

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private slideBackToStart()V
    .locals 9

    .line 682
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v0

    .line 683
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 685
    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetviewportStart(Lcom/jjoe64/graphview/Graph;)D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_0

    .line 687
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 688
    new-instance v4, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;

    invoke-direct {v4, p0, v0, v1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$2;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;D)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x5

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Canvas;FFLcom/senseonics/events/EventPoint;)V
    .locals 1

    .line 384
    invoke-static {p4}, Lcom/senseonics/graph/util/GraphUtils;->getBitmapForEvent(Lcom/senseonics/events/EventPoint;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 386
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    .line 387
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    sub-float/2addr v0, p3

    iget-object p3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->eventPaint:Landroid/graphics/Paint;

    .line 386
    invoke-virtual {p1, p4, p2, v0, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public drawDayLineForCalendar(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V
    .locals 2

    .line 567
    invoke-virtual {p5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p5, p1, v0

    if-ltz p5, :cond_1

    invoke-virtual {p6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    cmp-long p1, p1, p5

    if-gez p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object p2

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p5}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object p5

    invoke-static {p1, p2, p5, p4}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result p1

    float-to-double p1, p1

    sub-double/2addr p1, p7

    double-to-float p1, p1

    float-to-double p1, p1

    div-double/2addr p1, p9

    double-to-float p1, p1

    .line 573
    iget-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget p2, p2, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float/2addr p2, p1

    const-string p1, "H"

    .line 575
    invoke-static {p1, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "0"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 576
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    int-to-float p7, p1

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result p1

    int-to-float p9, p1

    iget-object p10, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalThickLinePaint:Landroid/graphics/Paint;

    move-object p5, p3

    move p6, p2

    move p8, p2

    invoke-virtual/range {p5 .. p10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 578
    invoke-direct {p0, p4}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 580
    iget-object p4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    iget p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    sub-float/2addr p4, p5

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    int-to-float p6, p1

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result p1

    int-to-float p8, p1

    iget-object p9, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalLinePaint:Landroid/graphics/Paint;

    move-object p4, p3

    move p5, p2

    move p7, p2

    invoke-virtual/range {p4 .. p9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    if-eqz p11, :cond_1

    .line 588
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f1100c2

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    iget p6, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    mul-float/2addr p6, p5

    sub-float/2addr p4, p6

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    .line 587
    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public drawEventGroup(Landroid/graphics/Canvas;Lcom/jjoe64/graphview/Graph$EventGroup;F)V
    .locals 4

    .line 363
    invoke-virtual {p2}, Lcom/jjoe64/graphview/Graph$EventGroup;->getEvents()Ljava/util/ArrayList;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 367
    iget v0, p2, Lcom/jjoe64/graphview/Graph$EventGroup;->xOnScreen:F

    .line 368
    iget p2, p2, Lcom/jjoe64/graphview/Graph$EventGroup;->yOnScreen:F

    sub-float/2addr p2, p3

    .line 369
    new-instance p3, Lcom/senseonics/events/EventPoint;

    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-direct {p3, v1, v2, v3}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 369
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawBitmap(Landroid/graphics/Canvas;FFLcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/senseonics/events/EventPoint;

    .line 376
    invoke-virtual {p2}, Lcom/senseonics/events/EventPoint;->getxOnScreen()F

    move-result v0

    .line 377
    invoke-virtual {p2}, Lcom/senseonics/events/EventPoint;->getyOnScreen()F

    move-result v1

    sub-float/2addr v1, p3

    .line 378
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawBitmap(Landroid/graphics/Canvas;FFLcom/senseonics/events/EventPoint;)V

    :goto_0
    return-void
.end method

.method public drawGlucoseThreholdText(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 6

    .line 619
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 620
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 622
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 623
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 622
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 624
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 625
    sget v3, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    if-eq v2, v3, :cond_0

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    if-eq v2, v3, :cond_0

    .line 628
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 627
    invoke-static {v2, p2}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v2

    sub-float/2addr v2, p3

    .line 633
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    invoke-static {v1, v3}, Lcom/senseonics/graph/util/GraphUtils;->measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 636
    iget-object v4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgettextRect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v5}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgettextRect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    sub-float/2addr v5, v3

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public drawHorizontalLevelLines(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 5

    .line 647
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 648
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 650
    sget-object v0, Lcom/senseonics/graph/util/GraphUtils;->glucoseLevels:Ljava/util/Map;

    .line 651
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 652
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 653
    sget v3, Lcom/senseonics/graph/util/GraphUtils;->glucoseMinimumLevel:I

    if-eq v2, v3, :cond_0

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->glucoseMaximumLevel:I

    if-eq v2, v3, :cond_0

    .line 656
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 655
    invoke-static {v2, p2}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result v2

    sub-float/2addr v2, p3

    .line 659
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 660
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/graph/util/GraphUtils$COLOR;

    invoke-static {v1}, Lcom/senseonics/graph/util/GraphUtils;->getLineColorId(Lcom/senseonics/graph/util/GraphUtils$COLOR;)I

    move-result v1

    .line 659
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 661
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 663
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 666
    :cond_1
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 664
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->levelTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 670
    :goto_2
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpath(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 671
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpath(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Path;

    move-result-object v1

    const/4 v3, 0x0

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 674
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpath(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 675
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpath(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalDashedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public drawLine12Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V
    .locals 2

    .line 510
    invoke-virtual {p5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p5, p1, v0

    if-ltz p5, :cond_1

    invoke-virtual {p6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    cmp-long p1, p1, p5

    if-gez p1, :cond_1

    .line 511
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object p2

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p5}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object p5

    invoke-static {p1, p2, p5, p4}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result p1

    float-to-double p1, p1

    sub-double/2addr p1, p7

    double-to-float p1, p1

    float-to-double p1, p1

    div-double/2addr p1, p9

    double-to-float p1, p1

    .line 516
    iget-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget p2, p2, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float/2addr p2, p1

    const-string p1, "H"

    .line 517
    invoke-static {p1, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "0"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    int-to-float p7, p1

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result p1

    int-to-float p9, p1

    iget-object p10, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalThickLinePaint:Landroid/graphics/Paint;

    move-object p5, p3

    move p6, p2

    move p8, p2

    invoke-virtual/range {p5 .. p10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    int-to-float p7, p1

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result p1

    int-to-float p9, p1

    iget-object p10, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalLinePaint:Landroid/graphics/Paint;

    move-object p5, p3

    move p6, p2

    move p8, p2

    invoke-virtual/range {p5 .. p10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 525
    :goto_0
    invoke-virtual {p0, p4}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHour(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 526
    iget-object p4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    iget p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    sub-float/2addr p4, p5

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p11, :cond_1

    .line 531
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f1100c2

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    iget p6, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    mul-float/2addr p6, p5

    sub-float/2addr p4, p6

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    .line 530
    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public drawLine6Section(JLandroid/graphics/Canvas;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;DDZ)V
    .locals 2

    .line 539
    invoke-virtual {p5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p5, p1, v0

    if-ltz p5, :cond_1

    invoke-virtual {p6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p5

    cmp-long p1, p1, p5

    if-gez p1, :cond_1

    .line 540
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object p2

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p5}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object p5

    invoke-static {p1, p2, p5, p4}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result p1

    float-to-double p1, p1

    sub-double/2addr p1, p7

    double-to-float p1, p1

    float-to-double p1, p1

    div-double/2addr p1, p9

    double-to-float p1, p1

    .line 545
    iget-object p2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget p2, p2, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    mul-float/2addr p2, p1

    const-string p1, "H"

    .line 546
    invoke-static {p1, p4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "0"

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    int-to-float p7, p1

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result p1

    int-to-float p9, p1

    iget-object p10, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalThickLinePaint:Landroid/graphics/Paint;

    move-object p5, p3

    move p6, p2

    move p8, p2

    invoke-virtual/range {p5 .. p10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object p1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    int-to-float p7, p1

    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result p1

    int-to-float p9, p1

    iget-object p10, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->horizontalLinePaint:Landroid/graphics/Paint;

    move-object p5, p3

    move p6, p2

    move p8, p2

    invoke-virtual/range {p5 .. p10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 553
    :goto_0
    invoke-virtual {p0, p4}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHour(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 554
    iget-object p4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    iget p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    sub-float/2addr p4, p5

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    if-eqz p11, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p4, 0x7f1100c2

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {p4}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetpaddingTop(Lcom/jjoe64/graphview/Graph;)I

    move-result p4

    add-int/lit8 p4, p4, 0x0

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    iget p6, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textHeight:F

    mul-float/2addr p6, p5

    sub-float/2addr p4, p6

    iget-object p5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->textPaint:Landroid/graphics/Paint;

    .line 558
    invoke-virtual {p3, p1, p2, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getHour(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 594
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/senseonics/util/TimeProvider;->getHour24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxScroll()D
    .locals 6

    .line 743
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetstartDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetendDate(Lcom/jjoe64/graphview/Graph;)Ljava/util/Calendar;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-static {v0, v1, v2, v3}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result v0

    float-to-double v0, v0

    .line 745
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->viewportSize:D

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getHeight()I

    move-result v1

    int-to-float v14, v1

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->getWidth()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    .line 282
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v2}, Lcom/jjoe64/graphview/Graph;->getMaxY()D

    move-result-wide v2

    .line 283
    iget-object v4, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v4}, Lcom/jjoe64/graphview/Graph;->getMinY()D

    move-result-wide v4

    .line 284
    iget-object v6, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lcom/jjoe64/graphview/Graph;->getMaxX(Z)D

    move-result-wide v6

    .line 285
    iget-object v8, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v8, v11}, Lcom/jjoe64/graphview/Graph;->getMinX(Z)D

    move-result-wide v19

    sub-double v21, v6, v19

    .line 289
    iget-object v6, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iput v1, v6, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    cmpl-double v1, v2, v4

    const-wide/16 v6, 0x0

    if-nez v1, :cond_1

    cmpl-double v1, v2, v6

    if-nez v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v23, v6

    goto :goto_0

    :cond_0
    const-wide v6, 0x3ff0cccccccccccdL    # 1.05

    mul-double/2addr v2, v6

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v6

    :cond_1
    move-wide/from16 v23, v4

    :goto_0
    sub-double v25, v2, v23

    .line 305
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget-object v1, v1, Lcom/jjoe64/graphview/Graph;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 308
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget v2, v2, Lcom/jjoe64/graphview/Graph;->bottomPositionY:F

    invoke-virtual {v0, v13, v1, v2}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawHorizontalLevelLines(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 311
    iget-boolean v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->shouldDrawVerticalLines:Z

    if-eqz v1, :cond_2

    .line 312
    invoke-direct/range {p0 .. p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawSectionLines(Landroid/graphics/Canvas;)V

    :cond_2
    move v12, v11

    .line 315
    :goto_1
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetgraphSeries(Lcom/jjoe64/graphview/Graph;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    .line 316
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetgraphSeries(Lcom/jjoe64/graphview/Graph;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_3

    move/from16 v17, v18

    goto :goto_2

    :cond_3
    move/from16 v17, v11

    .line 322
    :goto_2
    iget-object v2, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    move-object v1, v2

    invoke-static {v2, v12}, Lcom/jjoe64/graphview/Graph;->-$$Nest$mgetValues(Lcom/jjoe64/graphview/Graph;I)[Lcom/jjoe64/graphview/GraphViewDataInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jjoe64/graphview/Graph;->subDivideGlucosePoints([Lcom/jjoe64/graphview/GraphViewDataInterface;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v2, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget v4, v2, Lcom/jjoe64/graphview/Graph;->graphwidth:F

    const/4 v6, 0x0

    const/4 v15, 0x0

    iget-object v2, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v2}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetgraphSeries(Lcom/jjoe64/graphview/Graph;)Ljava/util/List;

    move-result-object v2

    .line 324
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/GraphViewSeries;

    iget-object v2, v2, Lcom/jjoe64/graphview/GraphViewSeries;->style:Lcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    move v5, v14

    move-wide/from16 v7, v19

    move-wide/from16 v9, v23

    move/from16 v28, v11

    move/from16 v27, v12

    move-wide/from16 v11, v21

    move/from16 v29, v14

    move-wide/from16 v13, v25

    .line 322
    invoke-virtual/range {v1 .. v17}, Lcom/jjoe64/graphview/Graph;->drawSeries(Landroid/graphics/Canvas;Ljava/util/ArrayList;FFFDDDDFLcom/jjoe64/graphview/GraphViewSeries$GraphViewSeriesStyle;Z)V

    add-int/lit8 v12, v27, 0x1

    move-object/from16 v13, p1

    move/from16 v11, v28

    move/from16 v14, v29

    goto :goto_1

    .line 328
    :cond_4
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetrect(Lcom/jjoe64/graphview/Graph;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget v2, v2, Lcom/jjoe64/graphview/Graph;->bottomPositionY:F

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v1, v2}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawGlucoseThreholdText(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    .line 330
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph;->setUpEventGroups()V

    .line 331
    iget-object v1, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget-object v1, v1, Lcom/jjoe64/graphview/Graph;->eventGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jjoe64/graphview/Graph$EventGroup;

    .line 332
    iget-object v4, v0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget v4, v4, Lcom/jjoe64/graphview/Graph;->bottomPositionY:F

    invoke-virtual {v0, v3, v2, v4}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->drawEventGroup(Landroid/graphics/Canvas;Lcom/jjoe64/graphview/Graph$EventGroup;F)V

    goto :goto_3

    .line 336
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->DrawTappingEffect(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 819
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 820
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->handler:Landroid/os/Handler;

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->isScrollable()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v0}, Lcom/jjoe64/graphview/Graph;->isDisableTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetscalable(Lcom/jjoe64/graphview/Graph;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetscaleDetector(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/ScaleGestureDetector;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetscaleDetector(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jjoe64/graphview/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 830
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetscaleDetector(Lcom/jjoe64/graphview/Graph;)Lcom/jjoe64/graphview/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jjoe64/graphview/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_5

    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v3, v4, :cond_3

    .line 837
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 838
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    iget v8, v8, Lcom/jjoe64/graphview/Graph;->bottomPositionY:F

    sub-float/2addr v7, v8

    .line 837
    invoke-virtual {v3, v6, v7}, Lcom/jjoe64/graphview/Graph;->ifEventClick(FF)Z

    move-result v3

    iput-boolean v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    if-eqz v3, :cond_3

    .line 840
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickedX:F

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickedY:F

    .line 844
    :cond_3
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    const/4 v6, 0x0

    .line 845
    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 846
    :cond_4
    iput-boolean v5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    .line 847
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    .line 848
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Point;->x:I

    .line 849
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Point;->y:I

    .line 851
    new-instance v3, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;

    invoke-direct {v3, p0, p1}, Lcom/jjoe64/graphview/Graph$GraphViewContentView$4;-><init>(Lcom/jjoe64/graphview/Graph$GraphViewContentView;Landroid/view/MotionEvent;)V

    iput-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->runnable:Ljava/lang/Runnable;

    .line 865
    iget-object v6, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->handler:Landroid/os/Handler;

    const-wide/16 v7, 0x258

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 868
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v3, v1

    const-string v6, "Tap Test"

    if-nez v3, :cond_6

    .line 869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v3, v4

    if-nez v3, :cond_6

    const-string v0, "scrollingStarted = true"

    .line 870
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iput-boolean v5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->scrollingStarted:Z

    move v0, v5

    .line 874
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_7

    .line 875
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->scrollingStarted:Z

    .line 876
    iput v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->lastTouchEventX:F

    move v0, v5

    .line 880
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v3, v4, :cond_8

    .line 882
    iget-boolean v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    if-eqz v3, :cond_8

    const-string v3, "isEventClicked: false 2"

    .line 883
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    .line 885
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isEventClicked: false 2 |diffX:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickedX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "|diffY:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 886
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickedY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 885
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickedX:F

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickDetectDistance:I

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_8

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickedY:F

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickDetectDistance:I

    int-to-float v7, v7

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_8

    .line 889
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v3, v7, v8}, Lcom/jjoe64/graphview/Graph;->clickEvent(FF)V

    .line 893
    :cond_8
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/senseonics/graph/VerticalLineManager;->verticalLineIsVisible()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 894
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/senseonics/graph/VerticalLineManager;->hideVerticalLine()V

    .line 895
    :cond_9
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    .line 897
    invoke-direct {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToStart()V

    .line 898
    invoke-direct {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToEnd()V

    .line 901
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_c

    const-string v3, "isEventClicked: false 3"

    .line 902
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    .line 904
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/senseonics/graph/VerticalLineManager;->verticalLineIsVisible()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 905
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v3}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/senseonics/graph/VerticalLineManager;->hideVerticalLine()V

    .line 906
    :cond_b
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    .line 907
    invoke-direct {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToStart()V

    .line 908
    invoke-direct {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->slideBackToEnd()V

    .line 911
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_16

    .line 914
    iget-object v3, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 915
    iget-object v4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float/2addr v4, v7

    float-to-int v4, v4

    .line 917
    iget-object v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 918
    iget-object v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->firstPointStart:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 920
    iget-boolean v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v7}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v7

    .line 921
    invoke-interface {v7}, Lcom/senseonics/graph/VerticalLineManager;->verticalLineIsVisible()Z

    move-result v7

    if-nez v7, :cond_e

    .line 922
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->longPressDetectDistance:I

    if-gt v7, v8, :cond_d

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->longPressDetectDistance:I

    if-le v7, v8, :cond_e

    .line 923
    :cond_d
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    .line 926
    :cond_e
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickDetectDistance:I

    sub-int/2addr v7, v5

    if-gt v3, v7, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->clickDetectDistance:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_10

    :cond_f
    const-string v3, "isEventClicked: false 4"

    .line 927
    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    .line 929
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-virtual {v1}, Lcom/jjoe64/graphview/Graph;->hideEvent()V

    .line 932
    :cond_10
    iget-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isLongTap:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v1}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v1

    .line 933
    invoke-interface {v1}, Lcom/senseonics/graph/VerticalLineManager;->verticalLineIsVisible()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 934
    iget-object v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->this$0:Lcom/jjoe64/graphview/Graph;

    invoke-static {v0}, Lcom/jjoe64/graphview/Graph;->-$$Nest$fgetverticalLineManager(Lcom/jjoe64/graphview/Graph;)Lcom/senseonics/graph/VerticalLineManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/senseonics/graph/VerticalLineManager;->drawVerticalLine(F)V

    return v5

    .line 939
    :cond_11
    iget-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->scrollingStarted:Z

    if-eqz v1, :cond_16

    .line 940
    iget v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->lastTouchEventX:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_15

    const-string v0, "isEventClicked: false 5"

    .line 943
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->lastTouchEventX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    .line 949
    iput-boolean v5, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    :cond_12
    const-wide/16 v2, 0x19

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    const v0, 0x3f99999a    # 1.2f

    goto :goto_1

    :cond_13
    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    :cond_14
    const/high16 v0, 0x40200000    # 2.5f

    .line 959
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->lastTouchEventX:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->onMoveGesture(F)V

    .line 961
    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->lastTouchEventX:F

    move v0, v5

    .line 968
    :cond_16
    iget-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->isEventClicked:Z

    if-nez v1, :cond_17

    .line 969
    iget-object v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gestureDetector onTouchEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; handled:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Tap"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    if-eqz v0, :cond_19

    .line 974
    invoke-virtual {p0}, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->invalidate()V

    goto :goto_2

    .line 977
    :cond_18
    iput-boolean v1, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->scrollingStarted:Z

    .line 978
    iput v2, p0, Lcom/jjoe64/graphview/Graph$GraphViewContentView;->lastTouchEventX:F

    :cond_19
    :goto_2
    return v0

    .line 823
    :cond_1a
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
