.class public Lcom/senseonics/view/SimpleDialogFragment;
.super Landroid/app/DialogFragment;
.source "SimpleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/SimpleDialogFragment$DialogState;,
        Lcom/senseonics/view/SimpleDialogFragment$Builder;,
        Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
    }
.end annotation


# static fields
.field private static final CANCELLABLE_KEY:Ljava/lang/String; = "CANCELLABLE_KEY"

.field public static final DIALOG_TAG:Ljava/lang/String; = "DIALOG_TAG"

.field public static final MESSAGE_KEY:Ljava/lang/String; = "MESSAGE_KEY"

.field public static final STATUS_IMAGE_KEY:Ljava/lang/String; = "STATUS_IMAGE_KEY"

.field public static final TITLE_KEY:Ljava/lang/String; = "TITLE_KEY"


# instance fields
.field private buttonsStacked:Z

.field private customMessage:Ljava/lang/String;

.field private customTitle:Ljava/lang/String;

.field private dialogState:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

.field private leftButtonId:I

.field private listener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

.field private rightButtonId:I

.field private titleBold:Z


# direct methods
.method static bridge synthetic -$$Nest$fputdialogState(Lcom/senseonics/view/SimpleDialogFragment;Lcom/senseonics/view/SimpleDialogFragment$DialogState;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->dialogState:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->customTitle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->customMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->leftButtonId:I

    iput v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->rightButtonId:I

    const/4 v1, 0x1

    .line 37
    iput-boolean v1, p0, Lcom/senseonics/view/SimpleDialogFragment;->titleBold:Z

    .line 39
    new-instance v1, Lcom/senseonics/view/SimpleDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/view/SimpleDialogFragment$1;-><init>(Lcom/senseonics/view/SimpleDialogFragment;)V

    iput-object v1, p0, Lcom/senseonics/view/SimpleDialogFragment;->listener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    .line 44
    iput-boolean v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->buttonsStacked:Z

    return-void
.end method

.method private viewWillBeShown(Landroid/view/View;I)Z
    .locals 0

    if-gtz p2, :cond_0

    const/16 p2, 0x8

    .line 218
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 147
    sget-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    iget-object v1, p0, Lcom/senseonics/view/SimpleDialogFragment;->dialogState:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->FINISHING:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    iget-object v1, p0, Lcom/senseonics/view/SimpleDialogFragment;->dialogState:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    invoke-virtual {v0, v1}, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->listener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    invoke-virtual {v0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;->onCancel()V

    goto :goto_1

    .line 148
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/senseonics/view/SimpleDialogFragment;->listener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    invoke-virtual {v0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;->onAccept()V

    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 156
    new-instance p1, Lcom/senseonics/view/SimpleDialogFragment$4;

    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/senseonics/view/SimpleDialogFragment$4;-><init>(Lcom/senseonics/view/SimpleDialogFragment;Landroid/content/Context;I)V

    const/4 v0, 0x1

    .line 162
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 49
    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "TITLE_KEY"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 50
    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MESSAGE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "STATUS_IMAGE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CANCELLABLE_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    sget-object v3, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/senseonics/view/SimpleDialogFragment$DialogState;->NOT_CANCELLABLE:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    :goto_0
    iput-object v3, p0, Lcom/senseonics/view/SimpleDialogFragment;->dialogState:Lcom/senseonics/view/SimpleDialogFragment$DialogState;

    .line 55
    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v3, 0x7f0c0108

    .line 56
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903cf

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v3, 0x7f090243

    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0901ca

    .line 60
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0900eb

    .line 61
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 63
    iget-object v7, p0, Lcom/senseonics/view/SimpleDialogFragment;->customTitle:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 64
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 65
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/senseonics/view/SimpleDialogFragment;->viewWillBeShown(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 66
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 68
    :cond_2
    :goto_1
    iget-boolean p3, p0, Lcom/senseonics/view/SimpleDialogFragment;->titleBold:Z

    if-eqz p3, :cond_3

    sget-object p3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_3
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    iget-object p2, p0, Lcom/senseonics/view/SimpleDialogFragment;->customMessage:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 71
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p2, p0, Lcom/senseonics/view/SimpleDialogFragment;->customMessage:Ljava/lang/String;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 73
    :cond_4
    invoke-direct {p0, v3, v0}, Lcom/senseonics/view/SimpleDialogFragment;->viewWillBeShown(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 74
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :cond_5
    :goto_3
    invoke-direct {p0, v5, v1}, Lcom/senseonics/view/SimpleDialogFragment;->viewWillBeShown(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 77
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    if-eqz v2, :cond_7

    const p2, 0x7f0900ca

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 81
    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    new-instance p3, Lcom/senseonics/view/SimpleDialogFragment$2;

    invoke-direct {p3, p0}, Lcom/senseonics/view/SimpleDialogFragment$2;-><init>(Lcom/senseonics/view/SimpleDialogFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget p3, p0, Lcom/senseonics/view/SimpleDialogFragment;->leftButtonId:I

    if-lez p3, :cond_8

    .line 90
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    goto :goto_4

    .line 94
    :cond_7
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, p2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    :cond_8
    :goto_4
    new-instance p2, Lcom/senseonics/view/SimpleDialogFragment$3;

    invoke-direct {p2, p0}, Lcom/senseonics/view/SimpleDialogFragment$3;-><init>(Lcom/senseonics/view/SimpleDialogFragment;)V

    invoke-virtual {v6, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget p2, p0, Lcom/senseonics/view/SimpleDialogFragment;->rightButtonId:I

    if-lez p2, :cond_9

    .line 105
    invoke-virtual {v6, p2}, Landroid/widget/Button;->setText(I)V

    :cond_9
    const p2, 0x7f0900c5

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 109
    iget-boolean p3, p0, Lcom/senseonics/view/SimpleDialogFragment;->buttonsStacked:Z

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 173
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 174
    invoke-virtual {p0}, Lcom/senseonics/view/SimpleDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 168
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnDismissListener(Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->listener:Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    return-void
.end method

.method public withButtonsStacked(Z)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->buttonsStacked:Z

    return-object p0
.end method

.method public withCustomLeftButton(I)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 0

    .line 125
    iput p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->leftButtonId:I

    return-object p0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->customMessage:Ljava/lang/String;

    return-object p0
.end method

.method public withCustomRightButton(I)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 0

    .line 130
    iput p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->rightButtonId:I

    return-object p0
.end method

.method public withCustomTitle(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->customTitle:Ljava/lang/String;

    return-object p0
.end method

.method public withTitleBold(Z)Lcom/senseonics/view/SimpleDialogFragment;
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/senseonics/view/SimpleDialogFragment;->titleBold:Z

    return-object p0
.end method
