.class public Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;
.super Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.source "DosingWelcomeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 10
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 12
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f11020e

    .line 13
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->WELCOME:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;->setPageAndImage(Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;Landroid/widget/ImageView;)V

    .line 16
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity$1;-><init>(Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
