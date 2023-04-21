.class public Lorg/michaelbel/bottomsheet/BottomSheetCell;
.super Landroid/widget/FrameLayout;
.source "BottomSheetCell.java"


# instance fields
.field private cellHeight:I

.field private divider:Z

.field private iconView:Landroid/widget/ImageView;

.field private paint:Landroid/graphics/Paint;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x1f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    const/high16 v0, 0x42400000    # 48.0f

    .line 62
    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->cellHeight:I

    .line 64
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->iconView:Landroid/widget/ImageView;

    .line 65
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {p1, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p1, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const v1, 0x800013

    .line 68
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v2, 0x41800000    # 16.0f

    .line 69
    invoke-static {p1, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 70
    invoke-static {p1, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 72
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->addView(Landroid/view/View;)V

    .line 75
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 77
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 78
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 79
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 80
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 83
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 84
    invoke-static {p1, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 85
    invoke-static {p1, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 87
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 176
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->divider:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    iget-object v6, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 169
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 170
    iget p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->cellHeight:I

    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->divider:Z

    add-int/2addr p2, v0

    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDivider(Z)Lorg/michaelbel/bottomsheet/BottomSheetCell;
    .locals 0

    .line 155
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->divider:Z

    xor-int/lit8 p1, p1, 0x1

    .line 156
    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setWillNotDraw(Z)V

    return-object p0
.end method

.method public setDividerColor(Z)Lorg/michaelbel/bottomsheet/BottomSheetCell;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->paint:Landroid/graphics/Paint;

    if-nez p1, :cond_0

    const/high16 p1, 0x1f000000

    goto :goto_0

    :cond_0
    const p1, 0x1fffffff

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 162
    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->setWillNotDraw(Z)V

    return-object p0
.end method

.method public setHeight(I)Lorg/michaelbel/bottomsheet/BottomSheetCell;
    .locals 0

    .line 150
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->cellHeight:I

    return-object p0
.end method

.method public setIcon(II)Lorg/michaelbel/bottomsheet/BottomSheetCell;
    .locals 5

    const v0, 0x800013

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, -0x2

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 99
    :cond_0
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 102
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {p2, v0}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 104
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 105
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 107
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 110
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 111
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)Lorg/michaelbel/bottomsheet/BottomSheetCell;
    .locals 5

    const v0, 0x800013

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, -0x2

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, p2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_0
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 128
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 129
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x42900000    # 72.0f

    invoke-static {p2, v0}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 130
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 131
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 133
    :cond_1
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 135
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 136
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetCell;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 137
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;I)Lorg/michaelbel/bottomsheet/BottomSheetCell;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetCell;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method
