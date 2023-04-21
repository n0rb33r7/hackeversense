.class public Lcom/senseonics/gen12androidapp/DosingSummaryActivity;
.super Lcom/senseonics/gen12androidapp/DosingBaseActivity;
.source "DosingSummaryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 12
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/DosingBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 14
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->initializeLayout(I)Landroid/view/View;

    const p1, 0x7f1100e3

    .line 15
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;->SUMMARY:Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;

    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->setPageAndImage(Lcom/senseonics/gen12androidapp/DosingBaseActivity$DosingPage;Landroid/widget/ImageView;)V

    .line 18
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DosingSummaryActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/DosingSummaryActivity$1;-><init>(Lcom/senseonics/gen12androidapp/DosingSummaryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
