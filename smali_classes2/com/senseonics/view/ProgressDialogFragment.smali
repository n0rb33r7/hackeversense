.class public Lcom/senseonics/view/ProgressDialogFragment;
.super Landroid/app/DialogFragment;
.source "ProgressDialogFragment.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "PROGRESS_DIALOG_TAG"


# instance fields
.field private isShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/senseonics/view/ProgressDialogFragment;->isShowing:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 90
    :try_start_0
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 48
    new-instance p1, Lcom/senseonics/view/ProgressDialogFragment$1;

    invoke-virtual {p0}, Lcom/senseonics/view/ProgressDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/senseonics/view/ProgressDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/senseonics/view/ProgressDialogFragment$1;-><init>(Lcom/senseonics/view/ProgressDialogFragment;Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 36
    invoke-virtual {p0}, Lcom/senseonics/view/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 38
    invoke-virtual {p3, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p3, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p3, 0x7f0c00fe

    .line 43
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/senseonics/view/ProgressDialogFragment;->isShowing:Z

    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 64
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 65
    invoke-virtual {p0}, Lcom/senseonics/view/ProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/senseonics/view/ProgressDialogFragment;->isShowing:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/view/ProgressDialogFragment;->dismiss()V

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/senseonics/view/ProgressDialogFragment;->isShowing:Z

    return-void
.end method
