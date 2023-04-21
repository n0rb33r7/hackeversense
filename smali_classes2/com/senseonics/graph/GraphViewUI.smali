.class public Lcom/senseonics/graph/GraphViewUI;
.super Lcom/senseonics/graph/GraphView;
.source "GraphViewUI.java"


# instance fields
.field private autoScrollIsOn:Z

.field private context:Landroid/content/Context;

.field private eventPoint:Lcom/senseonics/events/EventPoint;

.field private glucose:Lcom/senseonics/graph/util/Glucose;

.field private glucoseEventCount:I

.field private graphPaddingTop:I

.field private height:I

.field private lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

.field private screenWidth:I

.field private scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

.field private tempX:F

.field private verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;


# direct methods
.method static bridge synthetic -$$Nest$fgetautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/senseonics/graph/GraphViewUI;->autoScrollIsOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/senseonics/graph/GraphViewUI;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/graph/GraphViewUI;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventPoint(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/events/EventPoint;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/graph/GraphViewUI;->eventPoint:Lcom/senseonics/events/EventPoint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetglucose(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/util/Glucose;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/graph/GraphViewUI;->glucose:Lcom/senseonics/graph/util/Glucose;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetglucoseEventCount(Lcom/senseonics/graph/GraphViewUI;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/graph/GraphViewUI;->glucoseEventCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollManager(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/GraphView$ScrollManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/graph/GraphViewUI;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetverticalLineHolder(Lcom/senseonics/graph/GraphViewUI;)Lcom/senseonics/graph/VerticalLineHolder;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/graph/GraphViewUI;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputautoScrollIsOn(Lcom/senseonics/graph/GraphViewUI;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/senseonics/graph/GraphViewUI;->autoScrollIsOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeventPoint(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/events/EventPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->eventPoint:Lcom/senseonics/events/EventPoint;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglucose(Lcom/senseonics/graph/GraphViewUI;Lcom/senseonics/graph/util/Glucose;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->glucose:Lcom/senseonics/graph/util/Glucose;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglucoseEventCount(Lcom/senseonics/graph/GraphViewUI;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/graph/GraphViewUI;->glucoseEventCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/senseonics/graph/GraphView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/senseonics/graph/GraphViewUI;->glucoseEventCount:I

    .line 62
    new-instance p1, Lcom/senseonics/graph/GraphViewUI$1;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphViewUI$1;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILjava/util/Calendar;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/senseonics/graph/GraphView;-><init>(Landroid/content/Context;IIIILjava/util/Calendar;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/senseonics/graph/GraphViewUI;->glucoseEventCount:I

    .line 62
    new-instance p2, Lcom/senseonics/graph/GraphViewUI$1;

    invoke-direct {p2, p0}, Lcom/senseonics/graph/GraphViewUI$1;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    iput-object p2, p0, Lcom/senseonics/graph/GraphViewUI;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    .line 31
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->context:Landroid/content/Context;

    .line 32
    iput p3, p0, Lcom/senseonics/graph/GraphViewUI;->screenWidth:I

    .line 33
    iput p4, p0, Lcom/senseonics/graph/GraphViewUI;->height:I

    .line 34
    div-int/lit8 p4, p4, 0xa

    iput p4, p0, Lcom/senseonics/graph/GraphViewUI;->graphPaddingTop:I

    .line 36
    invoke-super {p0}, Lcom/senseonics/graph/GraphView;->getVerticalLineHolder()Lcom/senseonics/graph/VerticalLineHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->verticalLineHolder:Lcom/senseonics/graph/VerticalLineHolder;

    .line 37
    iget-object p2, p0, Lcom/senseonics/graph/GraphViewUI;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    invoke-virtual {p1, p2}, Lcom/senseonics/graph/VerticalLineHolder;->setScrollManager(Lcom/senseonics/graph/GraphView$LineScrollManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/senseonics/graph/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/senseonics/graph/GraphViewUI;->glucoseEventCount:I

    .line 62
    new-instance p1, Lcom/senseonics/graph/GraphViewUI$1;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphViewUI$1;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/graph/GraphView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/senseonics/graph/GraphViewUI;->glucoseEventCount:I

    .line 62
    new-instance p1, Lcom/senseonics/graph/GraphViewUI$1;

    invoke-direct {p1, p0}, Lcom/senseonics/graph/GraphViewUI$1;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->lineScrollManager:Lcom/senseonics/graph/GraphView$LineScrollManager;

    return-void
.end method


# virtual methods
.method public addGlucoseSubView(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/senseonics/events/EventPoint;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 55
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/events/EventPoint;

    iput-object v0, p0, Lcom/senseonics/graph/GraphViewUI;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 56
    invoke-virtual {v0}, Lcom/senseonics/events/EventPoint;->getX()F

    move-result v0

    iput v0, p0, Lcom/senseonics/graph/GraphViewUI;->tempX:F

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/graph/GraphViewUI;->addUITransparentButton()V

    .line 59
    invoke-super {p0, p1, p2}, Lcom/senseonics/graph/GraphView;->addGlucoseSubView(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public addUITransparentButton()V
    .locals 6

    .line 104
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/graph/GraphViewUI;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 106
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x14

    .line 107
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/senseonics/graph/GraphViewUI;->addView(Landroid/view/View;)V

    const-string v1, "ClickMe"

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x10000

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 114
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/senseonics/graph/GraphViewUI;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v2

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xe

    .line 117
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {p0, v3}, Lcom/senseonics/graph/GraphViewUI;->addView(Landroid/view/View;)V

    const-string v2, "MyGlucose"

    .line 120
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, -0x100

    .line 121
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 124
    new-instance v1, Lcom/senseonics/graph/GraphViewUI$2;

    invoke-direct {v1, p0}, Lcom/senseonics/graph/GraphViewUI$2;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v1, Lcom/senseonics/graph/GraphViewUI$3;

    invoke-direct {v1, p0}, Lcom/senseonics/graph/GraphViewUI$3;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 144
    new-instance v0, Lcom/senseonics/graph/GraphViewUI$4;

    invoke-direct {v0, p0}, Lcom/senseonics/graph/GraphViewUI$4;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v0, Lcom/senseonics/graph/GraphViewUI$5;

    invoke-direct {v0, p0}, Lcom/senseonics/graph/GraphViewUI$5;-><init>(Lcom/senseonics/graph/GraphViewUI;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setScrollManager(Lcom/senseonics/graph/GraphView$ScrollManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/senseonics/graph/GraphViewUI;->scrollManager:Lcom/senseonics/graph/GraphView$ScrollManager;

    return-void
.end method
