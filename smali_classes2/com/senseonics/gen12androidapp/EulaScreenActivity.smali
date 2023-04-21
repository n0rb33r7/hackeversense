.class public Lcom/senseonics/gen12androidapp/EulaScreenActivity;
.super Lcom/senseonics/about/EulaActivity;
.source "EulaScreenActivity.java"


# direct methods
.method static bridge synthetic -$$Nest$mEULAAccepted(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->EULAAccepted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowEULAConfirmation(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->showEULAConfirmation()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/senseonics/about/EulaActivity;-><init>()V

    return-void
.end method

.method private EULAAccepted()V
    .locals 3

    const/4 v0, 0x1

    .line 70
    invoke-static {p0, v0}, Lcom/senseonics/util/Utils;->saveIsEulaAccepted(Landroid/content/Context;Z)V

    .line 71
    invoke-static {p0}, Lcom/senseonics/util/Utils;->saveAcceptedEULAVersion(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isLoggedIn(Landroid/content/Context;)Z

    move-result v0

    .line 74
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v1

    .line 75
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v2

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getLoginActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/gen12androidapp/WelcomeScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const v0, 0x10008000

    if-eqz v2, :cond_2

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showEULAConfirmation()V
    .locals 8

    .line 53
    new-instance v4, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;

    invoke-direct {v4, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    const/4 v1, 0x0

    const v2, 0x7f110106

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v6, 0x7f110083

    const v7, 0x7f11001e

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    return-void
.end method


# virtual methods
.method public alwaysDisplayUpdatedInternetDisconnectedAlertText()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Lcom/senseonics/about/EulaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0900b7

    .line 19
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900ea

    .line 20
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0900c9

    .line 21
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$1;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090020

    .line 28
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;-><init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public shouldDownload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
