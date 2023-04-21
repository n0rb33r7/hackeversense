.class public Lcom/senseonics/model/GlucoseLevelParsedResponse;
.super Ljava/lang/Object;
.source "GlucoseLevelParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/ParsedResponse;


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 29
    iput-object p2, p0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method public apply([ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    .line 45
    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    const/4 v5, 0x3

    aget v5, p1, v5

    const/16 v7, 0x10

    shl-int/2addr v5, v7

    or-int/2addr v3, v5

    new-array v5, v4, [I

    const/4 v15, 0x4

    .line 46
    aget v8, p1, v15

    const/16 v17, 0x0

    aput v8, v5, v17

    const/4 v8, 0x5

    aget v8, p1, v8

    aput v8, v5, v2

    .line 47
    invoke-static {v5}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v5

    new-array v8, v4, [I

    const/4 v9, 0x6

    .line 48
    aget v9, p1, v9

    aput v9, v8, v17

    const/4 v9, 0x7

    aget v9, p1, v9

    aput v9, v8, v2

    .line 49
    invoke-static {v8}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    .line 50
    aget v9, p1, v6

    const/16 v9, 0x9

    .line 51
    aget v9, p1, v9

    const/16 v10, 0xa

    aget v10, p1, v10

    shl-int/2addr v10, v6

    or-int v14, v9, v10

    const/16 v9, 0xb

    .line 52
    aget v9, p1, v9

    const/16 v9, 0xc

    aget v9, p1, v9

    const/16 v9, 0xd

    .line 53
    aget v13, p1, v9

    const/16 v9, 0xe

    .line 54
    aget v9, p1, v9

    const/16 v9, 0xf

    .line 55
    aget v9, p1, v9

    .line 56
    aget v9, p1, v7

    const/16 v9, 0x11

    aget v9, p1, v9

    .line 58
    aget v9, v5, v17

    .line 59
    aget v9, v5, v2

    .line 60
    aget v9, v5, v4

    .line 61
    aget v9, v8, v17

    .line 62
    aget v9, v8, v2

    .line 63
    aget v9, v8, v4

    .line 65
    invoke-static {v5, v8}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 70
    iget-object v8, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v8, v9, v10, v3}, Lcom/senseonics/db/DatabaseManager;->allowAddingGlucoseReading(JI)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getAccelValues()S

    move-result v16

    .line 74
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getAccelTemp()S

    move-result v18

    .line 78
    iget-object v12, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v11, Lcom/senseonics/graph/util/Glucose;

    const/16 v19, -0x1

    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getRawDataValues()[I

    move-result-object v20

    move-object v8, v11

    move-object v7, v11

    move v11, v14

    move-object v6, v12

    move/from16 v12, v19

    move v4, v13

    move v13, v3

    move/from16 v21, v14

    move-object/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v8 .. v16}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII[ISS)V

    invoke-virtual {v6, v7}, Lcom/senseonics/db/DatabaseManager;->addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V

    move v6, v2

    goto :goto_0

    :cond_0
    move v4, v13

    move/from16 v21, v14

    move/from16 v6, v17

    .line 83
    :goto_0
    invoke-virtual {v1, v5}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTimestamp(Ljava/util/Calendar;)V

    .line 85
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    const/4 v7, 0x2

    if-eq v4, v7, :cond_4

    const/4 v7, 0x4

    if-eq v4, v7, :cond_3

    const/16 v7, 0x8

    if-eq v4, v7, :cond_2

    const/16 v7, 0x10

    if-eq v4, v7, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 100
    :cond_2
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->RISING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 97
    :cond_3
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->FLAT:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 94
    :cond_4
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 91
    :cond_5
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->FALLING_FAST:Lcom/senseonics/util/Utils$ARROW_TYPE;

    goto :goto_1

    .line 88
    :cond_6
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 108
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->checkIfStaleData()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 111
    sget-object v5, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 115
    :cond_7
    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    move/from16 v8, v21

    if-lt v8, v7, :cond_8

    sget v7, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v8, v7, :cond_8

    if-nez v4, :cond_8

    .line 118
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportRollingCal()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 119
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getMostRecentGlucoseRegisterValue()I

    move-result v4

    const v7, 0xffff

    if-eq v4, v7, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v17, v2

    :cond_9
    :goto_2
    if-eqz v17, :cond_a

    .line 129
    sget v14, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    goto :goto_3

    :cond_a
    move v14, v8

    .line 133
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v4

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v7

    .line 137
    invoke-virtual {v1, v14}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseLevel(I)V

    .line 139
    invoke-virtual {v1, v5}, Lcom/senseonics/model/TransmitterStateModel;->setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result v8

    add-int/2addr v8, v2

    if-ne v3, v8, :cond_b

    .line 143
    invoke-virtual {v1, v3}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    :cond_b
    if-eqz v6, :cond_c

    .line 147
    iget-object v2, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v3, Lcom/senseonics/events/NewGlucoseSavedEvent;

    invoke-direct {v3}, Lcom/senseonics/events/NewGlucoseSavedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 151
    iget-object v1, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/NewGlucoseSavedSyncLogEvent;

    invoke-direct {v2}, Lcom/senseonics/events/NewGlucoseSavedSyncLogEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_c
    if-nez v6, :cond_d

    if-ne v14, v4, :cond_d

    if-eq v5, v7, :cond_e

    .line 156
    :cond_d
    iget-object v1, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/UpdateExtensionEvent;

    invoke-direct {v2}, Lcom/senseonics/events/UpdateExtensionEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 160
    :cond_e
    iget-object v1, v0, Lcom/senseonics/model/GlucoseLevelParsedResponse;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/SensorGlucoseReceivedEvent;

    invoke-direct {v2}, Lcom/senseonics/events/SensorGlucoseReceivedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public check([I)Z
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/senseonics/bluetoothle/ResponseOperations;->isReadSensorGlucoseResponseCorrect([I)Z

    move-result p1

    return p1
.end method

.method public getExpectedResponseId()I
    .locals 1

    const/16 v0, 0x88

    return v0
.end method
