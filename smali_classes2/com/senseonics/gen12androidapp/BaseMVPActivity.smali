.class public abstract Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "BaseMVPActivity.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;
.implements Lcom/senseonics/util/PickerDialogView;
.implements Lcom/senseonics/view/BottomSheetView;


# instance fields
.field private dialog:Landroid/app/Dialog;

.field protected progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected wasPaused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->wasPaused:Z

    return-void
.end method


# virtual methods
.method protected abstract attachToPresenter()V
.end method

.method protected abstract detachFromPresenter()V
.end method

.method public hideProgress()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/senseonics/view/ProgressDialogFragment;->dismiss()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->wasPaused:Z

    .line 44
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->detachFromPresenter()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 36
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 37
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->attachToPresenter()V

    return-void
.end method

.method public showBottomSheet(I[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 128
    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    invoke-virtual {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->setTitle(I)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->setFullWidth(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->setDividers(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->setTitleMultiline(Z)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1, p2, p3}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->setItems([ILandroid/content/DialogInterface$OnClickListener;)Lorg/michaelbel/bottomsheet/BottomSheet$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lorg/michaelbel/bottomsheet/BottomSheet$Builder;->show()Lorg/michaelbel/bottomsheet/BottomSheet;

    return-void
.end method

.method public showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 59
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 61
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V
    .locals 6

    .line 91
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p6}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomLeftButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p7}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomRightButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomMessage(ILjava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 74
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    const/4 v2, -0x1

    move v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomMessage(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomStackedButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V
    .locals 6

    .line 100
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p6}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomLeftButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 103
    invoke-virtual {p1, p7}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomRightButton(I)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withButtonsStacked(Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithCustomTitleAndMessage(Ljava/lang/String;Ljava/lang/String;ILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 82
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    const/4 v1, -0x1

    const/4 v2, -0x1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p3

    .line 84
    invoke-virtual {p3, p1}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomTitle(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomMessage(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showDialogWithTitleBold(IZIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V
    .locals 6

    .line 66
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    move v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 67
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Lcom/senseonics/view/SimpleDialogFragment;->withTitleBold(Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "DIALOG_TAG"

    invoke-virtual {p1, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showPicker(Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;",
            "Lcom/senseonics/events/EventUtils$PickerManager;",
            "I)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Lcom/senseonics/events/EventUtils$PickerManager;I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    .line 114
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showProgress()V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->progressDialogFragment:Lcom/senseonics/view/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PROGRESS_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/view/ProgressDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public showTimePicker(IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)V
    .locals 7

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/senseonics/bluetoothle/DialogUtils;->createTimePickerDialog(Landroid/content/Context;IILjava/lang/String;Lcom/senseonics/util/dialogs/TimeDialogManager;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->dialog:Landroid/app/Dialog;

    .line 123
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
