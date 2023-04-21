.class public Lcom/senseonics/events/SyncLogBatchProcessedEvent;
.super Ljava/lang/Object;
.source "SyncLogBatchProcessedEvent.java"


# instance fields
.field private bloodGlucoseResponses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field

.field private glucoseAlertResponses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field

.field private sensorGlucoseResponses:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/TreeSet;Ljava/util/TreeSet;Ljava/util/TreeSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;",
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;",
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/senseonics/util/Utils;->getThreeByteRecordNumberResponseComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->sensorGlucoseResponses:Ljava/util/TreeSet;

    .line 16
    new-instance p1, Ljava/util/TreeSet;

    invoke-static {}, Lcom/senseonics/util/Utils;->getTwoByteRecordNumberResponseComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, p1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->glucoseAlertResponses:Ljava/util/TreeSet;

    .line 17
    new-instance p1, Ljava/util/TreeSet;

    invoke-static {}, Lcom/senseonics/util/Utils;->getTwoByteRecordNumberResponseComparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {p3, p1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/TreeSet;

    iput-object p1, p0, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->bloodGlucoseResponses:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public getBloodGlucoseResponses()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->bloodGlucoseResponses:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getGlucoseAlertResponses()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->glucoseAlertResponses:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getSensorGlucoseResponses()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lcom/senseonics/bluetoothle/Response;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->sensorGlucoseResponses:Ljava/util/TreeSet;

    return-object v0
.end method
