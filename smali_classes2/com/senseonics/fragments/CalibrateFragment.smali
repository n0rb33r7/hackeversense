.class public Lcom/senseonics/fragments/CalibrateFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "CalibrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;,
        Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;
    }
.end annotation


# instance fields
.field private final CALIBRATION_VIEW_REFRESH_INTERVAL:I

.field private arrowTips:Landroid/widget/ImageView;

.field private currentDate:Ljava/util/Calendar;

.field private dialog:Landroid/app/Dialog;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private glucoseLevel:I

.field private glucosePicker:Landroid/widget/RelativeLayout;

.field private glucoseTextView:Landroid/widget/TextView;

.field private glucoseValueSelected:Ljava/lang/Boolean;

.field private glucoseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucoseValuesMg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucose_label:Landroid/widget/TextView;

.field private glucose_selection_label:Landroid/widget/TextView;

.field private manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

.field private nextScheduleLabel:Landroid/widget/TextView;

.field private nextScheduleTextView:Landroid/widget/TextView;

.field private notesEditText:Landroid/widget/EditText;

.field private notesLabel:Landroid/widget/TextView;

.field private notesLayout:Landroid/widget/RelativeLayout;

.field private phaseLayout:Landroid/widget/LinearLayout;

.field private phaseTextView:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

.field private startDate:Ljava/util/Calendar;

.field private startingText:Ljava/lang/String;

.field private testPopupCounter:I

.field private timePicker:Landroid/widget/RelativeLayout;

.field private timeTextView:Landroid/widget/TextView;

.field private timeValueSelected:Ljava/lang/Boolean;

.field private time_label:Landroid/widget/TextView;

.field private time_selection_label:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private tipsIsShowing:Z

.field private tvReadyForCalibration:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetarrowTips(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->arrowTips:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetglucoseLevel(Lcom/senseonics/fragments/CalibrateFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetglucoseValues(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmanager(Lcom/senseonics/fragments/CalibrateFragment;)Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnotesEditText(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartDate(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettipsIsShowing(Lcom/senseonics/fragments/CalibrateFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentDate(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/fragments/CalibrateFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglucoseLevel(Lcom/senseonics/fragments/CalibrateFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputglucoseValueSelected(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtipsIsShowing(Lcom/senseonics/fragments/CalibrateFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearEditTextFocusAndHideKeyboard(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/CalibrateFragment;->clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfetchCalibrationStatus(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->fetchCalibrationStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPosition(Lcom/senseonics/fragments/CalibrateFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->getPosition(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideProgressDialog(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGlucoseTextWithString(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->updateGlucoseTextWithString(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTimeTextView(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTimeWithCalendar(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeWithCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    const-string v0, "-----"

    .line 71
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    const v0, 0x1d4c0

    .line 114
    iput v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->CALIBRATION_VIEW_REFRESH_INTERVAL:I

    return-void
.end method

.method private cancelRefreshTimer()V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 844
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private checkIfSubmitButtonNeedEnable()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 587
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->enableSubmitButton()V

    goto :goto_0

    .line 593
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disableSubmitButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 849
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 850
    invoke-direct {p0, p2}, Lcom/senseonics/fragments/CalibrateFragment;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method private disablePickersAndBottomLayout()V
    .locals 2

    .line 317
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disableSubmitButton()V

    .line 320
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 321
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 322
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 324
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 325
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 326
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 329
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 331
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 333
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 336
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    .line 337
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private disableSubmitButton()V
    .locals 4

    .line 276
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    const v2, 0x7f060089

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 278
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 280
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v0, v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    .line 284
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 286
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enablePickersAndBottomLayout()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 294
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 295
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 297
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 298
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 299
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 302
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 304
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 306
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 309
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->startBlinkTextView(Landroid/widget/TextView;)V

    .line 310
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->startBlinkTextView(Landroid/widget/TextView;)V

    .line 313
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private enableSubmitButton()V
    .locals 4

    .line 259
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    const v2, 0x106000b

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 261
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 263
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v0, v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    .line 267
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 269
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchCalibrationStatus()V
    .locals 6

    .line 904
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 907
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 908
    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$9;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/CalibrateFragment$9;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 917
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->postCalibrationRequests()V

    :cond_0
    return-void
.end method

.method private getPosition(I)I
    .locals 4

    .line 748
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValuesMg:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    goto :goto_0

    .line 751
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glucose level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-float p1, p1

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlucosePicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%.1f"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 854
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 855
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 857
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initBottomLayout(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0903cc

    .line 759
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090091

    .line 761
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->arrowTips:Landroid/widget/ImageView;

    const v1, 0x7f0903ce

    .line 762
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0903cd

    .line 763
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f110316

    .line 764
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$8;

    invoke-direct {p1, p0, v1}, Lcom/senseonics/fragments/CalibrateFragment$8;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGlucosePicker(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090195

    .line 696
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    const v0, 0x7f090194

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    .line 699
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result p1

    .line 700
    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    if-gt p1, v0, :cond_0

    .line 701
    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    goto :goto_0

    .line 703
    :cond_0
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_DEFAULT_LEVEL:I

    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    .line 706
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValuesMg:Ljava/util/ArrayList;

    .line 707
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v0, :cond_1

    .line 708
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    goto :goto_1

    .line 713
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    int-to-float v0, v0

    .line 714
    invoke-static {v0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v0

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    int-to-float v1, v1

    .line 715
    invoke-static {v1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    .line 713
    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    .line 718
    :goto_1
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$6;

    invoke-direct {p1, p0}, Lcom/senseonics/fragments/CalibrateFragment$6;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    const/4 v0, 0x0

    .line 729
    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->updateGlucoseTextWithString(Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$7;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTimePicker(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0903c8

    .line 642
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const v0, 0x7f0903c7

    .line 643
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    .line 645
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$4;

    invoke-direct {p1, p0}, Lcom/senseonics/fragments/CalibrateFragment$4;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 653
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    .line 655
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$5;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postCalibrationRequests()V
    .locals 1

    .line 891
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetModelValues()V

    .line 893
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/ServiceActivity;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/ServiceActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    .line 894
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postNextCalibrationDate()V

    .line 895
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postNextCalibrationTime()V

    .line 896
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesRemainingUntilCalibrationAllowed()V

    .line 897
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesBeforeNextCalibrationTime()V

    .line 898
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesAfterNextCalibrationTime()V

    .line 899
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 900
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadyForCalibration()V

    return-void
.end method

.method private printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 4

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    .line 342
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    .line 343
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    .line 344
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xc

    .line 345
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xd

    .line 346
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 341
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetModelValues()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setNextScheduledCalibration(Ljava/util/Calendar;)V

    .line 884
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesBeforeNextCalibrationTime(I)V

    .line 885
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesAfterNextCalibrationTime(I)V

    .line 886
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesRemainingUntilCalibrationAllowed(I)V

    .line 887
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setReadyForCalibrationState(I)V

    return-void
.end method

.method private resetViewAndRefreshTimer()V
    .locals 6

    .line 832
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 834
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetModelValues()V

    .line 835
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    .line 837
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    .line 838
    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask-IA;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setTextViewToBlackText(Landroid/widget/TextView;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060021

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTextViewToGrayText(Landroid/widget/TextView;)V
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060089

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3

    .line 205
    instance-of v0, p2, Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    if-eq p2, v0, :cond_0

    .line 206
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/senseonics/fragments/CalibrateFragment$2;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    .line 216
    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 217
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 218
    invoke-direct {p0, p1, v1, p3}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupSubmitEvent()V
    .locals 3

    .line 226
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/CalibrateFragment$3;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 240
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    if-ne v1, v2, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v1, v2, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startBlinkTextView(Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 600
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0x14

    .line 604
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v1, 0x2

    .line 605
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 608
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 610
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private stopBlinkTextView(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private suggestedUserAction()Ljava/lang/String;
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesRemainingUntilCalibrationAllowed()I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 454
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "%d"

    if-ne v1, v2, :cond_2

    const v1, 0x7f110245

    .line 463
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f110356

    .line 466
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private updateCurrentPhase()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->phaseTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateGlucoseTextWithString(Ljava/lang/String;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 684
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private updateTimeTextView()V
    .locals 3

    .line 623
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private updateTimeWithCalendar(Ljava/util/Calendar;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 637
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    .line 638
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    return-void
.end method


# virtual methods
.method public getTimer()Ljava/util/Timer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 138
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCalibrateLayout()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 140
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f1202ee

    invoke-direct {p2, p3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 141
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f08009b

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->startDate:Ljava/util/Calendar;

    const/4 p2, 0x0

    .line 147
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    .line 148
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    .line 150
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initTimePicker(Landroid/view/View;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initGlucosePicker(Landroid/view/View;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initBottomLayout(Landroid/view/View;)V

    const v0, 0x7f09029e

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleLabel:Landroid/widget/TextView;

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f11020f

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09029d

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v0, 0x7f090333

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

    const v0, 0x7f0903cb

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    const v0, 0x7f09019a

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    const v0, 0x7f0903c7

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    const v0, 0x7f090194

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    const v0, 0x7f0903f0

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v0, 0x7f0902a7

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    const v0, 0x7f0902a8

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    .line 166
    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/CalibrateFragment$1;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902a6

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    const/4 v1, 0x6

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 178
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 180
    iget-object p3, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    const/16 v0, 0x10

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setGravity(I)V

    const p3, 0x7f0902d4

    .line 182
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/CalibrateFragment;->phaseLayout:Landroid/widget/LinearLayout;

    .line 183
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibratePageAddPhase()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p3, 0x7f0902d7

    .line 184
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/CalibrateFragment;->phaseTextView:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f09018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    .line 188
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-ne p3, v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    goto :goto_1

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne p3, v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    .line 194
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->setupSubmitEvent()V

    .line 196
    iput-boolean p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    .line 198
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 822
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetViewAndRefreshTimer()V

    goto :goto_0

    .line 825
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 826
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationRequestEvent;)V
    .locals 0

    .line 818
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetViewAndRefreshTimer()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ReadyForCalibrationChangedEvent;)V
    .locals 0

    .line 814
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 802
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    .line 803
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 804
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 805
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 789
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 791
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 794
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method

.method public refreshCalibrationState()V
    .locals 4

    .line 474
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 476
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disablePickersAndBottomLayout()V

    .line 478
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const v1, 0x7f060070

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1100db

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 484
    :cond_0
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const v2, 0x7f110345

    packed-switch v0, :pswitch_data_0

    .line 578
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 564
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v3, :cond_2

    .line 565
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11035a

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110359

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 558
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110322

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 549
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11028f

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 552
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11028e

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 538
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result v0

    const v2, 0x7f110357

    .line 540
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%d"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 528
    :pswitch_4
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 529
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110347

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110346

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_2
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 523
    :pswitch_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11021b

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 514
    :pswitch_6
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateCalibrationReadyTooSoonText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 515
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11031c

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 517
    :cond_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11031b

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    :goto_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 509
    :pswitch_7
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1100f0

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 504
    :pswitch_8
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110276

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :pswitch_9
    const v0, 0x7f110222

    .line 497
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->suggestedUserAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 486
    :pswitch_a
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v1, 0x7f11006e

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06005f

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 490
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeWithCalendar(Ljava/util/Calendar;)V

    .line 493
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->enablePickersAndBottomLayout()V

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshView()V
    .locals 0

    .line 874
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshCalibrationState()V

    .line 875
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateCurrentPhase()V

    .line 876
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateNextScheduledCalibration()V

    .line 877
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateSensorDaysSinceInsertion()V

    .line 879
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    return-void
.end method

.method public setManager(Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    return-void
.end method

.method public setTimeValueSelected(Ljava/lang/Boolean;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public setTipsIsShowing(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return-void
.end method

.method showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V
    .locals 4

    .line 961
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/CalibrationHelper;->getTitleForCalibrationUseFlag(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p1, p2, v2}, Lcom/senseonics/model/CalibrationHelper;->getTextForCalibrationUseFlag(IILcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object p1

    .line 963
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method testCalAcceptRejectPopups()V
    .locals 3

    .line 943
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->UNKNOWN_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 945
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->OTHER_FAILURE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 947
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->AUTO_LINK_MODE_ACTIVE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 948
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->DROPOUT_PHASE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 949
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->SENSOR_EOL:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 950
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INSUFFICIENT_DATA:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 951
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->INVALID_TIME:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 952
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_RAPID_CHANGE:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 953
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_HIGH_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x191

    invoke-virtual {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 954
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->GLUCOSE_TOO_LOW_TO_READ:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x27

    invoke-virtual {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 955
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 956
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    .line 957
    sget-object v0, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V

    return-void
.end method

.method public updateNextScheduledCalibration()V
    .locals 12

    .line 374
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibratePageCalInProgress()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 376
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v1, 0x7f110240

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v0, "next_calibrate"

    .line 381
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v2

    const v3, 0x7f110210

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 382
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 383
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 385
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 386
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 388
    invoke-static {v2}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 389
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v7

    int-to-long v7, v7

    sget-wide v9, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    invoke-static {v2}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    .line 391
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v8

    int-to-long v8, v8

    sget-wide v10, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minsBeforeNextCalibrationTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minsAfterNextCalibrationTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minRange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxRange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Utils.nextScheduledCalibration2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 400
    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 401
    invoke-direct {p0, v0, v4}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 402
    invoke-direct {p0, v0, v5}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 403
    invoke-direct {p0, v0, v6}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    const v7, 0x7f11031a

    .line 405
    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 408
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v9, v8, :cond_1

    .line 409
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v8, v1, :cond_1

    const/4 v1, 0x5

    .line 410
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v8, v1, :cond_1

    const-string v1, "TODAY"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f110319

    .line 412
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 415
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 418
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v0

    if-nez v0, :cond_2

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f11003c

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v2, 0x7f110028

    .line 423
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    :goto_0
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    if-ne v0, v1, :cond_4

    .line 430
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 432
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v1, 0x7f110229

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public updateSensorDaysSinceInsertion()V
    .locals 5

    .line 351
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 357
    iget-object v4, p0, Lcom/senseonics/fragments/CalibrateFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/senseonics/util/AlertHelper;->calculateDaysSinceInsertion(JJ)I

    move-result v0

    .line 359
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    if-le v0, v2, :cond_1

    const-string v1, ">180"

    goto :goto_0

    :cond_0
    const v0, 0x7f110220

    .line 367
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f11028c

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
