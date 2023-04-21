.class public Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "MealTimesStartEndTimePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private endMinute:I

.field endTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field private endTimePicker:Landroid/widget/RelativeLayout;

.field private endTimeText:Landroid/widget/TextView;

.field private endTimeTextView:Landroid/widget/TextView;

.field private endtHour:I

.field public mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

.field private mealTimeTextTextView:Landroid/widget/TextView;

.field private mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

.field private mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

.field private startHour:I

.field private startMinute:I

.field startTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

.field private startTimePicker:Landroid/widget/RelativeLayout;

.field private startTimeText:Landroid/widget/TextView;

.field private startTimeTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendMinute(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetendtHour(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartHour(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstartMinute(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputendMinute(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputendtHour(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartHour(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstartMinute(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEndTimeTextView(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTimeTextView(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStartTimeTextView(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTimeTextView(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 24
    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->BREAKFAST:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    iput-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const/4 v0, 0x6

    .line 25
    iput v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    iput v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    .line 201
    new-instance v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$3;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    .line 213
    new-instance v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$4;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$4;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeManager:Lcom/senseonics/util/dialogs/TimeDialogManager;

    return-void
.end method

.method private setEndTime(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 193
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endtHour:I

    .line 194
    iput p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endMinute:I

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTimeTextView(II)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 197
    sget-object p2, Lcom/senseonics/util/Utils;->unknownTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEndTimeTextView(II)V
    .locals 2

    .line 170
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 171
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 172
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 174
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setStartTime(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 182
    iput p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startHour:I

    .line 183
    iput p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startMinute:I

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTimeTextView(II)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 186
    sget-object p2, Lcom/senseonics/util/Utils;->unknownTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setStartTimeTextView(II)V
    .locals 2

    .line 161
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 162
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 163
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    .line 164
    iget-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0c00c1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    const p2, 0x7f09023c

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeTextTextView:Landroid/widget/TextView;

    const p2, 0x7f090362

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    const p2, 0x7f090361

    .line 38
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    const p2, 0x7f090165

    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    const p2, 0x7f090163

    .line 40
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    const p2, 0x7f090363

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimePicker:Landroid/widget/RelativeLayout;

    const p2, 0x7f090164

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimePicker:Landroid/widget/RelativeLayout;

    .line 43
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 44
    invoke-static {}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->values()[Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    move-result-object p3

    sget-object v0, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->PASS_VALUE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    aget-object p2, p3, p2

    iput-object p2, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->updateViews()V

    return-void
.end method

.method public saveEndTimesDataHandlerValue(II)V
    .locals 2

    .line 141
    sget-object v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$5;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSleepEndTime(II)V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setDinnerEndTime(II)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSnackEndTime(II)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setLunchEndTime(II)V

    goto :goto_0

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setBreakfastEndTime(II)V

    :goto_0
    return-void
.end method

.method public saveStartTimesDataHandlerValue(II)V
    .locals 2

    .line 121
    sget-object v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$5;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSleepStartTime(II)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setDinnerStartTime(II)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setSnackStartTime(II)V

    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setLunchStartTime(II)V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->setBreakfastStartTime(II)V

    :goto_0
    return-void
.end method

.method public setBothTimesDataHandlerValue()V
    .locals 2

    .line 96
    sget-object v0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$5;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealType:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 115
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndtMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto/16 :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 111
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 107
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 103
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    goto :goto_0

    .line 98
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setStartTime(II)V

    .line 99
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndHour()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimeDataHandler:Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndMinute()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setEndTime(II)V

    :goto_0
    return-void
.end method

.method public setMealTimesManager(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->mealTimesStartEndTimePickerManager:Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$MealTimesStartEndTimePickerManager;

    return-void
.end method

.method public updateViews()V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->setBothTimesDataHandlerValue()V

    .line 57
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$1;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment$2;-><init>(Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x106000b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f060021

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->startTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->endTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/MealTimesStartEndTimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
