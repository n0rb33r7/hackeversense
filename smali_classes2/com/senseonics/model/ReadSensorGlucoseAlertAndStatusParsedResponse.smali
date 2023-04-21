.class public Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;
.super Ljava/lang/Object;
.source "ReadSensorGlucoseAlertAndStatusParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# static fields
.field public static STATUS_FLAGS_COUNT:I = 0xd


# instance fields
.field private messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/gen12androidapp/MessageCoder;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 36
    array-length v3, v1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    const/4 v5, 0x1

    invoke-static {v1, v5, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 37
    sget v3, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->STATUS_FLAGS_COUNT:I

    const/4 v6, 0x0

    invoke-static {v1, v3, v6}, Lcom/senseonics/util/Utils;->expandIntArrayToSize([III)[I

    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSensorGlucoseAlertStatus([I)V

    .line 41
    aget v3, v1, v6

    .line 42
    aget v6, v1, v5

    .line 43
    aget v4, v1, v4

    const/4 v7, 0x3

    .line 44
    aget v7, v1, v7

    const/4 v8, 0x4

    .line 45
    aget v8, v1, v8

    const/4 v9, 0x5

    .line 46
    aget v9, v1, v9

    const/4 v10, 0x6

    .line 47
    aget v10, v1, v10

    const/4 v11, 0x7

    .line 48
    aget v11, v1, v11

    const/16 v12, 0x8

    .line 49
    aget v12, v1, v12

    const/16 v13, 0x9

    .line 50
    aget v13, v1, v13

    const/16 v14, 0xa

    .line 51
    aget v14, v1, v14

    const/16 v15, 0xb

    .line 52
    aget v15, v1, v15

    const/16 v16, 0xc

    .line 53
    aget v1, v1, v16

    const-string v5, "ReadSensorGlucoseAlertAndStatusParsedResponse"

    if-nez v3, :cond_0

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    if-nez v10, :cond_0

    if-nez v11, :cond_0

    if-nez v12, :cond_0

    if-nez v13, :cond_0

    if-nez v14, :cond_0

    if-nez v15, :cond_0

    if-nez v1, :cond_0

    const-string v1, "read alert: NO alarm active"

    .line 69
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    return-void

    .line 76
    :cond_0
    sget-object v17, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p1, v1

    const-string v1, "BEFORE read alert: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_1

    .line 81
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v12}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterStatusAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_1
    if-eqz v7, :cond_2

    .line 88
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 89
    invoke-virtual {v1, v7}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForPredictiveAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_2
    if-eqz v4, :cond_3

    .line 96
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 97
    invoke-virtual {v1, v4}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForRateAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_3
    if-eqz v13, :cond_4

    .line 104
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 105
    invoke-virtual {v1, v13}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterBatteryAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_4
    if-eqz v9, :cond_5

    .line 112
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 113
    invoke-virtual {v1, v9}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_5
    if-eqz v10, :cond_6

    .line 120
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 121
    invoke-virtual {v1, v10}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 123
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_6
    if-eqz v11, :cond_7

    .line 128
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 129
    invoke-virtual {v1, v11}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorCalibrationFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 131
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_7
    if-eqz v8, :cond_8

    .line 136
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 137
    invoke-virtual {v1, v8}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorHardwareAndAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 139
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_8
    if-eqz v3, :cond_9

    .line 144
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 145
    invoke-virtual {v1, v3}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlarmFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 147
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_9
    if-eqz v6, :cond_a

    .line 152
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 153
    invoke-virtual {v1, v6}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForGlucoseLevelAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 155
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_a
    if-eqz v14, :cond_b

    .line 160
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 161
    invoke-virtual {v1, v14}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 163
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_b
    if-eqz v15, :cond_c

    .line 168
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    .line 169
    invoke-virtual {v1, v15}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags2(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 171
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    :cond_c
    if-eqz p1, :cond_d

    .line 176
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    move/from16 v2, p1

    .line 177
    invoke-virtual {v1, v2}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForCalibrationSwitchFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 179
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v17

    .line 189
    :cond_d
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v14}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForTransmitterEOLAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_e

    .line 190
    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_e

    .line 191
    sget-object v17, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL396:Lcom/senseonics/util/TransmitterMessageCode;

    .line 195
    :cond_e
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v9}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_f

    .line 196
    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_f

    .line 197
    sget-object v17, Lcom/senseonics/util/TransmitterMessageCode;->MSPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 201
    :cond_f
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v9}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReadAlertFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_10

    .line 202
    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_10

    .line 203
    sget-object v17, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 208
    :cond_10
    iget-object v1, v0, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->messageCoder:Lcom/senseonics/gen12androidapp/MessageCoder;

    invoke-virtual {v1, v10}, Lcom/senseonics/gen12androidapp/MessageCoder;->messageCodeForSensorReplacementFlags(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_11

    .line 209
    invoke-virtual/range {v17 .. v17}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_11

    .line 210
    sget-object v17, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :cond_11
    move-object/from16 v2, p2

    move-object/from16 v1, v17

    .line 214
    invoke-virtual {v2, v1}, Lcom/senseonics/model/TransmitterStateModel;->setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSensorGlucoseAlertsAndStatusResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x90

    return v0
.end method
