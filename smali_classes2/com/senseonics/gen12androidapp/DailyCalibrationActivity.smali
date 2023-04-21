.class public Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "DailyCalibrationActivity.java"


# instance fields
.field protected calibrationManager:Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

.field protected dailyCalibrationFragment:Lcom/senseonics/fragments/DailyCalibrationFragment;

.field protected progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    .line 20
    new-instance v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$1;-><init>(Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->calibrationManager:Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableSaveButton()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 114
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public enableSaveButton()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 105
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0036

    .line 73
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->initializeLayout(I)Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1100ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f1202ee

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f08009b

    .line 78
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 80
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity$2;-><init>(Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 90
    new-instance p1, Lcom/senseonics/fragments/DailyCalibrationFragment;

    invoke-direct {p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->dailyCalibrationFragment:Lcom/senseonics/fragments/DailyCalibrationFragment;

    .line 91
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->calibrationManager:Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    invoke-virtual {p1, v0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setCalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;)V

    .line 92
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->dailyCalibrationFragment:Lcom/senseonics/fragments/DailyCalibrationFragment;

    const v1, 0x7f09018c

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->hideProgressDialog()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->hideProgressDialog()V

    .line 133
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadMorningCalibrationTime()V

    .line 124
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadEveningCalibrationTime()V

    .line 126
    :cond_0
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public setNaviBarRightItemTextViewOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
