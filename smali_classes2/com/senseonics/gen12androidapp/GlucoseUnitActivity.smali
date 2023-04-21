.class public Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "GlucoseUnitActivity.java"


# instance fields
.field private glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;


# direct methods
.method static bridge synthetic -$$Nest$fgetglucoseUnitFragment(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)Lcom/senseonics/fragments/GlucoseUnitFragment;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgoToNextStep(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->goToNextStep()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private goToNextStep()V
    .locals 3

    .line 80
    invoke-static {p0}, Lcom/senseonics/util/Utils;->shouldShowDosingIntro(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x10008000

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/DosingWelcomeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 22
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->initializeLayout(I)Landroid/view/View;

    .line 24
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->statusBarDrawerButton:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->hideDailyCal()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080195

    goto :goto_0

    :cond_0
    const p1, 0x7f080193

    :goto_0
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    new-instance v0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity$1;-><init>(Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance p1, Lcom/senseonics/fragments/GlucoseUnitFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/GlucoseUnitFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f09018c

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->glucoseUnitFragment:Lcom/senseonics/fragments/GlucoseUnitFragment;

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 74
    invoke-static {p0}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;->finish()V

    :cond_1
    return-void
.end method
