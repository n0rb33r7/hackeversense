.class public Lcom/senseonics/graph/DateView;
.super Landroid/view/View;
.source "DateView.java"


# instance fields
.field private bitmapHeight:I

.field private bitmapWidth:I

.field private leftArrow:Landroid/graphics/Bitmap;

.field private myPaint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private rightArrow:Landroid/graphics/Bitmap;

.field private text:Ljava/lang/String;

.field private textHeight:F

.field private textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    .line 52
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 60
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    mul-int/lit8 v0, p3, 0x3

    .line 62
    div-int/lit8 v0, v0, 0x2

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getTop()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 65
    iget-object p2, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f070066

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object p2, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    const-string p3, "12PMg"

    invoke-static {p3, p2}, Lcom/senseonics/graph/util/GraphUtils;->measureText(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/senseonics/graph/DateView;->textHeight:F

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lcom/senseonics/graph/DateView;->textHeight:F

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, " **** text height"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f080116

    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080170

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    .line 75
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    .line 76
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    .line 77
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 79
    iget p2, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    if-le p2, p1, :cond_0

    .line 80
    div-int/2addr p2, p1

    int-to-float p2, p2

    .line 81
    iget p3, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    .line 82
    iget-object p3, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    invoke-static {p3, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    .line 84
    iget-object p3, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    invoke-static {p3, p2, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    iput-object p3, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    .line 87
    iput p1, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    .line 88
    iput p2, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    .line 91
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    .line 92
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 99
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/senseonics/graph/DateView;->textHeight:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 99
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 103
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->rightArrow:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    :cond_0
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formatDateForToolbar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->leftArrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/senseonics/graph/DateView;->bitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/senseonics/graph/DateView;->rect:Landroid/graphics/Rect;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/senseonics/graph/DateView;->bitmapHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    .line 114
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getHeight()I

    move-result v0

    int-to-float v8, v0

    iget-object v9, p0, Lcom/senseonics/graph/DateView;->myPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 120
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 3

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 127
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 128
    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formatDateForToolbar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 131
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->addTodayDate()Z

    move-result p1

    const v1, 0x7f110318

    if-eqz p1, :cond_0

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 138
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->invalidate()V

    return-void
.end method

.method public setDate(Ljava/util/Date;Ljava/util/Date;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/senseonics/graph/DateView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 149
    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 155
    invoke-static {v0}, Lcom/senseonics/util/TimeProvider;->formatDateToYearMonthDayString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 157
    invoke-virtual {p2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110318

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/DateView;->text:Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/senseonics/graph/DateView;->invalidate()V

    return-void
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/senseonics/graph/DateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
