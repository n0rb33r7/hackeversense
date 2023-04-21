.class public Lcom/senseonics/gen12androidapp/MyTransmitterActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "MyTransmitterActivity.java"


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field private rssiTimer:Ljava/util/Timer;

.field private transmitterBatteryLevelArrived:Z

.field private transmitterBatteryLevelTextView:Landroid/widget/TextView;

.field private transmitterBatteryLevelTitleView:Landroid/widget/TextView;

.field private transmitterCompletedCalsTextView:Landroid/widget/TextView;

.field private transmitterCompletedCalsTitleView:Landroid/widget/TextView;

.field private transmitterCurrentCalibrationPhaseArrived:Z

.field private transmitterCurrentPhaseTextView:Landroid/widget/TextView;

.field private transmitterCurrentPhaseTitleView:Landroid/widget/TextView;

.field private transmitterFirmwareVersionArrived:Z

.field private transmitterFirmwareVersionTextView:Landroid/widget/TextView;

.field private transmitterFirmwareVersionTitleView:Landroid/widget/TextView;

.field private transmitterLastCalTextView:Landroid/widget/TextView;

.field private transmitterLastCalTitleView:Landroid/widget/TextView;

.field private transmitterLastCalibrationDateAndTimeArrived:Z

.field private transmitterModelNoArrived:Z

.field private transmitterModelNumberTextView:Landroid/widget/TextView;

.field private transmitterModelNumberTitleView:Landroid/widget/TextView;

.field private transmitterNameTextView:Landroid/widget/TextView;

.field private transmitterNameTitleView:Landroid/widget/TextView;

.field private transmitterPhaseStartDateAndTimeArrived:Z

.field private transmitterPhaseStartTextView:Landroid/widget/TextView;

.field private transmitterPhaseStartTitleView:Landroid/widget/TextView;

.field private transmitterSerialNumberArrived:Z

.field private transmitterSerialNumberTextView:Landroid/widget/TextView;

.field private transmitterSerialNumberTitleView:Landroid/widget/TextView;

.field private transmtiterRSSILevelTextView:Landroid/widget/TextView;

.field private transmtiterRSSILevelTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    .line 45
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    .line 46
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    .line 47
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    .line 48
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    .line 49
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    .line 50
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    return-void
.end method

.method private checkIfAllDataLoaded()Z
    .locals 3

    .line 346
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 356
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIfAllDataLoaded:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyTransmitterActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initMyTransmitterRequests(Lcom/senseonics/bluetoothle/BluetoothService;)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    if-nez v0, :cond_1

    .line 364
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postPingRequest()V

    .line 368
    :cond_1
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    if-nez v0, :cond_2

    .line 369
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postGetModelRequest()V

    .line 373
    :cond_2
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    if-nez v0, :cond_3

    .line 374
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postVersionNumberRequest()V

    .line 378
    :cond_3
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    if-nez v0, :cond_4

    .line 379
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postLastCalibrationDateTimeRequest()V

    .line 383
    :cond_4
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    if-nez v0, :cond_5

    .line 384
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postPhaseStartDateTimeRequest()V

    .line 388
    :cond_5
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    if-nez v0, :cond_6

    .line 389
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 393
    :cond_6
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    if-nez v0, :cond_7

    .line 394
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postBatteryLifeRequest()V

    :cond_7
    return-void
.end method

.method private refreshTransmitterInfo()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    .line 97
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    .line 98
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    .line 99
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    .line 100
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    .line 101
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    .line 102
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    .line 104
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->loadDataFromTransmitter()V

    .line 106
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->startRssiTimer()V

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateTransmitterRSSILevel(I)V

    :goto_0
    return-void
.end method

.method private showTransmitterBatteryLevel()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    if-eq v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLife()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 297
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterCompletedCal()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-ltz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 261
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterCurrentPhase()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v0, v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 273
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterFWVersion()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 225
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterLastCal()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 237
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterModelNumber()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterModelNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 213
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterName()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 189
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterPhaseStart()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 249
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTransmitterSerialNumber()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    const v1, 0x7f110220

    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 201
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method

.method private startRssiTimer()V
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    new-instance v2, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterActivity;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopRssiTimer()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->rssiTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateTransmitterRSSILevel(I)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    const v0, 0x7f110220

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :goto_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    .line 285
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateCellTextColorBasedOnConnection(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public loadDataFromTransmitter()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateViews()V

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->initMyTransmitterRequests(Lcom/senseonics/bluetoothle/BluetoothService;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->hideProgressDialog()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0030

    .line 56
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->initializeLayout(I)Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110208

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090281

    .line 60
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTextView:Landroid/widget/TextView;

    const p1, 0x7f090287

    .line 61
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f09027f

    .line 62
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTextView:Landroid/widget/TextView;

    const p1, 0x7f09027b

    .line 63
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTextView:Landroid/widget/TextView;

    const p1, 0x7f09027d

    .line 64
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTextView:Landroid/widget/TextView;

    const p1, 0x7f090283

    .line 65
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTextView:Landroid/widget/TextView;

    const p1, 0x7f090277

    .line 66
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTextView:Landroid/widget/TextView;

    const p1, 0x7f090279

    .line 67
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTextView:Landroid/widget/TextView;

    const p1, 0x7f090285

    .line 68
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTextView:Landroid/widget/TextView;

    const p1, 0x7f090275

    .line 69
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTextView:Landroid/widget/TextView;

    const p1, 0x7f090282

    .line 71
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterNameTitleView:Landroid/widget/TextView;

    const p1, 0x7f090288

    .line 72
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberTitleView:Landroid/widget/TextView;

    const p1, 0x7f090280

    .line 73
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNumberTitleView:Landroid/widget/TextView;

    const p1, 0x7f09027c

    .line 74
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionTitleView:Landroid/widget/TextView;

    const p1, 0x7f09027e

    .line 75
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalTitleView:Landroid/widget/TextView;

    const p1, 0x7f090284

    .line 76
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartTitleView:Landroid/widget/TextView;

    const p1, 0x7f090278

    .line 77
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCompletedCalsTitleView:Landroid/widget/TextView;

    const p1, 0x7f09027a

    .line 78
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentPhaseTitleView:Landroid/widget/TextView;

    const p1, 0x7f090286

    .line 79
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmtiterRSSILevelTitleView:Landroid/widget/TextView;

    const p1, 0x7f090276

    .line 80
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelTitleView:Landroid/widget/TextView;

    .line 82
    new-instance p1, Landroid/app/ProgressDialog;

    const v0, 0x7f1202ee

    invoke-direct {p1, p0, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f08009b

    .line 83
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->refreshTransmitterInfo()V

    .line 306
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;)V
    .locals 0

    .line 301
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/TransmitterRSSIEvent;->getRSSIValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateTransmitterRSSILevel(I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedBatteryLevelEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 335
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterBatteryLevelArrived:Z

    .line 336
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterCurrentCalibrationPhaseArrived:Z

    .line 341
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterLastCalibrationDateAndTimeArrived:Z

    .line 326
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterPhaseStartDateAndTimeArrived:Z

    .line 331
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 320
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterFirmwareVersionArrived:Z

    .line 321
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterModelNoArrived:Z

    .line 316
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->transmitterSerialNumberArrived:Z

    .line 311
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateDisplay()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->stopRssiTimer()V

    .line 142
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->hideProgressDialog()V

    .line 143
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->refreshTransmitterInfo()V

    .line 90
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public updateDisplay()V
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->checkIfAllDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->updateViews()V

    .line 125
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->hideProgressDialog()V

    :cond_0
    return-void
.end method

.method public updateViews()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterName()V

    .line 170
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterSerialNumber()V

    .line 171
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterModelNumber()V

    .line 172
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterFWVersion()V

    .line 173
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterLastCal()V

    .line 174
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterPhaseStart()V

    .line 175
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterCompletedCal()V

    .line 176
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterCurrentPhase()V

    .line 177
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterActivity;->showTransmitterBatteryLevel()V

    return-void
.end method
