.class public Lcom/senseonics/gen12androidapp/MySensorActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MySensorActivity.java"


# instance fields
.field private detectedserialNumberTextView:Landroid/widget/TextView;

.field private detectedserialNumberTitleView:Landroid/widget/TextView;

.field private insertionDateTextView:Landroid/widget/TextView;

.field private insertionDateTitleView:Landroid/widget/TextView;

.field private insertionTimeTextView:Landroid/widget/TextView;

.field private insertionTimeTitleView:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorInsertionDateAndTimeArrived:Z

.field private sensorLinkedSensorArrived:Z

.field private sensorUnLinkedSensorArrived:Z

.field private serialNumberTextView:Landroid/widget/TextView;

.field private serialNumberTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    .line 22
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    .line 23
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    return-void
.end method

.method private checkIfAllDataLoaded()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private refreshSensorInfo()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    .line 64
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    .line 65
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    .line 66
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->loadDataFromTransmitter()V

    return-void
.end method

.method private showDetectedSerialNumber()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 155
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showInsertionDate()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateOnly(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showInsertionTime()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 144
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showSerialNumber()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110220

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateViews()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showSerialNumber()V

    .line 96
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showInsertionDate()V

    .line 97
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showInsertionTime()V

    .line 98
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->showDetectedSerialNumber()V

    return-void
.end method


# virtual methods
.method public loadDataFromTransmitter()V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateViews()V

    .line 72
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_2

    .line 74
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLinkedSensorId()V

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 82
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    .line 86
    :cond_1
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    if-nez v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postDetectedSensorId()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->hideProgressDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    .line 29
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->initializeLayout(I)Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110207

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090336

    .line 33
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f0901d4

    .line 34
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTextView:Landroid/widget/TextView;

    const p1, 0x7f0901d6

    .line 35
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTextView:Landroid/widget/TextView;

    const p1, 0x7f090120

    .line 36
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f090337

    .line 38
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->serialNumberTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901d5

    .line 39
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionDateTitleView:Landroid/widget/TextView;

    const p1, 0x7f0901d7

    .line 40
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->insertionTimeTitleView:Landroid/widget/TextView;

    const p1, 0x7f090121

    .line 41
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MySensorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->detectedserialNumberTitleView:Landroid/widget/TextView;

    .line 43
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f1202ee

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f08009b

    .line 44
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->refreshSensorInfo()V

    .line 160
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorLinkedSensorArrived:Z

    .line 165
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorInsertionDateAndTimeArrived:Z

    .line 175
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MySensorActivity;->sensorUnLinkedSensorArrived:Z

    .line 170
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateDisplay()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->hideProgressDialog()V

    .line 57
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->refreshSensorInfo()V

    .line 51
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public updateDisplay()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->checkIfAllDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->updateViews()V

    .line 104
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MySensorActivity;->hideProgressDialog()V

    :cond_0
    return-void
.end method
