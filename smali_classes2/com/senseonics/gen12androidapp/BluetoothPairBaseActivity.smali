.class public Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.super Lcom/senseonics/gen12androidapp/ObjectGraphActivity;
.source "BluetoothPairBaseActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/ServiceActivity;


# static fields
.field public static patientEventPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected accountConstants:Lcom/senseonics/util/AccountConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alertHelper:Lcom/senseonics/util/AlertHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected appUpdateChecker:Lcom/senseonics/util/AppUpdateChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected batteryOptimizationChecker:Lcom/senseonics/util/BatteryOptimizationChecker;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected calibrationHelper:Lcom/senseonics/model/CalibrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected commonErrorHandler:Lcom/senseonics/view/CommonErrorHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected databaseManager:Lcom/senseonics/db/DatabaseManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected germanyManager:Lcom/senseonics/account/GermanyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected handler:Landroid/os/Handler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private invalidCredentialDialog:Landroid/app/Dialog;

.field protected layoutSyncBar:Landroid/widget/RelativeLayout;

.field private mCropImageUri:Landroid/net/Uri;

.field protected messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected notificationUtility:Lcom/senseonics/util/NotificationUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected progressView:Landroid/view/View;

.field private readerManager:Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;

.field protected sharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected stateModelUploadUtility:Lcom/senseonics/util/StateModelUploadUtility;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected stateModelUploadUtilitySOAP:Lcom/senseonics/util/StateModelUploadUtility_SOAP;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected syncModel:Lcom/senseonics/model/SyncModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

.field protected transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected userInfoSecureStorer:Lcom/senseonics/util/UserInfoSecureStorer;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mrequestLocationPermission(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->requestLocationPermission()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;-><init>()V

    .line 289
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;-><init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->readerManager:Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;

    return-void
.end method

.method private displayInvalidCredentialDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->invalidCredentialDialog:Landroid/app/Dialog;

    .line 548
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getDisclosurePopupShown()Z
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "DisclosurePopupShown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private permissionsGranted([I)Z
    .locals 4

    .line 258
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 261
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private removeSyncProgressManager()V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->remove()V

    const/4 v0, 0x0

    .line 446
    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    :cond_0
    return-void
.end method

.method private requestBluetoothPermission()V
    .locals 2

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 230
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private requestLocationPermission()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 218
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private requestReadStoragePermission()V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 585
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method private setDisclosurePopupShown()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DisclosurePopupShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private shouldShowDisclosurePopup()Z
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getDisclosurePopupShown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showDisclosurePopup()V
    .locals 6

    .line 189
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    new-instance v4, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;

    invoke-direct {v4, p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$1;-><init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    const v1, 0x7f11018d

    const v2, 0x7f11018c

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 190
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->setDisclosurePopupShown()V

    return-void
.end method

.method private startPickImageActivity()V
    .locals 3

    const v0, 0x7f11008b

    .line 589
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/senseonics/account/MyCropImage;->getPickImageChooserIntent(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc8

    .line 590
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startProfileImageCropActivity(Landroid/net/Uri;)V
    .locals 2

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/senseonics/account/ProfileImageCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IMAGE_URI"

    .line 595
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, -0x2710

    .line 596
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public checkPermissionsIfNeeded()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid12OrAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p0}, Lcom/senseonics/util/Utils;->isBluetoothPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->requestBluetoothPermission()V

    goto :goto_1

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;

    invoke-direct {v1}, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 167
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 168
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;

    invoke-direct {v1}, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_1

    .line 169
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->shouldShowDisclosurePopup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->showDisclosurePopup()V

    goto :goto_1

    .line 172
    :cond_4
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->requestLocationPermission()V

    :goto_1
    return-void
.end method

.method protected checkStaleData()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->checkIfStaleData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    .line 478
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/GraphCheckStaleDataEvent;

    invoke-direct {v1}, Lcom/senseonics/events/GraphCheckStaleDataEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public getTransmitterStateModel()Lcom/senseonics/model/TransmitterStateModel;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-object v0
.end method

.method public initBluetoothLE()V
    .locals 5

    .line 272
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const v2, 0x7f08016b

    const v3, 0x7f110225

    .line 275
    invoke-virtual {p0, v3}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f11003d

    .line 276
    invoke-virtual {p0, v4}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method protected isThisActivityTop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 566
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 569
    invoke-static {p0, p3}, Lcom/senseonics/account/MyCropImage;->getPickImageResultUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 574
    invoke-static {p0, p1}, Lcom/theartofdev/edmodo/cropper/CropImage;->isReadExternalStoragePermissionsRequired(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 575
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->mCropImageUri:Landroid/net/Uri;

    .line 576
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->requestReadStoragePermission()V

    goto :goto_0

    .line 578
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->startProfileImageCropActivity(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 147
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {p1}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventDate()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->initDates(J)V

    .line 151
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00ff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->progressView:Landroid/view/View;

    const/4 v0, 0x4

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->patientEventPoints:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->initBluetoothLE()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->removeDialogs()V

    .line 457
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/DialogUtils;->removeOtherDialogs()V

    .line 458
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onDestroy()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 3

    .line 484
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transmitter conn changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPairBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 490
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1, p0}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 493
    new-instance p1, Lcom/senseonics/gen12androidapp/SyncProgressManager;

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/senseonics/gen12androidapp/SyncProgressManager;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 3

    .line 499
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->readerManager:Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result p1

    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/senseonics/bluetoothle/ResponseOperations;->checkResponse([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;ILcom/senseonics/bluetoothle/BluetoothService;)Lcom/senseonics/bluetoothle/Response;

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/AlertOrAlarmEvent;)V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/AlertOrAlarmEvent;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/AlertOrAlarmEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/DMSUploadResultEvent;)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/events/DMSUploadResultEvent;->getResult()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PairBase DMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p1}, Lcom/senseonics/events/DMSUploadResultEvent;->getResult()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->makeAlwaysShownToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/InvalidUserCredentialEvent;)V
    .locals 1

    const-string p1, "DMS(PairBaseActivity)"

    const-string v0, "InvalidUserCredentialEvent received"

    .line 522
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {p0}, Lcom/senseonics/util/AccountConfigurations;->isLoginActivity(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f11017b

    .line 526
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1102f9

    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->displayInvalidCredentialDialogWithTitleAndMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/MyCircleMemberRemovedEvent;)V
    .locals 6

    .line 531
    new-instance v0, Lcom/senseonics/view/SimpleDialogFragment$Builder;

    invoke-direct {v0}, Lcom/senseonics/view/SimpleDialogFragment$Builder;-><init>()V

    const v1, 0x7f11035b

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 532
    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/view/SimpleDialogFragment$Builder;->buildDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object v0

    .line 533
    invoke-virtual {p1}, Lcom/senseonics/events/MyCircleMemberRemovedEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/senseonics/view/SimpleDialogFragment;->withCustomMessage(Ljava/lang/String;)Lcom/senseonics/view/SimpleDialogFragment;

    move-result-object p1

    .line 534
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "DIALOG_TAG"

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/view/SimpleDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/PredictiveRateAlertEvent;)V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/PredictiveRateAlertEvent;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/PredictiveRateAlertEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RateAlertEvent;)V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p1}, Lcom/senseonics/events/RateAlertEvent;->getAlertEventPoint()Lcom/senseonics/events/AlertEventPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/RateAlertEvent;->getNotificationId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->createPredictiveRateAlertDialogInfo(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;Lcom/senseonics/events/AlertEventPoint;I)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;)V
    .locals 4

    .line 538
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    new-instance v1, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    invoke-virtual {p1}, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/events/ShowCalibrationResultPopupAndRefreshEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 539
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->refresh()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ShowProfileImageSelectorEvent;)V
    .locals 1

    const/4 p1, 0x0

    .line 556
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->mCropImageUri:Landroid/net/Uri;

    .line 557
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid6OrAbove()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/theartofdev/edmodo/cropper/CropImage;->isExplicitCameraPermissionRequired(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.CAMERA"

    .line 558
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7db

    invoke-virtual {p0, p1, v0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 560
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->startPickImageActivity()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "BluetoothPairBaseActivity"

    const-string v1, "in BluetoothPairBaseActivity onPause"

    .line 436
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->unbind(Landroid/app/Activity;)V

    .line 439
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 440
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 238
    invoke-direct {p0, p3}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->permissionsGranted([I)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xc9

    if-eq p1, p2, :cond_3

    const/16 p2, 0x7db

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2711

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance p2, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;

    invoke-direct {p2}, Lcom/senseonics/pairing/events/view/RefreshTransmittersPressed;-><init>()V

    invoke-virtual {p1, p2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->startPickImageActivity()V

    goto :goto_0

    .line 250
    :cond_3
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->mCropImageUri:Landroid/net/Uri;

    if-eqz p1, :cond_4

    .line 251
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->startProfileImageCropActivity(Landroid/net/Uri;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 389
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->onResume()V

    .line 391
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/SenseonicsApplication;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SenseonicsApplication;->getBluetoothServiceClient()Lcom/senseonics/gen12androidapp/BluetoothServiceClient;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceClient;->bind(Landroid/app/Activity;)V

    .line 392
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    invoke-virtual {v0}, Lcom/senseonics/util/NotificationUtility;->cancelAllNotification()V

    .line 396
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->removeSyncProgressManager()V

    .line 397
    new-instance v0, Lcom/senseonics/gen12androidapp/SyncProgressManager;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->layoutSyncBar:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    iget-object v3, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/senseonics/gen12androidapp/SyncProgressManager;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/senseonics/model/SyncModel;Lde/greenrobot/event/EventBus;)V

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in BluetoothPairBaseActivity onResume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPairBaseActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v0, p0}, Lcom/senseonics/bluetoothle/DialogUtils;->showDialogs(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    .line 403
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->checkStaleData()V

    .line 405
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isBackgroundToForeground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/BackgroundToForegroundEvent;

    invoke-direct {v1}, Lcom/senseonics/events/BackgroundToForegroundEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->fireDoNotDisturbAlertDialog(Landroid/content/Context;Z)V

    .line 423
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->isThisActivityTop()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/senseonics/bluetoothle/DialogUtils;->fireTempProfileTurnedOffPopup(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->appUpdateChecker:Lcom/senseonics/util/AppUpdateChecker;

    invoke-virtual {v0, p0}, Lcom/senseonics/util/AppUpdateChecker;->checkForSoftwareUpdate(Landroid/content/Context;)V

    .line 431
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->syncProgressManager:Lcom/senseonics/gen12androidapp/SyncProgressManager;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/SyncProgressManager;->update()V

    return-void
.end method

.method public provideCalibrationDialogManager()Lcom/senseonics/util/dialogs/NotificationDialogManager;
    .locals 1

    .line 462
    new-instance v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$3;-><init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V

    return-object v0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method protected sendCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {v0, p1}, Lcom/senseonics/model/CalibrationHelper;->setJustSubmittedCalibrationEvent(Lcom/senseonics/events/CalibrationEventPoint;)V

    .line 282
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/bluetoothle/BluetoothService;->postSendBloodGlucoseDataResponse(Lcom/senseonics/events/CalibrationEventPoint;)V

    return-void
.end method

.method public setDatabaseManager(Lcom/senseonics/db/DatabaseManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    return-void
.end method

.method public setTransmitterStateModel(Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method
