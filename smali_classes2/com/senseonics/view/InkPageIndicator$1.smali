.class Lcom/senseonics/view/InkPageIndicator$1;
.super Landroid/database/DataSetObserver;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$1;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$1;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {v0}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetviewPager(Lcom/senseonics/view/InkPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$msetPageCount(Lcom/senseonics/view/InkPageIndicator;I)V

    return-void
.end method
