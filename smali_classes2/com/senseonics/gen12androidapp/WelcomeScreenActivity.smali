.class public Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "WelcomeScreenActivity.java"


# instance fields
.field protected bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 23
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->initializeLayout(I)Landroid/view/View;

    .line 25
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11035d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090138

    .line 29
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 30
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->isBluetoothAdapterAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    new-instance v0, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity$1;-><init>(Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f06007b

    .line 40
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    const p1, 0x7f09013a

    .line 43
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 44
    new-instance v0, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity$2;-><init>(Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
