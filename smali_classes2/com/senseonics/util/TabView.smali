.class public Lcom/senseonics/util/TabView;
.super Landroid/widget/RelativeLayout;
.source "TabView.java"


# instance fields
.field allTab:Landroid/widget/LinearLayout;

.field drawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field layout:Landroid/widget/LinearLayout;

.field selectedDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field tab1:Landroid/widget/LinearLayout;

.field tab2:Landroid/widget/LinearLayout;

.field tab3:Landroid/widget/LinearLayout;

.field tab4:Landroid/widget/LinearLayout;

.field tab5:Landroid/widget/LinearLayout;


# direct methods
.method static bridge synthetic -$$Nest$mdeselectAll(Lcom/senseonics/util/TabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/util/TabView;->deselectAll()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/TabView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    .line 20
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/senseonics/util/TabView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private deselectAll()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/senseonics/util/TabView;->toggleSelectedImage(Ljava/lang/Integer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 255
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab2:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 256
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab3:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 257
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 258
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab5:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setSelected(Z)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const v0, 0x7f0c0111

    const/4 v1, 0x0

    .line 38
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10102eb

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    const/4 v4, -0x1

    invoke-direct {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/senseonics/util/TabView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->allTab:Landroid/widget/LinearLayout;

    const v1, 0x7f090067

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090379

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->tab1:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    const v1, 0x7f09037b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->tab2:Landroid/widget/LinearLayout;

    .line 56
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    const v1, 0x7f09037d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->tab3:Landroid/widget/LinearLayout;

    .line 57
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    const v1, 0x7f09037f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090381

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/senseonics/util/TabView;->tab5:Landroid/widget/LinearLayout;

    .line 60
    sget-object v0, Lcom/senseonics/gen12androidapp/R$styleable;->TabView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v3, p2, :cond_0

    .line 64
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    const v1, 0x7f08005e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 113
    :pswitch_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 91
    :pswitch_1
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab5:Landroid/widget/LinearLayout;

    const v2, 0x7f0901c5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 93
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v1, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 109
    :pswitch_2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 85
    :pswitch_3
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    const v2, 0x7f0901c4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 87
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v1, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 105
    :pswitch_4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :pswitch_5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab3:Landroid/widget/LinearLayout;

    const v2, 0x7f0901c3

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-object v1, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    :pswitch_6
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 74
    :pswitch_7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab2:Landroid/widget/LinearLayout;

    const v2, 0x7f0901c2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v1, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 97
    :pswitch_8
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :pswitch_9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/senseonics/util/TabView;->tab1:Landroid/widget/LinearLayout;

    const v2, 0x7f0901c1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    iget-object v1, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public allTabClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/senseonics/util/TabView;->allTab:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/util/TabView$1;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/TabView$1;-><init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getDrawables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIconGroupIdFromIndex(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0901c1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 147
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f0901c5

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const p1, 0x7f0901c4

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f0901c3

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_3
    const p1, 0x7f0901c2

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 127
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public ifNothingIsSelected()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab1:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab2:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab3:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab5:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/senseonics/util/TabView;->allTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/senseonics/util/TabView;->allTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAllTabSelected(Z)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/senseonics/util/TabView;->allTab:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 162
    iget-object v0, p0, Lcom/senseonics/util/TabView;->allTab:Landroid/widget/LinearLayout;

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/senseonics/util/TabView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060073

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "#587cb0"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 164
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public tab1ClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab1:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/util/TabView$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/TabView$2;-><init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public tab2ClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab2:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/util/TabView$3;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/TabView$3;-><init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public tab3ClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab3:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/util/TabView$4;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/TabView$4;-><init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public tab4ClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab4:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/util/TabView$5;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/TabView$5;-><init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public tab5ClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/senseonics/util/TabView;->tab5:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/util/TabView$6;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/util/TabView$6;-><init>(Lcom/senseonics/util/TabView;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public toggleSelectedImage(Ljava/lang/Integer;Z)V
    .locals 1

    .line 155
    invoke-virtual {p0, p1}, Lcom/senseonics/util/TabView;->getIconGroupIdFromIndex(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 156
    iget-object p2, p0, Lcom/senseonics/util/TabView;->selectedDrawables:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/senseonics/util/TabView;->drawables:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 157
    iget-object p2, p0, Lcom/senseonics/util/TabView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
