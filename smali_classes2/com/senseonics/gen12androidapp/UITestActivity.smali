.class public Lcom/senseonics/gen12androidapp/UITestActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "UITestActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 8
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 10
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/UITestActivity;->initializeLayout(I)Landroid/view/View;

    const/4 p1, 0x0

    const-string v0, ""

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v0, v1}, Lcom/senseonics/gen12androidapp/UITestActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
