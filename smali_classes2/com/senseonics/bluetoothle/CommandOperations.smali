.class public Lcom/senseonics/bluetoothle/CommandOperations;
.super Ljava/lang/Object;
.source "CommandOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static operationToAssertSnoozeAgainstAlarm(I)[I
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x14

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p0, v1, v2

    .line 619
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 620
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 622
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 623
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v2

    .line 624
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 626
    array-length v5, p0

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v5, v1, v3

    .line 627
    aput v5, v0, v3

    aget v1, v1, v2

    .line 628
    aput v1, v0, v2

    .line 630
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    .line 631
    aget v2, p0, v3

    aput v2, v0, v1

    .line 632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v1

    .line 633
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "COMMAND"

    .line 636
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToChangeBatteryMonitorThreshold(II)[I
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v2, 0x60

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0x2a

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput p0, v1, v2

    const/4 p0, 0x3

    aput p1, v1, p0

    .line 1509
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1510
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1514
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v4, "Calculated Command = "

    :goto_0
    if-ge v3, p1, :cond_1

    if-ge v3, v0, :cond_0

    .line 1518
    aget v5, v1, v3

    aput v5, v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, -0x4

    .line 1520
    aget v5, p0, v5

    aput v5, v2, v3

    .line 1522
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "COMMAND"

    .line 1525
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToChangeTimingParameters(I)[I
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x75

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p0, v1, v2

    .line 340
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 341
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 343
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v1, v2

    .line 345
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    array-length v6, p0

    add-int/2addr v6, v0

    new-array v0, v6, [I

    aget v6, v1, v3

    .line 348
    aput v6, v0, v3

    aget v1, v1, v2

    .line 349
    aput v1, v0, v2

    .line 351
    :goto_0
    array-length v1, p0

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    .line 352
    aget v2, p0, v3

    aput v2, v0, v1

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v1

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "COMMAND"

    .line 357
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToClearErrorFlags()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 153
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 154
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 156
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 159
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 160
    aput v1, v0, v3

    .line 162
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 163
    aget v3, v2, v3

    aput v3, v0, v1

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 168
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToDisconnectBLESavingBondingInformation()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x74

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 314
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 315
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 317
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 321
    aput v1, v0, v3

    .line 323
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 324
    aget v3, v2, v3

    aput v3, v0, v1

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 326
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 329
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToEnterDiagnosticMode()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x76

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 42
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 43
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 45
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 48
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 49
    aput v1, v0, v3

    .line 51
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 52
    aget v3, v2, v3

    aput v3, v0, v1

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 57
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToExerciseVibrationWithPattern(I)[I
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0x6a

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p0, v1, v2

    .line 1480
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1481
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1483
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1486
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v5, "Calculated Command = "

    :goto_0
    if-ge v3, v2, :cond_1

    if-ge v3, v0, :cond_0

    .line 1490
    aget v6, v1, v3

    aput v6, v4, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v3, -0x2

    .line 1492
    aget v6, p0, v6

    aput v6, v4, v3

    .line 1494
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "COMMAND"

    .line 1497
    invoke-static {p0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToExitDiagnosticMode()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x77

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 66
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 67
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 69
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 73
    aput v1, v0, v3

    .line 75
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 76
    aget v3, v2, v3

    aput v3, v0, v1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 81
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToForceGlucoseMeasurement()[I
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1420
    fill-array-data v1, :array_0

    .line 1422
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1423
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1425
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1428
    array-length v3, v2

    add-int/2addr v3, v0

    new-array v4, v3, [I

    const-string v5, "Calculated Command = "

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_1

    if-ge v6, v0, :cond_0

    .line 1432
    aget v7, v1, v6

    aput v7, v4, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v6, -0x2

    .line 1434
    aget v7, v2, v7

    aput v7, v4, v6

    .line 1436
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1439
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForceGlucoseMeasurement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linking"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "COMMAND"

    .line 1440
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    nop

    :array_0
    .array-data 4
        0x60
        0x18
    .end array-data
.end method

.method public static operationToLinkTransmitterWithSensor([I)[I
    .locals 8

    .line 88
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x5

    new-array v2, v0, [I

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 98
    array-length v3, p0

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    move v6, v5

    :goto_0
    if-ltz v3, :cond_1

    .line 99
    aget v7, p0, v3

    aput v7, v2, v6

    add-int/2addr v6, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 104
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 106
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 109
    array-length v3, p0

    add-int/2addr v3, v0

    new-array v5, v3, [I

    const-string v6, "Calculated Command ="

    :goto_1
    if-ge v4, v3, :cond_3

    if-ge v4, v0, :cond_2

    .line 113
    aget v7, v2, v4

    aput v7, v5, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v4, -0x5

    .line 115
    aget v7, p0, v7

    aput v7, v5, v4

    .line 117
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v5, v4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 120
    :cond_3
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static operationToMarkPatientEventRecordAsDeleted([I)[I
    .locals 8

    .line 929
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 930
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 936
    aget v6, p0, v4

    aput v6, v3, v4

    .line 937
    aget p0, p0, v5

    aput p0, v3, v2

    .line 939
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 940
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 942
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 945
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 949
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x3

    .line 951
    aget v7, p0, v7

    aput v7, v4, v5

    .line 953
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

    .line 956
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToPingTransmitter()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 18
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 19
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 21
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    array-length v5, v3

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v2

    .line 25
    aput v1, v0, v2

    .line 27
    :goto_0
    array-length v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 28
    aget v2, v3, v2

    aput v2, v0, v1

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v0, v1

    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 33
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadAllAvailableSensorIDs()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x6

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 201
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 202
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 204
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 207
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 208
    aput v1, v0, v3

    .line 210
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 211
    aget v3, v2, v3

    aput v3, v0, v1

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 216
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadAllSensorGlucoseDataInSpecifiedRange([I[I)[I
    .locals 7

    .line 429
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    array-length v0, p1

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x7

    new-array v2, v0, [I

    const/16 v3, 0x70

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 436
    aget v3, p0, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    .line 437
    aget v3, p0, v5

    const/4 v6, 0x2

    aput v3, v2, v6

    .line 438
    aget p0, p0, v6

    aput p0, v2, v1

    const/4 p0, 0x4

    .line 439
    aget v1, p1, v4

    aput v1, v2, p0

    const/4 p0, 0x5

    .line 440
    aget v1, p1, v5

    aput v1, v2, p0

    const/4 p0, 0x6

    .line 441
    aget p1, p1, v6

    aput p1, v2, p0

    .line 443
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 444
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 446
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 449
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v1, p1, [I

    const-string v3, "Calculated Command ="

    :goto_0
    if-ge v4, p1, :cond_2

    if-ge v4, v0, :cond_1

    .line 453
    aget v5, v2, v4

    aput v5, v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v4, -0x7

    .line 455
    aget v5, p0, v5

    aput v5, v1, v4

    .line 457
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "Sync_Process"

    .line 460
    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_2
    const-string p0, "COMMAND"

    const-string p1, "Parameter length error!"

    .line 430
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadCurrentTransmitterDateAndTime()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 266
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 267
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 269
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 273
    aput v1, v0, v3

    .line 275
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 276
    aget v3, v2, v3

    aput v3, v0, v1

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 278
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 281
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastBloodGlucoseDataRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x17

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 783
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 784
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 786
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 789
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 790
    aput v1, v0, v3

    .line 792
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 793
    aget v3, v2, v3

    aput v3, v0, v1

    .line 794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 795
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 798
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastErrorLogRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x27

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1077
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1078
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1080
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1081
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1083
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 1084
    aput v1, v0, v3

    .line 1086
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 1087
    aget v3, v2, v3

    aput v3, v0, v1

    .line 1088
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 1089
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 1092
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastMiscEventLogRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x23

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1003
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1004
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1006
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1009
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 1010
    aput v1, v0, v3

    .line 1012
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 1013
    aget v3, v2, v3

    aput v3, v0, v1

    .line 1014
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 1015
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 1018
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastSensorGlucoseAlertRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x12

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 556
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 557
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 559
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 560
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 562
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 563
    aput v1, v0, v3

    .line 565
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 566
    aget v3, v2, v3

    aput v3, v0, v1

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 568
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 571
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFirstAndLastSensorGlucoseRecordNumbers()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xe

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 469
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 470
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 472
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 476
    aput v1, v0, v3

    .line 478
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 479
    aget v3, v2, v3

    aput v3, v0, v1

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 481
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 484
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadFourByteSerialFlashRegister([I)[I
    .locals 8

    .line 1251
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 1252
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [I

    const/16 v4, 0x2e

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x2

    .line 1258
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 1259
    aget v6, p0, v7

    aput v6, v3, v4

    .line 1260
    aget p0, p0, v5

    aput p0, v3, v2

    .line 1262
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1263
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1265
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1268
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 1272
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x4

    .line 1274
    aget v7, p0, v7

    aput v7, v4, v5

    .line 1276
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

    .line 1279
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadLogOfBloodGlucoseDataInSpecifiedRange([I[I)[I
    .locals 7

    .line 806
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    array-length v0, p1

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    const/16 v4, 0x72

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 813
    aget v4, p0, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 814
    aget p0, p0, v6

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 815
    aget v2, p1, v5

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 816
    aget p1, p1, v6

    aput p1, v3, p0

    .line 818
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 819
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 821
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 824
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v4, "Calculated Command ="

    :goto_0
    if-ge v5, p1, :cond_2

    if-ge v5, v0, :cond_1

    .line 828
    aget v6, v3, v5

    aput v6, v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, -0x5

    .line 830
    aget v6, p0, v6

    aput v6, v2, v5

    .line 832
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 835
    :cond_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 807
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadMostRecentGlucoseData()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x8

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 370
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 371
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 373
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 377
    aput v1, v0, v3

    .line 379
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 380
    aget v3, v2, v3

    aput v3, v0, v1

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 382
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 385
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadNByteSerialFlashRegister([II)[I
    .locals 8

    .line 1327
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const v3, 0xffff

    if-le p1, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x6

    new-array v4, v3, [I

    const/16 v5, 0x30

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x2

    .line 1334
    aget v7, p0, v5

    aput v7, v4, v0

    .line 1335
    aget v7, p0, v0

    aput v7, v4, v5

    .line 1336
    aget p0, p0, v6

    aput p0, v4, v2

    .line 1338
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    const/4 p1, 0x4

    .line 1340
    aget v2, p0, v6

    aput v2, v4, p1

    const/4 p1, 0x5

    .line 1341
    aget p0, p0, v0

    aput p0, v4, p1

    .line 1343
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1344
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1346
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 1349
    array-length p1, p0

    add-int/2addr p1, v3

    new-array v0, p1, [I

    const-string v2, "Calculated Command ="

    :goto_0
    if-ge v6, p1, :cond_2

    if-ge v6, v3, :cond_1

    .line 1353
    aget v5, v4, v6

    aput v5, v0, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, -0x6

    .line 1355
    aget v5, p0, v5

    aput v5, v0, v6

    .line 1357
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1360
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 1328
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadNRawTestCommand([II)[I
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [I

    const/16 v2, 0x60

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v4, 0x2

    .line 1449
    aget v5, p0, v4

    aput v5, v1, v4

    .line 1450
    aget v4, p0, v2

    const/4 v5, 0x3

    aput v4, v1, v5

    .line 1451
    aget p0, p0, v3

    const/4 v4, 0x4

    aput p0, v1, v4

    .line 1452
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1453
    aget p1, p0, v3

    const/4 v4, 0x5

    aput p1, v1, v4

    .line 1454
    aget p0, p0, v2

    const/4 p1, 0x6

    aput p0, v1, p1

    .line 1456
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1457
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1461
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v4, "Calculated Command = "

    :goto_0
    if-ge v3, p1, :cond_1

    if-ge v3, v0, :cond_0

    .line 1465
    aget v5, v1, v3

    aput v5, v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, -0x7

    .line 1467
    aget v5, p0, v5

    aput v5, v2, v3

    .line 1469
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "COMMAND"

    .line 1472
    invoke-static {p0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToReadSensorGlucoseAlertLogInSpecifiedRange([I[I)[I
    .locals 7

    .line 579
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    array-length v0, p1

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    const/16 v4, 0x71

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 586
    aget v4, p0, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 587
    aget p0, p0, v6

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 588
    aget v2, p1, v5

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 589
    aget p1, p1, v6

    aput p1, v3, p0

    .line 591
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 592
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 594
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 597
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v4, "Calculated Command ="

    :goto_0
    if-ge v5, p1, :cond_2

    if-ge v5, v0, :cond_1

    .line 601
    aget v6, v3, v5

    aput v6, v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, -0x5

    .line 603
    aget v6, p0, v6

    aput v6, v2, v5

    .line 605
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 608
    :cond_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 580
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToReadSensorGlucoseAlertsAndStatus()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x10

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 497
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 498
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 500
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 504
    aput v1, v0, v3

    .line 506
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 507
    aget v3, v2, v3

    aput v3, v0, v1

    .line 508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 509
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 512
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToReadSingleBloodGlucoseDataRecord([I)[I
    .locals 8

    .line 747
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 748
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/16 v4, 0x16

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 754
    aget v6, p0, v4

    aput v6, v3, v4

    .line 755
    aget p0, p0, v5

    aput p0, v3, v2

    .line 757
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 758
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 760
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 763
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 767
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x3

    .line 769
    aget v7, p0, v7

    aput v7, v4, v5

    .line 771
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

    .line 774
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadSingleByteSerialFlashRegister([I)[I
    .locals 8

    .line 1104
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 1105
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

    .line 1111
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 1112
    aget v6, p0, v7

    aput v6, v3, v4

    .line 1113
    aget p0, p0, v5

    aput p0, v3, v2

    .line 1115
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1116
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1118
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1121
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 1125
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x4

    .line 1127
    aget v7, p0, v7

    aput v7, v4, v5

    .line 1129
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

    .line 1132
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadSingleMiscEventLog([I)[I
    .locals 8

    .line 967
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 968
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/16 v4, 0x22

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 974
    aget v6, p0, v4

    aput v6, v3, v4

    .line 975
    aget p0, p0, v5

    aput p0, v3, v2

    .line 977
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 978
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 980
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 983
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 987
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x3

    .line 989
    aget v7, p0, v7

    aput v7, v4, v5

    .line 991
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

    .line 994
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadSinglePatientEvent([I)[I
    .locals 8

    .line 893
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 894
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/16 v4, 0x1b

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 900
    aget v6, p0, v4

    aput v6, v3, v4

    .line 901
    aget p0, p0, v5

    aput p0, v3, v2

    .line 903
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 904
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 906
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 909
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 913
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x3

    .line 915
    aget v7, p0, v7

    aput v7, v4, v5

    .line 917
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

    .line 920
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadSingleSensorGlucoseAlertRecord([I)[I
    .locals 8

    .line 520
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 521
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [I

    const/16 v4, 0x11

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 527
    aget v6, p0, v4

    aput v6, v3, v4

    .line 528
    aget p0, p0, v5

    aput p0, v3, v2

    .line 530
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 531
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 533
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 536
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 540
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x3

    .line 542
    aget v7, p0, v7

    aput v7, v4, v5

    .line 544
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

    .line 547
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadSingleSensorGlucoseDataValue([I)[I
    .locals 8

    .line 393
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 394
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v3, v0, [I

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 400
    aget v4, p0, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 401
    aget v4, p0, v6

    const/4 v6, 0x2

    aput v4, v3, v6

    .line 402
    aget p0, p0, v6

    aput p0, v3, v2

    .line 404
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 405
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 407
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 410
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 414
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x4

    .line 416
    aget v7, p0, v7

    aput v7, v4, v5

    .line 418
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

    .line 421
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToReadTwoByteSerialFlashRegister([I)[I
    .locals 8

    .line 1177
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 1178
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

    .line 1184
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 1185
    aget v6, p0, v7

    aput v6, v3, v4

    .line 1186
    aget p0, p0, v5

    aput p0, v3, v2

    .line 1188
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1189
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1191
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 1194
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v4, v2, [I

    const-string v6, "Calculated Command ="

    :goto_0
    if-ge v5, v2, :cond_2

    if-ge v5, v0, :cond_1

    .line 1198
    aget v7, v3, v5

    aput v7, v4, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v5, -0x4

    .line 1200
    aget v7, p0, v7

    aput v7, v4, v5

    .line 1202
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

    .line 1205
    :cond_2
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static operationToResetTransmitter()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 129
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 130
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 132
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 136
    aput v1, v0, v3

    .line 138
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 139
    aget v3, v2, v3

    aput v3, v0, v1

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 144
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToSaveBLEBondingInformation()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x69

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 290
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 291
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 293
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 297
    aput v1, v0, v3

    .line 299
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 300
    aget v3, v2, v3

    aput v3, v0, v1

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 302
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 305
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToSendBloodGlucoseValueToTransmitter([I[I[II[IZ)[I
    .locals 7

    .line 649
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    array-length v0, p1

    if-ne v0, v2, :cond_4

    array-length v0, p2

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xb

    new-array v3, v0, [I

    const/16 v4, 0x15

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 656
    aget v4, p0, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 657
    aget p0, p0, v6

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 658
    aget v2, p1, v5

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 659
    aget p1, p1, v6

    aput p1, v3, p0

    const/4 p0, 0x5

    .line 660
    aget p1, p2, v5

    aput p1, v3, p0

    const/4 p0, 0x6

    .line 661
    aget p1, p2, v6

    aput p1, v3, p0

    const/4 p0, 0x7

    aput p3, v3, p0

    const/16 p0, 0x8

    .line 663
    aget p1, p4, v6

    aput p1, v3, p0

    const/16 p0, 0x9

    .line 664
    aget p1, p4, v5

    aput p1, v3, p0

    const/16 p0, 0xa

    if-eqz p5, :cond_1

    const/16 p1, 0x55

    aput p1, v3, p0

    goto :goto_0

    :cond_1
    aput v5, v3, p0

    .line 671
    :goto_0
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 672
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 674
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 677
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p2, p1, [I

    const-string p3, "Calculated Command ="

    :goto_1
    if-ge v5, p1, :cond_3

    if-ge v5, v0, :cond_2

    .line 681
    aget p4, v3, v5

    aput p4, p2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 p4, v5, -0xb

    .line 683
    aget p4, p0, p4

    aput p4, p2, v5

    .line 685
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p4, p2, v5

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 688
    :cond_3
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "Parameter length error!"

    .line 650
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToSendBloodGlucoseValueWithTwoTimestampsToTransmitter([I[I[I[I[II[IZ)[I
    .locals 7

    .line 697
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    array-length v0, p1

    if-ne v0, v2, :cond_4

    array-length v0, p2

    if-ne v0, v2, :cond_4

    array-length v0, p3

    if-ne v0, v2, :cond_4

    array-length v0, p4

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xf

    new-array v3, v0, [I

    const/16 v4, 0x3c

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 704
    aget v4, p0, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 705
    aget p0, p0, v6

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 706
    aget v2, p1, v5

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 707
    aget p1, p1, v6

    aput p1, v3, p0

    const/4 p0, 0x5

    .line 708
    aget p1, p2, v5

    aput p1, v3, p0

    const/4 p0, 0x6

    .line 709
    aget p1, p2, v6

    aput p1, v3, p0

    const/4 p0, 0x7

    .line 710
    aget p1, p3, v5

    aput p1, v3, p0

    const/16 p0, 0x8

    .line 711
    aget p1, p3, v6

    aput p1, v3, p0

    const/16 p0, 0x9

    .line 712
    aget p1, p4, v5

    aput p1, v3, p0

    const/16 p0, 0xa

    .line 713
    aget p1, p4, v6

    aput p1, v3, p0

    const/16 p0, 0xb

    aput p5, v3, p0

    const/16 p0, 0xc

    .line 715
    aget p1, p6, v6

    aput p1, v3, p0

    const/16 p0, 0xd

    .line 716
    aget p1, p6, v5

    aput p1, v3, p0

    const/16 p0, 0xe

    if-eqz p7, :cond_1

    const/16 p1, 0x55

    aput p1, v3, p0

    goto :goto_0

    :cond_1
    aput v5, v3, p0

    .line 723
    :goto_0
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 724
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 728
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p2, p1, [I

    const-string p3, "Calculated Command ="

    :goto_1
    if-ge v5, p1, :cond_3

    if-ge v5, v0, :cond_2

    .line 732
    aget p4, v3, v5

    aput p4, p2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 p4, v5, -0xf

    .line 734
    aget p4, p0, p4

    aput p4, p2, v5

    .line 736
    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p4, p2, v5

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 739
    :cond_3
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "Parameter length error!"

    .line 698
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToSetTransmitterDateAndTime([I[I[II)[I
    .locals 8

    .line 224
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    array-length v0, p1

    if-ne v0, v2, :cond_3

    array-length v0, p2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    new-array v3, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x7

    aput v5, v3, v4

    .line 232
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 233
    aget p0, p0, v7

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 234
    aget v2, p1, v4

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 235
    aget p1, p1, v7

    aput p1, v3, p0

    const/4 p0, 0x5

    .line 236
    aget p1, p2, v4

    aput p1, v3, p0

    const/4 p0, 0x6

    .line 237
    aget p1, p2, v7

    aput p1, v3, p0

    aput p3, v3, v5

    .line 240
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 241
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 243
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 246
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p2, p1, [I

    const-string p3, "Calculated Command ="

    :goto_0
    if-ge v4, p1, :cond_2

    if-ge v4, v0, :cond_1

    .line 250
    aget v2, v3, v4

    aput v2, p2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, -0x8

    .line 252
    aget v2, p0, v2

    aput v2, p2, v4

    .line 254
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget v2, p2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_2
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 226
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToStartSelfTestSequence()[I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 177
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 178
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 180
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated Command = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 183
    array-length v5, v2

    add-int/2addr v5, v0

    new-array v0, v5, [I

    aget v1, v1, v3

    .line 184
    aput v1, v0, v3

    .line 186
    :goto_0
    array-length v1, v2

    if-ge v3, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    .line 187
    aget v3, v2, v3

    aput v3, v0, v1

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    .line 189
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v3, v1

    goto :goto_0

    :cond_0
    const-string v1, "COMMAND"

    .line 192
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static operationToWriteFourByteSerialFlashRegister([I[I)[I
    .locals 9

    .line 1287
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    array-length v0, p1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    new-array v4, v0, [I

    const/16 v5, 0x2f

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x2

    .line 1294
    aget v7, p0, v5

    const/4 v8, 0x1

    aput v7, v4, v8

    .line 1295
    aget v7, p0, v8

    aput v7, v4, v5

    .line 1296
    aget p0, p0, v6

    aput p0, v4, v2

    .line 1297
    aget p0, p1, v6

    aput p0, v4, v3

    const/4 p0, 0x5

    .line 1298
    aget v3, p1, v8

    aput v3, v4, p0

    const/4 p0, 0x6

    .line 1299
    aget v3, p1, v5

    aput v3, v4, p0

    const/4 p0, 0x7

    .line 1300
    aget p1, p1, v2

    aput p1, v4, p0

    .line 1302
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1303
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1305
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 1308
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v3, "Calculated Command ="

    :goto_0
    if-ge v6, p1, :cond_2

    if-ge v6, v0, :cond_1

    .line 1312
    aget v5, v4, v6

    aput v5, v2, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, -0x8

    .line 1314
    aget v5, p0, v5

    aput v5, v2, v6

    .line 1316
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1319
    :cond_2
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 1288
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWriteNByteSerialFlashRegister([II[I)[I
    .locals 8

    .line 1370
    array-length v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-lt p1, v3, :cond_1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    array-length v0, p2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const-string v4, "COMMAND"

    if-eqz v0, :cond_2

    const-string p0, "Parameter length error!"

    .line 1375
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_2
    add-int/lit8 v0, p1, 0x6

    .line 1379
    new-array v5, v0, [I

    const/16 v6, 0x31

    .line 1380
    aput v6, v5, v2

    const/4 v6, 0x2

    .line 1381
    aget v7, p0, v6

    aput v7, v5, v3

    .line 1382
    aget v7, p0, v3

    aput v7, v5, v6

    .line 1383
    aget p0, p0, v2

    aput p0, v5, v1

    .line 1385
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    const/4 v1, 0x4

    .line 1387
    aget v6, p0, v2

    aput v6, v5, v1

    const/4 v1, 0x5

    .line 1388
    aget p0, p0, v3

    aput p0, v5, v1

    const/4 p0, 0x6

    move v1, v2

    :goto_2
    if-ge v1, p1, :cond_3

    .line 1392
    aget v6, p2, v1

    aput v6, v5, p0

    add-int/2addr p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1396
    :cond_3
    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1397
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1399
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 1402
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p2, p1, [I

    const-string v1, "Calculated Command ="

    :goto_3
    if-ge v2, p1, :cond_5

    if-ge v2, v0, :cond_4

    .line 1406
    aget v3, v5, v2

    aput v3, p2, v2

    goto :goto_4

    :cond_4
    sub-int v3, v2, v0

    .line 1408
    aget v3, p0, v3

    aput v3, p2, v2

    .line 1410
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1413
    :cond_5
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public static operationToWritePatientEvent([I[IIII)[I
    .locals 7

    .line 847
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    array-length v0, p1

    if-eq v0, v2, :cond_0

    goto/16 :goto_2

    .line 853
    :cond_0
    invoke-static {p3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p3

    .line 855
    invoke-static {p4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p4

    const/16 v0, 0xb

    new-array v3, v0, [I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 859
    aget v4, p0, v5

    const/4 v6, 0x1

    aput v4, v3, v6

    .line 860
    aget p0, p0, v6

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 861
    aget v2, p1, v5

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 862
    aget p1, p1, v6

    aput p1, v3, p0

    const/4 p0, 0x5

    aput p2, v3, p0

    const/4 p0, 0x6

    .line 864
    aget p1, p3, v5

    aput p1, v3, p0

    const/4 p0, 0x7

    .line 865
    aget p1, p3, v6

    aput p1, v3, p0

    const/16 p0, 0x8

    .line 866
    aget p1, p4, v5

    aput p1, v3, p0

    const/16 p0, 0x9

    .line 867
    aget p1, p4, v6

    aput p1, v3, p0

    .line 869
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 870
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 872
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 875
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p2, p1, [I

    const-string p3, "Calculated Command ="

    :goto_0
    if-ge v5, p1, :cond_2

    if-ge v5, v0, :cond_1

    .line 879
    aget p4, v3, v5

    aput p4, p2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 p4, v5, -0xb

    .line 881
    aget p4, p0, p4

    aput p4, p2, v5

    .line 883
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget p4, p2, v5

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 886
    :cond_2
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 848
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWriteSingleByteSerialFlashRegister([II)[I
    .locals 8

    .line 1140
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "Parameter length error!"

    .line 1141
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    const/16 v4, 0x2b

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x2

    .line 1147
    aget v6, p0, v4

    const/4 v7, 0x1

    aput v6, v3, v7

    .line 1148
    aget v6, p0, v7

    aput v6, v3, v4

    .line 1149
    aget p0, p0, v5

    aput p0, v3, v2

    const/4 p0, 0x4

    aput p1, v3, p0

    .line 1152
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1153
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1155
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 1158
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v4, "Calculated Command ="

    :goto_0
    if-ge v5, p1, :cond_2

    if-ge v5, v0, :cond_1

    .line 1162
    aget v6, v3, v5

    aput v6, v2, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, -0x5

    .line 1164
    aget v6, p0, v6

    aput v6, v2, v5

    .line 1166
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1169
    :cond_2
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static operationToWriteSingleMiscEventLogRecord([I[I[I[I)[I
    .locals 7

    .line 1026
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    array-length v0, p1

    if-ne v0, v2, :cond_4

    array-length v0, p2

    if-ne v0, v2, :cond_4

    array-length v0, p3

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xf

    new-array v3, v0, [I

    const/16 v4, 0x24

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    .line 1034
    aget v6, p0, v4

    aput v6, v3, v4

    .line 1035
    aget p0, p0, v5

    aput p0, v3, v2

    const/4 p0, 0x3

    .line 1036
    aget v2, p1, v4

    aput v2, v3, p0

    const/4 p0, 0x4

    .line 1037
    aget p1, p1, v5

    aput p1, v3, p0

    const/4 p0, 0x5

    .line 1038
    aget p1, p2, v4

    aput p1, v3, p0

    const/4 p0, 0x6

    .line 1039
    aget p1, p2, v5

    aput p1, v3, p0

    const/4 p0, 0x7

    .line 1042
    array-length p1, p3

    sub-int/2addr p1, v4

    :goto_0
    if-ltz p1, :cond_1

    .line 1043
    aget p2, p3, p1

    aput p2, v3, p0

    add-int/2addr p0, v4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 1047
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1048
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1050
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 1053
    array-length p1, p0

    add-int/2addr p1, v0

    new-array p2, p1, [I

    const-string p3, "Calculated Command ="

    :goto_1
    if-ge v5, p1, :cond_3

    if-ge v5, v0, :cond_2

    .line 1057
    aget v2, v3, v5

    aput v2, p2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v5, -0xf

    .line 1059
    aget v2, p0, v2

    aput v2, p2, v5

    .line 1061
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    aget v2, p2, v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1064
    :cond_3
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_4
    :goto_3
    const-string p0, "Parameter length error!"

    .line 1028
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static operationToWriteTwoByteSerialFlashRegister([I[I)[I
    .locals 8

    .line 1213
    array-length v0, p0

    const-string v1, "COMMAND"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    array-length v0, p1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x6

    new-array v4, v0, [I

    const/16 v5, 0x2d

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 1220
    aget v5, p0, v3

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 1221
    aget v5, p0, v7

    aput v5, v4, v3

    .line 1222
    aget p0, p0, v6

    aput p0, v4, v2

    const/4 p0, 0x4

    .line 1223
    aget v2, p1, v6

    aput v2, v4, p0

    const/4 p0, 0x5

    .line 1224
    aget p1, p1, v7

    aput p1, v4, p0

    .line 1226
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result p0

    .line 1227
    invoke-static {p0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object p0

    .line 1229
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 1232
    array-length p1, p0

    add-int/2addr p1, v0

    new-array v2, p1, [I

    const-string v3, "Calculated Command ="

    :goto_0
    if-ge v6, p1, :cond_2

    if-ge v6, v0, :cond_1

    .line 1236
    aget v5, v4, v6

    aput v5, v2, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v6, -0x6

    .line 1238
    aget v5, p0, v5

    aput v5, v2, v6

    .line 1240
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1243
    :cond_2
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    :goto_2
    const-string p0, "Parameter length error!"

    .line 1214
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
