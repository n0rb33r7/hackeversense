.class public Lcom/senseonics/model/SyncingParsedResponse;
.super Ljava/lang/Object;
.source "SyncingParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/SyncModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    const/4 p2, 0x0

    .line 32
    aget p2, p1, p2

    .line 33
    iget-object v0, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/senseonics/bluetoothle/Response;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(IZ[I)V

    .line 35
    iget-object p1, p0, Lcom/senseonics/model/SyncingParsedResponse;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {p1, v0}, Lcom/senseonics/model/SyncModel;->setReceivedSyncingResponse(Lcom/senseonics/bluetoothle/Response;)V

    :cond_0
    return-void
.end method

.method public check([I)Z
    .locals 3

    const/4 v0, 0x0

    .line 24
    aget v1, p1, v0

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_0

    .line 25
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadAllSensorGlucoseDataRecordResponseCorrect([I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/16 v2, 0xf1

    if-ne v1, v2, :cond_1

    .line 26
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadAllSensorGlucoseAlertsInSpecifiedRangeResponseCorrect([I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0xf2

    if-ne v1, v2, :cond_3

    .line 27
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadLogOfBloodGlucoseDataInSpecifiedRangeResponseCorrect([I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
