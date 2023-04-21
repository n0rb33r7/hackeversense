.class Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "DosingBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/DosingBaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/DosingBaseActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$PagerAdapter;->this$0:Lcom/senseonics/gen12androidapp/DosingBaseActivity;

    .line 36
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 46
    sget-object v0, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
