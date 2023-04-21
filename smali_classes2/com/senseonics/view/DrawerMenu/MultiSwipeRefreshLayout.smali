.class public Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "MultiSwipeRefreshLayout.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mSwipeableChildren:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static canViewScrollUp(Landroid/view/View;)Z
    .locals 3

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    .line 94
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 96
    :cond_0
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 99
    check-cast p0, Landroid/widget/AbsListView;

    .line 100
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_2

    .line 102
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result p0

    if-ge v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 105
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public canChildScrollUp()Z
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->mSwipeableChildren:[Landroid/view/View;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->canViewScrollUp(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public varargs setSwipeableChildren([I)V
    .locals 3

    .line 52
    array-length v0, p1

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->mSwipeableChildren:[Landroid/view/View;

    const/4 v0, 0x0

    .line 53
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->mSwipeableChildren:[Landroid/view/View;

    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/senseonics/view/DrawerMenu/MultiSwipeRefreshLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
