.class public Lcom/senseonics/gen12androidapp/SystemSettingsActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SystemSettingsActivity.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private dialog:Landroid/app/Dialog;

.field private glucoseLayout:Landroid/widget/RelativeLayout;

.field private glucoseTextView:Landroid/widget/TextView;

.field private glucoseView:Landroid/view/View;

.field private inflater:Landroid/view/LayoutInflater;

.field private linkedSensorLayout:Landroid/widget/RelativeLayout;

.field private linkedSensorTextView:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorIdTextView:Landroid/widget/TextView;

.field private transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

.field private transmitterNameLayout:Landroid/widget/LinearLayout;

.field private transmitterNameTextView:Landroid/widget/TextView;

.field private unitValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettransmitterNameEditText(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Lcom/senseonics/util/CustomEditText;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetunitValues(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideProgressDialog(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTransmitterName(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateTransmitterName()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    return-void
.end method

.method private addGlucoseUnitView()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v1, 0x7f09028a

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v1, 0x7f09030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->setBoldTextView(Landroid/widget/TextView;)V

    .line 158
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    const v2, 0x7f0901f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    .line 162
    new-instance v1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Landroid/widget/TextView;)V

    .line 183
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget-object v2, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/senseonics/events/EventUtils$PickerManager;->selected(I)V

    .line 199
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f060290

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 201
    sget-boolean v1, Lcom/senseonics/util/Utils;->enableGlucoseUnitPanel:Z

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f060088

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 203
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    const v2, 0x7f060089

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 208
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 209
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseTextView:Landroid/widget/TextView;

    const v2, 0x7f060021

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->glucoseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addSensorSerialNumberView(Ljava/lang/String;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0105

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901f1

    .line 298
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f09030e

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    .line 301
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateLinkedSensorId()V

    const v1, 0x7f09006d

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 304
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$7;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09028a

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    .line 314
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->setBoldTextView(Landroid/widget/TextView;)V

    .line 316
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addTransmitterNameView()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0106

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0900ed

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f090308

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/CustomEditText;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const v1, 0x7f09028a

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v2, 0x7f110209

    .line 223
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->setBoldTextView(Landroid/widget/TextView;)V

    .line 227
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateTransmitterName()V

    .line 228
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    new-instance v2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$4;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    .line 229
    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setOnEditTextImeBackListener(Lcom/senseonics/util/CustomEditText$EditTextImeBackListener;)V

    .line 236
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const v2, 0x81000

    .line 237
    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setInputType(I)V

    .line 239
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    new-instance v2, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$5;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    .line 240
    invoke-virtual {v1, v2}, Lcom/senseonics/util/CustomEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 259
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addViews()V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addGlucoseUnitView()V

    .line 108
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addTransmitterNameView()V

    .line 111
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addSensorSerialNumberView(Ljava/lang/String;)V

    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private setBoldTextView(Landroid/widget/TextView;)V
    .locals 1

    .line 147
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private updateLinkedSensorId()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110220

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTransmitterName()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateViews()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060290

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v2, 0x7f060021

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060088

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v2, 0x7f060089

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/senseonics/util/CustomEditText;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 137
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->sensorIdTextView:Landroid/widget/TextView;

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateTransmitterName()V

    .line 143
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateLinkedSensorId()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 55
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008e

    .line 57
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->initializeLayout(I)Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102fe

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    sput-object v1, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 64
    new-instance p1, Landroid/app/ProgressDialog;

    const v1, 0x7f1202ee

    invoke-direct {p1, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f08009b

    .line 65
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const p1, 0x7f0900ed

    .line 68
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->content:Landroid/widget/LinearLayout;

    .line 69
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    .line 72
    new-instance v2, Lcom/senseonics/util/Item;

    sget-object v3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v3}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->unitValues:Ljava/util/ArrayList;

    new-instance v0, Lcom/senseonics/util/Item;

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MMOL_L:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p1, 0x7f0902c8

    .line 75
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 76
    new-instance v0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->addViews()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 331
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateViews()V

    .line 94
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    .line 326
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->updateViews()V

    return-void
.end method

.method public transmitterNameEdited()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Lcom/senseonics/util/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_0

    const-string v1, " "

    const-string v2, ""

    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    const/4 v1, 0x0

    .line 276
    sput-object v1, Lcom/senseonics/util/Utils;->transmitterNameContainer:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteTransmitterNameRequest(Ljava/lang/String;)V

    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 279
    new-instance v1, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity$6;-><init>(Lcom/senseonics/gen12androidapp/SystemSettingsActivity;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postPingRequest()V

    .line 288
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->hideProgressDialog()V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterNameEditText:Lcom/senseonics/util/CustomEditText;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SystemSettingsActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/util/CustomEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
