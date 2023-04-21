.class public Lcom/senseonics/bluetoothle/TransmitterScanner;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field static SENSEONICS_SERVICE_HANDLE:Ljava/lang/String; = "c3230001-9308-47ae-ac12-3d030892a211"

.field static final SENSEONICS_SERVICE_HANDLE_UUID:Ljava/util/UUID;


# instance fields
.field protected bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

.field protected handler:Landroid/os/Handler;

.field private leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private queryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

.field protected scanPeriod:J

.field private shouldStillScan:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetleScanCallback(Lcom/senseonics/bluetoothle/TransmitterScanner;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetshouldStillScan(Lcom/senseonics/bluetoothle/TransmitterScanner;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->shouldStillScan:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputleScanCallback(Lcom/senseonics/bluetoothle/TransmitterScanner;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "c3230001-9308-47ae-ac12-3d030892a211"

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/senseonics/bluetoothle/TransmitterScanner;->SENSEONICS_SERVICE_HANDLE_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;Landroid/os/Handler;JLcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;)V
    .locals 0
    .param p3    # J
        .annotation runtime Ljavax/inject/Named;
            value = "SCAN_PERIOD_MILLISECONDS"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    .line 34
    iput-object p2, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->handler:Landroid/os/Handler;

    .line 35
    iput-wide p3, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->scanPeriod:J

    .line 36
    iput-object p5, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->queryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    return-void
.end method


# virtual methods
.method parseUUIDs([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 118
    :goto_0
    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 119
    aget-byte v2, p1, v2

    if-nez v2, :cond_0

    goto :goto_5

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 123
    aget-byte v3, p1, v3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v5, v2

    goto :goto_4

    :cond_1
    :goto_1
    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    add-int/lit8 v4, v5, 0x1

    .line 141
    :try_start_0
    invoke-static {p1, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 142
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    .line 144
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    .line 145
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v7, v8, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 155
    throw p1

    :catch_0
    :goto_2
    add-int/lit8 v5, v4, 0xf

    add-int/lit8 v2, v2, -0x10

    goto :goto_1

    :cond_2
    :goto_3
    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    add-int/lit8 v4, v5, 0x1

    .line 128
    aget-byte v5, p1, v5

    add-int/lit8 v6, v4, 0x1

    .line 129
    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v5, v4

    add-int/lit8 v2, v2, -0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 132
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%08x-0000-1000-8000-00805f9b34fb"

    .line 131
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v6

    goto :goto_3

    :cond_3
    :goto_4
    move v2, v5

    goto :goto_0

    :cond_4
    :goto_5
    return-object v0
.end method

.method scan(Lcom/senseonics/bluetoothle/DiscoverCallback;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/TransmitterScanner;->stopLeScanIfCurrentlyScanning()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->shouldStillScan:Z

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->queryHandler:Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;

    new-instance v2, Lcom/senseonics/bluetoothle/TransmitterScanner$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner$1;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner;Ljava/util/Set;Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    invoke-virtual {v1, v2}, Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler;->startQuery(Lcom/senseonics/bluetoothle/ConnectedTransmitterAsyncQueryHandler$Callback;)V

    .line 85
    new-instance v1, Lcom/senseonics/bluetoothle/TransmitterScanner$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/senseonics/bluetoothle/TransmitterScanner$2;-><init>(Lcom/senseonics/bluetoothle/TransmitterScanner;Ljava/util/Set;Lcom/senseonics/bluetoothle/DiscoverCallback;)V

    iput-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-void
.end method

.method stopLeScanIfCurrentlyScanning()V
    .locals 2

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->shouldStillScan:Z

    .line 108
    iget-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->bluetoothAdapterWrapper:Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/senseonics/bluetoothle/BluetoothAdapterWrapper;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/senseonics/bluetoothle/TransmitterScanner;->leScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    :cond_0
    return-void
.end method
