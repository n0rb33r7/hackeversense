.class public Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "DosingBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;,
        Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;
    }
.end annotation


# instance fields
.field private pager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    new-instance p1, Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p1, p0}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    .line 24
    new-instance p1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;-><init>(Lcom/senseonics/gen12androidapp/DosingBaseActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 25
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const p1, 0x7f0902c3

    .line 27
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/senseonics/view/InkPageIndicator;

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 p1, 0x1

    .line 31
    sput-boolean p1, Lcom/senseonics/util/Utils;->isDosingIntroShowing:Z

    return-void
.end method

.method protected setPageAndImage(Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;Landroid/widget/ImageView;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->pager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 52
    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->getDosingImage()I

    move-result p1

    if-lez p1, :cond_0

    .line 54
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
