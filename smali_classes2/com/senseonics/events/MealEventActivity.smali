.class public Lcom/senseonics/events/MealEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "MealEventActivity.java"


# instance fields
.field private carbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private carbsTextView:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private maxCarb:I

.field private mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

.field private mealTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field private mealTypeName:Ljava/lang/String;

.field private mealTypeTextView:Landroid/widget/TextView;

.field private minCarb:I

.field private selectedCarbs:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcarbs(Lcom/senseonics/events/MealEventActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->carbs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcarbsTextView(Lcom/senseonics/events/MealEventActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->carbsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/events/MealEventActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmealType(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/events/EventUtils$MEAL_TYPE;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmealTypeManager(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedCarbs(Lcom/senseonics/events/MealEventActivity;)I
    .locals 0

    iget p0, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/events/MealEventActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedCarbs(Lcom/senseonics/events/MealEventActivity;I)V
    .locals 0

    iput p1, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    .line 24
    sget-object v0, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->BREAKFAST:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    iput-object v0, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    const/16 v0, 0xf

    .line 26
    iput v0, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/senseonics/events/MealEventActivity;->minCarb:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/senseonics/events/MealEventActivity;->maxCarb:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/events/MealEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/senseonics/events/MealEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method


# virtual methods
.method public getPosition(I)I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->carbs:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f1101c8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 38
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 39
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getMealLayout()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    iget-object p1, p0, Lcom/senseonics/events/MealEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget v0, p0, Lcom/senseonics/events/MealEventActivity;->minCarb:I

    iget v1, p0, Lcom/senseonics/events/MealEventActivity;->maxCarb:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->carbs:Ljava/util/ArrayList;

    const p1, 0x7f09023e

    .line 43
    invoke-virtual {p0, p1}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0900cd

    .line 44
    invoke-virtual {p0, v0}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09023d

    .line 46
    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeTextView:Landroid/widget/TextView;

    const v1, 0x7f0900ce

    .line 47
    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/MealEventActivity;->carbsTextView:Landroid/widget/TextView;

    .line 49
    new-instance v1, Lcom/senseonics/events/MealEventActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/events/MealEventActivity$1;-><init>(Lcom/senseonics/events/MealEventActivity;)V

    iput-object v1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 56
    new-instance v1, Lcom/senseonics/events/MealEventActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/events/MealEventActivity$2;-><init>(Lcom/senseonics/events/MealEventActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance p1, Lcom/senseonics/events/MealEventActivity$3;

    invoke-direct {p1, p0}, Lcom/senseonics/events/MealEventActivity$3;-><init>(Lcom/senseonics/events/MealEventActivity;)V

    .line 75
    new-instance v1, Lcom/senseonics/events/MealEventActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/events/MealEventActivity$4;-><init>(Lcom/senseonics/events/MealEventActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/MealEventActivity;->getPosition(I)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v1, Lcom/senseonics/events/MealEventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->setMealType(I)V

    goto :goto_0

    .line 93
    :cond_0
    iget v0, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    invoke-virtual {p0, v0}, Lcom/senseonics/events/MealEventActivity;->getPosition(I)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/senseonics/events/MealEventActivity;->setMealType(I)V

    .line 96
    :goto_0
    invoke-interface {p1, v0}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    return-void
.end method

.method public onSavePressed()V
    .locals 8

    .line 111
    invoke-super {p0}, Lcom/senseonics/events/EventActivity;->onSavePressed()V

    .line 114
    iget-boolean v0, p0, Lcom/senseonics/events/MealEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/senseonics/events/MealEventPoint;

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/events/MealEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/MealEventActivity;->glucoseLevel:I

    iget-object v5, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    iget v6, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 117
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/events/MealEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Lcom/senseonics/events/MealEventPoint;

    iget-object v3, p0, Lcom/senseonics/events/MealEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/MealEventActivity;->glucoseLevel:I

    iget-object v5, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    iget v6, p0, Lcom/senseonics/events/MealEventActivity;->selectedCarbs:I

    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 121
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/MealEventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/senseonics/events/MealEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/senseonics/events/MealEventPoint;->setDatabaseId(I)V

    .line 126
    :goto_0
    sget-object v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0}, Lcom/senseonics/events/MealEventActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V

    .line 129
    invoke-virtual {p0}, Lcom/senseonics/events/MealEventActivity;->finish()V

    return-void
.end method

.method public setMealType(I)V
    .locals 1

    .line 100
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->mealType:Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    .line 101
    invoke-static {p0, p1}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeName:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/senseonics/events/MealEventActivity;->mealTypeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
