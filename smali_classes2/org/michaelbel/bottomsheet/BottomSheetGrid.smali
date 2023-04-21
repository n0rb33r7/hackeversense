.class public Lorg/michaelbel/bottomsheet/BottomSheetGrid;
.super Landroid/widget/LinearLayout;
.source "BottomSheetGrid.java"


# instance fields
.field private iconView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 50
    invoke-virtual {p0, v0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->setOrientation(I)V

    .line 51
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v3, v4}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p0, v1, v3, v2, v5}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->setPadding(IIII)V

    .line 53
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->iconView:Landroid/widget/ImageView;

    .line 54
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 56
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42400000    # 48.0f

    invoke-static {v2, v3}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x31

    .line 57
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 59
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->addView(Landroid/view/View;)V

    .line 62
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 64
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 65
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 66
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 67
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x51

    .line 70
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 72
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setIcon(II)Lorg/michaelbel/bottomsheet/BottomSheetGrid;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 80
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 83
    :cond_0
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;I)Lorg/michaelbel/bottomsheet/BottomSheetGrid;
    .locals 2

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 91
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 94
    :cond_0
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;I)Lorg/michaelbel/bottomsheet/BottomSheetGrid;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheetGrid;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p0
.end method
