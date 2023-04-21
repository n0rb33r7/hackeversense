.class public Lcom/senseonics/events/InsulinEventActivity;
.super Lcom/senseonics/events/EventActivity;
.source "InsulinEventActivity.java"


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

.field private insulinTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

.field private insulinTypeName:Ljava/lang/String;

.field private list_decimal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private list_integer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private maxDecimal:I

.field private maxUnit:I

.field private minDecimal:I

.field private minUnit:I

.field private selectedUnit:F

.field private typeTextView:Landroid/widget/TextView;

.field private unitsTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/events/InsulinEventActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsulinType(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/events/EventUtils$INSULIN_TYPE;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinsulinTypeManager(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/events/EventUtils$PickerManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlist_decimal(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->list_decimal:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlist_integer(Lcom/senseonics/events/InsulinEventActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->list_integer:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedUnit(Lcom/senseonics/events/InsulinEventActivity;)F
    .locals 0

    iget p0, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetunitsTextView(Lcom/senseonics/events/InsulinEventActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->unitsTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/events/InsulinEventActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedUnit(Lcom/senseonics/events/InsulinEventActivity;F)V
    .locals 0

    iput p1, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/senseonics/events/EventActivity;-><init>()V

    .line 25
    sget-object v0, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->RAPID_ACTING:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    iput-object v0, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/senseonics/events/InsulinEventActivity;->minUnit:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/senseonics/events/InsulinEventActivity;->maxUnit:I

    .line 32
    iput v0, p0, Lcom/senseonics/events/InsulinEventActivity;->minDecimal:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/senseonics/events/InsulinEventActivity;->maxDecimal:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/events/InsulinEventActivity;)Lcom/senseonics/bluetoothle/DialogUtils;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/senseonics/events/InsulinEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 36
    invoke-super {p0, p1}, Lcom/senseonics/events/EventActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->naviBarTitle:Landroid/widget/TextView;

    const v0, 0x7f11016d

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 42
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getInsulinLayout()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget v0, p0, Lcom/senseonics/events/InsulinEventActivity;->minUnit:I

    iget v1, p0, Lcom/senseonics/events/InsulinEventActivity;->maxUnit:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->list_integer:Ljava/util/ArrayList;

    .line 45
    iget-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget v0, p0, Lcom/senseonics/events/InsulinEventActivity;->minDecimal:I

    iget v1, p0, Lcom/senseonics/events/InsulinEventActivity;->maxDecimal:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getDecimalsBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->list_decimal:Ljava/util/ArrayList;

    const p1, 0x7f0901d9

    .line 47
    invoke-virtual {p0, p1}, Lcom/senseonics/events/InsulinEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f0901da

    .line 48
    invoke-virtual {p0, v0}, Lcom/senseonics/events/InsulinEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0901d8

    .line 49
    invoke-virtual {p0, v1}, Lcom/senseonics/events/InsulinEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->typeTextView:Landroid/widget/TextView;

    const v1, 0x7f090402

    .line 50
    invoke-virtual {p0, v1}, Lcom/senseonics/events/InsulinEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->unitsTextView:Landroid/widget/TextView;

    .line 52
    new-instance v1, Lcom/senseonics/events/InsulinEventActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/events/InsulinEventActivity$1;-><init>(Lcom/senseonics/events/InsulinEventActivity;)V

    iput-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinTypeManager:Lcom/senseonics/events/EventUtils$PickerManager;

    .line 59
    new-instance v1, Lcom/senseonics/events/InsulinEventActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/events/InsulinEventActivity$2;-><init>(Lcom/senseonics/events/InsulinEventActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance p1, Lcom/senseonics/events/InsulinEventActivity$3;

    invoke-direct {p1, p0}, Lcom/senseonics/events/InsulinEventActivity$3;-><init>(Lcom/senseonics/events/InsulinEventActivity;)V

    .line 80
    new-instance v1, Lcom/senseonics/events/InsulinEventActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/events/InsulinEventActivity$4;-><init>(Lcom/senseonics/events/InsulinEventActivity;Lcom/senseonics/util/dialogs/DoublePickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/InsulinEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/InsulinEventActivity;->setInsulinType(I)V

    .line 106
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    check-cast v0, Lcom/senseonics/events/InsulinEventPoint;

    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v0

    iput v0, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/events/InsulinEventActivity;->setInsulinType(I)V

    .line 111
    :goto_0
    iget v0, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v3, "."

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.]"

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 114
    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->list_integer:Ljava/util/ArrayList;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result v1

    .line 115
    iget-object v4, p0, Lcom/senseonics/events/InsulinEventActivity;->list_decimal:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v0, v2, :cond_1

    .line 117
    invoke-interface {p1, v1, v0}, Lcom/senseonics/util/dialogs/DoublePickerManager;->selected(II)V

    :cond_1
    return-void
.end method

.method public onSavePressed()V
    .locals 8

    .line 130
    invoke-super {p0}, Lcom/senseonics/events/EventActivity;->onSavePressed()V

    .line 133
    iget-boolean v0, p0, Lcom/senseonics/events/InsulinEventActivity;->isEditing:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/senseonics/events/InsulinEventPoint;

    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->eventPoint:Lcom/senseonics/events/EventPoint;

    .line 135
    invoke-virtual {v1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v2

    iget-object v3, p0, Lcom/senseonics/events/InsulinEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/InsulinEventActivity;->glucoseLevel:I

    iget v5, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    iget-object v6, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 136
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/events/InsulinEventPoint;-><init>(ILjava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v0}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Lcom/senseonics/events/InsulinEventPoint;

    iget-object v3, p0, Lcom/senseonics/events/InsulinEventActivity;->currentDate:Ljava/util/Calendar;

    iget v4, p0, Lcom/senseonics/events/InsulinEventActivity;->glucoseLevel:I

    iget v5, p0, Lcom/senseonics/events/InsulinEventActivity;->selectedUnit:F

    iget-object v6, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->notesEditText:Landroid/widget/EditText;

    .line 142
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/InsulinEventPoint;-><init>(Ljava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/senseonics/events/InsulinEventActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide v1

    long-to-int v1, v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/senseonics/events/InsulinEventPoint;->setDatabaseId(I)V

    .line 147
    :goto_0
    sget-object v1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0}, Lcom/senseonics/events/InsulinEventActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWritePatientEventPoint(Lcom/senseonics/events/PatientEventPoint;)V

    .line 150
    invoke-virtual {p0}, Lcom/senseonics/events/InsulinEventActivity;->finish()V

    return-void
.end method

.method public setInsulinType(I)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinType:Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    .line 124
    invoke-static {p0, p1}, Lcom/senseonics/events/EventUtils;->getInsulinTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$INSULIN_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/events/InsulinEventActivity;->insulinTypeName:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/senseonics/events/InsulinEventActivity;->typeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
