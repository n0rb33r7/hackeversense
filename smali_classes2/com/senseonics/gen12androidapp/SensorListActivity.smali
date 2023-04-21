.class public Lcom/senseonics/gen12androidapp/SensorListActivity;
.super Lcom/senseonics/gen12androidapp/BaseActivity;
.source "SensorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$SenseAsynctask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;,
        Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;
    }
.end annotation


# static fields
.field private static final MLResponseMessageArgument_ATCCAL:I = 0x3

.field private static final MLResponseMessageArgument_CRC:I = 0x0

.field private static final MLResponseMessageArgument_EEPROM:I = 0x2

.field private static final kBaseFileExtension:Ljava/lang/String; = ".csv"

.field private static final kNumberEEPROMBlocks:I = 0x1a


# instance fields
.field private addressAndValuesACT:[I

.field private addressAndValuesEEPROM:[I

.field private avPlaceSensor:Landroid/app/Dialog;

.field private avPlaceSensorCounter:I

.field private checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

.field private checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

.field private checkTxTimeCounter:I

.field private dialog:Landroid/app/Dialog;

.field private fileVersionString:Ljava/lang/String;

.field private imageView1:Landroid/widget/ImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private imageView3:Landroid/widget/ImageView;

.field private isRelink:Z

.field private linkCheckCounter:I

.field private linkCheckHander:Landroid/os/Handler;

.field private linkCheckRunnable:Ljava/lang/Runnable;

.field private linkDetectedSensorButton:Landroid/widget/Button;

.field private linkDetectedSensorTextView:Landroid/widget/TextView;

.field private linkedSensorLayout:Landroid/widget/LinearLayout;

.field private linkedSensorLeftTextView:Landroid/widget/TextView;

.field private linkedSensorSerialNumberArrived:Z

.field private linkedSensorTextView:Landroid/widget/TextView;

.field private linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

.field private linkingInProgress:Z

.field private linkingLayout:Landroid/widget/LinearLayout;

.field private linkingSensorTextView:Landroid/widget/TextView;

.field private linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

.field private oldSensorInsertionDate:Ljava/util/Calendar;

.field private progressBar1:Landroid/widget/ProgressBar;

.field private progressBar2:Landroid/widget/ProgressBar;

.field private progressBar3:Landroid/widget/ProgressBar;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private relinkArrow:Landroid/widget/ImageView;

.field private relinkLayout:Landroid/widget/LinearLayout;

.field private relinkTextView:Landroid/widget/TextView;

.field private retrievingParamsTextView:Landroid/widget/TextView;

.field protected sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private unlinkedSensorLayout:Landroid/widget/LinearLayout;

.field private unlinkedSensorLeftTextView:Landroid/widget/TextView;

.field private unlinkedSensorSerialNumberArrived:Z

.field private unlinkedSensorTextView:Landroid/widget/TextView;

.field private waitForInsertionDateBeforeLinkCheck:Z

.field protected writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetdialog(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetimageView1(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkingInProgress(Lcom/senseonics/gen12androidapp/SensorListActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkingLayout(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar1(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar2(Lcom/senseonics/gen12androidapp/SensorListActivity;)Landroid/widget/ProgressBar;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisRelink(Lcom/senseonics/gen12androidapp/SensorListActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->isRelink:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlinkingState(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideProgressDialog(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlinkCheck(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartLinking(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startLinking()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLinkDetectedSensorLayout(Lcom/senseonics/gen12androidapp/SensorListActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(ZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 120
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 450
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$4;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$4;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    .line 570
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$5;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$5;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private allowRelink()Z
    .locals 2

    .line 1427
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->alreadyLinked()Z

    move-result v0

    .line 1428
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->relinkSensor()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private alreadyLinked()Z
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    .line 1422
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createRelinkDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 1477
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f12013c

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    .line 1479
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c005d

    const/4 v2, 0x0

    .line 1480
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903cf

    .line 1482
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 1483
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1484
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0903af

    .line 1486
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1487
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900c9

    .line 1489
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1490
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1491
    new-instance p2, Lcom/senseonics/gen12androidapp/SensorListActivity$11;

    invoke-direct {p2, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$11;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0902ba

    .line 1499
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1500
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1503
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1504
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private dataSentToTransmitter()V
    .locals 3

    .line 328
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const-string v0, "Linking"

    const-string v1, "Step 3: link the new sensor"

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/bluetoothle/BluetoothService;->postWriteSensorID(J)V

    .line 338
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    goto :goto_0

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private finishLinking(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-eqz p1, :cond_0

    .line 604
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->COMPLETE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    :goto_0
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    .line 605
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeCheckAndSyncTransmitterDateTimeCallBack()V

    .line 606
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeLinkCheckCallBack()V

    .line 607
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    return-void
.end method

.method private generatePassword()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x61

    .line 687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const/16 v1, 0x24

    .line 688
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 687
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    .line 690
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 691
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getSensorFileNameBasedOnAlgoFormateVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v0

    const-string v1, ".csv"

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "00Sensor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 678
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sensor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 681
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get sensor file name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Algo format version"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getTxHHDTimeDiff()J
    .locals 6

    .line 409
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterTime()J

    move-result-wide v0

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre Sensor linking : tx time -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#4021"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time diff: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private isAllDataLoaded()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkCheck()V
    .locals 8

    .line 497
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    const/4 v1, 0x1

    .line 514
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    add-int/2addr v0, v1

    .line 497
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 499
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 500
    :cond_0
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    .line 503
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkCheckCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linking"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avPlaceSensorCounter: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-nez v0, :cond_2

    const v0, 0x7f110093

    .line 507
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayPlaceSensorDialogWithMessageIfNeeded(Ljava/lang/String;)V

    :cond_2
    const-string v0, "1. Get state copy"

    .line 511
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 515
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 517
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v4

    .line 518
    iget-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    :goto_0
    move-object v3, v2

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 523
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 528
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. Check Insertion Date: old->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " new->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> isSet? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, ")"

    if-eqz v3, :cond_5

    .line 531
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v3

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "3. Read Current Phase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhaseNotTranslated()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    sget-object v5, Lcom/senseonics/util/Utils$CAL_PHASE;->UNKNOWN:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-eq v3, v5, :cond_5

    .line 535
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 539
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "4. needForceRead? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 542
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postForceGlucoseMeasurement()V

    .line 543
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postLinkedSensorId()V

    .line 544
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    .line 545
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 546
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    .line 547
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 549
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 550
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 553
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "5. Link Finished! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 556
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    .line 558
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 559
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    .line 563
    :cond_7
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeLinkCheckCallBack()V

    .line 566
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->step3Finished()V

    :cond_8
    :goto_2
    return-void
.end method

.method private removeCheckAndSyncTransmitterDateTimeCallBack()V
    .locals 2

    .line 1268
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1270
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private removeLinkCheckCallBack()V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "Linking"

    const-string v1, "----- removeLinkCheckCallBack -----"

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1263
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private resetCheckTxTimeCounter()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return-void
.end method

.method private shouldDisableRelink()Z
    .locals 4

    .line 1437
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->disableRelinkAlertsActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 1438
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 1439
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMostRecentGlucoseDateTime()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->isSystemTimeBehind(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showDisabledRelink()Z
    .locals 1

    .line 1433
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->allowRelink()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->shouldDisableRelink()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V
    .locals 2

    .line 1573
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$12;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity$12;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sramResultCheckCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SramResultCheckCompletionActivityReceivedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SramResultCheckCompletionActivityReceivedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 364
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startLinkCheck()V

    goto :goto_0

    .line 367
    :cond_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 368
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :goto_0
    return-void
.end method

.method private startDownloadCalibrationWithSensorFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, " "

    const-string v1, "-1"

    const-string v2, "UTF-8"

    .line 832
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->generatePassword()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 833
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 834
    invoke-virtual {p0, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 835
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 837
    sget-object v5, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v5, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%u%p"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "%u"

    .line 841
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%p"

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, "finalString"

    .line 845
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 847
    invoke-static {v5}, Lcom/senseonics/util/Utils;->GetCRCValue([B)I

    move-result v5

    const-string v6, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\">\n<soapenv:Header/>\n<soapenv:Body>\n<tem:CalibrationFileInfoEx>\n<!--Optional:-->\n<tem:ATCCALFetchFlag>1</tem:ATCCALFetchFlag>\n<!--Optional:-->\n<tem:CRC>%crc</tem:CRC>\n<!--Optional:-->\n<tem:EEPROMFetchFlag>1</tem:EEPROMFetchFlag>\n<!--Optional:-->\n<tem:FileName>%id</tem:FileName>\n<!--Optional:-->\n<tem:Password>%password</tem:Password>\n<!--Optional:-->\n<tem:UserName>%username</tem:UserName>\n</tem:CalibrationFileInfoEx>\n</soapenv:Body>\n</soapenv:Envelope>\n"

    const-string v7, "%crc"

    .line 870
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%id"

    .line 871
    invoke-virtual {v5, v6, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "%password"

    .line 872
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "%username"

    .line 873
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "request string"

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    sget-object v3, Lcom/senseonics/util/Utils;->calibrationServer:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 879
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v4, "text/xml; charset=utf-8"

    .line 880
    invoke-virtual {v0, p1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SOAPAction"

    .line 881
    sget-object v4, Lcom/senseonics/util/Utils;->webserviceFunction:Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 886
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v3, 0xea60

    .line 888
    invoke-static {p1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 889
    invoke-static {p1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 890
    invoke-static {p1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 892
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 895
    :try_start_1
    invoke-interface {v2, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 896
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_0
    move-exception p1

    .line 898
    :try_start_2
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 899
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 902
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq p1, v0, :cond_0

    .line 903
    new-instance p1, Lcom/senseonics/gen12androidapp/SensorListActivity$7;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$7;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return-object v1

    :catch_1
    move-exception p1

    const-string v0, "exception"

    const-string v2, "----"

    .line 913
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private startLinkCheck()V
    .locals 5

    .line 480
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->isRelink:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorRelink:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v4, ""

    invoke-direct {v2, v3, v4, v1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;-><init>(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "Linking"

    const-string v2, "--- Link Check START ---"

    .line 485
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iput v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckCounter:I

    .line 488
    iput v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensorCounter:I

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    .line 492
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionDate()V

    .line 493
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postSensorInsertionTime()V

    return-void
.end method

.method private startLinking()V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {p0}, Lcom/senseonics/util/Utils;->haveNetworkConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v0, 0x1

    .line 380
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    .line 383
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTransmitterDateTimePre()V

    goto :goto_0

    .line 385
    :cond_0
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->NotConnectedToWifi:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 386
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLinkDetectedSensorLayout(ZZ)V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1315
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1317
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->enableDisableLinkSensorButton(Z)V

    .line 1318
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->enableDisableRelinkLayout(Z)V

    if-eqz p2, :cond_3

    .line 1320
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1322
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->allowRelink()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1323
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showDisabledRelink()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showDisabledRelinkLayout()V

    goto :goto_0

    .line 1326
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showEnabledRelinkLayout()V

    goto :goto_0

    .line 1328
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isTransmitterEOL396Active()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1329
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showTransmitterEOL396Layout(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 1331
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showUnlinkedSensorSeenLayout()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateTransmitterTime()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 397
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    return-void
.end method

.method private writeCalDataCompleted(Ljava/lang/Boolean;)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/WriteCalDataCompletionActivityReceivedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/WriteCalDataCompletionActivityReceivedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 278
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->dataSentToTransmitter()V

    goto :goto_0

    .line 281
    :cond_0
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 282
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndSyncTransmitterDateTime()V
    .locals 6

    .line 423
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    .line 425
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getTxHHDTimeDiff()J

    move-result-wide v0

    .line 427
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 428
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 430
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->resetCheckTxTimeCounter()V

    .line 432
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 433
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateTransmitterTime()V

    .line 439
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 440
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    sget v3, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/2addr v3, v1

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->resetCheckTxTimeCounter()V

    .line 444
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->removeCheckAndSyncTransmitterDateTimeCallBack()V

    .line 446
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$CheckFWCompatibilityTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public checkMMAandTXcompatibility()Ljava/lang/String;
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, "-1"

    const-string v2, "SensorListActivity"

    const-string v3, ""

    .line 698
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->generatePassword()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 699
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 701
    invoke-virtual {p0, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 702
    invoke-virtual {p0, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    :try_start_0
    const-string v7, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\">\n<soapenv:Header/>\n<soapenv:Body>\n<tem:CompatibilityFileInputInfo>\n<!--Optional:-->\n<tem:UserName>%username</tem:UserName>\n<!--Optional:-->\n<tem:Password>%password</tem:Password>\n<!--Optional:-->\n<tem:AppOS>1</tem:AppOS>\n<!--Optional:-->\n<tem:AppVersion>%appversion</tem:AppVersion>\n<!--Optional:-->\n<tem:FWVersion>%fwversion</tem:FWVersion>\n</tem:CompatibilityFileInputInfo>\n</soapenv:Body>\n</soapenv:Envelope>\n"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 726
    :try_start_1
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 727
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-object v5, v3

    .line 731
    :goto_0
    :try_start_2
    iget-object v8, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v8

    :goto_1
    const-string v8, "%username"

    .line 737
    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%password"

    .line 738
    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "%appversion"

    .line 739
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%fwversion"

    .line 740
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 742
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkMMAandTXcompatibility:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    sget-object v5, Lcom/senseonics/util/Utils;->calibrationServer:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 746
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v6, "text/xml; charset=utf-8"

    .line 747
    invoke-virtual {v4, v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "SOAPAction"

    .line 748
    sget-object v6, Lcom/senseonics/util/Utils;->kAppFWCompatibilityCheckWebserviceFunctionCall:Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 751
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v5, 0xea60

    .line 753
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 754
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 755
    invoke-static {v3, v0}, Lorg/apache/http/params/HttpProtocolParams;->setHttpElementCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 757
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 760
    :try_start_3
    invoke-interface {v0, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 761
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_1
    move-exception v0

    .line 763
    :try_start_4
    sget-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 764
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 767
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq v0, v3, :cond_1

    .line 768
    new-instance v0, Lcom/senseonics/gen12androidapp/SensorListActivity$6;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$6;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    return-object v1

    :catch_2
    move-exception v0

    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public checkTransmitterDateTimePre()V
    .locals 4

    const/4 v0, 0x0

    .line 401
    iput v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    .line 402
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateTransmitterTime()V

    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeHandler:Landroid/os/Handler;

    .line 405
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkAndSyncTransmitterDateTimeRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v2, v2, 0x5

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public createDynamicPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "GMT"

    .line 632
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "MMddyyyy"

    .line 633
    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public createHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "HmacSHA256"

    .line 640
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 642
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 644
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string p2, "ASCII"

    .line 646
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    .line 648
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    .line 649
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 650
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x30

    .line 652
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 654
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 664
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 662
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 660
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p1

    .line 658
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method disableRelinkAlertsActive()Z
    .locals 5

    .line 1399
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    .line 1400
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 1401
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v2

    const/16 v3, 0x8

    aget v2, v2, v3

    .line 1404
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isTransmitterEOL396Active()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 1405
    invoke-virtual {v3, v0}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v3

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->VeryLowBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 1406
    invoke-virtual {v3, v0}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 1407
    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 1408
    invoke-virtual {v0, v2}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorOnHoldAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public displayLinkingFailure()V
    .locals 5

    .line 1188
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$13;->$SwitchMap$com$senseonics$gen12androidapp$SensorListActivity$MLSensorLinkingError:[I

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f11029e

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f110340

    .line 1240
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110343

    .line 1241
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    move-object v0, v2

    goto/16 :goto_2

    :pswitch_1
    const v0, 0x7f11029f

    .line 1234
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1225
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showCalFileNotFoundAlerts()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110163

    .line 1226
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110161

    .line 1227
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    const v0, 0x7f110162

    .line 1229
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110160

    .line 1230
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1216
    :pswitch_3
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalCrcCheck()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalSramResultCheck()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x7f11032b

    .line 1220
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11032c

    .line 1221
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    const v0, 0x7f1102a0

    .line 1217
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1218
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    const v0, 0x7f110290

    .line 1208
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1209
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateSensorLinkFileErrorText()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f110292

    .line 1210
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f110291

    .line 1212
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    const v0, 0x7f1102d1

    .line 1204
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f1102d2

    .line 1205
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_6
    const v0, 0x7f11035e

    .line 1200
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1201
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateInternetDisconnectedAlertText()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f110171

    goto :goto_1

    :cond_4
    const v0, 0x7f11035f

    :goto_1
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_7
    const v0, 0x7f110164

    .line 1190
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1191
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    const-string v1, "%%"

    const v3, 0x7f110165

    if-eqz v0, :cond_5

    .line 1192
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    .line 1193
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1195
    :cond_5
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f110220

    .line 1196
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    :goto_2
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v3, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq v1, v3, :cond_7

    .line 1246
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isThisActivityTop()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1247
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1248
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1250
    :cond_6
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v3, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2, v0}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v3}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialog:Landroid/app/Dialog;

    .line 1251
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    const/4 v0, 0x0

    .line 1255
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 1256
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public displayPlaceSensorDialogWithMessageIfNeeded(Ljava/lang/String;)V
    .locals 5

    .line 1275
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isThisActivityTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    const-string v1, "Linking"

    if-nez v0, :cond_0

    const-string v0, "Create avPlaceSensor"

    .line 1277
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    .line 1281
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "avPlaceSensor isShowing?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "avPlaceSensor need to show!!"

    .line 1283
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method enableDisableLinkSensorButton(Z)V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1358
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v1, 0x7f060291

    goto :goto_0

    :cond_0
    const v1, 0x7f060021

    :goto_0
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1359
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    if-eqz p1, :cond_1

    const p1, 0x7f06006b

    goto :goto_1

    :cond_1
    const p1, 0x7f060089

    :goto_1
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method enableDisableRelinkLayout(Z)V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1364
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkTextView:Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1365
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public findCalibrationFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 828
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startDownloadCalibrationWithSensorFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAvPlaceSensor()Landroid/app/Dialog;
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    return-object v0
.end method

.method public getCheckTxTimeCounter()I
    .locals 1

    .line 1528
    iget v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return v0
.end method

.method public getOldSensorInsertionDate()Ljava/util/Calendar;
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public isLinkedSensorSerialNumberArrived()Z
    .locals 1

    .line 1520
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    return v0
.end method

.method isTransmitterEOL396Active()Z
    .locals 3

    .line 1390
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseAlertStatus()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1392
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v0}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isUnlinkedSensorSerialNumberArrived()Z
    .locals 1

    .line 1544
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    return v0
.end method

.method public loadData()V
    .locals 2

    .line 611
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateViews()V

    .line 613
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 614
    iput-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    .line 615
    iput-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 616
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 619
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorGlucoseAlertsAndStatus()V

    .line 620
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorIdRequest()V

    .line 621
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadUnlinkedSensorIdRequest()V

    goto :goto_0

    .line 623
    :cond_1
    invoke-direct {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 626
    invoke-direct {p0, v1, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(ZZ)V

    .line 627
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0034

    .line 137
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->initializeLayout(I)Landroid/view/View;

    .line 139
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110189

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f090207

    .line 141
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090404

    .line 142
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    .line 143
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f09030e

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    .line 144
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0901fe

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLeftTextView:Landroid/widget/TextView;

    .line 145
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLeftTextView:Landroid/widget/TextView;

    const v2, 0x7f1100d5

    .line 146
    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    const p1, 0x7f0902f9

    .line 148
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0902fa

    .line 149
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkTextView:Landroid/widget/TextView;

    const p1, 0x7f0902f8

    .line 150
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkArrow:Landroid/widget/ImageView;

    const p1, 0x7f090206

    .line 151
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const p1, 0x7f090204

    .line 152
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    const p1, 0x7f090209

    .line 153
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f0902e7

    .line 154
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const p1, 0x7f0902e8

    .line 155
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const p1, 0x7f0902e9

    .line 156
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    const p1, 0x7f0901cc

    .line 157
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const p1, 0x7f0901cd

    .line 158
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    const p1, 0x7f0901ce

    .line 159
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const p1, 0x7f090304

    .line 160
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->retrievingParamsTextView:Landroid/widget/TextView;

    const p1, 0x7f09020a

    .line 161
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingSensorTextView:Landroid/widget/TextView;

    .line 163
    invoke-direct {p0, v0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(ZZ)V

    .line 164
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$1;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$1;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$2;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$2;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance p1, Landroid/app/ProgressDialog;

    const v1, 0x7f1202ee

    invoke-direct {p1, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f08009b

    .line 179
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 180
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1291
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 1292
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 216
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 217
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseActivity;->onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/LinkSensorIdCompletedEvent;)V
    .locals 1

    .line 346
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP3:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    if-eq p1, v0, :cond_0

    return-void

    .line 350
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableAtccalSramResultCheck()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isAtccalSramResultRegisterExists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 351
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->check()V

    goto :goto_0

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startLinkCheck()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;)V
    .locals 0

    const/4 p1, 0x1

    .line 264
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    .line 266
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isAllDataLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-nez p1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;)V
    .locals 3

    .line 459
    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 460
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    .line 463
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 464
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Calendar;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    .line 468
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0.1 Save old insertion date: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->oldSensorInsertionDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Linking"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    .line 471
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckHander:Landroid/os/Handler;

    .line 472
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;)V
    .locals 5

    const/4 p1, 0x1

    .line 221
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    .line 222
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateViews()V

    .line 224
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    sget-object v1, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->NONE:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    if-ne v0, v1, :cond_4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkedSensorSerialNumberArrived:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linking"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v0

    .line 229
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    if-eqz v3, :cond_3

    .line 232
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v0, :cond_0

    .line 235
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 247
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUnlinkedSensorSeen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(ZZ)V

    goto :goto_1

    .line 251
    :cond_3
    invoke-direct {p0, v4, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateLinkDetectedSensorLayout(ZZ)V

    .line 255
    :goto_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    :cond_4
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->isAllDataLoaded()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-nez p1, :cond_5

    .line 259
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->hideProgressDialog()V

    :cond_5
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SramResultCheckCompletedEvent;)V
    .locals 0

    .line 358
    invoke-virtual {p1}, Lcom/senseonics/events/SramResultCheckCompletedEvent;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultCheckCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/WriteCalDataCompletedEvent;)V
    .locals 0

    .line 272
    invoke-virtual {p1}, Lcom/senseonics/events/WriteCalDataCompletedEvent;->isSuccess()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onResume()V
    .locals 6

    .line 189
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 192
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->isSuccessful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataCompleted(Ljava/lang/Boolean;)V

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingInProgress:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultChecker:Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkSramResultChecker;->isSuccessful()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->sramResultCheckCompleted(Ljava/lang/Boolean;)V

    .line 201
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 202
    new-instance v1, Lcom/senseonics/gen12androidapp/SensorListActivity$3;

    invoke-direct {v1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$3;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseActivity;->onResume()V

    return-void
.end method

.method public parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    .locals 7

    .line 1075
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->updateEEPROMAndATCCALValues(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_5

    const/4 p1, 0x0

    .line 1081
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    const/16 v2, 0x10

    .line 1082
    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->fileVersionString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Version"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result v2

    const/4 v3, 0x1

    .line 1088
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1091
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    const-string v6, "Algo format version"

    if-lt v4, v5, :cond_2

    if-lt v2, v5, :cond_1

    .line 1093
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_0

    const-string p1, "Compatibility check passes 0"

    .line 1094
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p2, "Compatibility check failed 0"

    .line 1096
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string p2, "Compatibility check failed 1"

    .line 1100
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 1103
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lt p2, v1, :cond_4

    if-nez v2, :cond_3

    const-string p1, "Compatibility check passes 2"

    .line 1105
    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "Compatibility check failed 2"

    .line 1107
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_4
    const-string p2, "Compatibility check failed 3"

    .line 1111
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1115
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1116
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    .line 1117
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    .line 1118
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_1

    .line 1121
    :cond_5
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1124
    :cond_6
    :goto_1
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-ne v0, p1, :cond_9

    .line 1125
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    if-eqz p1, :cond_8

    .line 1127
    new-instance p1, Lcom/senseonics/gen12androidapp/SensorListActivity$8;

    invoke-direct {p1, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$8;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1137
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1138
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->writeCalDataModel:Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object p2

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    invoke-virtual {p1, p2, v1, v2}, Lcom/senseonics/bluetoothle/SensorLinkWriteCalDataModel;->writeData(Lcom/senseonics/bluetoothle/BluetoothService;[I[I)V

    goto :goto_2

    .line 1140
    :cond_7
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_2

    .line 1143
    :cond_8
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    :cond_9
    :goto_2
    return-object v0
.end method

.method public parseResponse(Ljava/lang/String;)V
    .locals 10

    .line 986
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;->STEP2:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 991
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 992
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 993
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 994
    invoke-interface {v3, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 996
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v0

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-eq p1, v1, :cond_6

    .line 999
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, " PARSE -- NAME --"

    .line 1001
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x4

    if-eq p1, v7, :cond_1

    goto :goto_2

    .line 1006
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v7, "text"

    .line 1008
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, p1

    goto :goto_1

    :cond_3
    move-object v4, p1

    goto :goto_1

    :cond_4
    move-object v2, p1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 1028
    :cond_5
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    .line 1033
    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v4, v2

    move-object v5, v4

    .line 1031
    :goto_4
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1036
    :cond_6
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expectedCRC:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "|eepromString:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "|atccalString:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SensorListActivity"

    invoke-static {v3, p1}, Lcom/senseonics/util/Utils;->printLongLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 1039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_2
    const-string v3, "UTF-8"

    .line 1042
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1043
    invoke-static {p1}, Lcom/senseonics/util/Utils;->GetCRCValue([B)I

    move-result p1

    .line 1045
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p1, v2, :cond_7

    .line 1046
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_6

    .line 1049
    :cond_7
    invoke-virtual {p0, v4, v5}, Lcom/senseonics/gen12androidapp/SensorListActivity;->parseAndSendEEPROMAndATCCALString(Ljava/lang/String;Ljava/lang/String;)Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_6

    .line 1052
    :catch_4
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    goto :goto_6

    .line 1055
    :cond_8
    sget-object p1, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    .line 1058
    :goto_6
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->None:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-eq p1, v2, :cond_b

    .line 1059
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showCalFileNotFoundAlerts()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    sget-object v2, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    if-ne p1, v2, :cond_a

    .line 1060
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getAlgorithmParameterFormatVersion()I

    move-result p1

    const/16 v2, 0x8

    if-lt p1, v2, :cond_9

    .line 1063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "600Sensor"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".csv"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1064
    new-instance v2, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;

    invoke-direct {v2, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity$FindCalibrationFileAsynctask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    .line 1066
    :cond_9
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    goto :goto_7

    .line 1069
    :cond_a
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->displayLinkingFailure()V

    :cond_b
    :goto_7
    return-void
.end method

.method public prepareLinkingLayout()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar1:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar2:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView1:Landroid/widget/ImageView;

    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 304
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->retrievingParamsTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateSensorLinkStep1Text()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f110284

    goto :goto_0

    :cond_0
    const v2, 0x7f110283

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 307
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingSensorTextView:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f11018b

    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAvPlaceSensor(Landroid/app/Dialog;)V
    .locals 0

    .line 1540
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->avPlaceSensor:Landroid/app/Dialog;

    return-void
.end method

.method public setCheckTxTimeCounter(I)V
    .locals 0

    .line 1532
    iput p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->checkTxTimeCounter:I

    return-void
.end method

.method public setLinkedSensorSerialNumberArrived(Z)V
    .locals 0

    .line 1524
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorSerialNumberArrived:Z

    return-void
.end method

.method public setLinkingError(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    return-void
.end method

.method public setLinkingState(Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkingState:Lcom/senseonics/gen12androidapp/SensorListActivity$LinkingState;

    return-void
.end method

.method public setUnlinkedSensorSerialNumberArrived(Z)V
    .locals 0

    .line 1548
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorSerialNumberArrived:Z

    return-void
.end method

.method public setWaitForInsertionDateBeforeLinkCheck(Z)V
    .locals 0

    .line 1556
    iput-boolean p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->waitForInsertionDateBeforeLinkCheck:Z

    return-void
.end method

.method showDisabledRelinkLayout()V
    .locals 3

    .line 1369
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1370
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->enableDisableRelinkLayout(Z)V

    .line 1371
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const v2, 0x7f11027b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1372
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method showEnabledRelinkLayout()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->relinkLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method showRelinkAlert1()V
    .locals 7

    const v0, 0x7f11015f

    .line 1443
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110278

    .line 1444
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f110083

    .line 1445
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f11022a

    .line 1446
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1447
    new-instance v6, Lcom/senseonics/gen12androidapp/SensorListActivity$9;

    invoke-direct {v6, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$9;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    move-object v1, p0

    .line 1455
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createRelinkDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method showRelinkAlert2()V
    .locals 7

    const v0, 0x7f110096

    .line 1459
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f110279

    .line 1460
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f110083

    .line 1461
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f110277

    .line 1462
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1463
    new-instance v6, Lcom/senseonics/gen12androidapp/SensorListActivity$10;

    invoke-direct {v6, p0}, Lcom/senseonics/gen12androidapp/SensorListActivity$10;-><init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    move-object v1, p0

    .line 1473
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->createRelinkDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method showTestPopups()V
    .locals 7

    .line 1564
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 1565
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->ServerError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-wide/16 v5, 0x0

    invoke-direct {p0, v0, v5, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V

    .line 1566
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->UnableToDownloadSensorFile:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    invoke-direct {p0, v0, v3, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V

    .line 1567
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->TransmitterError:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-wide/16 v5, 0x2

    mul-long/2addr v5, v3

    invoke-direct {p0, v0, v5, v6}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V

    .line 1568
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->IncompatibleFWVersion:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    mul-long/2addr v1, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V

    .line 1569
    sget-object v0, Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;->SyncTransmitterTimeFailure:Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;

    const-wide/16 v1, 0x4

    mul-long/2addr v3, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/senseonics/gen12androidapp/SensorListActivity;->showTestPopupWithDelay(Lcom/senseonics/gen12androidapp/SensorListActivity$MLSensorLinkingError;J)V

    return-void
.end method

.method showTransmitterEOL396Layout(Z)V
    .locals 2

    .line 1346
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const v1, 0x7f110187

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1347
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 1350
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->enableDisableLinkSensorButton(Z)V

    :cond_0
    return-void
.end method

.method showUnlinkedSensorSeenLayout()V
    .locals 2

    .line 1380
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const v1, 0x7f110186

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1381
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1382
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkDetectedSensorButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public startDownloadingAndSyncingOfEEPROMAndATCCALParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 823
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getSensorFileNameBasedOnAlgoFormateVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->startDownloadCalibrationWithSensorFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public step3Finished()V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->progressBar3:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->imageView3:Landroid/widget/ImageView;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSensorGlucoseAlertsAndStatus()V

    .line 586
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrengthRawRegisterExists()Z

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/AccountConfigurations;->showPlacementGuideDetail(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadSignalStrengthRequest(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    const/4 v0, 0x1

    .line 591
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->finishLinking(Z)V

    .line 594
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->loadData()V

    .line 597
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->sensorLinkDMSStateModelSyncManager:Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/SensorLinkDMSStateModelSyncManager;->initUpload()V

    .line 599
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->upload()V

    return-void
.end method

.method public updateEEPROMAndATCCALValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, ","

    .line 1152
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x34

    new-array v0, v0, [I

    .line 1154
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    const/4 v0, 0x0

    const/4 v1, 0x3

    move v2, v0

    .line 1156
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 1158
    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1160
    iget-object v4, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesEEPROM:[I

    array-length v5, v4

    if-ge v2, v5, :cond_0

    and-int/lit16 v5, v3, 0xff

    .line 1161
    aput v5, v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 1163
    array-length v5, v4

    if-ge v2, v5, :cond_1

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    .line 1164
    aput v3, v4, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    move p1, v0

    .line 1174
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    add-int/lit8 v1, v0, 0x2

    .line 1175
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/16 v2, 0x10

    .line 1177
    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1178
    iget-object v2, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->addressAndValuesACT:[I

    aput v0, v2, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1183
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "atccalString:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Linking"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateViews()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110220

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getUnLinkedSensorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/senseonics/gen12androidapp/SensorListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    .line 317
    invoke-static {p0, v0}, Lcom/senseonics/util/StyleManager;->getTextColorForState(Landroid/content/Context;Z)I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorLeftTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 319
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorLeftTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->linkedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    iget-object v1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity;->unlinkedSensorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
