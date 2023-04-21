.class public Lcom/senseonics/graph/VerticalLineHolder;
.super Landroid/view/View;
.source "VerticalLineHolder.java"


# instance fields
.field private gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

.field private final shouldHandleTouch:Z

.field private showVerticalLine:Z

.field private verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

.field private verticalLinePaint:Landroid/graphics/Paint;

.field private verticalLinePositionX:F

.field private verticalLineRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 29
    div-int/lit8 v0, p2, 0x5

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/graph/VerticalLineHolder;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, p4

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    .line 41
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 43
    new-instance p2, Lcom/senseonics/graph/VerticalLineHolder$1;

    invoke-direct {p2, p0}, Lcom/senseonics/graph/VerticalLineHolder$1;-><init>(Lcom/senseonics/graph/VerticalLineHolder;)V

    iput-object p2, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    if-nez p4, :cond_0

    const/4 v1, 0x1

    .line 60
    :cond_0
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->shouldHandleTouch:Z

    .line 61
    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    new-instance p3, Lcom/senseonics/graph/VerticalLineHolder$2;

    invoke-direct {p3, p0}, Lcom/senseonics/graph/VerticalLineHolder$2;-><init>(Lcom/senseonics/graph/VerticalLineHolder;)V

    invoke-direct {p2, p1, p3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/senseonics/graph/VerticalLineHolder;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method


# virtual methods
.method public drawVerticalLine(F)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 113
    iput p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    .line 114
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 115
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {p1}, Lcom/senseonics/graph/GraphView$LineScrollManager;->stopScroll()V

    .line 116
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->invalidate()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    .line 122
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->scrollLeft()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    iput p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    .line 127
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {p1}, Lcom/senseonics/graph/GraphView$LineScrollManager;->scrollRight()V

    .line 130
    :cond_2
    iput-boolean v1, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 131
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->invalidate()V

    .line 133
    :goto_0
    iget-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    iget v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    invoke-interface {p1, v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->positionChanged(F)V

    return-void
.end method

.method public getVerticalLineManager()Lcom/senseonics/graph/VerticalLineManager;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineManager:Lcom/senseonics/graph/VerticalLineManager;

    return-object v0
.end method

.method public hideVerticalLine()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->stopScroll()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    .line 139
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-interface {v0}, Lcom/senseonics/graph/GraphView$LineScrollManager;->actionCancelled()V

    .line 140
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 73
    iget-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    if-eqz v0, :cond_0

    .line 74
    iget v2, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v4, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePositionX:F

    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/senseonics/graph/VerticalLineHolder;->verticalLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->shouldHandleTouch:Z

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->verticalLineIsVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/graph/VerticalLineHolder;->drawVerticalLine(F)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/graph/VerticalLineHolder;->hideVerticalLine()V

    :cond_2
    :goto_0
    return v1

    .line 102
    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScrollManager(Lcom/senseonics/graph/GraphView$LineScrollManager;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/senseonics/graph/VerticalLineHolder;->scrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    return-void
.end method

.method public verticalLineIsVisible()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/senseonics/graph/VerticalLineHolder;->showVerticalLine:Z

    return v0
.end method
