.class public Lcom/senseonics/model/SyncModel;
.super Ljava/lang/Object;
.source "SyncModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

.field private bloodGlucoseResponses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private currentSyncRequest:Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

.field private glucoseAlertResponses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field

.field private sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

.field private sensorGlucoseResponses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field

.field private syncingRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/senseonics/model/SyncModel;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 45
    iput-object p2, p0, Lcom/senseonics/model/SyncModel;->eventBus:Lde/greenrobot/event/EventBus;

    .line 46
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->clearRanges()V

    return-void
.end method

.method private clearRanges()V
    .locals 2

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->syncingRequests:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->currentSyncRequest:Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    .line 56
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/senseonics/util/Utils;->getThreeByteRecordNumberResponseComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseResponses:Ljava/util/TreeSet;

    .line 57
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/senseonics/util/Utils;->getTwoByteRecordNumberResponseComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertResponses:Ljava/util/TreeSet;

    .line 58
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/senseonics/util/Utils;->getTwoByteRecordNumberResponseComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseResponses:Ljava/util/TreeSet;

    .line 60
    new-instance v0, Lcom/senseonics/model/RangeWithCurrentValue;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Lcom/senseonics/model/RangeWithCurrentValue;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 61
    new-instance v0, Lcom/senseonics/model/RangeWithCurrentValue;

    const/16 v1, 0xf2

    invoke-direct {v0, v1}, Lcom/senseonics/model/RangeWithCurrentValue;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    .line 62
    new-instance v0, Lcom/senseonics/model/RangeWithCurrentValue;

    const/16 v1, 0xf1

    invoke-direct {v0, v1}, Lcom/senseonics/model/RangeWithCurrentValue;-><init>(I)V

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    return-void
.end method

.method private debugSyncProgress()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v2

    add-int/2addr v1, v2

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [Request left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->syncingRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNCING_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fetchMissingBloodGlucose(Lcom/senseonics/util/RangeWithIntSet;)V
    .locals 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch missing Blood Glucose : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/RangeWithIntSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNCING_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p1}, Lcom/senseonics/util/RangeWithIntSet;->getSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 216
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 217
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 218
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    .line 215
    invoke-static {v1, v2, v0, v3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadBloodGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fetchMissingGlucoseAlert(Lcom/senseonics/util/RangeWithIntSet;)V
    .locals 4

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch missing Glucose Alert : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/RangeWithIntSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNCING_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1}, Lcom/senseonics/util/RangeWithIntSet;->getSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 203
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 204
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    .line 202
    invoke-static {v1, v2, v0, v3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadSensorGlucoseAlertInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fetchMissingSensorGlucose(Lcom/senseonics/util/RangeWithIntSet;)V
    .locals 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetch missing Sensor Glucose : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/RangeWithIntSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYNCING_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1}, Lcom/senseonics/util/RangeWithIntSet;->getSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data24BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 192
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    .line 189
    invoke-static {v1, v2, v0, v3}, Lcom/senseonics/bluetoothle/PrepareSyncingRequestTask;->getRequestReadAllSensorGlucoseDataInSpecifiedRange([I[III)Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v1, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRangeSyncComplete()V
    .locals 6

    .line 142
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SyncLogBatchProcessedEvent;

    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseResponses:Ljava/util/TreeSet;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertResponses:Ljava/util/TreeSet;

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    new-instance v4, Ljava/util/TreeSet;

    iget-object v5, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseResponses:Ljava/util/TreeSet;

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;-><init>(Ljava/util/TreeSet;Ljava/util/TreeSet;Ljava/util/TreeSet;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseResponses:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 150
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertResponses:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 151
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseResponses:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 154
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->postNextRangeSyncRequest()V

    return-void
.end method

.method private postNextRangeSyncRequest()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->debugSyncProgress()V

    .line 107
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->syncingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->syncingRequests:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    iput-object v0, p0, Lcom/senseonics/model/SyncModel;->currentSyncRequest:Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    .line 109
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {v2, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V

    .line 110
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->syncingRequests:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public addSyncingRequests(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/bluetoothle/TransmitterSyncRequest;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->clearRanges()V

    .line 87
    iput-object p1, p0, Lcom/senseonics/model/SyncModel;->syncingRequests:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    .line 89
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 90
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->addRange(II)V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 93
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->addRange(II)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v2

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->addRange(II)V

    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->postNextRangeSyncRequest()V

    :cond_4
    return-void
.end method

.method public getSyncingPercent()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getFinished()I

    move-result v1

    add-int/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v1

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getNumberOfRecordsExpected()I

    move-result v2

    add-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v2, 0x64

    mul-int/2addr v0, v2

    .line 70
    div-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSyncFinished()Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/senseonics/model/SyncModel;->getSyncingPercent()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSyncing()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v0}, Lcom/senseonics/model/RangeWithCurrentValue;->isSyncing()Z

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

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->clearRanges()V

    .line 161
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne p1, v0, :cond_0

    .line 162
    iget-object p1, p0, Lcom/senseonics/model/SyncModel;->client:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postGetRangesForSyncing()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/SyncLogTimedOutEvent;)V
    .locals 3

    .line 168
    iget-object p1, p0, Lcom/senseonics/model/SyncModel;->currentSyncRequest:Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    if-eqz p1, :cond_2

    .line 169
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getLowestExpectedRecordNumber()I

    move-result p1

    .line 170
    iget-object v0, p0, Lcom/senseonics/model/SyncModel;->currentSyncRequest:Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->currentSyncRequest:Lcom/senseonics/bluetoothle/TransmitterSyncRequest;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1, p1, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->searchRangeWithFromTo(II)Lcom/senseonics/util/RangeWithIntSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/model/SyncModel;->fetchMissingSensorGlucose(Lcom/senseonics/util/RangeWithIntSet;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1, p1, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->searchRangeWithFromTo(II)Lcom/senseonics/util/RangeWithIntSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/model/SyncModel;->fetchMissingGlucoseAlert(Lcom/senseonics/util/RangeWithIntSet;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 180
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1, p1, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->searchRangeWithFromTo(II)Lcom/senseonics/util/RangeWithIntSet;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/senseonics/model/SyncModel;->fetchMissingBloodGlucose(Lcom/senseonics/util/RangeWithIntSet;)V

    :cond_2
    :goto_0
    return-void
.end method

.method setReceivedSyncingResponse(Lcom/senseonics/bluetoothle/Response;)V
    .locals 5

    .line 115
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Response;->getResponseId()I

    move-result v0

    .line 116
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v1

    .line 119
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v2, :cond_0

    .line 120
    aget v0, v1, v4

    aget v2, v1, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x3

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->remove(I)Lcom/senseonics/util/RangeWithIntSet;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->sensorGlucoseResponses:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 125
    aget v0, v1, v4

    aget v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 126
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->remove(I)Lcom/senseonics/util/RangeWithIntSet;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->glucoseAlertResponses:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v2}, Lcom/senseonics/model/RangeWithCurrentValue;->getResponseId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 130
    aget v0, v1, v4

    aget v1, v1, v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 131
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseRange:Lcom/senseonics/model/RangeWithCurrentValue;

    invoke-virtual {v1, v0}, Lcom/senseonics/model/RangeWithCurrentValue;->remove(I)Lcom/senseonics/util/RangeWithIntSet;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/senseonics/model/SyncModel;->bloodGlucoseResponses:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {v0}, Lcom/senseonics/util/RangeWithIntSet;->isSetEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/senseonics/model/SyncModel;->onRangeSyncComplete()V

    :cond_3
    return-void
.end method
