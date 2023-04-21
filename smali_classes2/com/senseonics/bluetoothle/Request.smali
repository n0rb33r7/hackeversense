.class public Lcom/senseonics/bluetoothle/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/senseonics/bluetoothle/Request;",
        ">;"
    }
.end annotation


# static fields
.field public static final SYNC_PRIORITY:I = 0xa


# instance fields
.field private final data:[I

.field private final expectedResponseCount:I

.field private final expectedResponseId:I

.field private insertionTime:J

.field private priority:I

.field private final recordNr:I

.field private runningResponseCount:I


# direct methods
.method public constructor <init>(I[I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[III)V

    return-void
.end method

.method public constructor <init>(I[III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/bluetoothle/Request;-><init>(I[IIII)V

    return-void
.end method

.method public constructor <init>(I[IIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    .line 39
    iput-object p2, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    .line 40
    iput p3, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    .line 41
    iput p4, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseCount:I

    .line 42
    iput p5, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    return-void
.end method

.method public static changeBatteryMonitorThreshold(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 1081
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToChangeBatteryMonitorThreshold(II)[I

    move-result-object p0

    const/16 p1, 0xe0

    invoke-direct {v0, p1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static completedCalibrationsCount()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 241
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->calibrationsMadeInThisPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method private convertToByteArray([I)[B
    .locals 3

    .line 63
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 64
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 65
    aget v2, p1, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static currentCalibrationPhase()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 245
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->currentCalibrationPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static detectedSensorId()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 312
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->unlinkedSensorIDAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static enterDiagnosticMode()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 947
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToEnterDiagnosticMode()[I

    move-result-object v1

    const/16 v2, 0xf6

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static exerciseVibrationWithPattern(Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 1073
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/CommandProcessor$VibrationPattern;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToExerciseVibrationWithPattern(I)[I

    move-result-object p0

    const/16 v1, 0xea

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static exitDiagnosticMode()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 951
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToExitDiagnosticMode()[I

    move-result-object v1

    const/16 v2, 0xf7

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static forceGlucoseMeasurement()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 1053
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToForceGlucoseMeasurement()[I

    move-result-object v1

    const/16 v2, 0xe0

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static getTransmitterChunkAddresses([III)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 909
    array-length p0, p0

    .line 910
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    add-int v2, v1, p2

    if-le v2, p0, :cond_0

    sub-int v1, p0, v1

    goto :goto_1

    :cond_0
    move v1, p2

    .line 917
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v1

    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isOneCalPhase()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 1077
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->IsOneCalPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static lastCalDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 225
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentCalibrationDateAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static lastCalTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 229
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentCalibrationTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static linkedSensorId()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 308
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->linkedSensorIDAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static markPatientEventRecordAsDeleted(I)Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 975
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 976
    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToMarkPatientEventRecordAsDeleted([I)[I

    move-result-object p0

    const/16 v1, 0x9d

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static model()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 213
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterModelNumberAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;
    .locals 8

    .line 1020
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 1021
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [I

    const/16 v4, 0x2a

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x2

    .line 1027
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 1028
    aget v6, p0, v7

    aput v6, v3, v4

    .line 1029
    aget p0, p0, v5

    aput p0, v3, v2

    .line 1031
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1032
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1034
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1037
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 1041
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x4

    .line 1043
    aget v7, p0, v7

    aput v7, v4, v5

    .line 1045
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1048
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    new-instance p0, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xaa

    invoke-direct {p0, v0, v4}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p0
.end method

.method static operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;
    .locals 8

    .line 982
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 983
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [I

    const/16 v4, 0x2c

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x2

    .line 989
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 990
    aget v6, p0, v7

    aput v6, v3, v4

    .line 991
    aget p0, p0, v5

    aput p0, v3, v2

    .line 993
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 994
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 999
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 1003
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x4

    .line 1005
    aget v7, p0, v7

    aput v7, v4, v5

    .line 1007
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v5

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1010
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    new-instance p0, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xac

    invoke-direct {p0, v0, v4}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p0
.end method

.method static phaseStartDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 233
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->startDateOfCalibrationPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static phaseStartTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 237
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->startTimeOfCalibrationPhaseAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static ping()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 209
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToPingTransmitter()[I

    move-result-object v1

    const/16 v2, 0x81

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readAccelerometerTemp()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 177
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AccelerometerTempAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readAccelerometerValues()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 173
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->AccelerometerValuesAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readAlgorithmParameterFormatVersion()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 350
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->algorithmParameterFormatVersion:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readAtccalCrcRegister()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 1062
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 1063
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readAtccalSramResultRegister()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 1068
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalSramResultAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 1069
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readBatteryLevelRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 142
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->batteryPercentageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readBatteryVoltageRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 138
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->batteryVoltageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readClinicalMode()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 249
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalMode:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readCommunicationProtocolVersion()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 354
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->communicationProtocolVersionAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readCurrentTransmitterDateAndTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 253
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadCurrentTransmitterDateAndTime()[I

    move-result-object v1

    const/16 v2, 0x99

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readDayStartTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 424
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->dayStartTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readDelayBLEDisconnectAlarmAddressRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 702
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 703
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readDoNotDisturbModeRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 721
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->doNotDisturbMode:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 722
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readEEP24MSP()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 379
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->eep24MSPAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readEveningCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 265
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->eveningCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readFirstAndLastBloodGlucoseDataRecordNumber()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 205
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFirstAndLastBloodGlucoseDataRecordNumbers()[I

    move-result-object v1

    const/16 v2, 0x97

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readFirstAndLastSensorGlucoseAlertRecordNumbers()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 201
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFirstAndLastSensorGlucoseAlertRecordNumbers()[I

    move-result-object v1

    const/16 v2, 0x92

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readFirstAndLastSensorGlucoseRecordNumbers()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 197
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFirstAndLastSensorGlucoseRecordNumbers()[I

    move-result-object v1

    const/16 v2, 0x8e

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readGlucoseAlertsAndStatus()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 162
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSensorGlucoseAlertsAndStatus()[I

    move-result-object v1

    const/16 v2, 0x90

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readGlucoseData()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 181
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadMostRecentGlucoseData()[I

    move-result-object v1

    const/16 v2, 0x88

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readHighGlucoseAlarmEnabledRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 515
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    .line 516
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 517
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readHighGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 394
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readHighGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 414
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readHighGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 496
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 497
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readHighGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 470
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseTarget:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 471
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 146
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPercentageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 150
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisValueAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method public static readLowGlucoseAlarmRepeatIntervalDayTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 384
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readLowGlucoseAlarmRepeatIntervalNightTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 404
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readLowGlucoseAlarmRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 509
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 510
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readLowGlucoseTargetRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 483
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseTarget:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 484
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xac

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readMEPSavedDriftMetric()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 367
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedDriftMetricAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedLowRefMetric()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 371
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedLowRefMetricAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedRefChannelMetric()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 363
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedRefChannelMetricAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedSpike()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 375
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedSpikeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMEPSavedValue()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 359
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mepSavedValueAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMaxCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 338
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->maxCalibrationThreshold:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinCalibrationThreshold()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 334
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minCalibrationThreshold:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinutesAfterNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 450
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesAfterNextCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinutesBeforeNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 446
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesBeforeNextCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMinutesRemainingUntilCalibrationAllowed()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 346
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->minutesRemainingUntilCalibrationAllowed:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readMmaFeatures()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 1085
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->MmaFeaturesAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readMorningCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 261
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->morningCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readMostRecentGlucoseDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 185
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseDateAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readMostRecentGlucoseTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 189
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readMostRecentGlucoseValue()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 193
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->mostRecentGlucoseValueAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNRawTestCommand([II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 1057
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadNRawTestCommand([II)[I

    move-result-object p0

    const/16 p1, 0xe0

    invoke-direct {v0, p1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNextCalibrationDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 330
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nextCalibrationDate:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNextCalibrationTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 342
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nextCalibrationTime:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readNightStartTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 428
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->nightStartTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readPredictiveAlertsRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 566
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveAlert:[I

    .line 567
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 568
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readPredictiveFallingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 600
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveFallingTime:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 601
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readPredictiveHighAlertsRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 580
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveHighAlert:[I

    .line 581
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 582
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readPredictiveHysteresisPercentRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 154
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPredictivePercentageAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readPredictiveHysteresisValueRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 158
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->hysteresisPredictiveValueAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadSingleByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method public static readPredictiveLowAlertsRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 573
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveLowAlert:[I

    .line 574
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 575
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readPredictiveRisingTimeIntervalRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 606
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveRisingTime:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 607
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateAlert()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 648
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlert:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 649
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateAlertFallingThresholdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 678
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertFallingThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 679
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateAlertRisingThresholdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 684
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertRisingThreshold:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 685
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateFallingAlert()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 654
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateFallingAlert:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 655
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readRateRisingAlert()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 660
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateRisingAlert:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 661
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 169
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {p0}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->getMemoryAddress()[I

    move-result-object p0

    invoke-static {p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object p0

    const/16 v1, 0xac

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readReadyForCalibration()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 326
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->readyForCalibrationAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readSensorGlucoseSamplingInterval()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 257
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorGlucoseSamplingInterval:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static readSensorIdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 751
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->linkedSensorIDAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 752
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xae

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static readSensorInsertionDate()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 317
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionDateAddress:[I

    .line 318
    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readSensorInsertionTime()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 322
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->sensorInsertionTimeAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xac

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static readSignalStrengthRawRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 134
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentRawAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method static readSignalStrengthRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 1

    .line 130
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->operationToReadTwoByteSerialFlashRegister([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    return-object v0
.end method

.method public static readUnlinkedSensorIdRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 757
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->unlinkedSensorIDAddress:[I

    .line 758
    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 759
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xae

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static readVibrateModeRequest()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 715
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->vibrateMode:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    .line 716
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    const/16 v2, 0xaa

    invoke-direct {v1, v2, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method static saveBondingInformation()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 126
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    invoke-static {}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSaveBLEBondingInformation()[I

    move-result-object v1

    const/16 v2, 0xe9

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static sendBloodGlucoseData([I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 454
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0x95

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static sendBloodGlucoseDataWithTwoTimestamps([I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 458
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xbc

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static sendCurrentDateAndTimeToTransmitter()Lcom/senseonics/bluetoothle/Request;
    .locals 9

    .line 270
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 274
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 275
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 278
    div-int/lit8 v2, v1, 0x3c

    .line 279
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit8 v1, v1, 0x3c

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/16 v4, 0xff

    :goto_0
    const-string v5, "GMT"

    .line 288
    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v5, 0x1

    .line 290
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    .line 291
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    const/4 v5, 0x5

    .line 292
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 293
    invoke-static {v6, v7, v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object v5

    const/16 v6, 0xb

    .line 295
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    .line 296
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    .line 297
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 298
    invoke-static {v6, v7, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v0

    .line 301
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 300
    invoke-static {v2, v1, v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v1

    .line 303
    new-instance v2, Lcom/senseonics/bluetoothle/Request;

    const/16 v3, 0x87

    invoke-static {v5, v0, v1, v4}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSetTransmitterDateAndTime([I[I[II)[I

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v2
.end method

.method static version()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 217
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterSoftwareVersionAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method static versionExtension()Lcom/senseonics/bluetoothle/Request;
    .locals 3

    .line 221
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterSoftwareVersionExtAddress:[I

    invoke-static {v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadFourByteSerialFlashRegister([I)[I

    move-result-object v1

    const/16 v2, 0xae

    invoke-direct {v0, v2, v1}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeAppVersion(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;
    .locals 7

    const-string v0, "\\."

    .line 955
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 957
    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 958
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 959
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v5, 0x4

    new-array v5, v5, [I

    and-int/lit16 v6, p0, 0xff

    aput v6, v5, v0

    const v6, 0xff00

    and-int/2addr p0, v6

    shr-int/lit8 p0, p0, 0x8

    aput p0, v5, v2

    aput v3, v5, v4

    const/4 p0, 0x3

    aput v1, v5, p0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appVersionArray:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v5, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v5, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v5, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget p0, v5, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppVersion"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    sget-object p0, Lcom/senseonics/bluetoothle/MemoryMap;->appVersionAddress:[I

    invoke-static {p0, v5}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteFourByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 971
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xaf

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeBloodGlucoseEvent(JIZ)Lcom/senseonics/bluetoothle/Request;
    .locals 16

    .line 783
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-wide/from16 v1, p0

    .line 784
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v1, "GMT"

    .line 785
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x1

    .line 787
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 788
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x5

    .line 789
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 786
    invoke-static {v3, v5, v7}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object v8

    const/16 v3, 0xb

    .line 792
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v7, 0xc

    .line 793
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xd

    .line 794
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 791
    invoke-static {v5, v9, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v9

    .line 797
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 798
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 800
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 801
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 802
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 799
    invoke-static {v1, v5, v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object v1

    .line 805
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 806
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 807
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 804
    invoke-static {v2, v3, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object v11

    .line 810
    invoke-static/range {p2 .. p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    new-array v2, v4, [I

    .line 811
    fill-array-data v2, :array_0

    .line 814
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportRollingCal()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v13, 0x0

    move-object v10, v1

    move-object v12, v0

    move-object v14, v2

    move/from16 v15, p3

    .line 815
    invoke-static/range {v8 .. v15}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSendBloodGlucoseValueWithTwoTimestampsToTransmitter([I[I[I[I[II[IZ)[I

    move-result-object v0

    .line 816
    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->sendBloodGlucoseDataWithTwoTimestamps([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-object v10, v0

    move-object v12, v2

    move/from16 v13, p3

    .line 818
    invoke-static/range {v8 .. v13}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToSendBloodGlucoseValueToTransmitter([I[I[II[IZ)[I

    move-result-object v0

    .line 819
    invoke-static {v0}, Lcom/senseonics/bluetoothle/Request;->sendBloodGlucoseData([I)Lcom/senseonics/bluetoothle/Request;

    move-result-object v0

    :goto_0
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static writeClinicalModeRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 696
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalMode:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 697
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeDayStartTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 434
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->dayStartTimeAddress:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 435
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeDelayBLEDisconnectAlarmAddressRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 708
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 709
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 710
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeDoNotDisturbModeRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 745
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->doNotDisturbMode:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 746
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeEveningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 875
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 876
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->eveningCalibrationTime:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 877
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeFirstFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 850
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 851
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 853
    :cond_0
    aput v3, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    add-int/lit8 v5, v4, 0x4

    .line 856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 857
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v2, v4

    goto :goto_3

    .line 859
    :cond_2
    aput v3, v2, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 p0, 0xaf

    .line 862
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameFirst4Byte:[I

    invoke-static {v0, v1}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteFourByteSerialFlashRegister([I[I)[I

    move-result-object v0

    .line 863
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeHighGlucoseAlarmEnabledRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 527
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 528
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeHighGlucoseAlarmRepeatIntervalDayTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 399
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 400
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeHighGlucoseAlarmRepeatIntervalNightTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 419
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 420
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeHighGlucoseAlarmRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 489
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 490
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 491
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeHighGlucoseTarget(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 463
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 464
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseTarget:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 465
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLastFourByteTransmitterNameRequest(Ljava/lang/String;)Lcom/senseonics/bluetoothle/Request;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 831
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput v5, v1, v4

    goto :goto_1

    .line 833
    :cond_0
    aput v3, v1, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_3

    add-int/lit8 v4, v1, 0x4

    .line 836
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 837
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput v4, v2, v1

    goto :goto_3

    .line 839
    :cond_2
    aput v3, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/16 p0, 0xaf

    .line 842
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->transmitterNameLast4Byte:[I

    invoke-static {v0, v2}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteFourByteSerialFlashRegister([I[I)[I

    move-result-object v0

    .line 843
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, p0, v0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeLowGlucoseAlarmRepeatIntervalDayTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 389
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalDayTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 390
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLowGlucoseAlarmRepeatIntervalNightTime(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 409
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmRepeatIntervalNightTimeAddress:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 410
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLowGlucoseAlarmRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 502
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 503
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseAlarmThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 504
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeLowGlucoseTargetRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 476
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 477
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->lowGlucoseTarget:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 478
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xad

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeMorningCalibrationTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 868
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 869
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->morningCalibrationTime:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 870
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeNightStartTime(II)Lcom/senseonics/bluetoothle/Request;
    .locals 1

    const/4 v0, 0x0

    .line 440
    invoke-static {p0, p1, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p0

    .line 441
    sget-object p1, Lcom/senseonics/bluetoothle/MemoryMap;->nightStartTimeAddress:[I

    invoke-static {p1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteTwoByteSerialFlashRegister([I[I)[I

    move-result-object p0

    .line 442
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0xad

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writePatientEvent(JIII)Lcom/senseonics/bluetoothle/Request;
    .locals 5

    .line 763
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 764
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p0, "GMT"

    .line 765
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p0, 0x1

    .line 767
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/4 v1, 0x2

    .line 768
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p0

    const/4 p0, 0x5

    .line 769
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/16 v2, 0xb

    .line 770
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xc

    .line 771
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xd

    .line 772
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 774
    invoke-static {p1, v1, p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateBytes(III)[I

    move-result-object p0

    .line 775
    invoke-static {v2, v3, v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeBytes(III)[I

    move-result-object p1

    .line 777
    invoke-static {p0, p1, p2, p3, p4}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWritePatientEvent([I[IIII)[I

    move-result-object p0

    .line 779
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 p2, 0x9a

    invoke-direct {p1, p2, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writePredictiveAlertsRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 538
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 539
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writePredictiveFallingTimeIntervalRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 587
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveFallingTime:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 589
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writePredictiveHighAlertsRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 560
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveHighAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 561
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writePredictiveLowAlertsRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 549
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveLowAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 550
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writePredictiveRisingTimeIntervalRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 594
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->predictiveRisingTime:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 595
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeRateAlert(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 618
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 619
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeRateAlertFallingThresholdRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 666
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertFallingThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 667
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeRateAlertRisingThresholdRequest(I)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    .line 672
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->rateAlertRisingThreshold:[I

    invoke-static {v0, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 673
    new-instance v0, Lcom/senseonics/bluetoothle/Request;

    const/16 v1, 0xab

    invoke-direct {v0, v1, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v0
.end method

.method public static writeRateFallingAlert(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 630
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateFallingAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 631
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeRateRisingAlert(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 642
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->rateRisingAlert:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 643
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method

.method public static writeSensorID(J)Lcom/senseonics/bluetoothle/Request;
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [I

    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-wide/32 v4, 0xff00

    and-long/2addr v4, p0

    const/16 v2, 0x8

    shr-long/2addr v4, v2

    long-to-int v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    const-wide/32 v5, 0xff0000

    and-long/2addr v5, p0

    const/16 v2, 0x10

    shr-long/2addr v5, v2

    long-to-int v2, v5

    const/4 v5, 0x2

    aput v2, v1, v5

    const-wide v6, 0xff000000L

    and-long/2addr p0, v6

    const/16 v2, 0x18

    shr-long/2addr p0, v2

    long-to-int p0, p0

    const/4 p1, 0x3

    aput p0, v1, p1

    aget p0, v1, p1

    const/16 v2, 0xff

    if-eq p0, v2, :cond_0

    aput v4, v1, p1

    .line 936
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v1, v3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget v6, v1, v4

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget v6, v1, v5

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    aget v2, v1, p1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Request"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [I

    aget v0, v1, p1

    aput v0, p0, v3

    aget v0, v1, v5

    aput v0, p0, v4

    aget v0, v1, v4

    aput v0, p0, v5

    aget v0, v1, v3

    aput v0, p0, p1

    .line 941
    invoke-static {p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToLinkTransmitterWithSensor([I)[I

    move-result-object p0

    .line 943
    new-instance p1, Lcom/senseonics/bluetoothle/Request;

    const/16 v0, 0x82

    invoke-direct {p1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object p1
.end method

.method public static writeTransmitterChunk([III)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III)",
            "Ljava/util/List<",
            "Lcom/senseonics/bluetoothle/Request;",
            ">;"
        }
    .end annotation

    .line 881
    array-length v0, p0

    .line 882
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    add-int v4, v3, p2

    if-le v4, v0, :cond_0

    sub-int v5, v0, v3

    goto :goto_1

    :cond_0
    move v5, p2

    .line 889
    :goto_1
    new-array v6, v5, [I

    .line 890
    invoke-static {p0, v3, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v2

    :goto_2
    if-ge v7, v5, :cond_1

    .line 893
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subarray "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, v6, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v7, 0x2

    and-int/lit16 v8, p1, 0xff

    aput v8, v3, v7

    const v7, 0xff00

    and-int/2addr v7, p1

    shr-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    aput v7, v3, v8

    const/high16 v7, 0xff0000

    and-int/2addr v7, p1

    shr-int/lit8 v7, v7, 0x10

    aput v7, v3, v2

    add-int/2addr p1, v5

    .line 901
    invoke-static {v3, v5, v6}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteNByteSerialFlashRegister([II[I)[I

    move-result-object v3

    .line 902
    new-instance v5, Lcom/senseonics/bluetoothle/Request;

    const/16 v6, 0xb1

    invoke-direct {v5, v6, v3}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static writeVibrateModeRequest(Z)Lcom/senseonics/bluetoothle/Request;
    .locals 2

    if-eqz p0, :cond_0

    const/16 p0, 0x55

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0xab

    .line 733
    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap;->vibrateMode:[I

    invoke-static {v1, p0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToWriteSingleByteSerialFlashRegister([II)[I

    move-result-object p0

    .line 734
    new-instance v1, Lcom/senseonics/bluetoothle/Request;

    invoke-direct {v1, v0, p0}, Lcom/senseonics/bluetoothle/Request;-><init>(I[I)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/senseonics/bluetoothle/Request;)I
    .locals 4

    .line 118
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    iget v1, p1, Lcom/senseonics/bluetoothle/Request;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    iget-wide v2, p1, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/senseonics/bluetoothle/Request;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Request;->compareTo(Lcom/senseonics/bluetoothle/Request;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/senseonics/bluetoothle/Request;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 86
    :cond_1
    check-cast p1, Lcom/senseonics/bluetoothle/Request;

    .line 88
    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    iget v3, p1, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    if-eq v1, v3, :cond_2

    return v2

    .line 89
    :cond_2
    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    iget v3, p1, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    if-eq v1, v3, :cond_3

    return v2

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    iget-object v3, p1, Lcom/senseonics/bluetoothle/Request;->data:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 91
    :cond_4
    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/Request;->compareTo(Lcom/senseonics/bluetoothle/Request;)I

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getData()[I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    return-object v0
.end method

.method public getDataBytes()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    invoke-direct {p0, v0}, Lcom/senseonics/bluetoothle/Request;->convertToByteArray([I)[B

    move-result-object v0

    return-object v0
.end method

.method public getExpectedResponseId()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 98
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 99
    iget-object v1, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isResponseIdTheLastExpectedResponse(I)Z
    .locals 2

    .line 71
    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 72
    iget p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    .line 74
    :cond_0
    iget p1, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    iget v0, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseCount:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public resetRunningResponseCount()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/senseonics/bluetoothle/Request;->runningResponseCount:I

    return-void
.end method

.method public setInsertionTime(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 106
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/bluetoothle/Request;->data:[I

    .line 107
    invoke-static {v1}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/senseonics/bluetoothle/Request;->expectedResponseId:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "responseId"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->recordNr:I

    const-string v2, "recordNr"

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/bluetoothle/Request;->priority:I

    const-string v2, "priority"

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/senseonics/bluetoothle/Request;->insertionTime:J

    const-string v3, "insertionTime"

    .line 111
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
