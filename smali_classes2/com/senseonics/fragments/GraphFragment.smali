.class public Lcom/senseonics/fragments/GraphFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "GraphFragment.java"


# instance fields
.field private alertInfoHeight:I

.field private arrowImageView:Landroid/widget/ImageView;

.field private batteryStrengthImageView:Landroid/widget/ImageView;

.field public dialog:Landroid/app/Dialog;

.field private dndImageView:Landroid/widget/ImageView;

.field public expandImageButton:Landroid/widget/ImageButton;

.field private glucoseUnitTextView:Landroid/widget/TextView;

.field private glucoseValueDisplay:Landroid/widget/FrameLayout;

.field private glucoseValueTextView:Landroid/widget/TextView;

.field private graphHeight:I

.field private graphLayoutView:Landroid/widget/LinearLayout;

.field graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

.field public graphManagerView:Lcom/senseonics/graph/GraphManagerView;

.field private graphWidth:I

.field private layout:Landroid/widget/RelativeLayout;

.field lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field onDateClickListener:Landroid/view/View$OnClickListener;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private signalStrengthImageView:Landroid/widget/ImageView;

.field private tempProfileImageView:Landroid/widget/ImageView;

.field private topLayout:Landroid/widget/LinearLayout;

.field private topLayoutHeight:I

.field private transmitterNameTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetalertInfoHeight(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgraphHeight(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgraphLayoutView(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgraphWidth(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->graphWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayout(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopLayout(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputalertInfoHeight(Lcom/senseonics/fragments/GraphFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgraphHeight(Lcom/senseonics/fragments/GraphFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputgraphWidth(Lcom/senseonics/fragments/GraphFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->graphWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtopLayoutHeight(Lcom/senseonics/fragments/GraphFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$maddGraphManagerView(Lcom/senseonics/fragments/GraphFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/GraphFragment;->addGraphManagerView(Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddPopUpView(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->addPopUpView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissProgressDialogIfNeeded(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 580
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$8;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$8;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->onDateClickListener:Landroid/view/View$OnClickListener;

    .line 600
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$9;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$9;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    return-void
.end method

.method private addGraphManagerView(Landroid/app/Activity;)V
    .locals 8

    .line 496
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    .line 500
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    const/16 v1, 0x15e

    if-le v0, v1, :cond_0

    .line 501
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 503
    :cond_0
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v0, v0, 0x5

    :goto_0
    move v5, v0

    .line 505
    new-instance v0, Lcom/senseonics/graph/GraphManagerView;

    iget v3, p0, Lcom/senseonics/fragments/GraphFragment;->graphWidth:I

    iget v4, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    sget v6, Lcom/senseonics/util/Utils;->daysCount:I

    sget-object v7, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/graph/GraphManagerView;-><init>(Landroid/content/Context;IIIILjava/util/Calendar;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    .line 506
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 508
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    new-instance v1, Lcom/senseonics/fragments/GraphFragment$5;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/GraphFragment$5;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setGraphManagerViewListener(Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;)V

    .line 521
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$6;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$6;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addPopUpView()V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    if-eqz v0, :cond_0

    .line 535
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 536
    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    .line 539
    :cond_0
    new-instance v0, Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    const/16 v1, 0x8

    .line 540
    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createProgressDialogIfNeeded()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1202ee

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 133
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method private dismissProgressDialogIfNeeded()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private refreshGlucosePanel()V
    .locals 2

    const-string v0, "GraphFragment"

    const-string v1, "in refreshGlucosePanel"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setGlucoseLevel()V

    .line 165
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->setSignalStrength()V

    .line 166
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->setBatteryLevel()V

    .line 167
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setTempProfileIcon()V

    .line 168
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setDNDIcon()V

    return-void
.end method

.method private removeLayoutListenerAndResetLayoutSize()V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    :cond_0
    const/4 v0, 0x0

    .line 435
    iput v0, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    .line 436
    iput v0, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    .line 437
    iput v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphWidth:I

    .line 438
    iput v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    return-void
.end method

.method private setDNDIcon()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->dndImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showDndIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/GraphFragment;->updateIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private setDashTextBold(Landroid/widget/TextView;)V
    .locals 2

    .line 545
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private setGlucoseLevel()V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 251
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 252
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    sget-object v3, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 258
    :goto_1
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->setArrowType(Z)Z

    move-result v3

    if-nez v0, :cond_3

    .line 264
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    :goto_2
    move v5, v1

    goto :goto_3

    .line 265
    :cond_3
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 266
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 267
    :cond_4
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v5, :cond_5

    .line 268
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String;

    goto :goto_2

    .line 269
    :cond_5
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v5, :cond_6

    .line 270
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String;

    goto :goto_2

    .line 271
    :cond_6
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v4

    if-nez v4, :cond_7

    .line 272
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 273
    :cond_7
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 274
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 275
    :cond_8
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 276
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 278
    :cond_9
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v4

    invoke-static {v4}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_3
    if-eqz v0, :cond_b

    .line 283
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    move v2, v1

    .line 292
    :cond_b
    :goto_4
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v2, :cond_c

    const v5, 0x7f06007f

    goto :goto_5

    :cond_c
    const v5, 0x7f060021

    :goto_5
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    sget-object v3, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v4, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v3, v4, :cond_d

    .line 295
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    .line 297
    :cond_d
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    :goto_6
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/fragments/GraphFragment;->setDashTextBold(Landroid/widget/TextView;)V

    move v1, v2

    move v2, v0

    .line 302
    :cond_e
    invoke-direct {p0, v1}, Lcom/senseonics/fragments/GraphFragment;->setGlucoseUnit(Z)V

    .line 303
    invoke-direct {p0, v2}, Lcom/senseonics/fragments/GraphFragment;->setTransmitterName(Z)V

    return-void
.end method

.method private setGlucoseUnit(Z)V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f06007f

    goto :goto_0

    :cond_0
    const p1, 0x7f060021

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setTempProfileIcon()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/GraphFragment;->updateIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private setTransmitterName(Z)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f060021

    goto :goto_0

    :cond_1
    const p1, 0x7f06007f

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private showProgressDialogIfNeeded()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 371
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 373
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method addGraph()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 475
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    new-instance v1, Lcom/senseonics/fragments/GraphFragment$4;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/GraphFragment$4;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method addLayoutListenerAndGraph()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->removeLayoutListenerAndResetLayoutSize()V

    .line 446
    new-instance v1, Lcom/senseonics/fragments/GraphFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/GraphFragment$3;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 469
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public createPickerViewDialog(Ljava/util/Calendar;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 554
    new-instance v5, Lcom/senseonics/fragments/GraphFragment$7;

    invoke-direct {v5, p0}, Lcom/senseonics/fragments/GraphFragment$7;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    .line 563
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 564
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object p1

    .line 566
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 567
    sget-object p1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    :cond_1
    move-object v2, p1

    .line 570
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 571
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v3

    sget-object v4, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    .line 576
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected init(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    const p2, 0x7f0901a1

    .line 379
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0901a0

    .line 380
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    const p2, 0x7f0903da

    .line 381
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f09019b

    .line 382
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    .line 384
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$1;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090342

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    .line 392
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f0900a8

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    .line 393
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090199

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    .line 394
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090198

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    .line 395
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f09006d

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    .line 396
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f0903e4

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    .line 397
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f0903a0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileImageView:Landroid/widget/ImageView;

    .line 398
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090134

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->dndImageView:Landroid/widget/ImageView;

    const p2, 0x7f090177

    .line 400
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->expandImageButton:Landroid/widget/ImageButton;

    .line 401
    new-instance p2, Lcom/senseonics/fragments/GraphFragment$2;

    invoke-direct {p2, p0}, Lcom/senseonics/fragments/GraphFragment$2;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClickGlucoseValueDisplay()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    if-eqz v0, :cond_0

    .line 412
    sget-object v1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setCurrentVisibleDate(Ljava/util/Calendar;)V

    .line 413
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphManagerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 647
    invoke-super {p0, p1}, Lcom/senseonics/fragments/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c007c

    const/4 p3, 0x0

    .line 83
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/fragments/GraphFragment;->init(Landroid/view/View;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 85
    sput-boolean p2, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    return-object p1
.end method

.method public onDateClick()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/senseonics/graph/GraphManagerView;->getCurrentVisibleDate()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 594
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 597
    :cond_1
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->createPickerViewDialog(Ljava/util/Calendar;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 126
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDestroy()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/senseonics/util/IDestroyable;

    .line 127
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/senseonics/util/Destroyer;->destroy([Lcom/senseonics/util/IDestroyable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedRefreshGraphEvent;)V
    .locals 0

    .line 173
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RefreshGraphEvent;)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 116
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 117
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->dismissProgressDialogIfNeeded()V

    .line 119
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->removeLayoutListenerAndResetLayoutSize()V

    .line 121
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 94
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->createProgressDialogIfNeeded()V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->showProgressDialogIfNeeded()V

    .line 102
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->addLayoutListenerAndGraph()V

    .line 106
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    .line 109
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method

.method public refreshGraph()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithExistingStartEndDates()V

    :cond_0
    return-void
.end method

.method setArrowType(Z)Z
    .locals 5

    .line 308
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$ARROW_TYPE;->getImageId()I

    move-result v0

    .line 309
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 312
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v1

    sget-object v3, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/16 v4, 0xff

    if-eq v1, v3, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 314
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 315
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 316
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 317
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    move v1, p1

    move p1, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x66

    move v1, v2

    .line 323
    :goto_1
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 325
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeStaleTrend()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    if-ge p1, v4, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    move v2, v1

    :cond_4
    return v2
.end method

.method setBatteryLevel()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 228
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getImageForBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I

    move-result v0

    .line 230
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 231
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 234
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v1

    sget-object v2, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    if-ne v1, v2, :cond_4

    :cond_2
    const v0, 0x7f0800ea

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f0800de

    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 239
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method setSignalStrength()V
    .locals 5

    .line 198
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getImageForSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)I

    move-result v1

    .line 202
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateSensorSignalIconColor()Z

    move-result v2

    const v3, 0x7f0801a2

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v2

    sget-object v4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v2, v4, :cond_0

    const v1, 0x7f0801a1

    goto :goto_1

    .line 205
    :cond_0
    sget-object v2, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 206
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 210
    :cond_1
    sget-object v2, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 211
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 212
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, v2, :cond_3

    :cond_2
    :goto_0
    move v1, v3

    :cond_3
    :goto_1
    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method public validateGraph()V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithNewStartEndDates()V

    :cond_0
    return-void
.end method
