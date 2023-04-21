.class public Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;
.super Landroid/os/AsyncTask;
.source "PrepareSyncingRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
        ">;>;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private countOfRecordsToSync:I

.field private final databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;

.field private transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;ILcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lcom/senseonics/model/SyncModel;Lcom/senseonics/model/TransmitterStateModel;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 41
    iput p2, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->countOfRecordsToSync:I

    .line 42
    iput-object p3, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 43
    iput-object p4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 44
    iput-object p5, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 45
    iput-object p6, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private createSyncingGroups(IILcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-gt p1, p2, :cond_7

    const/16 v1, 0x38

    sub-int v2, p2, p1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_7

    add-int v2, p1, v1

    add-int/lit8 v4, v2, -0x1

    if-le v4, p2, :cond_1

    move v4, p2

    .line 203
    :cond_1
    sget-object v5, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_SENSOR_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    if-ne p3, v5, :cond_2

    .line 204
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    .line 205
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v6

    goto :goto_1

    .line 207
    :cond_2
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v5

    .line 208
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v6

    :goto_1
    const/4 v7, 0x0

    .line 212
    sget-object v8, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$1;->$SwitchMap$com$senseonics$bluetoothle$PrepareSyncingRequestTask$SYNC_DATA_TYPE:[I

    invoke-virtual {p3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const-string v9, " to "

    const-string v10, "PrepareSyncingRequestTask"

    if-eq v8, v3, :cond_5

    const/4 v11, 0x2

    if-eq v8, v11, :cond_4

    const/4 v11, 0x3

    if-eq v8, v11, :cond_3

    goto :goto_2

    .line 226
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BGM - Send range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int p1, v4, p1

    add-int/2addr p1, v3

    .line 227
    invoke-static {v5, v6, v4, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadBloodGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v7

    goto :goto_2

    .line 220
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Alert - Send range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int p1, v4, p1

    add-int/2addr p1, v3

    .line 221
    invoke-static {v5, v6, v4, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadSensorGlucoseAlertInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v7

    goto :goto_2

    .line 214
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Glucose - Send range: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int p1, v4, p1

    add-int/2addr p1, v3

    .line 215
    invoke-static {v5, v6, v4, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadAllSensorGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_6

    .line 232
    invoke-virtual {v7}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object p1

    if-eqz p1, :cond_6

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding request: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v7}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move p1, v2

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/util/Range;",
            "Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v1, Lcom/senseonics/util/Range;

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/senseonics/util/Range;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-direct {p0, v0, p2}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFromRanges(Ljava/util/List;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " requests for range : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrepareSyncingRequestTask"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private createSyncingGroupsFromRanges(Ljava/util/List;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Range;",
            ">;",
            "Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/util/Range;

    .line 179
    invoke-virtual {v1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v2

    invoke-virtual {v1}, Lcom/senseonics/util/Range;->getTo()I

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroups(IILcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getRequestReadAllSensorGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
    .locals 1

    .line 246
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadAllSensorGlucoseDataInSpecifiedRange([I[I)[I

    move-result-object p0

    .line 247
    new-instance p1, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    const/16 v0, 0xf0

    invoke-direct {p1, v0, p0, p2, p3}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;-><init>(I[III)V

    return-object p1
.end method

.method public static getRequestReadBloodGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
    .locals 1

    .line 260
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadLogOfBloodGlucoseDataInSpecifiedRange([I[I)[I

    move-result-object p0

    .line 261
    new-instance p1, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    const/16 v0, 0xf2

    invoke-direct {p1, v0, p0, p2, p3}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;-><init>(I[III)V

    return-object p1
.end method

.method public static getRequestReadSensorGlucoseAlertInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;
    .locals 1

    .line 253
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSensorGlucoseAlertLogInSpecifiedRange([I[I)[I

    move-result-object p0

    .line 254
    new-instance p1, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    const/16 v0, 0xf1

    invoke-direct {p1, v0, p0, p2, p3}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;-><init>(I[III)V

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorGlucoseRecordRange()Lcom/senseonics/util/Range;

    move-result-object v0

    const-string v1, "PrepareSyncingRequestTask"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 53
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-lt v4, v3, :cond_5

    .line 55
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    iget v5, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->countOfRecordsToSync:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 56
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 57
    new-instance v5, Lcom/senseonics/util/Range;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v5, v4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v5

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 62
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->resetSyncRecordNumbersIfNeeded()V

    .line 65
    :cond_1
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 66
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 70
    :cond_3
    new-instance v4, Lcom/senseonics/util/Range;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v4

    .line 73
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** SENSOR whole range:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v4, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_SENSOR_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-direct {p0, v0, v4}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_5
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getAlertRecordRange()Lcom/senseonics/util/Range;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 78
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-lt v4, v3, :cond_b

    .line 80
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    sget v5, Lcom/senseonics/util/Utils;->NO_OF_ALARMS_TO_SYNC:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 81
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    if-ge v5, v4, :cond_6

    .line 82
    new-instance v5, Lcom/senseonics/util/Range;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v5, v4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v5

    .line 86
    :cond_6
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v5

    if-le v4, v5, :cond_7

    .line 87
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->resetSyncRecordNumbersIfNeeded()V

    .line 90
    :cond_7
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 91
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    goto :goto_2

    .line 92
    :cond_8
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v5

    if-ne v4, v5, :cond_9

    move-object v0, v2

    goto :goto_2

    .line 95
    :cond_9
    new-instance v4, Lcom/senseonics/util/Range;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v4

    .line 98
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** ALERT whole range:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_a
    move-object v5, v2

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v4, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_ALERTS:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-direct {p0, v0, v4}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 102
    :cond_b
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBloodGlucoseRecordRange()Lcom/senseonics/util/Range;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 103
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v4

    if-lt v4, v3, :cond_11

    .line 105
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v4

    sget v5, Lcom/senseonics/util/Utils;->NO_OF_EVENTS_TO_SYNC:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    .line 106
    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    if-ge v5, v4, :cond_c

    .line 107
    new-instance v5, Lcom/senseonics/util/Range;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v5, v4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v5

    .line 111
    :cond_c
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v5

    if-le v4, v5, :cond_d

    .line 112
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->resetSyncRecordNumbersIfNeeded()V

    .line 115
    :cond_d
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    if-ge v4, v5, :cond_e

    .line 116
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    goto :goto_4

    .line 117
    :cond_e
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v4

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v5

    if-ne v4, v5, :cond_f

    move-object v0, v2

    goto :goto_4

    .line 120
    :cond_f
    new-instance v4, Lcom/senseonics/util/Range;

    iget-object v5, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v5}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->getTo()I

    move-result v0

    invoke-direct {v4, v5, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    move-object v0, v4

    .line 123
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** BGM whole range:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_10
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v2, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;->READ_BLOOD_GLUCOSE:Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;

    invoke-direct {p0, v0, v2}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->createSyncingGroupsFrom(Lcom/senseonics/util/Range;Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask$SYNC_DATA_TYPE;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    :cond_11
    iget-object v0, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Lcom/senseonics/util/Utils;->getEndDateFinished()Ljava/util/Calendar;

    move-result-object v4

    sget v5, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    sget v6, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/senseonics/db/DatabaseManager;->getNotSyncedEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/events/EventPoint;

    .line 131
    invoke-virtual {v2, v3}, Lcom/senseonics/events/EventPoint;->setEventSynced(Z)V

    .line 132
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v4, v2}, Lcom/senseonics/db/DatabaseManager;->updateEvent(Lcom/senseonics/events/EventPoint;)V

    .line 134
    instance-of v4, v2, Lcom/senseonics/events/GlucoseEventPoint;

    if-eqz v4, :cond_13

    .line 135
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    check-cast v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-virtual {v4, v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;)V

    goto :goto_5

    .line 136
    :cond_13
    instance-of v4, v2, Lcom/senseonics/events/PatientEventPoint;

    if-eqz v4, :cond_12

    .line 137
    iget-object v4, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    check-cast v2, Lcom/senseonics/events/PatientEventPoint;

    invoke-virtual {v4, v2}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePatientEvent(Lcom/senseonics/events/PatientEventPoint;)V

    goto :goto_5

    .line 143
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count of Sync Requests: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;)V"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 152
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v0

    .line 153
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "last_syncing_gmt_millis"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 156
    iget-object p1, p0, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1, v0}, Lcom/senseonics/model/SyncModel;->addSyncingRequests(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method
