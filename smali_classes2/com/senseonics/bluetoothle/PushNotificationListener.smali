.class Lcom/senseonics/bluetoothle/PushNotificationListener;
.super Ljava/lang/Object;
.source "PushNotificationListener.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private context:Landroid/content/Context;

.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

.field private dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

.field private dmsStateModelSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

.field private dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

.field private dmsSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private handler:Landroid/os/Handler;

.field private messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private myCircleMemberManager:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

.field private notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

.field private notificationUtility:Lcom/senseonics/util/NotificationUtility;

.field private registrationIDRepository:Lcom/senseonics/gcm/RegistrationIDRepository;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;Lcom/senseonics/bluetoothle/ApplicationForegroundState;Lcom/senseonics/util/NotificationUtility;Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/gen12androidapp/MessageCoder;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Landroid/content/SharedPreferences;Lcom/senseonics/bluetoothle/DialogUtils;Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSSyncManager;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;Lcom/senseonics/bluetoothle/TempProfileManager;Lcom/senseonics/model/SyncModel;Lcom/senseonics/gcm/RegistrationIDRepository;Lcom/senseonics/mycircle/home/MyCircleMemberManager;Lcom/senseonics/util/NotificationEventPersistor;Landroid/os/Handler;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 90
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->context:Landroid/content/Context;

    .line 91
    iput-object v1, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    move-object v2, p3

    .line 92
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    move-object v2, p4

    .line 93
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    move-object v2, p5

    .line 94
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move-object v2, p6

    .line 95
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    move-object v2, p7

    .line 96
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    move-object v2, p8

    .line 97
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    move-object v2, p9

    .line 98
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->sharedPreferences:Landroid/content/SharedPreferences;

    move-object v2, p10

    .line 99
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    move-object v2, p11

    .line 100
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSSyncManager_SOAP;

    move-object v2, p12

    .line 101
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    move-object/from16 v2, p14

    .line 102
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    move-object/from16 v2, p13

    .line 103
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManagerSOAP:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager_SOAP;

    move-object/from16 v2, p15

    .line 104
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    move-object/from16 v2, p16

    .line 105
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncModel:Lcom/senseonics/model/SyncModel;

    move-object/from16 v2, p17

    .line 106
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->registrationIDRepository:Lcom/senseonics/gcm/RegistrationIDRepository;

    move-object/from16 v2, p18

    .line 107
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->myCircleMemberManager:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    move-object/from16 v2, p19

    .line 108
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    move-object/from16 v2, p20

    .line 109
    iput-object v2, v0, Lcom/senseonics/bluetoothle/PushNotificationListener;->handler:Landroid/os/Handler;

    .line 110
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private appendInt([II)[I
    .locals 2

    .line 918
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 919
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 920
    aput p2, p1, v0

    return-object p1
.end method

.method private checkIfGlucosePushNotification(II)I
    .locals 1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x41

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method private checkPushNotificationCRC([IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    const-string v2, "5.12"

    .line 929
    invoke-virtual {p4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_0

    add-int/lit8 p2, p2, 0x4

    .line 931
    aget p4, p1, v0

    invoke-direct {p0, p4, p2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkIfGlucosePushNotification(II)I

    move-result p2

    :cond_0
    move p4, v0

    :goto_0
    if-ge p4, p2, :cond_1

    .line 935
    aget v2, p1, p4

    invoke-direct {p0, v1, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->appendInt([II)[I

    move-result-object v1

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 938
    :cond_1
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p4

    .line 939
    invoke-static {p4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p4

    .line 941
    aget v1, p4, v0

    aget v2, p1, p2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    aget p4, p4, v3

    add-int/2addr p2, v3

    aget p1, p1, p2

    if-eq p4, p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 947
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " CRC good? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CHECK_CORRECTION"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private checkPushNotificationLength(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "5.12"

    .line 956
    invoke-virtual {p5, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p5

    if-ltz p5, :cond_0

    add-int/lit8 p2, p2, 0x4

    .line 958
    invoke-direct {p0, p3, p2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkIfGlucosePushNotification(II)I

    move-result p2

    :cond_0
    const-string p3, "CHECK_CORRECTION"

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 964
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, " msgLength:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " correctLength:"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 968
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, " length good? "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private checkResponseLengthAndCRC([IILjava/lang/String;)Z
    .locals 8

    .line 997
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getDefaultFWVersion()Ljava/lang/String;

    move-result-object v6

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FW version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Check"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    .line 1002
    :try_start_0
    array-length v1, p1

    aget v3, p1, v7

    move-object v0, p0

    move v2, p2

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkPushNotificationLength(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 1006
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkPushNotificationCRC([IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v7

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    return v7
.end method

.method private decodeGlucoseAlertType(I)Lcom/senseonics/util/Utils$ALERT_TYPE;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 758
    :cond_0
    sget-object p1, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_0

    .line 755
    :cond_1
    sget-object p1, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    :goto_0
    return-object p1
.end method

.method private fireAppGeneratedNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationEventPersistor:Lcom/senseonics/util/NotificationEventPersistor;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/util/NotificationEventPersistor;->createNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)Lcom/senseonics/events/EventPoint;

    move-result-object p2

    if-eqz p3, :cond_1

    .line 732
    invoke-direct {p0, p1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 733
    iget-object p3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {p3}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 734
    iget-object p3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v0, p2, p1}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {p3, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 736
    :cond_0
    iget-object p3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p1, v0}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 737
    iget-object p3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p3, p2, p1}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getDefaultFWVersion()Ljava/lang/String;
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "5.12"

    :cond_0
    return-object v0
.end method

.method private getPushNotificationFlag([II)I
    .locals 1

    .line 986
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getDefaultFWVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "5.12"

    .line 988
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 p2, p2, 0x4

    :cond_0
    return p2
.end method

.method private isCalibrationAlertPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x6

    const-string v1, "CalibrationAlertPush"

    .line 865
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isCalibrationPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "CalibrationPush"

    .line 861
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isCalibrationSwitchPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x6

    const-string v1, "CalibrationSwitchPush"

    .line 897
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGlucoseLevelAlarmPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "GlucoseLevelAlarmPush"

    .line 849
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGlucoseLevelAlertPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "GlucoseLevelAlertPush"

    .line 853
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isHardwareStatusPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "HardwareStatusPush"

    .line 873
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isKeepAlivePushCorrect([I)Z
    .locals 2

    const/4 v0, 0x3

    const-string v1, "KeepAlivePush"

    .line 901
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isRateAndPredictiveAlertPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x5

    const-string v1, "RateAndPredictiveAlertPush"

    .line 857
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isResponseIdInRange(I)Z
    .locals 1

    const/16 v0, 0x40

    if-lt p1, v0, :cond_0

    const/16 v0, 0x60

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSensorReadAlertPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "SensorReadAlertPush"

    .line 885
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isSensorReplacement2PushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "SensorReplacement2Push"

    .line 893
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isSensorReplacementPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "SensorReplacementPush"

    .line 869
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTransmitterBatteryPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "TransmitterBatteryPush"

    .line 881
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTransmitterEOLPushCorrect([I)Z
    .locals 2

    const/16 v0, 0xa

    const-string v1, "TransmitterEOLPush"

    .line 889
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isTransmitterStatusPushCorrect([I)Z
    .locals 2

    const/4 v0, 0x4

    const-string v1, "TransmitterStatusPush"

    .line 877
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->checkResponseLengthAndCRC([IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private postCareRemoteNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V
    .locals 1

    .line 744
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->registrationIDRepository:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-virtual {v0, p1, p2}, Lcom/senseonics/gcm/RegistrationIDRepository;->getMyFollowerGCMRegIDsThenPostGCM(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V

    return-void
.end method

.method private saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;
    .locals 7

    .line 792
    new-instance v6, Lcom/senseonics/events/AlertEventPoint;

    sget-object v5, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    int-to-long p1, p5

    .line 794
    invoke-virtual {v6, p1, p2}, Lcom/senseonics/events/AlertEventPoint;->setRecordNumber(J)V

    const/4 p1, 0x0

    .line 796
    invoke-virtual {v6, p1}, Lcom/senseonics/events/AlertEventPoint;->setRateValue(F)V

    const/4 p1, 0x0

    .line 797
    invoke-virtual {v6, p1}, Lcom/senseonics/events/AlertEventPoint;->setPredictiveMinutes(I)V

    .line 798
    invoke-virtual {v6, p6}, Lcom/senseonics/events/AlertEventPoint;->setEventHidden(Z)V

    .line 799
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v6, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v6
.end method

.method private saveCalibrationAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;[I)Lcom/senseonics/events/EventPoint;
    .locals 2

    .line 783
    new-instance v0, Lcom/senseonics/events/EventPoint;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p4}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object p4

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-direct {v0, p4, v1, p1}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 784
    invoke-virtual {v0, p3}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 786
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v0
.end method

.method private saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;
    .locals 2

    .line 767
    new-instance v0, Lcom/senseonics/events/EventPoint;

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p6}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object p6

    invoke-direct {v0, p6, p5, p1}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 768
    invoke-virtual {v0, p3}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 769
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    int-to-long p3, p4

    .line 770
    invoke-virtual {v0, p3, p4}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    const/4 p1, 0x0

    .line 771
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 772
    sget-object p1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p2, p1, :cond_0

    .line 773
    sget p1, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 776
    :cond_0
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v0
.end method

.method private setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 4

    .line 804
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 805
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 816
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_1

    .line 817
    :cond_0
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_1

    .line 818
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    .line 822
    :cond_1
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_3

    .line 823
    :cond_2
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_3

    .line 824
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 828
    :cond_3
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_5

    .line 829
    :cond_4
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-lt v2, v3, :cond_5

    .line 830
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 834
    :cond_5
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v2, :cond_6

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_7

    .line 835
    :cond_6
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result p1

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_7

    .line 836
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 840
    :cond_7
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    :cond_8
    return-void
.end method

.method private shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z
    .locals 4

    .line 674
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->isUSXLorOUSXL2()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/senseonics/util/TransmitterMessageCode;->isCritical(Z)Z

    move-result v0

    .line 675
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v1

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " | isCritical: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " | isVibrationEnabled: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "PushNotificationListener"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-string p1, "--- QUIET: DND is on ---"

    .line 679
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private syncLog()V
    .locals 1

    .line 688
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 13

    .line 114
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    .line 116
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v1

    const-string v2, "pushing dialog into "

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-string v7, "PushNotificationListener"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v6, 0x43

    if-ne v6, v1, :cond_5

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isCalibrationPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 119
    iget-object v6, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v6, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 122
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v10

    cmp-long v1, v10, v4

    if-nez v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 125
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    .line 126
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPMSPInfo()V

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    aget v1, v1, v4

    .line 130
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v4, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 134
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 135
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveCalibrationAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v3

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3, v4}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 142
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v3}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 145
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/CalibrationRequestEvent;

    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-direct {v3, v0, v4}, Lcom/senseonics/events/CalibrationRequestEvent;-><init>(Lcom/senseonics/events/EventPoint;I)V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 153
    :cond_2
    :goto_0
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v0, :cond_3

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v0, :cond_4

    .line 154
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncLog()V

    :cond_4
    move-object v0, v1

    goto/16 :goto_11

    :cond_5
    const/16 v1, 0x4d

    .line 160
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v6

    const/4 v10, 0x2

    if-ne v1, v6, :cond_b

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isCalibrationAlertPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 165
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 167
    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 170
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v11

    cmp-long v1, v11, v4

    if-nez v1, :cond_6

    .line 171
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    if-eqz v1, :cond_6

    .line 172
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->adjustLastReadDateTimeWhenSendingReadCommand()V

    .line 173
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadCurrentTransmitterDateAndTime()V

    .line 174
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPMSPInfo()V

    .line 178
    :cond_6
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    .line 179
    invoke-direct {p0, v1, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v3

    aget v3, v1, v3

    .line 180
    invoke-direct {p0, v1, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v4

    aget v4, v1, v4

    const/4 v5, 0x3

    .line 181
    invoke-direct {p0, v1, v5}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v5

    aget v1, v1, v5

    .line 183
    iget-object v5, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v5, v3}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 187
    invoke-direct {p0, v3}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 188
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 192
    invoke-static {v4, v1}, Lcom/senseonics/util/Utils;->createCalAlertNote(II)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveCalibrationAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v4}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 196
    invoke-direct {p0, v3}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 197
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_7

    .line 198
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 199
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingCalibrationDialog(Lcom/senseonics/events/EventPoint;I)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_7
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/CalibrationRequestEvent;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v4

    invoke-direct {v2, v0, v4}, Lcom/senseonics/events/CalibrationRequestEvent;-><init>(Lcom/senseonics/events/EventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 207
    :cond_8
    :goto_1
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v3, v0, :cond_9

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v3, v0, :cond_a

    .line 208
    :cond_9
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncLog()V

    :cond_a
    move-object v0, v3

    goto/16 :goto_11

    :cond_b
    const/16 v1, 0x42

    .line 214
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_17

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isRateAndPredictiveAlertPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 215
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 219
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 220
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForRateAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_11

    .line 224
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 225
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v11

    if-eqz v11, :cond_10

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 230
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 231
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_e

    .line 232
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v11, v1, :cond_c

    .line 233
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto :goto_2

    .line 234
    :cond_c
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v11, v1, :cond_d

    .line 235
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 237
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    goto :goto_3

    .line 239
    :cond_e
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/RateAlertEvent;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/senseonics/events/RateAlertEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 243
    :cond_f
    :goto_3
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 244
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    invoke-virtual {v1, v9}, Lcom/senseonics/bluetoothle/DMSSyncManager;->startSync(I)V

    .line 245
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->postCareRemoteNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V

    :cond_10
    move-object v0, v8

    .line 251
    :cond_11
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 252
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForPredictiveAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 256
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 257
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v10

    if-eqz v10, :cond_16

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v3

    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/RefreshGraphEvent;

    invoke-direct {v2}, Lcom/senseonics/events/RefreshGraphEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 264
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 266
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 267
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_14

    .line 268
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v10, v1, :cond_12

    .line 269
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto :goto_4

    .line 270
    :cond_12
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v10, v1, :cond_13

    .line 271
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 274
    :cond_13
    :goto_4
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingRateOrPredictiveRateAlertDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    goto :goto_5

    .line 276
    :cond_14
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/PredictiveRateAlertEvent;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/senseonics/events/PredictiveRateAlertEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 280
    :cond_15
    :goto_5
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 281
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    invoke-virtual {v1, v9}, Lcom/senseonics/bluetoothle/DMSSyncManager;->startSync(I)V

    .line 282
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->postCareRemoteNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V

    :cond_16
    :goto_6
    move-object v0, v8

    goto/16 :goto_11

    :cond_17
    const/16 v1, 0x40

    .line 288
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    const/4 v4, 0x4

    if-ne v1, v2, :cond_1b

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isGlucoseLevelAlarmPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 289
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 292
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 293
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->decodeGlucoseAlertType(I)Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v2

    .line 295
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v3

    .line 296
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v5

    add-int/2addr v3, v8

    aget v3, v5, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v4, v3

    if-eqz v2, :cond_3d

    .line 299
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlarmFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    .line 300
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 302
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 306
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 309
    :cond_18
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 311
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 312
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_19

    .line 313
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 314
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto :goto_7

    .line 316
    :cond_19
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/AlertOrAlarmEvent;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/senseonics/events/AlertOrAlarmEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 321
    :cond_1a
    :goto_7
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 322
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    invoke-virtual {v1, v9}, Lcom/senseonics/bluetoothle/DMSSyncManager;->startSync(I)V

    .line 323
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v8, v0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->postCareRemoteNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V

    goto/16 :goto_6

    :cond_1b
    const/16 v1, 0x41

    .line 327
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_1e

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isGlucoseLevelAlertPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 328
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 331
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 332
    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->decodeGlucoseAlertType(I)Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v2

    .line 334
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v3

    .line 335
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v5

    add-int/2addr v3, v8

    aget v3, v5, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v4, v3

    if-eqz v2, :cond_3d

    .line 338
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    .line 339
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 341
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveAlert(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IIZ)Lcom/senseonics/events/AlertEventPoint;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 345
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 348
    :cond_1c
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 350
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 351
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 352
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingAlertOrAlarmDialog(Lcom/senseonics/events/AlertEventPoint;I)V

    .line 353
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v1}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 355
    :cond_1d
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/AlertOrAlarmEvent;

    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->notificationId()I

    move-result v3

    invoke-direct {v2, v0, v3}, Lcom/senseonics/events/AlertOrAlarmEvent;-><init>(Lcom/senseonics/events/AlertEventPoint;I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1e
    const/16 v1, 0x47

    .line 361
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_21

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isTransmitterBatteryPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 362
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 365
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 366
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 371
    sget-object v0, Lcom/senseonics/util/Utils;->BATTERY_EVENT_TAG:Ljava/lang/String;

    .line 372
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->BatteryErrorAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v1, :cond_1f

    goto :goto_8

    :cond_1f
    move-object v3, v0

    .line 376
    :goto_8
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v4, -0x1

    sget v5, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    move-object v0, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 377
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 379
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 380
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_20

    .line 381
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 382
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_6

    .line 384
    :cond_20
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v8}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_21
    const/16 v1, 0x45

    .line 389
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_28

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isHardwareStatusPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 390
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 393
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 394
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v10

    if-eqz v10, :cond_3d

    .line 398
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v5

    .line 399
    invoke-virtual {v10}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    const-string v3, ""

    move-object v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 400
    invoke-direct {p0, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 403
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v10, v1, :cond_22

    .line 404
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/RefreshGraphEvent;

    invoke-direct {v2}, Lcom/senseonics/events/RefreshGraphEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 408
    :cond_22
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showNoSensorDetectedPopup()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 410
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v10, v1, :cond_25

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/senseonics/util/Utils;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_9

    :cond_23
    move v8, v9

    goto :goto_9

    .line 412
    :cond_24
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v10, v1, :cond_23

    .line 416
    :cond_25
    :goto_9
    invoke-direct {p0, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 417
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_26

    .line 418
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    if-eqz v8, :cond_27

    .line 420
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v10}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_a

    :cond_26
    if-eqz v8, :cond_27

    .line 423
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v10}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_27
    :goto_a
    move-object v0, v10

    goto/16 :goto_11

    :cond_28
    const/16 v1, 0x44

    .line 428
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_2c

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isSensorReplacementPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 429
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 431
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 432
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 433
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 437
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 438
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v4, -0x1

    .line 441
    sget v5, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    const-string v3, ""

    move-object v0, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 444
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 445
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_29

    .line 446
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 447
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 449
    :cond_29
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v8}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 453
    :cond_2a
    :goto_b
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 455
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v0, :cond_2b

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v0, :cond_16

    .line 456
    :cond_2b
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-virtual {v0, v9}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->startModelSync(I)V

    goto/16 :goto_6

    :cond_2c
    const/16 v1, 0x46

    .line 462
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_2f

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isTransmitterStatusPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 463
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 465
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 466
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 467
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 470
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 471
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v4, -0x1

    sget v5, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    const-string v3, ""

    move-object v0, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 473
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 474
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 475
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 476
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_c

    .line 477
    :cond_2d
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v8, v1, :cond_2e

    .line 478
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v8}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 482
    :cond_2e
    :goto_c
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 484
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v8, v0, :cond_16

    .line 485
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-virtual {v0, v9}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->startModelSync(I)V

    goto/16 :goto_6

    :cond_2f
    const/16 v1, 0x49

    .line 490
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_35

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isSensorReadAlertPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 491
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 494
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 495
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v10

    if-eqz v10, :cond_3d

    .line 499
    invoke-direct {p0, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 501
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v0

    .line 504
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v10, v1, :cond_31

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v10, v1, :cond_30

    goto :goto_e

    :cond_30
    :goto_d
    move v5, v0

    goto :goto_f

    .line 506
    :cond_31
    :goto_e
    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    .line 508
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v1, v2}, Lcom/senseonics/util/TransmitterMessageCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v8, v1

    .line 513
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/RefreshGraphEvent;

    invoke-direct {v2}, Lcom/senseonics/events/RefreshGraphEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    goto :goto_d

    .line 516
    :goto_f
    invoke-virtual {v10}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    const-string v3, ""

    move-object v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    if-eqz v8, :cond_33

    .line 519
    invoke-direct {p0, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 520
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_32

    .line 521
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 522
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v10}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_10

    .line 524
    :cond_32
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v10}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 529
    :cond_33
    :goto_10
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 531
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v10, v0, :cond_34

    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v10, v0, :cond_27

    .line 532
    :cond_34
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    invoke-virtual {v0, v9}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->startModelSync(I)V

    goto/16 :goto_a

    :cond_35
    const/16 v1, 0x4a

    .line 537
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_37

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isTransmitterEOLPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 538
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 540
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 541
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 542
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v10

    .line 544
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v1

    .line 545
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    add-int/2addr v1, v8

    aget v1, v3, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    .line 546
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_3d

    .line 550
    invoke-direct {p0, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 551
    invoke-virtual {v10}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v4, -0x1

    sget v5, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    move-object v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 553
    invoke-direct {p0, v10}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 554
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_36

    .line 555
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v10, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 556
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v10}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_a

    .line 557
    :cond_36
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v10, v1, :cond_27

    .line 558
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v10}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_37
    const/16 v1, 0x4b

    .line 563
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_39

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isSensorReplacement2PushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 564
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 566
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 567
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 568
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags2(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 572
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 573
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v4, -0x1

    .line 576
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v5

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    const-string v3, ""

    move-object v0, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 579
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 580
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_38

    .line 581
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 582
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_6

    .line 584
    :cond_38
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v8}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_39
    const/16 v1, 0x4c

    .line 590
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_3b

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isCalibrationSwitchPushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 591
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;

    move-result-object v1

    .line 593
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->isValidDate(Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 594
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->getPushNotificationFlag([II)I

    move-result v2

    aget v1, v1, v2

    .line 597
    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v2, v1}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForCalibrationSwitchFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 601
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->setCurrentMessageCodeIfNeededFromPushCommand(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 602
    invoke-virtual {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    if-eqz v1, :cond_16

    const/4 v4, -0x1

    .line 605
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v5

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v6

    const-string v3, ""

    move-object v0, p0

    move-object v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/senseonics/bluetoothle/PushNotificationListener;->saveEventPoint(Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;II[I)Lcom/senseonics/events/EventPoint;

    move-result-object v0

    .line 607
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCurrentCalibrationPhaseRequest()V

    .line 610
    invoke-direct {p0, v8}, Lcom/senseonics/bluetoothle/PushNotificationListener;->shouldSilentDNDAlarm(Lcom/senseonics/util/TransmitterMessageCode;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 611
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->applicationForegroundState:Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/ApplicationForegroundState;->isForeground()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 612
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->notificationUtility:Lcom/senseonics/util/NotificationUtility;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v2}, Lcom/senseonics/util/NotificationUtility;->createNotificationFromEvent(Lcom/senseonics/util/TransmitterMessageCode;[Ljava/lang/Object;)V

    .line 613
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {v1, v0, v8}, Lcom/senseonics/bluetoothle/DialogUtils;->addAPendingNotificationAlertOrAlarm(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    goto/16 :goto_6

    .line 615
    :cond_3a
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NotificationDialogEvent;

    invoke-direct {v2, v0, v8}, Lcom/senseonics/events/NotificationDialogEvent;-><init>(Lcom/senseonics/events/EventPoint;Lcom/senseonics/util/TransmitterMessageCode;)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3b
    const/16 v1, 0x50

    .line 621
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    if-ne v1, v2, :cond_3d

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isKeepAlivePushCorrect([I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 623
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/KeepAliveReceivedEvent;

    invoke-direct {v2}, Lcom/senseonics/events/KeepAliveReceivedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 625
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iget-object v3, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v3}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/senseonics/util/Utils;->turnOffClinicalModeIfNeeded(Landroid/content/Context;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Z)V

    .line 627
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->turnOffTempProfileIfNeeded()V

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-DMS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> Keep Alive <<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getDMS_Upload_Interval()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/DMSSyncManager;->startSync(I)V

    .line 634
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsStateModelSyncManager:Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;

    sget v2, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->DMS_STATE_MODEL_UPLOADING_INTERVAL:I

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/DMSStateModelSyncManager;->startModelSync(I)V

    .line 636
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 637
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->myCircleMemberManager:Lcom/senseonics/mycircle/home/MyCircleMemberManager;

    invoke-virtual {v1}, Lcom/senseonics/mycircle/home/MyCircleMemberManager;->startLoadingMemberList()V

    .line 644
    :cond_3c
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isResponseIdInRange(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 646
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataAndGlucoseData()V

    .line 662
    :cond_3d
    :goto_11
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->isResponseIdInRange(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v1, :cond_3e

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v1, :cond_3e

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set alert code for snooze:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSnooze(I)V

    .line 668
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadSensorGlucoseAlertsAndStatus()V

    :cond_3e
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationCountdownEvent;)V
    .locals 4

    .line 699
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->getCurrentCountdownMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    .line 701
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/senseonics/bluetoothle/PushNotificationListener$1;

    invoke-direct {v0, p0}, Lcom/senseonics/bluetoothle/PushNotificationListener$1;-><init>(Lcom/senseonics/bluetoothle/PushNotificationListener;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 706
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 701
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/FireAppGeneratedNotificationEvent;)V
    .locals 2

    .line 726
    invoke-virtual {p1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->getMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/events/FireAppGeneratedNotificationEvent;->shouldShow()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/senseonics/bluetoothle/PushNotificationListener;->fireAppGeneratedNotification(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;Z)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NewGlucoseSavedEvent;)V
    .locals 1

    .line 715
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableRemoteMonitoring()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PushNotificationListener"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-DMS"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Auto uploading upon NEW glucose"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->dmsSyncManager:Lcom/senseonics/bluetoothle/DMSSyncManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/senseonics/bluetoothle/DMSSyncManager;->startSync(I)V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/NewGlucoseSavedSyncLogEvent;)V
    .locals 0

    .line 711
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncLog()V

    return-void
.end method

.method refreshCalibrationInfo()V
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PushNotificationListener;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCurrentCalibrationPhaseRequest()V

    .line 695
    invoke-direct {p0}, Lcom/senseonics/bluetoothle/PushNotificationListener;->syncLog()V

    return-void
.end method
