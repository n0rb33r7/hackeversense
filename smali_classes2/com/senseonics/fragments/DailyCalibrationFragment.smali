.class public Lcom/senseonics/fragments/DailyCalibrationFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "DailyCalibrationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;
    }
.end annotation


# instance fields
.field private calibrationManager:Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

.field private dialog:Landroid/app/Dialog;

.field private eveningHour:I

.field private eveningMinute:I

.field private eveningPicker:Landroid/widget/RelativeLayout;

.field private eveningText:Landroid/widget/TextView;

.field private eveningTextView:Landroid/widget/TextView;

.field eveningTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private maxDiffHour:I

.field private minDiffHour:I

.field private morningHour:I

.field private morningMinute:I

.field private morningPicker:Landroid/widget/RelativeLayout;

.field private morningText:Landroid/widget/TextView;

.field private morningTextView:Landroid/widget/TextView;

.field morningTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private settingsOk:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment;)Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->calibrationManager:Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteveningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningHour:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteveningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningMinute:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmorningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningHour:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmorningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningMinute:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressDialog(Lcom/senseonics/fragments/DailyCalibrationFragment;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->settingsOk:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/fragments/DailyCalibrationFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeveningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningHour:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputeveningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningMinute:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmorningHour(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningHour:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmorningMinute(Lcom/senseonics/fragments/DailyCalibrationFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningMinute:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsettingsOk(Lcom/senseonics/fragments/DailyCalibrationFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->settingsOk:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckSettings(Lcom/senseonics/fragments/DailyCalibrationFragment;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->checkSettings(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideProgressDialog(Lcom/senseonics/fragments/DailyCalibrationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->hideProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEveningTimeTextView(Lcom/senseonics/fragments/DailyCalibrationFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setEveningTimeTextView(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMorningTimeTextView(Lcom/senseonics/fragments/DailyCalibrationFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setMorningTimeTextView(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateText(Lcom/senseonics/fragments/DailyCalibrationFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->updateText()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    const/16 v0, 0x8

    .line 35
    iput v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningHour:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningMinute:I

    const/16 v1, 0x13

    iput v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningHour:I

    iput v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningMinute:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->minDiffHour:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->maxDiffHour:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->settingsOk:Z

    .line 310
    new-instance v0, Lcom/senseonics/fragments/DailyCalibrationFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/DailyCalibrationFragment$4;-><init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    .line 325
    new-instance v0, Lcom/senseonics/fragments/DailyCalibrationFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/DailyCalibrationFragment$5;-><init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    return-void
.end method

.method private checkSettings(II)Z
    .locals 1

    sub-int/2addr p2, p1

    .line 238
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->minDiffHour:I

    if-lt p1, v0, :cond_1

    .line 239
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->maxDiffHour:I

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private setEveningTime(II)V
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 298
    invoke-static {p1, p2}, Lcom/senseonics/util/Utils;->convertHourFromGMTtoLocal(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 299
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 300
    aget p1, p1, v0

    .line 302
    iput p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningHour:I

    .line 303
    iput p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningMinute:I

    .line 304
    invoke-direct {p0, p2, p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setEveningTimeTextView(II)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 306
    sget-object p2, Lcom/senseonics/util/Utils;->unknownTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEveningTimeTextView(II)V
    .locals 2

    .line 269
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 270
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 271
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 273
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setMorningTime(II)V
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 282
    invoke-static {p1, p2}, Lcom/senseonics/util/Utils;->convertHourFromGMTtoLocal(II)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 283
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 284
    aget p1, p1, v0

    .line 286
    iput p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningHour:I

    .line 287
    iput p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningMinute:I

    .line 288
    invoke-direct {p0, p2, p1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setMorningTimeTextView(II)V

    goto :goto_0

    .line 289
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 290
    sget-object p2, Lcom/senseonics/util/Utils;->unknownTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setMorningTimeTextView(II)V
    .locals 2

    .line 259
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 260
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 261
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 263
    iget-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateText()V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    .line 247
    iget-boolean v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->settingsOk:Z

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->textView:Landroid/widget/TextView;

    const v2, 0x7f1102d4

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->enableSaveButton()V

    goto :goto_0

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060279

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->textView:Landroid/widget/TextView;

    const v2, 0x7f1101db

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->disableSaveButton()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c0079

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903a5

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->textView:Landroid/widget/TextView;

    const p2, 0x7f090251

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningText:Landroid/widget/TextView;

    const p2, 0x7f090252

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTextView:Landroid/widget/TextView;

    const p2, 0x7f090170

    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningText:Landroid/widget/TextView;

    const p2, 0x7f090171

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningTextView:Landroid/widget/TextView;

    const p2, 0x7f090250

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningPicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f09016f

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningPicker:Landroid/widget/RelativeLayout;

    .line 61
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v1, 0x7f1202ee

    invoke-direct {p2, p3, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 62
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v1, 0x7f08009b

    invoke-static {p3, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object p2, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;

    if-eqz p2, :cond_0

    const p2, 0x7f09010a

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 69
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    instance-of p2, p2, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    .line 76
    new-instance p3, Lcom/senseonics/fragments/DailyCalibrationFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/DailyCalibrationFragment$1;-><init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    invoke-virtual {p2, p3}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->setNaviBarRightItemTextViewOnClick(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->updateViews()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;)V
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setBothCalibrationTimeToCurrentModelValue()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->hideProgressDialog()V

    .line 132
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 123
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setBothCalibrationTimeToCurrentModelValue()V

    .line 125
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->updateViews()V

    return-void
.end method

.method public setBothCalibrationTimeToCurrentModelValue()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationTimeHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationTimeMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setMorningTime(II)V

    .line 232
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationTimeHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationTimeMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setEveningTime(II)V

    return-void
.end method

.method public setCalibrationManager(Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->calibrationManager:Lcom/senseonics/fragments/DailyCalibrationFragment$CalibrationManager;

    return-void
.end method

.method public updateViews()V
    .locals 6

    .line 155
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationTimeHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getMorningCalibrationTimeMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setMorningTime(II)V

    .line 158
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationTimeHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getEveningCalibrationTimeMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/DailyCalibrationFragment;->setEveningTime(II)V

    .line 160
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    .line 163
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->enableSaveButton()V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/DailyCalibrationFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/DailyCalibrationFragment$2;-><init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningPicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/DailyCalibrationFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/DailyCalibrationFragment$3;-><init>(Lcom/senseonics/fragments/DailyCalibrationFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningPicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 195
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningText:Landroid/widget/TextView;

    .line 196
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningPicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 201
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningText:Landroid/widget/TextView;

    .line 202
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;

    .line 208
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/DailyCalibrationActivity;->disableSaveButton()V

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningPicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningPicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 214
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060078

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->morningTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f060089

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningPicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningPicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 221
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p0, Lcom/senseonics/fragments/DailyCalibrationFragment;->eveningTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/DailyCalibrationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_0
    return-void
.end method
