.class public Lcom/senseonics/bluetoothle/ResponseOperations;
.super Ljava/lang/Object;
.source "ResponseOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;
    }
.end annotation


# static fields
.field private static RESULT_OK:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x64

    aput v2, v0, v1

    .line 8
    sput-object v0, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkResponse([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;ILcom/senseonics/bluetoothle/BluetoothService;)Lcom/senseonics/bluetoothle/Response;
    .locals 2

    const/4 p3, 0x0

    .line 61
    aget v0, p0, p3

    if-ne p2, v0, :cond_0

    const-string p2, "CHECK CORRECTION"

    const-string v0, "Response ID good!"

    .line 62
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    .line 66
    :goto_0
    aget p3, p0, p3

    const/16 v0, 0x40

    if-lt p3, v0, :cond_1

    const/16 v0, 0x60

    if-ge p3, v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Push Response"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0x89

    const-string v1, "RESPONSE"

    if-eq p3, v0, :cond_c

    const/16 v0, 0x91

    if-eq p3, v0, :cond_b

    const/16 v0, 0x94

    if-eq p3, v0, :cond_a

    const/16 v0, 0x96

    if-eq p3, v0, :cond_9

    const/16 v0, 0x9b

    if-eq p3, v0, :cond_8

    const/16 v0, 0x9d

    if-eq p3, v0, :cond_7

    const/16 v0, 0xa7

    if-eq p3, v0, :cond_6

    const/16 v0, 0xac

    if-eq p3, v0, :cond_5

    const/16 v0, 0xb0

    if-eq p3, v0, :cond_4

    const/16 v0, 0xf4

    if-eq p3, v0, :cond_3

    const/16 v0, 0xf5

    if-eq p3, v0, :cond_2

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "Is response to WRITE SINGLE MISC EVENT LOG"

    .line 234
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isWriteSingleMiscEventLogRecordResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 236
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_1
    const-string p3, "Is response to READ FIRST N LAST MISC EVENT LOG"

    .line 224
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFirstAndLastMiscEventLogRecordNumbersResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 226
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadFirstAndLastMiscEventLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 228
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_2
    const-string p3, "Is response to READ SINGLE MISC EVENT LOG"

    .line 215
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleMiscEventLogResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 217
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleMiscEventLogResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 218
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_3
    const-string p1, "Is response to SET TRM DATE N TIME"

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isSetCurrentTrasmitterDateAndTimeResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 115
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_4
    const-string p3, "Is response to READ ALL AV. SENSORS"

    .line 103
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadAllAvailableSensorsResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 106
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadAllAvailableSensorsResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 107
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_5
    const-string p1, "Is response to START SELF TEST SEQ"

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isStartSelfTestSequenceResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 97
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_6
    const-string p1, "Is response to CLEAR ERROR FLAGS"

    .line 87
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isClearErrorFlagsResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 89
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :pswitch_7
    const-string p1, "Is response to RESET TRM"

    .line 79
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isResetTransmitterResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 81
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_2
    const-string p3, "Is response to CHANGE TIMING PARAMS"

    .line 134
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isChangeTimingParametersResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 136
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseChangeTimingParametersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 137
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_3
    const-string p1, "Is response to DISCONNECT N SAVE BLE BONDING INFO"

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isDisconnectBLESavingBondingInformationResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 128
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_4
    const-string p3, "Is response to READ N BYTE REGISTER"

    .line 267
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadNByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 269
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadNByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 270
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_5
    const-string p3, "Is response to READ TWO BYTE REGISTER"

    .line 257
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadTwoByteSerialFlashRegisterResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 259
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadTwoByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 261
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_6
    const-string p3, "Is response to READ FIRST N LAST ERROR LOG REC. NUMBERS"

    .line 244
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadFirstAndLastErrorLogRecordNumbersResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 247
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadFirstAndLastErrorLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 249
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_7
    const-string p3, "Is response to MARK PATIENT EVENT RECORD AS DELETED"

    .line 202
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isMarkPatientEventRecordAsDeletedResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 205
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseMarkPatientEventRecordAsDeletedResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 207
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_8
    const-string p3, "Is response to READ SINGLE PATIENT EVENT"

    .line 193
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSinglePatientEventResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 195
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSinglePatientEventResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 196
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_9
    const-string p3, "Is response to READ SINGLE BLOOD GLUCOSE DATA RECORD"

    .line 180
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleBloodGlucoseDataRecordResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 183
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleBloodGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 185
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_a
    const-string p1, "Is response to ASSERT SNOOZE AGAINST ALARM"

    .line 170
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 172
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "messagecode"

    .line 171
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isAssertSnoozeAgainsAlarmResponseCorrect([I)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 174
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_b
    const-string p3, "Is response to READ SINGLE SENSOR GLUCOSE ALERT RECORD"

    .line 159
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleSensorGlucoseAlertRecordResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 162
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleSensorGlucoseAlertRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 164
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_c
    const-string p3, "Is response to READ SINGLE SENSOR GLUCOSE RECORD"

    .line 146
    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p0}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSingleSensorGlucoseDataRecordResponseCorrect([I)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 149
    invoke-static {p0, p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->parseReadSingleSensorGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V

    .line 151
    new-instance p0, Lcom/senseonics/bluetoothle/Response;

    sget-object p1, Lcom/senseonics/bluetoothle/ResponseOperations;->RESULT_OK:[I

    invoke-direct {p0, p2, p1}, Lcom/senseonics/bluetoothle/Response;-><init>(Z[I)V

    return-object p0

    :cond_d
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isAssertSnoozeAgainsAlarmResponseCorrect([I)Z
    .locals 6

    .line 910
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "ReadAllSensorGlucoseAlertsInSpecifiedRangeResponse length not good!"

    .line 911
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 916
    aget v4, p0, v2

    aput v4, v3, v2

    .line 918
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 919
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 921
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "ReadAllSensorGlucoseAlertsInSpecifiedRangeResponse CRC not matching"

    .line 922
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isChangeTimingParametersResponseCorrect([I)Z
    .locals 6

    .line 588
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string p0, "ChangeTimingParametersResponse length not good!"

    .line 589
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 594
    aget v4, p0, v2

    aput v4, v3, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aput v5, v3, v4

    .line 596
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 597
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 599
    aget v5, v3, v2

    aget v0, p0, v0

    if-ne v5, v0, :cond_2

    aget v0, v3, v4

    const/4 v3, 0x3

    aget p0, p0, v3

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const-string p0, "ChangeTimingParametersResponse CRC not matching"

    .line 600
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isClearErrorFlagsResponseCorrect([I)Z
    .locals 6

    .line 375
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "ClearErrorFlagsResponse length not good!"

    .line 376
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 381
    aget v4, p0, v2

    aput v4, v3, v2

    .line 383
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 384
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 386
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "ClearErrorFlagsResponse CRC not matching"

    .line 387
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isDisconnectBLESavingBondingInformationResponseCorrect([I)Z
    .locals 6

    .line 559
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "DisconnectBLESavingBondingInformationResponse length not good!"

    .line 560
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 565
    aget v4, p0, v2

    aput v4, v3, v2

    .line 567
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 568
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 570
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "DisconnectBLESavingBondingInformationResponse CRC not matching"

    .line 571
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isLinkTransmitterWithSensorResponseCorrect([I)Z
    .locals 6

    .line 321
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "LinkTransmitterWithSensorResponse length not good!"

    .line 322
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 327
    aget v4, p0, v2

    aput v4, v3, v2

    .line 329
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 330
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 332
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "LinkTransmitterWithSensorResponsee CRC not matching"

    .line 333
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isMarkPatientEventRecordAsDeletedResponseCorrect([I)Z
    .locals 6

    .line 1152
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSinglePatientEventResponse length not good!"

    .line 1153
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x3

    new-array v3, v0, [I

    move v4, v2

    .line 1160
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 1161
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1165
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1167
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x4

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSinglePatientEventResponse CRC not matching"

    .line 1168
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isPingResponseCorrect([I)Z
    .locals 6

    .line 292
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    const-string p0, "PingResponse length not good!"

    .line 293
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0xd

    new-array v3, v0, [I

    move v4, v2

    .line 299
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 300
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 303
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 304
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 306
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0xe

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "PingResponse CRC not matching"

    .line 307
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadAllAvailableSensorsResponseCorrect([I)Z
    .locals 5

    .line 429
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_2

    .line 434
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [I

    move v3, v2

    .line 435
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 436
    aget v4, p0, v3

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    :cond_1
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v0

    .line 440
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v0

    .line 442
    aget v3, v0, v2

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget v4, p0, v4

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget v0, v0, v3

    array-length v4, p0

    sub-int/2addr v4, v3

    aget p0, p0, v4

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    const-string p0, "StartSelfTestSequenceResponse CRC not matching"

    .line 444
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    :goto_2
    const-string p0, "ReadAllSensorsResponse length not good!"

    .line 430
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadAllSensorGlucoseAlertsInSpecifiedRangeResponseCorrect([I)Z
    .locals 5

    .line 879
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xe

    new-array v2, v0, [I

    move v3, v1

    .line 887
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 888
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 891
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 892
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 894
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0xf

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadAllSensorGlucoseAlertsInSpecifiedRangeResponse CRC not matching"

    .line 895
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isReadAllSensorGlucoseDataRecordResponseCorrect([I)Z
    .locals 6

    .line 704
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const-string p0, "ReadAllSensorGlucoseDataRecordResponse length not good!"

    .line 705
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0xb

    new-array v3, v0, [I

    move v4, v2

    .line 712
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 713
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 716
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 717
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 719
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0xc

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadAllSensorGlucoseDataRecordResponse CRC not matching"

    .line 720
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadCurrentTrasmitterDateAndTimeResponseCorrect([I)Z
    .locals 6

    .line 495
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const-string p0, "ReadCurrentTrasmitterDateAndTimeResponse length not good!"

    .line 496
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0x8

    new-array v3, v0, [I

    move v4, v2

    .line 503
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 504
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 508
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 510
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0x9

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadCurrentTrasmitterDateAndTimeResponse CRC not matching"

    .line 511
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadFirstAndLastBloodGlucoseDataRecordNumbersResponseCorrect([I)Z
    .locals 6

    .line 1017
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const-string p0, "ReadFirstAndLastBloodGlucoseDataRecordNumbersResponse length not good!"

    .line 1018
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    move v4, v2

    .line 1025
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 1026
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1029
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1030
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1032
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x6

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadFirstAndLastBloodGlucoseDataRecordNumbersResponse CRC not matching"

    .line 1033
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadFirstAndLastErrorLogRecordNumbersResponseCorrect([I)Z
    .locals 6

    .line 1320
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const-string p0, "ReadFirstAndLastErrorLogRecordNumbersResponse length not good!"

    .line 1321
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    move v4, v2

    .line 1328
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 1329
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1332
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1333
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1335
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x6

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadFirstAndLastErrorLogRecordNumbersResponse CRC not matching"

    .line 1336
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadFirstAndLastMiscEventLogRecordNumbersResponseCorrect([I)Z
    .locals 6

    .line 1245
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const-string p0, "ReadFirstAndLastMiscEventLogRecordNumbersResponse length not good!"

    .line 1246
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    move v4, v2

    .line 1253
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 1254
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1257
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1258
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1260
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x6

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadFirstAndLastMiscEventLogRecordNumbersResponse CRC not matching"

    .line 1261
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadFirstAndLastSensorGlucoseAlertRecordNumbersResponseCorrect([I)Z
    .locals 6

    .line 848
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const-string p0, "ReadFirstAndLastSensorGlucoseAlertRecordNumbersResponse length not good!"

    .line 849
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    move v4, v2

    .line 856
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 857
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 860
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 861
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 863
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x6

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadFirstAndLastSensorGlucoseAlertRecordNumbersResponse CRC not matching"

    .line 864
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadFirstAndLastSensorGlucoseRecordNumbersResponseCorrect([I)Z
    .locals 6

    .line 735
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const-string p0, "ReadFirstAndLastSensorGlucoseRecordNumbersResponse length not good!"

    .line 736
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x7

    new-array v3, v0, [I

    move v4, v2

    .line 743
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 744
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 747
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 748
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 750
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0x8

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadFirstAndLastSensorGlucoseRecordNumbersResponse CRC not matching"

    .line 751
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadFourByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1454
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadFourByteSerialFlashRegisterResponse length not good!"

    .line 1455
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 1460
    aget v3, p0, v1

    aput v3, v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aput v4, v2, v3

    const/4 v4, 0x2

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x3

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x4

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x5

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x6

    aget v5, p0, v4

    aput v5, v2, v4

    const/4 v4, 0x7

    aget v5, p0, v4

    aput v5, v2, v4

    .line 1463
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1464
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1466
    aget v4, v2, v1

    aget v0, p0, v0

    if-ne v4, v0, :cond_2

    aget v0, v2, v3

    const/16 v2, 0x9

    aget p0, p0, v2

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1
.end method

.method public static isReadLogOfBloodGlucoseDataInSpecifiedRangeResponseCorrect([I)Z
    .locals 5

    .line 1048
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xf

    new-array v2, v0, [I

    move v3, v1

    .line 1056
    :goto_0
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_1

    .line 1057
    aget v4, p0, v3

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 1061
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 1063
    aget v3, v2, v1

    aget v0, p0, v0

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    aget v2, v2, v0

    const/16 v3, 0x10

    aget p0, p0, v3

    if-eq v2, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadLogOfBloodGlucoseDataInSpecifiedRangeResponse CRC not matching"

    .line 1064
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isReadNByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    const/4 v0, 0x4

    .line 1536
    aget v0, p0, v0

    const/4 v1, 0x5

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x6

    .line 1538
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 1541
    aget v5, p0, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1544
    :cond_0
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v1

    .line 1545
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v1

    .line 1547
    aget v2, v1, v3

    add-int/lit8 v4, v0, 0x7

    aget v4, p0, v4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit8 v0, v0, 0x8

    aget p0, p0, v0

    if-eq v1, p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    const-string p0, "CHECK CORRECTION"

    const-string v0, "ReadNByteSerialFlashRegisterResponse CRC not good!"

    .line 1548
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isReadSensorGlucoseAlertsAndStatusResponseCorrect([I)Z
    .locals 7

    .line 767
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    const-string p0, "ReadSensorGlucoseAlertsAndStatusResponse length not good!"

    .line 770
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    add-int/lit8 v3, v0, -0x2

    .line 774
    new-array v4, v3, [I

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_1

    .line 777
    aget v6, p0, v5

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 780
    :cond_1
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v4

    .line 781
    invoke-static {v4}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v4

    .line 783
    aget v5, v4, v2

    aget v3, p0, v3

    if-ne v5, v3, :cond_3

    const/4 v3, 0x1

    aget v4, v4, v3

    sub-int/2addr v0, v3

    aget p0, p0, v0

    if-eq v4, p0, :cond_2

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    :goto_1
    const-string p0, "ReadSensorGlucoseAlertsAndStatusResponse CRC not matching"

    .line 784
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadSensorGlucoseResponseCorrect([I)Z
    .locals 6

    .line 624
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x14

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSensorGlucoseResponse length not good!"

    .line 625
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0x12

    new-array v3, v0, [I

    move v4, v2

    .line 632
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 633
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 636
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 637
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 639
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0x13

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSensorGlucoseResponse CRC not matching"

    .line 640
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadSingleBloodGlucoseDataRecordResponseCorrect([I)Z
    .locals 6

    .line 967
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSingleBloodGlucoseDataRecordResponse length not good!"

    .line 968
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0xf

    new-array v3, v0, [I

    move v4, v2

    .line 975
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 976
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 979
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 980
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 982
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0x10

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSingleBloodGlucoseDataRecordResponse CRC not matching"

    .line 983
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadSingleByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 7

    .line 1364
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSingleByteSerialFlashRegisterResponse length not good!"

    .line 1365
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    .line 1370
    aget v4, p0, v2

    aput v4, v3, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aput v5, v3, v4

    const/4 v5, 0x2

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x3

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x4

    aget v6, p0, v5

    aput v6, v3, v5

    .line 1373
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1374
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1376
    aget v5, v3, v2

    aget v0, p0, v0

    if-ne v5, v0, :cond_2

    aget v0, v3, v4

    const/4 v3, 0x6

    aget p0, p0, v3

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const-string p0, "ReadSingleByteSerialFlashRegisterResponse CRC not matching"

    .line 1377
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadSingleMiscEventLogResponseCorrect([I)Z
    .locals 6

    .line 1194
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSingleMiscEventLogResponse length not good!"

    .line 1195
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0x11

    new-array v3, v0, [I

    move v4, v2

    .line 1202
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 1203
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1206
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1207
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1209
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0x12

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSingleMiscEventLogResponse CRC not matching"

    .line 1210
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadSinglePatientEventResponseCorrect([I)Z
    .locals 6

    .line 1105
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSinglePatientEventResponse length not good!"

    .line 1106
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0xd

    new-array v3, v0, [I

    move v4, v2

    .line 1113
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 1114
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1118
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1120
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0xe

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSinglePatientEventResponse CRC not matching"

    .line 1121
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadSingleSensorGlucoseAlertRecordResponseCorrect([I)Z
    .locals 6

    .line 799
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSingleSensorGlucoseAlertRecordResponse length not good!"

    .line 800
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0xe

    new-array v3, v0, [I

    move v4, v2

    .line 807
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 808
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 811
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 812
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 814
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0xf

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSingleSensorGlucoseAlertRecordResponse CRC not matching"

    .line 815
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isReadSingleSensorGlucoseDataRecordResponseCorrect([I)Z
    .locals 6

    .line 655
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const-string p0, "ReadSingleSensorGlucoseDataRecordResponse length not good!"

    .line 656
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0xb

    new-array v3, v0, [I

    move v4, v2

    .line 663
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, -0x2

    if-ge v4, v5, :cond_1

    .line 664
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 667
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 668
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 670
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/16 v4, 0xc

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "ReadSingleSensorGlucoseDataRecordResponse CRC not matching"

    .line 671
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isReadTwoByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 7

    .line 1418
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const-string p0, "ReadTwoByteSerialFlashRegisterResponse length not good!"

    .line 1419
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x6

    new-array v3, v0, [I

    .line 1424
    aget v4, p0, v2

    aput v4, v3, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aput v5, v3, v4

    const/4 v5, 0x2

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x3

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x4

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x5

    aget v6, p0, v5

    aput v6, v3, v5

    .line 1427
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1428
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1430
    aget v5, v3, v2

    aget v0, p0, v0

    if-ne v5, v0, :cond_2

    aget v0, v3, v4

    const/4 v3, 0x7

    aget p0, p0, v3

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const-string p0, "ReadTwoByteSerialFlashRegisterResponse CRC not matching"

    .line 1431
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isResetTransmitterResponseCorrect([I)Z
    .locals 6

    .line 347
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "ResetTransmitterResponse length not good!"

    .line 348
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 353
    aget v4, p0, v2

    aput v4, v3, v2

    .line 355
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 356
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 358
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "ResetTransmitterResponse CRC not matching"

    .line 359
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isSaveBLEBondingInformationResponseCorrect([I)Z
    .locals 6

    const/4 v0, 0x0

    .line 526
    aget v1, p0, v0

    const/16 v2, 0xe9

    if-eq v2, v1, :cond_0

    return v0

    .line 530
    :cond_0
    array-length v1, p0

    const/4 v2, 0x3

    const-string v3, "CHECK CORRECTION"

    if-eq v1, v2, :cond_1

    const-string p0, "SaveBLEBondingInformationResponse length not good!"

    .line 531
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 536
    aget v4, p0, v0

    aput v4, v2, v0

    .line 538
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 539
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 541
    aget v4, v2, v0

    aget v5, p0, v1

    if-ne v4, v5, :cond_3

    aget v2, v2, v1

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v2, p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p0, "SaveBLEBondingInformationResponse CRC not matching"

    .line 542
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSendBloodGlucoseDataResponseCorrect([I)Z
    .locals 6

    .line 940
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string p0, "SendBloodGlucoseDataResponse length not good!"

    .line 941
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [I

    .line 946
    aget v4, p0, v2

    aput v4, v3, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aput v5, v3, v4

    .line 948
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 949
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 951
    aget v5, v3, v2

    aget v0, p0, v0

    if-ne v5, v0, :cond_2

    aget v0, v3, v4

    const/4 v3, 0x3

    aget p0, p0, v3

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const-string p0, "SendBloodGlucoseDataResponse CRC not matching"

    .line 952
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isSetCurrentTrasmitterDateAndTimeResponseCorrect([I)Z
    .locals 5

    .line 468
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const-string p0, "CHECK CORRECTION"

    const-string v0, "SetCurrentTrasmitterDateAndTimeResponse length not good!"

    .line 469
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 474
    aget v3, p0, v1

    aput v3, v2, v1

    .line 476
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v2

    .line 477
    invoke-static {v2}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v2

    .line 479
    aget v3, v2, v1

    aget v4, p0, v0

    if-ne v3, v4, :cond_2

    aget v2, v2, v0

    const/4 v3, 0x2

    aget p0, p0, v3

    if-eq v2, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private static isStartSelfTestSequenceResponseCorrect([I)Z
    .locals 6

    .line 403
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "StartSelfTestSequenceResponse length not good!"

    .line 404
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 409
    aget v4, p0, v2

    aput v4, v3, v2

    .line 411
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 412
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 414
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "StartSelfTestSequenceResponse CRC not matching"

    .line 415
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isTestCommandResponseCorrect([I)Z
    .locals 5

    .line 1574
    array-length v0, p0

    add-int/lit8 v1, v0, -0x2

    const/4 v2, 0x0

    .line 1575
    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    .line 1577
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1578
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1580
    aget v4, v3, v2

    aget v1, p0, v1

    if-ne v4, v1, :cond_1

    const/4 v1, 0x1

    aget v3, v3, v1

    sub-int/2addr v0, v1

    aget p0, p0, v0

    if-eq v3, p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method public static isWriteFourByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 7

    .line 1479
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const-string p0, "WriteFourByteSerialFlashRegisterResponse length not good!"

    .line 1480
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/16 v0, 0x8

    new-array v3, v0, [I

    .line 1485
    aget v4, p0, v2

    aput v4, v3, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aput v5, v3, v4

    const/4 v5, 0x2

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x3

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x4

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x5

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x6

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x7

    aget v6, p0, v5

    aput v6, v3, v5

    .line 1488
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1489
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1491
    aget v5, v3, v2

    aget v0, p0, v0

    if-ne v5, v0, :cond_2

    aget v0, v3, v4

    const/16 v3, 0x9

    aget p0, p0, v3

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const-string p0, "WriteFourByteSerialFlashRegisterResponse CRC not good!"

    .line 1492
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isWriteNByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 6

    .line 1506
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    const-string p0, "WriteNByteSerialFlashRegisterResponse length not good!"

    .line 1507
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x6

    new-array v3, v0, [I

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1515
    aget v5, p0, v4

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1519
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1521
    aget v4, v3, v2

    aget v0, p0, v0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x1

    aget v3, v3, v0

    const/4 v4, 0x7

    aget p0, p0, v4

    if-eq v3, p0, :cond_2

    goto :goto_1

    :cond_2
    return v0

    :cond_3
    :goto_1
    const-string p0, "WriteNByteSerialFlashRegisterResponse CRC not good!"

    .line 1522
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isWritePatientEventResponseCorrect([I)Z
    .locals 6

    .line 1078
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "WritePatientEventResponse length not good!"

    .line 1079
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 1084
    aget v4, p0, v2

    aput v4, v3, v2

    .line 1086
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1087
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1089
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "WritePatientEventResponse CRC not matching"

    .line 1090
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isWriteSingleByteSerialFlashRegisterResponseCorrect([I)Z
    .locals 7

    .line 1391
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const-string p0, "WriteSingleByteSerialFlashRegisterResponse length not good!"

    .line 1392
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x5

    new-array v3, v0, [I

    .line 1397
    aget v4, p0, v2

    aput v4, v3, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    aput v5, v3, v4

    const/4 v5, 0x2

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x3

    aget v6, p0, v5

    aput v6, v3, v5

    const/4 v5, 0x4

    aget v6, p0, v5

    aput v6, v3, v5

    .line 1400
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1401
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1403
    aget v5, v3, v2

    aget v0, p0, v0

    if-ne v5, v0, :cond_2

    aget v0, v3, v4

    const/4 v3, 0x6

    aget p0, p0, v3

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    const-string p0, "WriteSingleByteSerialFlashRegisterResponse CRC not matching"

    .line 1404
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isWriteSingleMiscEventLogRecordResponseCorrect([I)Z
    .locals 6

    .line 1289
    array-length v0, p0

    const-string v1, "CHECK CORRECTION"

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const-string p0, "WriteSingleMiscEventLogRecordResponse length not good!"

    .line 1290
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 1295
    aget v4, p0, v2

    aput v4, v3, v2

    .line 1297
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->GenerateChecksumCRC16([I)I

    move-result v3

    .line 1298
    invoke-static {v3}, Lcom/senseonics/bluetoothle/BinaryOperations;->data16BitsFromIntLSByteFirst(I)[I

    move-result-object v3

    .line 1300
    aget v4, v3, v2

    aget v5, p0, v0

    if-ne v4, v5, :cond_2

    aget v3, v3, v0

    const/4 v4, 0x2

    aget p0, p0, v4

    if-eq v3, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string p0, "WriteSingleMiscEventLogRecordResponse CRC not matching"

    .line 1301
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static parseChangeTimingParametersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 1

    const/4 v0, 0x1

    .line 613
    aget p0, p0, v0

    .line 614
    invoke-interface {p1, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedChangeTimingParametersResponse(I)V

    return-void
.end method

.method private static parseMarkPatientEventRecordAsDeletedResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 2

    const/4 v0, 0x1

    .line 1182
    aget v0, p0, v0

    const/4 v1, 0x2

    aget p0, p0, v1

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 1184
    invoke-interface {p1, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedMarkPatientEventRecordAsDeletedResponse(I)V

    return-void
.end method

.method private static parseReadAllAvailableSensorsResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 3

    .line 455
    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p0, v0

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "response ------"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static parseReadFirstAndLastErrorLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 3

    const/4 v0, 0x1

    .line 1350
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 1351
    aget v1, p0, v1

    const/4 v2, 0x4

    aget p0, p0, v2

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    .line 1353
    invoke-interface {p1, v0, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadFirstAndLastErrorLogRecordNumbersResponse(II)V

    return-void
.end method

.method private static parseReadFirstAndLastMiscEventLogRecordNumbersResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 3

    const/4 v0, 0x1

    .line 1275
    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    .line 1276
    aget v1, p0, v1

    const/4 v2, 0x4

    aget p0, p0, v2

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v1

    .line 1278
    invoke-interface {p1, v0, p0}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadFirstAndLastMiscEventLogRecordNumbersResponse(II)V

    return-void
.end method

.method private static parseReadNByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 1561
    aget v3, p0, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x2

    aget v5, p0, v3

    aput v5, v1, v2

    aget v0, p0, v0

    aput v0, v1, v3

    const/4 v0, 0x4

    .line 1562
    aget v0, p0, v0

    const/4 v2, 0x5

    aget v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 1563
    new-array v2, v0, [I

    :goto_0
    if-gt v4, v0, :cond_0

    add-int/lit8 v3, v4, 0x6

    .line 1566
    aget v3, p0, v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1569
    :cond_0
    invoke-interface {p1, v1, v0, v2}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadNByteSerialFlashRegisterResponse([II[I)V

    return-void
.end method

.method private static parseReadSingleBloodGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 13

    const/4 v0, 0x1

    .line 997
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v7, v2, [I

    const/4 v1, 0x3

    .line 998
    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    new-array v8, v2, [I

    const/4 v1, 0x5

    .line 999
    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 1000
    aget v0, p0, v0

    aget v1, p0, v4

    shl-int/2addr v1, v4

    or-int v9, v0, v1

    const/16 v0, 0x9

    .line 1001
    aget v0, p0, v0

    const/16 v1, 0xa

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v0, 0xb

    .line 1002
    aget v11, p0, v0

    const/16 v0, 0xc

    .line 1003
    aget v0, p0, v0

    const/16 v1, 0xd

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int/2addr v0, v1

    const/16 v1, 0xe

    aget p0, p0, v1

    shl-int/lit8 p0, p0, 0x10

    or-int v12, v0, p0

    move-object v5, p1

    .line 1006
    invoke-interface/range {v5 .. v12}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleBloodGlucoseDataRecordResponse(I[I[IIIII)V

    return-void
.end method

.method private static parseReadSingleMiscEventLogResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 11

    const/4 v0, 0x1

    .line 1224
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v7, v2, [I

    const/4 v1, 0x3

    .line 1225
    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    new-array v8, v2, [I

    const/4 v1, 0x5

    .line 1226
    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 1227
    aget v0, p0, v0

    aget v1, p0, v4

    shl-int/2addr v1, v4

    or-int v9, v0, v1

    new-array v10, v4, [I

    :goto_0
    if-gt v3, v4, :cond_0

    add-int/lit8 v0, v3, 0x9

    .line 1231
    aget v0, p0, v0

    aput v0, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v5, p1

    .line 1234
    invoke-interface/range {v5 .. v10}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleMiscEventLogResponse(I[I[II[I)V

    return-void
.end method

.method private static parseReadSinglePatientEventResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 13

    const/4 v0, 0x1

    .line 1135
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v7, v2, [I

    const/4 v1, 0x3

    .line 1136
    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    new-array v8, v2, [I

    const/4 v1, 0x5

    .line 1137
    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 1138
    aget v9, p0, v0

    .line 1139
    aget v0, p0, v4

    const/16 v1, 0x9

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v0, 0xa

    .line 1140
    aget v0, p0, v0

    const/16 v1, 0xb

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v11, v0, v1

    const/16 v0, 0xc

    .line 1141
    aget v12, p0, v0

    move-object v5, p1

    .line 1143
    invoke-interface/range {v5 .. v12}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSinglePatientEventResponse(I[I[IIIII)V

    return-void
.end method

.method private static parseReadSingleSensorGlucoseAlertRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 13

    const/4 v0, 0x1

    .line 828
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v7, v2, [I

    const/4 v1, 0x3

    .line 829
    aget v1, p0, v1

    const/4 v3, 0x0

    aput v1, v7, v3

    const/4 v1, 0x4

    aget v1, p0, v1

    aput v1, v7, v0

    new-array v8, v2, [I

    const/4 v1, 0x5

    .line 830
    aget v1, p0, v1

    aput v1, v8, v3

    const/4 v1, 0x6

    aget v1, p0, v1

    aput v1, v8, v0

    const/4 v0, 0x7

    .line 831
    aget v9, p0, v0

    .line 832
    aget v0, p0, v4

    const/16 v1, 0x9

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v10, v0, v1

    const/16 v0, 0xa

    .line 833
    aget v0, p0, v0

    const/16 v1, 0xb

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v11, v0, v1

    const/16 v0, 0xc

    .line 834
    aget v0, p0, v0

    const/16 v1, 0xd

    aget p0, p0, v1

    shl-int/2addr p0, v4

    or-int v12, v0, p0

    move-object v5, p1

    .line 836
    invoke-interface/range {v5 .. v12}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleSensorGlucoseAlertRecordResponse(I[I[IIIII)V

    return-void
.end method

.method private static parseReadSingleSensorGlucoseDataRecordResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 11

    const/4 v0, 0x1

    .line 684
    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p0, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget v3, p0, v3

    shl-int/lit8 v3, v3, 0x10

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x4

    .line 686
    aget v3, p0, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x5

    aget v3, p0, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x6

    .line 688
    aget v2, p0, v2

    aput v2, v1, v5

    const/4 v2, 0x7

    aget v2, p0, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    .line 690
    aget v0, p0, v4

    const/16 v1, 0x9

    aget v1, p0, v1

    shl-int/2addr v1, v4

    or-int v9, v0, v1

    const/16 v0, 0xa

    .line 691
    aget v10, p0, v0

    move-object v5, p1

    .line 693
    invoke-interface/range {v5 .. v10}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadSingleSensorGlucoseDataRecordResponseData(I[I[III)V

    return-void
.end method

.method private static parseReadTwoByteSerialFlashRegisterResponseData([ILcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x4

    .line 1444
    aget v2, p0, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x3

    new-array v5, v2, [I

    .line 1445
    aget v2, p0, v2

    aput v2, v5, v3

    aget v2, p0, v0

    aput v2, v5, v4

    aget p0, p0, v4

    aput p0, v5, v0

    .line 1446
    invoke-interface {p1, v1, v5}, Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;->parsedReadTwoByteSerialFlashRegisterResponse([I[I)V

    return-void
.end method
