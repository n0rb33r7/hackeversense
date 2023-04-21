.class public Lcom/senseonics/db/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# instance fields
.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private ninetyDaysTimestamp:J

.field private sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

.field private threeDaysTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    .line 56
    iput-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->ninetyDaysTimestamp:J

    .line 59
    new-instance v0, Lcom/senseonics/db/SenseonicsDBHelper;

    invoke-direct {v0, p1}, Lcom/senseonics/db/SenseonicsDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    const-string p1, "GMT"

    .line 61
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x3

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 63
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    .line 65
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v0, -0x5a

    .line 66
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->add(II)V

    .line 67
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->ninetyDaysTimestamp:J

    return-void
.end method

.method private calibrationOrGlucoseEventExists(Lcom/senseonics/events/EventPoint;Z)Z
    .locals 12

    .line 1177
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    .line 1179
    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    .line 1180
    iget-wide v2, p0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-gez v2, :cond_0

    if-eqz p2, :cond_0

    return v3

    :cond_0
    const/4 p2, 0x4

    new-array v8, p2, [Ljava/lang/String;

    .line 1189
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v8, v2

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v4, v0, v4

    .line 1190
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v8, v3

    const/4 p2, 0x2

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    add-long/2addr v0, v4

    .line 1191
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, p2

    const/4 p2, 0x3

    .line 1192
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, p2

    .line 1195
    iget-object v4, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "timestamp"

    const-string p2, "eventType"

    const-string v0, "glucoseLevel"

    filled-new-array {p1, p2, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v5, "events"

    const-string v7, "eventType == ? AND timestamp > ? AND timestamp < ? AND glucoseLevel == ?"

    const-string v11, "timestamp"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1203
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 1204
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-lt p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    return v3
.end method

.method private changeGroupId(II)V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "groupId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 171
    iget-object p1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "glucoseReadings"

    const-string v2, "groupId = ? "

    invoke-virtual {p1, v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;
    .locals 15

    .line 1275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 1276
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1277
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1279
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v2

    .line 1280
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0x10

    .line 1281
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    .line 1284
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v7

    sub-long/2addr v7, v2

    sub-long/2addr v7, v5

    .line 1286
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1287
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "timestamp"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1288
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v3

    .line 1289
    invoke-virtual {v3}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v3

    .line 1288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "eventType"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v3

    const-string v5, "notes"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "glucoseLevel"

    .line 1291
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1294
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "recordNumber"

    .line 1293
    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v3, 0x1

    .line 1298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    .line 1301
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "event_synced"

    if-eqz p2, :cond_0

    .line 1297
    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1300
    :cond_0
    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->isEventHidden()Z

    move-result v6

    const-string v9, "event_hidden"

    const/4 v10, -0x1

    if-eqz v6, :cond_2

    .line 1304
    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1308
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getCalendarEventHidden()Ljava/util/Calendar;

    move-result-object v3

    const-string v5, "event_hidden_timestamp"

    if-eqz v3, :cond_1

    .line 1309
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1310
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1311
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getCalendarEventHidden()Ljava/util/Calendar;

    move-result-object v1

    .line 1312
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 1311
    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1314
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v11

    .line 1315
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    invoke-virtual {v3, v13, v14}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1316
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v3, v1

    .line 1318
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getCalendarEventHidden()Ljava/util/Calendar;

    move-result-object v1

    .line 1319
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    sub-long/2addr v13, v3

    .line 1321
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1320
    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 1323
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1325
    :cond_2
    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1328
    :goto_1
    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1330
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1331
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "customType"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1332
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "customType2"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "healthSeverity"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1334
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "exerciseIntensity"

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1337
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "transmitter_name"

    if-eqz v0, :cond_3

    .line 1339
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    .line 1338
    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, ""

    .line 1341
    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "unknown_error_code"

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1346
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v0

    .line 1347
    sget-object v8, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_4

    .line 1411
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    .line 1413
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v1

    if-eq v1, v10, :cond_4

    .line 1416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    if-eqz v0, :cond_7

    .line 1421
    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1420
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1396
    :pswitch_1
    move-object/from16 v5, p1

    check-cast v5, Lcom/senseonics/events/AlertEventPoint;

    .line 1398
    invoke-virtual {v5}, Lcom/senseonics/events/AlertEventPoint;->getGlucoseType()Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->ordinal()I

    move-result v5

    .line 1397
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1399
    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v0, v3, :cond_6

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v0, v3, :cond_5

    goto :goto_3

    .line 1405
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getPredictiveMinutes()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1404
    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1402
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getRateValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1401
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_4

    .line 1385
    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/AlertEventPoint;

    .line 1387
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getGlucoseType()Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->ordinal()I

    move-result v1

    .line 1386
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1389
    invoke-virtual {v0}, Lcom/senseonics/events/AlertEventPoint;->getAlertType()Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$ALERT_TYPE;->ordinal()I

    move-result v0

    .line 1388
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1377
    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/ExerciseEventPoint;

    .line 1379
    invoke-virtual {v0}, Lcom/senseonics/events/ExerciseEventPoint;->getDuration()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1378
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    invoke-virtual {v0}, Lcom/senseonics/events/ExerciseEventPoint;->getIntensity()Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1380
    invoke-virtual {v2, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    .line 1370
    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/HealthEventPoint;

    .line 1372
    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventPoint;->getHealthCondition()Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->ordinal()I

    move-result v1

    .line 1371
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1374
    invoke-virtual {v0}, Lcom/senseonics/events/HealthEventPoint;->getHealthSeverity()Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->ordinal()I

    move-result v0

    .line 1373
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1364
    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/InsulinEventPoint;

    .line 1365
    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventPoint;->getUnits()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1367
    invoke-virtual {v0}, Lcom/senseonics/events/InsulinEventPoint;->getInsulinType()Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->ordinal()I

    move-result v0

    .line 1366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1358
    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/MealEventPoint;

    .line 1359
    invoke-virtual {v0}, Lcom/senseonics/events/MealEventPoint;->getMealType()Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v4

    .line 1360
    invoke-virtual {v4}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->ordinal()I

    move-result v4

    .line 1359
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1361
    invoke-virtual {v0}, Lcom/senseonics/events/MealEventPoint;->getCarbs()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1353
    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/GlucoseEventPoint;

    .line 1355
    invoke-virtual {v0}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1354
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_4

    .line 1349
    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lcom/senseonics/events/CalibrationEventPoint;

    .line 1350
    invoke-virtual {v0}, Lcom/senseonics/events/CalibrationEventPoint;->getCalibrationFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    :goto_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private eventExists(Lcom/senseonics/events/EventPoint;Z)Z
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1210
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v2

    .line 1212
    iget-wide v4, v0, Lcom/senseonics/db/DatabaseManager;->threeDaysTimestamp:J

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-gez v4, :cond_0

    if-eqz p2, :cond_0

    return v5

    .line 1216
    :cond_0
    instance-of v4, v1, Lcom/senseonics/events/CalibrationEventPoint;

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 1217
    sget-wide v7, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    goto :goto_0

    .line 1221
    :cond_1
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/2addr v4, v6

    int-to-long v7, v4

    :goto_0
    sub-long v9, v2, v7

    add-long/2addr v2, v7

    .line 1227
    invoke-direct {v0, v1, v5}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object v4

    const-string v7, "amount"

    .line 1228
    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "customType"

    .line 1229
    invoke-virtual {v4, v8}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "customType2"

    .line 1230
    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "healthSeverity"

    .line 1231
    invoke-virtual {v4, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "exerciseIntensity"

    .line 1232
    invoke-virtual {v4, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x8

    new-array v13, v13, [Ljava/lang/String;

    .line 1243
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v22, 0x0

    aput-object v1, v13, v22

    .line 1244
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v6

    const/4 v1, 0x3

    aput-object v7, v13, v1

    const/4 v1, 0x4

    aput-object v8, v13, v1

    const/4 v1, 0x5

    aput-object v11, v13, v1

    const/4 v1, 0x6

    aput-object v12, v13, v1

    const/4 v1, 0x7

    aput-object v4, v13, v1

    .line 1248
    iget-object v14, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v23, "timestamp"

    const-string v24, "eventType"

    const-string v25, "notes"

    const-string v26, "amount"

    const-string v27, "customType"

    const-string v28, "customType2"

    const-string v29, "healthSeverity"

    const-string v30, "exerciseIntensity"

    const-string v31, "glucoseLevel"

    const-string v32, "id"

    const-string v33, "event_synced"

    filled-new-array/range {v23 .. v33}, [Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v15, "events"

    const-string v17, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND amount == ? AND customType == ? AND customType2 == ? AND healthSeverity == ? AND exerciseIntensity == ?"

    const-string v21, "timestamp"

    move-object/from16 v18, v13

    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1261
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1262
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "-----------------"

    if-lt v2, v5, :cond_2

    const-string v2, "EVENT EXISTS"

    .line 1265
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string v2, "EVENT NOT EXISTS"

    .line 1269
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v22
.end method

.method private getCalendarFromTimeStampInDatabase(J)Ljava/util/Calendar;
    .locals 1

    .line 764
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 766
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "GMT"

    .line 767
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private getEarliestEventGMTTime()J
    .locals 10

    .line 866
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 872
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "timestamp"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "events"

    const-string v5, "timestamp = ( select min(timestamp) from events )"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 877
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 878
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 879
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 880
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getEarliestEvent"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method private getEarliestGlucoseReadingGMTTime()J
    .locals 10

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 893
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "timestamp"

    const-string v4, "glucoseLevel"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "glucoseReadings"

    const-string v5, "timestamp = ( select min(timestamp) from glucoseReadings )"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 899
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 900
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 901
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timestamp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | glucose: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getEarliestGlucose"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method private getEventsWithWhereClauseBetween(Ljava/util/Calendar;Ljava/util/Calendar;IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1530
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v1

    move-object/from16 v3, p2

    .line 1531
    invoke-direct {v0, v3}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v3

    .line 1533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestamp >= ? AND timestamp < ? AND event_hidden == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .line 1540
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v7, p5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v5, 0x2

    new-array v11, v5, [Ljava/lang/String;

    .line 1543
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v6

    .line 1544
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v11, v2

    .line 1546
    iget-object v7, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "timestamp"

    const-string v13, "eventType"

    const-string v14, "notes"

    const-string v15, "amount"

    const-string v16, "customType"

    const-string v17, "customType2"

    const-string v18, "healthSeverity"

    const-string v19, "exerciseIntensity"

    const-string v20, "glucoseLevel"

    const-string v21, "id"

    const-string v22, "event_synced"

    const-string v23, "event_hidden"

    const-string v24, "event_hidden_timestamp"

    const-string v25, "transmitter_name"

    const-string v26, "recordNumber"

    filled-new-array/range {v12 .. v26}, [Ljava/lang/String;

    move-result-object v9

    const-string v8, "events"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "timestamp"

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1564
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lt v4, v2, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1568
    :goto_0
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1569
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1570
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1577
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1578
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    .line 1579
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v9, 0x9

    .line 1580
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v9, 0xa

    .line 1581
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0xb

    .line 1582
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v12, 0xc

    .line 1583
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v12, 0xd

    .line 1584
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v5, 0xe

    move/from16 p3, v7

    .line 1585
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 p5, v3

    const-wide/16 v2, -0x1

    cmp-long v5, v14, v2

    const/16 v16, 0x0

    if-eqz v5, :cond_0

    .line 1589
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1590
    invoke-virtual {v5, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_0
    move-object/from16 v5, v16

    :goto_1
    const/4 v15, 0x1

    if-ne v9, v15, :cond_1

    move v14, v15

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    :goto_2
    if-ne v10, v15, :cond_2

    move v10, v15

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    .line 1605
    :goto_3
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v9

    aget-object v9, v9, p3

    .line 1608
    sget-object v17, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v9}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v18

    aget v17, v17, v18

    const-string v15, ""

    const/4 v3, 0x3

    const/4 v2, 0x4

    packed-switch v17, :pswitch_data_0

    :cond_3
    :pswitch_0
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    goto/16 :goto_8

    .line 1700
    :pswitch_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1701
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1702
    new-instance v3, Lcom/senseonics/events/EventPoint;

    invoke-direct {v3, v4, v13, v9}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 1703
    invoke-virtual {v3, v15}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 1704
    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 v8, -0x1

    .line 1705
    invoke-virtual {v3, v8, v9}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    const/4 v2, 0x0

    .line 1706
    invoke-virtual {v3, v2}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    move/from16 v20, v2

    move-wide/from16 v17, v6

    goto :goto_4

    .line 1686
    :pswitch_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1687
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1688
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getCodeID()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1690
    :cond_4
    new-instance v3, Lcom/senseonics/events/EventPoint;

    invoke-direct {v3, v4, v13, v9}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 1691
    invoke-virtual {v3, v15}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 1692
    invoke-static {v2}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 v8, -0x1

    .line 1693
    invoke-virtual {v3, v8, v9}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    const/4 v8, 0x0

    .line 1694
    invoke-virtual {v3, v8}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    move-wide/from16 v17, v6

    move/from16 v20, v8

    :goto_4
    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    goto/16 :goto_9

    :pswitch_3
    const/4 v8, 0x0

    .line 1673
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 1674
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1675
    sget-object v15, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v9, v15, :cond_5

    .line 1676
    sget-object v15, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_5

    .line 1678
    :cond_5
    sget-object v15, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    .line 1679
    :goto_5
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v16

    aget-object v2, v16, v2

    .line 1680
    new-instance v8, Lcom/senseonics/events/AlertEventPoint;

    move-object/from16 v16, v9

    move-object v9, v8

    move v0, v10

    move-object/from16 v10, v16

    move-wide/from16 v17, v6

    move-object v6, v12

    move-object v12, v4

    move v7, v14

    move-object v14, v15

    const/16 v19, 0x1

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1682
    invoke-virtual {v8, v3}, Lcom/senseonics/events/EventPoint;->setRateValue(F)V

    move-object v3, v8

    goto :goto_7

    :pswitch_4
    move-wide/from16 v17, v6

    move-object/from16 v16, v9

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    .line 1659
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x5

    .line 1660
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1662
    sget-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-object/from16 v10, v16

    if-ne v10, v8, :cond_6

    .line 1663
    sget-object v8, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_6

    .line 1665
    :cond_6
    sget-object v8, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    :goto_6
    move-object v14, v8

    .line 1666
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v8

    aget-object v15, v8, v2

    .line 1667
    new-instance v2, Lcom/senseonics/events/AlertEventPoint;

    move-object v9, v2

    move-object v12, v4

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1669
    invoke-virtual {v2, v3}, Lcom/senseonics/events/EventPoint;->setPredictiveMinutes(I)V

    move-object v3, v2

    goto :goto_7

    :pswitch_5
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    move-object v10, v9

    .line 1650
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x5

    .line 1651
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1652
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v8

    aget-object v14, v8, v3

    .line 1653
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v3

    aget-object v15, v3, v2

    .line 1654
    new-instance v16, Lcom/senseonics/events/AlertEventPoint;

    move-object/from16 v9, v16

    move-object v12, v4

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    move-object/from16 v3, v16

    :goto_7
    const/16 v20, 0x0

    goto/16 :goto_9

    :pswitch_6
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/4 v2, 0x7

    .line 1642
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1643
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v9

    aget-object v14, v9, v2

    .line 1644
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1645
    new-instance v16, Lcom/senseonics/events/ExerciseEventPoint;

    move-object/from16 v9, v16

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(ILjava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_7
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/4 v2, 0x5

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 1634
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1635
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v3

    aget-object v2, v3, v2

    const/4 v3, 0x6

    .line 1636
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1637
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v9

    aget-object v14, v9, v3

    .line 1638
    new-instance v16, Lcom/senseonics/events/HealthEventPoint;

    move-object/from16 v9, v16

    move v10, v11

    move-object v11, v4

    move v12, v13

    move-object v13, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/HealthEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_8
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 1627
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1628
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v9

    aget-object v14, v9, v2

    .line 1629
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    .line 1630
    new-instance v16, Lcom/senseonics/events/InsulinEventPoint;

    move-object/from16 v9, v16

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/InsulinEventPoint;-><init>(ILjava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_9
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 1620
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1621
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v9

    aget-object v2, v9, v2

    .line 1622
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1623
    new-instance v16, Lcom/senseonics/events/MealEventPoint;

    move-object/from16 v9, v16

    move v10, v11

    move-object v11, v4

    move v12, v13

    move-object v13, v2

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/senseonics/events/MealEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    goto :goto_8

    :pswitch_a
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 1615
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1616
    new-instance v16, Lcom/senseonics/events/GlucoseEventPoint;

    move-object/from16 v9, v16

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v2

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    goto :goto_8

    :pswitch_b
    move-wide/from16 v17, v6

    move v0, v10

    move-object v6, v12

    move v7, v14

    const/16 v19, 0x1

    const/16 v20, 0x0

    .line 1610
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1611
    new-instance v16, Lcom/senseonics/events/CalibrationEventPoint;

    move-object/from16 v9, v16

    move v10, v11

    move-object v11, v4

    move v12, v13

    move v13, v2

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    :goto_8
    move-object/from16 v3, v16

    :goto_9
    if-eqz v3, :cond_7

    .line 1718
    invoke-virtual {v3, v7}, Lcom/senseonics/events/EventPoint;->setEventSynced(Z)V

    .line 1719
    invoke-virtual {v3, v0}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 1720
    invoke-virtual {v3, v5}, Lcom/senseonics/events/EventPoint;->setCalendarEventHidden(Ljava/util/Calendar;)V

    .line 1721
    invoke-virtual {v3, v6}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    move-wide/from16 v4, v17

    .line 1722
    invoke-virtual {v3, v4, v5}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    move-object/from16 v0, p5

    .line 1723
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_7
    move-object/from16 v0, p5

    .line 1725
    :goto_a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_b

    :cond_8
    move-object v3, v0

    move/from16 v2, v19

    move/from16 v6, v20

    const/4 v5, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    move-object v0, v3

    .line 1727
    :goto_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getGMTTimestamp(J)J
    .locals 5

    .line 909
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 910
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 911
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 913
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 914
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v3, 0x10

    .line 915
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v3, v0

    sub-long/2addr p1, v1

    sub-long/2addr p1, v3

    return-wide p1
.end method

.method private getGlucose(Landroid/database/Cursor;)Lcom/senseonics/graph/util/Glucose;
    .locals 7

    const/4 v0, 0x0

    .line 221
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 223
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 226
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long/2addr v2, v0

    const/4 v0, 0x2

    .line 227
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v0, 0x3

    .line 228
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 230
    new-instance p1, Lcom/senseonics/graph/util/Glucose;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    return-object p1
.end method

.method private getGlucoseArrayBetweenForReportWithWhere(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 651
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "glucoseLevel"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "glucoseReadings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 658
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v2, v1

    .line 659
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 660
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 661
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getGlucoseNear(I)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordNumber IN "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "glucoseLevel"

    const-string v0, "timestamp"

    const-string v3, "groupId"

    const-string v4, "recordNumber"

    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "glucoseReadings"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "timestamp"

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v2, v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getGlucose(Landroid/database/Cursor;)Lcom/senseonics/graph/util/Glucose;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private getMaxGroupId()I
    .locals 9

    .line 149
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "max( groupId )"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "glucoseReadings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    .line 159
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private getStatisticsBetweenWhereClause(ILjava/lang/String;)Ljava/lang/String;
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    mul-int/lit16 v2, v0, 0xe10

    int-to-long v2, v2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0xe10

    int-to-long v4, v0

    .line 512
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v6

    .line 513
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v8, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v2, v10

    sub-long/2addr v2, v6

    sub-long/2addr v2, v8

    mul-long/2addr v4, v10

    sub-long/2addr v4, v6

    sub-long/2addr v4, v8

    .line 517
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-wide/32 v6, 0x5265c00

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const-wide/32 v4, 0x5265bff

    .line 530
    :cond_0
    rem-long/2addr v2, v6

    add-long/2addr v2, v6

    rem-long/2addr v2, v6

    .line 531
    rem-long/2addr v4, v6

    add-long/2addr v4, v6

    rem-long/2addr v4, v6

    cmp-long v0, v2, v4

    const-string v6, " <= "

    const-string v7, " AND "

    const-string v10, " >= "

    const-string v11, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    const-string v12, "/1000,\'unixepoch\') AND time("

    const-string v13, "/1000,\'unixepoch\') BETWEEN time("

    const-string v14, "timestamp"

    const-string v15, "glucoseLevel"

    if-gtz v0, :cond_1

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND  time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND  ((time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v1, 0x5265bff

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\')) OR  (time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\'))) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 351
    sget-object v2, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$TimeRange:[I

    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const-wide/32 v4, 0x5265bff

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_0
    move-wide v8, v4

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->getTimeFromInSec()I

    move-result v2

    int-to-long v2, v2

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->getTimeToInSec()I

    move-result v8

    int-to-long v8, v8

    .line 365
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {v10}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v10

    .line 366
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v2, v14

    sub-long/2addr v2, v10

    sub-long/2addr v2, v12

    mul-long/2addr v8, v14

    sub-long/2addr v8, v10

    sub-long/2addr v8, v12

    .line 372
    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    if-ne v0, v10, :cond_2

    move-wide v8, v4

    .line 378
    :cond_2
    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;

    const-string v11, " <= "

    const-string v12, " AND "

    const-string v13, " >= "

    const-string v14, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    const-string v15, "glucoseLevel"

    if-ne v0, v10, :cond_3

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    const-wide/32 v16, 0x5265c00

    .line 389
    rem-long v2, v2, v16

    add-long v2, v2, v16

    rem-long v2, v2, v16

    .line 390
    rem-long v8, v8, v16

    add-long v8, v8, v16

    rem-long v8, v8, v16

    cmp-long v0, v2, v8

    const-string v10, "/1000,\'unixepoch\') AND time("

    const-string v6, "/1000,\'unixepoch\') BETWEEN time("

    const-string v7, "timestamp"

    if-gtz v0, :cond_4

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND  time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 403
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND  ((time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\')) OR  (time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\'))) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newWhere:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NewWhereClause"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J
    .locals 5

    .line 2111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 2112
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2113
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2115
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 2117
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p1, 0x10

    .line 2119
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    int-to-long v1, p1

    .line 2120
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method

.method private glucoseTimestampExists(J)Z
    .locals 14

    .line 95
    sget v0, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    const/4 v1, 0x1

    mul-int/2addr v0, v1

    int-to-long v2, v0

    sub-long v4, p1, v2

    add-long/2addr v2, p1

    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 101
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v10, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v1

    move-object v0, p0

    .line 103
    iget-object v6, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "timestamp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v7, "glucoseReadings"

    const-string v9, "timestamp >= ? AND timestamp <= ?"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 109
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Glucose timestamp exists "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Add Glucose Database"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v1

    .line 116
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v4
.end method

.method private hideCalibrationEventAndGetNotesDuringSyncSubMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 976
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "id"

    const-string v2, "notes"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "events"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 979
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cursor count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BGM->"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p2, v3, :cond_1

    .line 984
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 986
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 987
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v5, "|notes:"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_1
    const-string v4, ""

    .line 992
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    move p1, v2

    move p2, p1

    .line 995
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 996
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 997
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v5, "event_hidden"

    invoke-virtual {p2, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v1, v3, [Ljava/lang/String;

    .line 999
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 1001
    iget-object v5, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "events"

    const-string v7, "id == ?"

    invoke-virtual {v5, v6, p2, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1005
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BGM-> no of events updated : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DatabaseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method private recordNumberExists(I)Z
    .locals 10

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 830
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    aput-object p1, v5, v9

    .line 832
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "glucoseLevel"

    const-string v2, "timestamp"

    const-string v3, "recordNumber"

    const-string v4, "groupId"

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "glucoseReadings"

    const-string v4, "recordNumber = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 840
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 841
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x2

    .line 843
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x3

    .line 844
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " record number exists "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " --------------"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Add Glucose Database"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v0

    .line 849
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v9
.end method

.method private updateCalibrationAndGlucoseEventRecordNo(Lcom/senseonics/events/EventPoint;)I
    .locals 14

    .line 1071
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    .line 1073
    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v4, v0, v2

    add-long/2addr v0, v2

    const/4 v2, 0x4

    new-array v10, v2, [Ljava/lang/String;

    .line 1084
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v10, v3

    .line 1085
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v10, v4

    .line 1086
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v10, v1

    .line 1087
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v10, v1

    .line 1089
    iget-object v6, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v7, "events"

    const-string v9, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND glucoseLevel == ? AND event_synced == 1 AND recordNumber < 0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BGM->Update Record #"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v5, v4, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1098
    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1099
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dbID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1103
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v3

    move v5, v0

    .line 1106
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1107
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "recordNumber"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array v6, v4, [Ljava/lang/String;

    .line 1110
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 1112
    iget-object v7, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "events"

    const-string v9, "id == ?"

    invoke-virtual {v7, v8, v5, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1116
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rowUpdated:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private updateCalibrationAndGlucoseEventRecordNoAndUseFlag(Lcom/senseonics/events/EventPoint;)I
    .locals 14

    .line 1121
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getTimestamp()J

    move-result-wide v0

    .line 1123
    instance-of v2, p1, Lcom/senseonics/events/CalibrationEventPoint;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1124
    move-object v2, p1

    check-cast v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/CalibrationEventPoint;->getCalibrationFlag()I

    move-result v2

    goto :goto_0

    .line 1126
    :cond_0
    instance-of v2, p1, Lcom/senseonics/events/GlucoseEventPoint;

    if-eqz v2, :cond_1

    .line 1127
    move-object v2, p1

    check-cast v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-virtual {v2}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1130
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/String;

    .line 1139
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    sget-wide v4, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v4, v0, v4

    .line 1140
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v9, v13

    const/4 v4, 0x2

    sget-wide v5, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    add-long/2addr v0, v5

    .line 1141
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v4

    const/4 v0, 0x3

    .line 1142
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getGlucoseLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 1144
    iget-object v5, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "events"

    const-string v8, "eventType == ? AND timestamp > ? AND timestamp < ? AND glucoseLevel == ? AND event_synced == 1 AND recordNumber < 0"

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BGM->Update Record #"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1151
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v5, v13, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1153
    :cond_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1154
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1155
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dbID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1158
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v3

    move v5, v0

    .line 1161
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 1162
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1163
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getRecordNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "recordNumber"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1164
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "customType"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v6, v13, [Ljava/lang/String;

    .line 1166
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v3

    .line 1168
    iget-object v7, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "events"

    const-string v9, "id == ?"

    invoke-virtual {v7, v8, v5, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1172
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rowUpdated:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method


# virtual methods
.method public addEvent(Lcom/senseonics/events/EventPoint;Z)J
    .locals 2

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->eventExists(Lcom/senseonics/events/EventPoint;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1441
    iget-object p2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 1445
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    :cond_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addReadingInGMT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getGlucoseLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseLevel"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getRecordNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "recordNumber"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw1"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw2"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw3"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw4"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw5"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw6"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw7"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    sget-object v2, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    invoke-virtual {p1, v2}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "glucoseRaw8"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getAccelValues()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "accelValues"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 191
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getAccelTemp()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-string v3, "accelTemp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 194
    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getRecordNumber()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/senseonics/db/DatabaseManager;->getGlucoseNear(I)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "groupId"

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 197
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v5, v4, :cond_0

    .line 198
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v2}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 200
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v5}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v5

    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 203
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v3}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v3

    invoke-direct {p0, v3, v5}, Lcom/senseonics/db/DatabaseManager;->changeGroupId(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/db/DatabaseManager;->getMaxGroupId()I

    move-result v2

    add-int/2addr v2, v4

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    :cond_2
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "glucoseReadings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLUCOSE ADDED: row: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", groupId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/graph/util/Glucose;->getGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SQLException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J
    .locals 2

    .line 1452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->eventExists(Lcom/senseonics/events/EventPoint;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1456
    iget-object p2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    .line 1461
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->updateCalibrationAndGlucoseEventRecordNo(Lcom/senseonics/events/EventPoint;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1464
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public addSyncedCalibrationAndGlucoseEvent_NewCalConversion(Lcom/senseonics/events/EventPoint;Z)J
    .locals 2

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->calibrationOrGlucoseEventExists(Lcom/senseonics/events/EventPoint;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1475
    iget-object p2, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "events"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1

    .line 1480
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->updateCalibrationAndGlucoseEventRecordNoAndUseFlag(Lcom/senseonics/events/EventPoint;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1483
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseLockedException;->printStackTrace()V

    :goto_0
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public allowAddingGlucoseReading(JI)Z
    .locals 5

    .line 79
    iget-wide v0, p0, Lcom/senseonics/db/DatabaseManager;->ninetyDaysTimestamp:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->glucoseTimestampExists(J)Z

    move-result v0

    const-string v2, "|record:"

    const-string v3, "Add Glucose Database"

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/senseonics/db/DatabaseManager;->recordNumberExists(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DO NOT ADD "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADD NEW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public close()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    invoke-virtual {v0}, Lcom/senseonics/db/SenseonicsDBHelper;->close()V

    return-void
.end method

.method public convertSuspiciousGlucoseIntoCalibrationDuringSync(Lcom/senseonics/events/GlucoseEventPoint;)I
    .locals 13

    .line 1011
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide v0

    const/4 v2, 0x4

    new-array v7, v2, [Ljava/lang/String;

    .line 1020
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v7, v11

    .line 1021
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v7, v1

    .line 1022
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getCalibrationFlag()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v7, v2

    .line 1023
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getRecordNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x3

    aput-object v0, v7, v12

    .line 1027
    iget-object v3, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "timestamp"

    const-string v4, "id"

    const-string v5, "glucoseLevel"

    const-string v6, "notes"

    filled-new-array {v0, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "events"

    const-string v6, "eventType == ? AND timestamp < ? AND customType == ? AND recordNumber == ? AND event_synced == 1 AND event_hidden == 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "timestamp DESC"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1035
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BGM->SuspiciousCheck"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 1040
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1042
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1043
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1046
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "event_hidden"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v5, v1, [Ljava/lang/String;

    aput-object v3, v5, v11

    .line 1050
    iget-object v3, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "events"

    const-string v7, "id == ?"

    invoke-virtual {v3, v6, v4, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1054
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1055
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1056
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1058
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1059
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1060
    new-instance v5, Lcom/senseonics/events/CalibrationEventPoint;

    sget-object v7, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v7}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v7

    invoke-direct {v5, v6, v2, v7, v4}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 1061
    invoke-virtual {v5, v11}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    .line 1062
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getRecordNumber()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 1063
    invoke-virtual {p0, v5, v1}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    move v11, v3

    .line 1065
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v11
.end method

.method public getAllDMSEventPointsStartingFrom(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 773
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v1

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 778
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v8, v2

    .line 781
    iget-object v4, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "glucoseLevel"

    const-string v10, "timestamp"

    const-string v11, "eventType"

    const-string v12, "recordNumber"

    const-string v13, "event_synced"

    const-string v14, "event_hidden"

    const-string v15, "transmitter_name"

    const-string v16, "customType"

    const-string v17, "customType2"

    const-string v18, "unknown_error_code"

    filled-new-array/range {v9 .. v18}, [Ljava/lang/String;

    move-result-object v6

    const-string v5, "events"

    const-string v7, "timestamp >= ? "

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "timestamp ASC"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 796
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 798
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    .line 799
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 800
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 802
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 803
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v8

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    aget-object v10, v8, v10

    const/4 v8, 0x3

    .line 804
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v8, 0x4

    .line 805
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v3, :cond_0

    move v13, v3

    goto :goto_1

    :cond_0
    move v13, v2

    :goto_1
    const/4 v8, 0x5

    .line 806
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v3, :cond_1

    move v14, v3

    goto :goto_2

    :cond_1
    move v14, v2

    :goto_2
    const/4 v8, 0x6

    .line 807
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v8, 0x7

    .line 808
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v8, 0x8

    .line 809
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v8, 0x9

    .line 810
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 813
    new-instance v8, Lcom/senseonics/events/EventPoint;

    invoke-direct {v0, v6, v7}, Lcom/senseonics/db/DatabaseManager;->getCalendarFromTimeStampInDatabase(J)Ljava/util/Calendar;

    move-result-object v6

    move-object v7, v8

    move-object v2, v8

    move-object v8, v6

    invoke-direct/range {v7 .. v18}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;JZZLjava/lang/String;III)V

    .line 816
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto :goto_0

    .line 822
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public getEarliestEventDate()J
    .locals 5

    .line 854
    invoke-direct {p0}, Lcom/senseonics/db/DatabaseManager;->getEarliestEventGMTTime()J

    move-result-wide v0

    .line 855
    invoke-direct {p0}, Lcom/senseonics/db/DatabaseManager;->getEarliestGlucoseReadingGMTTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1522
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/db/DatabaseManager;->getEventsWithWhereClauseBetween(Ljava/util/Calendar;Ljava/util/Calendar;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseArrayBetweenForReport(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 646
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 647
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getGlucoseArrayBetweenForReportWithWhere(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseArrayBetweenForReport(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 641
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 642
    invoke-direct {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getGlucoseArrayBetweenForReportWithWhere(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getGlucoseBetween(Ljava/util/Calendar;Ljava/util/Calendar;J)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "J)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;>;"
        }
    .end annotation

    move-wide/from16 v0, p3

    .line 287
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 288
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "( timestamp / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "timestamp"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " < "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "glucoseLevel >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/senseonics/util/Utils;->GLUCOSE_MIN:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "glucoseLevel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p0

    .line 303
    iget-object v7, v2, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, " AVG ( glucoseLevel )"

    const-string v4, " AVG ( timestamp )"

    const-string v5, "groupId"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v9

    const-string v8, "glucoseReadings"

    const/4 v11, 0x0

    const-string v14, "timestamp"

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 311
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v6, 0x0

    .line 318
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    float-to-int v13, v6

    .line 320
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 322
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 323
    invoke-virtual {v6, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sub-long v8, v14, v8

    .line 326
    sget v6, Lcom/senseonics/graph/util/GraphUtils;->GRAPH_CONNECTING_INTERVAL:I

    int-to-long v10, v6

    mul-long/2addr v10, v0

    cmp-long v6, v8, v10

    if-lez v6, :cond_0

    .line 330
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 331
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 336
    :cond_0
    new-instance v6, Lcom/senseonics/graph/util/Glucose;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v6

    move-wide v11, v14

    move-wide/from16 v16, v14

    move v14, v8

    move v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, v16

    goto :goto_0

    .line 341
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 342
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public getGlucoseLevelAt(Ljava/util/Calendar;Z)I
    .locals 17

    if-nez p2, :cond_0

    .line 237
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 238
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 239
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 240
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 241
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0x10

    .line 242
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v3, v0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 246
    :goto_0
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v5, 0x6

    mul-long/2addr v0, v5

    sub-long v0, v3, v0

    .line 247
    sget-wide v7, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v7, v5

    add-long/2addr v7, v3

    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    .line 251
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 252
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v13, v2

    move-object/from16 v0, p0

    .line 253
    iget-object v9, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "glucoseLevel"

    const-string v8, "timestamp"

    const-string v10, "recordNumber"

    filled-new-array {v7, v8, v10}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v10, "glucoseReadings"

    const-string v12, "timestamp >= ? AND timestamp < ?"

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v8, -0x1

    .line 261
    sget-wide v9, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v9, v5

    .line 263
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v5, v2, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 265
    :cond_1
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 268
    invoke-virtual {v11, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 269
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    sub-long v5, v3, v5

    .line 271
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v11, v11, v9

    if-gez v11, :cond_3

    .line 272
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 273
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sget v10, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt v9, v10, :cond_2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sget v10, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v9, v10, :cond_2

    .line 274
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    :cond_2
    move-wide v9, v5

    .line 277
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 279
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLUCOSE LEVEL "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return v8
.end method

.method public getNotSyncedEventsBetween(Ljava/util/Calendar;Ljava/util/Calendar;II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/events/EventPoint;",
            ">;"
        }
    .end annotation

    const-string v5, " AND event_synced == 0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1514
    invoke-direct/range {v0 .. v5}, Lcom/senseonics/db/DatabaseManager;->getEventsWithWhereClauseBetween(Ljava/util/Calendar;Ljava/util/Calendar;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationsBetween(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/List;IZZLjava/lang/String;ZZZZZLcom/senseonics/util/AlertHelper;)Ljava/util/ArrayList;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "Ljava/util/List<",
            "Lcom/senseonics/util/Utils$EVENT_TYPE;",
            ">;IZZ",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lcom/senseonics/util/AlertHelper;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Notification;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    .line 1749
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1750
    invoke-virtual/range {p3 .. p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, "("

    move v8, v6

    .line 1753
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_1

    .line 1754
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    if-ne v8, v9, :cond_0

    .line 1755
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1757
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v9}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1759
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, ""

    if-eqz p7, :cond_2

    const-string v8, " AND event_hidden == 0"

    goto :goto_2

    :cond_2
    move-object v8, v7

    .line 1766
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "timestamp >= ? AND timestamp < ? AND eventType IN "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x2

    new-array v15, v1, [Ljava/lang/String;

    .line 1771
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v6

    .line 1772
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v10

    const-string v2, "timestamp"

    move/from16 v3, p5

    if-ne v3, v10, :cond_3

    .line 1776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DESC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v2, p0

    .line 1778
    iget-object v11, v2, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "timestamp"

    const-string v20, "eventType"

    const-string v21, "notes"

    const-string v22, "amount"

    const-string v23, "customType"

    const-string v24, "customType2"

    const-string v25, "healthSeverity"

    const-string v26, "exerciseIntensity"

    const-string v27, "glucoseLevel"

    const-string v28, "id"

    const-string v29, "event_synced"

    const-string v30, "event_hidden"

    const-string v31, "event_hidden_timestamp"

    const-string v32, "transmitter_name"

    const-string v33, "unknown_error_code"

    const-string v34, "recordNumber"

    filled-new-array/range {v19 .. v34}, [Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v12, "events"

    move-object/from16 v19, p8

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1797
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lt v5, v10, :cond_22

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1802
    :goto_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1803
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1804
    invoke-virtual {v5, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1805
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1806
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x8

    .line 1807
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v11, 0x9

    .line 1808
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v11, 0xd

    .line 1809
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v11, 0xe

    .line 1810
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v12, 0xf

    .line 1811
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1813
    invoke-static {}, Lcom/senseonics/util/Utils$EVENT_TYPE;->values()[Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v12

    aget-object v8, v12, v8

    const/16 v17, 0x0

    .line 1817
    sget-object v12, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$util$Utils$EVENT_TYPE:[I

    invoke-virtual {v8}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v16

    aget v12, v12, v16

    const-string v10, " "

    const/4 v6, 0x4

    packed-switch v12, :pswitch_data_0

    :goto_4
    :pswitch_0
    goto :goto_5

    .line 2019
    :pswitch_1
    new-instance v6, Lcom/senseonics/events/EventPoint;

    invoke-direct {v6, v13, v5, v15}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 2020
    invoke-virtual {v6, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 2021
    invoke-virtual {v6, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 2022
    invoke-virtual {v6, v8}, Lcom/senseonics/events/EventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 2023
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    move-object/from16 v10, p14

    .line 2024
    invoke-virtual {v10, v8}, Lcom/senseonics/util/AlertHelper;->getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    if-eqz p9, :cond_4

    .line 2027
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    .line 2028
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v21

    .line 2029
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_5

    .line 2032
    :cond_4
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventNameNotTranslated(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    .line 2033
    invoke-virtual {v6}, Lcom/senseonics/events/EventPoint;->getNotes()Ljava/lang/String;

    move-result-object v21

    .line 2034
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :cond_5
    :goto_5
    move-object/from16 p5, v4

    move-object/from16 p4, v7

    goto/16 :goto_12

    :pswitch_2
    move-object/from16 v10, p14

    .line 2040
    new-instance v12, Lcom/senseonics/events/EventPoint;

    invoke-direct {v12, v13, v5, v15}, Lcom/senseonics/events/EventPoint;-><init>(ILjava/util/Calendar;I)V

    .line 2041
    invoke-virtual {v12, v14}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 2042
    invoke-virtual {v12, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 2043
    invoke-virtual {v12, v11}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 2044
    invoke-virtual {v12, v8}, Lcom/senseonics/events/EventPoint;->setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 2045
    invoke-virtual {v12, v9}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 2046
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2047
    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 2048
    invoke-virtual {v12, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 2051
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v6, -0x1

    if-ne v1, v2, :cond_6

    if-eq v11, v6, :cond_6

    .line 2054
    invoke-virtual {v12, v11}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    .line 2057
    :cond_6
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v2

    if-lez v2, :cond_9

    if-eqz p9, :cond_7

    .line 2061
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 2064
    :cond_7
    invoke-virtual {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getTitleEN()Ljava/lang/String;

    move-result-object v8

    :goto_6
    const v11, 0x7f110342

    if-ne v2, v11, :cond_8

    .line 2069
    invoke-virtual {v12}, Lcom/senseonics/events/EventPoint;->getUnknownErrorCode()I

    move-result v2

    if-eq v2, v6, :cond_8

    .line 2072
    invoke-static {v0, v8, v2}, Lcom/senseonics/util/Utils;->replaceUnknownErrorCodeString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    move-object v2, v8

    goto :goto_7

    :cond_9
    move-object v2, v7

    .line 2077
    :goto_7
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    move-object/from16 v11, p14

    move-object v6, v12

    move-object v12, v1

    move-object v13, v14

    move-wide v14, v15

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lcom/senseonics/util/AlertHelper;->getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz p6, :cond_a

    .line 2080
    sget-object v1, Lcom/senseonics/util/Utils;->BATTERY_EVENT_TAG:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2081
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v11, v17

    move-object v12, v2

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_5

    :cond_a
    if-nez p10, :cond_b

    .line 2086
    sget-object v8, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterReconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v8, :cond_b

    goto/16 :goto_4

    :cond_b
    const-string v8, "0"

    if-nez p11, :cond_c

    .line 2088
    sget-object v11, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v11, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto/16 :goto_4

    :cond_c
    if-nez p12, :cond_d

    .line 2090
    sget-object v11, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v11, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto/16 :goto_4

    :cond_d
    if-nez p13, :cond_e

    .line 2092
    sget-object v8, Lcom/senseonics/util/TransmitterMessageCode;->SensorRelink:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v8, :cond_e

    goto/16 :goto_4

    .line 2095
    :cond_e
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v11, v17

    move-object v12, v2

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_5

    :pswitch_3
    move-object/from16 v10, p14

    .line 1963
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1965
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v9

    aget-object v16, v9, v6

    .line 1967
    sget v6, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    if-gt v15, v6, :cond_f

    const v6, 0x7f110220

    .line 1968
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 1970
    :cond_f
    invoke-static {v0, v15}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    :goto_8
    move-object/from16 v21, v6

    .line 1972
    new-instance v6, Lcom/senseonics/events/AlertEventPoint;

    sget-object v17, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v11, v6

    move-object v12, v8

    move-object v9, v14

    move-object v14, v5

    invoke-direct/range {v11 .. v17}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1975
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v6, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1978
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-eq v8, v1, :cond_12

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v1, :cond_10

    goto :goto_9

    :cond_10
    const/4 v1, 0x3

    .line 1989
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 1990
    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setRateValue(F)V

    if-eqz p9, :cond_11

    .line 1992
    invoke-static {v0, v8}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1995
    :cond_11
    invoke-static {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getRateAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_12
    :goto_9
    const/4 v1, 0x5

    .line 1980
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1981
    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setPredictiveMinutes(I)V

    if-eqz p9, :cond_13

    .line 1983
    invoke-static {v0, v8}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 1986
    :cond_13
    invoke-static {v8}, Lcom/senseonics/util/TransmitterMessageCode;->getPredictiveAlertTitleNotTranslated(Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    move-object/from16 v20, v1

    .line 1999
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v1, :cond_14

    .line 2000
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 2002
    :cond_14
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v1, :cond_15

    .line 2003
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 2005
    :cond_15
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v1, :cond_16

    .line 2006
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_b

    .line 2008
    :cond_16
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v1, :cond_17

    .line 2009
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    .line 2012
    :cond_17
    :goto_b
    new-instance v17, Lcom/senseonics/util/Notification;

    .line 2013
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v10, p14

    move-object v9, v14

    .line 1904
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v11, 0x5

    .line 1905
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1906
    invoke-static {}, Lcom/senseonics/util/Utils$ALERT_TYPE;->values()[Lcom/senseonics/util/Utils$ALERT_TYPE;

    move-result-object v12

    aget-object v14, v12, v11

    .line 1908
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->values()[Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-result-object v11

    aget-object v17, v11, v6

    .line 1909
    new-instance v6, Lcom/senseonics/events/AlertEventPoint;

    move-object v11, v6

    move-object v12, v8

    move-object/from16 p5, v14

    move-object v14, v5

    move/from16 p8, v15

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v17}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;ILjava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 1911
    invoke-virtual {v6, v9}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v6, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1914
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v1, :cond_1b

    if-eqz p9, :cond_18

    move-object/from16 v1, p5

    .line 1916
    invoke-static {v0, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_18
    move-object/from16 v1, p5

    .line 1919
    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlarmEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 1922
    :goto_c
    sget-object v8, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v8, :cond_19

    .line 1923
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_d

    .line 1925
    :cond_19
    sget-object v8, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v8, :cond_1a

    .line 1926
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    :cond_1a
    :goto_d
    move-object/from16 v20, v2

    goto :goto_f

    :cond_1b
    move-object/from16 v1, p5

    .line 1929
    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne v8, v2, :cond_1e

    if-eqz p9, :cond_1c

    .line 1931
    invoke-static {v0, v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitle(Landroid/content/Context;Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 1934
    :cond_1c
    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->getAlertEventTitleNotTranslated(Lcom/senseonics/util/Utils$ALERT_TYPE;)Ljava/lang/String;

    move-result-object v2

    .line 1937
    :goto_e
    sget-object v8, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v8, :cond_1d

    .line 1938
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_d

    .line 1940
    :cond_1d
    sget-object v8, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    if-ne v1, v8, :cond_1a

    .line 1941
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v6, v1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    goto :goto_d

    .line 1945
    :cond_1e
    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    .line 1948
    :goto_f
    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    move/from16 v15, p8

    if-gt v15, v1, :cond_1f

    const v1, 0x7f110220

    .line 1949
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    .line 1951
    :cond_1f
    invoke-static {v0, v15}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_10
    move-object/from16 v21, v1

    .line 1954
    new-instance v17, Lcom/senseonics/util/Notification;

    .line 1955
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_5

    :pswitch_5
    move-object/from16 v10, p14

    move-object v6, v14

    const/4 v11, 0x7

    .line 1887
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1888
    invoke-static {}, Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;->values()[Lcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;

    move-result-object v12

    aget-object v16, v12, v11

    const/4 v11, 0x3

    .line 1889
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1891
    new-instance v14, Lcom/senseonics/events/ExerciseEventPoint;

    move-object v11, v14

    move v12, v13

    move-object v13, v5

    move-object/from16 p4, v7

    move-object v7, v14

    move v14, v15

    move/from16 v15, v17

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/senseonics/events/ExerciseEventPoint;-><init>(ILjava/util/Calendar;IILcom/senseonics/events/EventUtils$EXERCISE_INTENSITY;Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v7, v6}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {v7, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1895
    move-object v14, v7

    check-cast v14, Lcom/senseonics/events/ExerciseEventPoint;

    .line 1896
    invoke-virtual {v7, v0}, Lcom/senseonics/events/ExerciseEventPoint;->getDurationText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 1897
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    .line 1898
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v7

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_11

    :pswitch_6
    move-object/from16 v10, p14

    move-object/from16 p4, v7

    move-object v6, v14

    const/4 v7, 0x5

    .line 1873
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1874
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;->values()[Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;

    move-result-object v11

    aget-object v7, v11, v7

    const/4 v11, 0x6

    .line 1875
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1876
    invoke-static {}, Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;->values()[Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;

    move-result-object v12

    aget-object v16, v12, v11

    .line 1878
    new-instance v14, Lcom/senseonics/events/HealthEventPoint;

    move-object v11, v14

    move v12, v13

    move-object v13, v5

    move-object v10, v14

    move v14, v15

    move-object v15, v7

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/senseonics/events/HealthEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$HEALTH_CONDITION;Lcom/senseonics/events/EventUtils$HEALTH_SEVERITY;Ljava/lang/String;)V

    .line 1880
    invoke-virtual {v10, v6}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1881
    invoke-virtual {v10, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1882
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    .line 1883
    invoke-static {v0, v7}, Lcom/senseonics/events/EventUtils;->getHealthConditionName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$HEALTH_CONDITION;)Ljava/lang/String;

    move-result-object v21

    .line 1884
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v10

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_11
    move-object/from16 p5, v4

    goto/16 :goto_12

    :pswitch_7
    move-object/from16 p4, v7

    move-object v7, v14

    .line 1858
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1859
    invoke-static {}, Lcom/senseonics/events/EventUtils$INSULIN_TYPE;->values()[Lcom/senseonics/events/EventUtils$INSULIN_TYPE;

    move-result-object v11

    aget-object v16, v11, v6

    const/4 v6, 0x3

    .line 1860
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 1862
    new-instance v14, Lcom/senseonics/events/InsulinEventPoint;

    move-object v11, v14

    move v12, v13

    move-object v13, v5

    move-object/from16 p5, v4

    move-object v4, v14

    move v14, v15

    move v15, v6

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/senseonics/events/InsulinEventPoint;-><init>(ILjava/util/Calendar;IFLcom/senseonics/events/EventUtils$INSULIN_TYPE;Ljava/lang/String;)V

    .line 1864
    invoke-virtual {v4, v7}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v4, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1866
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11033e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1868
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1870
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v4

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_12

    :pswitch_8
    move-object/from16 p5, v4

    move-object/from16 p4, v7

    move-object v7, v14

    .line 1843
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1844
    invoke-static {}, Lcom/senseonics/events/EventUtils$MEAL_TYPE;->values()[Lcom/senseonics/events/EventUtils$MEAL_TYPE;

    move-result-object v6

    aget-object v4, v6, v4

    const/4 v6, 0x3

    .line 1845
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1847
    new-instance v8, Lcom/senseonics/events/MealEventPoint;

    move-object v11, v8

    move v12, v13

    move-object v13, v5

    move v14, v15

    move-object v15, v4

    move/from16 v16, v6

    move-object/from16 v17, v9

    invoke-direct/range {v11 .. v17}, Lcom/senseonics/events/MealEventPoint;-><init>(ILjava/util/Calendar;ILcom/senseonics/events/EventUtils$MEAL_TYPE;ILjava/lang/String;)V

    .line 1849
    invoke-virtual {v8, v7}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v8, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1851
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1853
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v4}, Lcom/senseonics/events/EventUtils;->getMealTypeName(Landroid/content/Context;Lcom/senseonics/events/EventUtils$MEAL_TYPE;)Ljava/lang/String;

    move-result-object v20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1855
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v8

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto/16 :goto_12

    :pswitch_9
    move-object/from16 p5, v4

    move-object/from16 p4, v7

    move-object v7, v14

    .line 1831
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1832
    new-instance v6, Lcom/senseonics/events/GlucoseEventPoint;

    move-object v11, v6

    move v12, v13

    move-object v13, v5

    move v14, v15

    move v10, v15

    move v15, v4

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    .line 1834
    invoke-virtual {v6, v7}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {v6, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1836
    invoke-static {v0, v10}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    .line 1838
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    .line 1840
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v6

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    goto :goto_12

    :pswitch_a
    move-object/from16 p5, v4

    move-object/from16 p4, v7

    move-object v7, v14

    move v10, v15

    .line 1819
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1820
    new-instance v4, Lcom/senseonics/events/CalibrationEventPoint;

    move-object v11, v4

    move v12, v13

    move-object v13, v5

    move v14, v10

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(ILjava/util/Calendar;IILjava/lang/String;)V

    .line 1822
    invoke-virtual {v4, v7}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v4, v1, v2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 1824
    invoke-static {v0, v10}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    .line 1826
    new-instance v17, Lcom/senseonics/util/Notification;

    invoke-static {v0, v8}, Lcom/senseonics/util/Utils;->getEventName(Landroid/content/Context;Lcom/senseonics/util/Utils$EVENT_TYPE;)Ljava/lang/String;

    move-result-object v20

    .line 1828
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    move-object/from16 v19, v17

    move-object/from16 v24, v4

    invoke-direct/range {v19 .. v24}, Lcom/senseonics/util/Notification;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/senseonics/events/EventPoint;)V

    :goto_12
    move-object/from16 v1, v17

    move-object/from16 v2, p5

    if-eqz v1, :cond_20

    .line 2102
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    :cond_20
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_13

    :cond_21
    move-object/from16 v7, p4

    move-object v4, v2

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    goto/16 :goto_3

    :cond_22
    move-object v2, v4

    .line 2105
    :goto_13
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public getSensorLogsStartingFrom(Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/graph/util/Glucose;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 695
    invoke-direct/range {p0 .. p1}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v1

    move-object/from16 v3, p2

    .line 696
    invoke-direct {v0, v3}, Lcom/senseonics/db/DatabaseManager;->getTimeMillsInDBfromCalendar(Ljava/util/Calendar;)J

    move-result-wide v3

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    .line 704
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v10, v2

    .line 705
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v10, v3

    .line 708
    iget-object v6, v0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "glucoseLevel"

    const-string v12, "timestamp"

    const-string v13, "groupId"

    const-string v14, "recordNumber"

    const-string v15, "glucoseRaw1"

    const-string v16, "glucoseRaw2"

    const-string v17, "glucoseRaw3"

    const-string v18, "glucoseRaw4"

    const-string v19, "glucoseRaw5"

    const-string v20, "glucoseRaw6"

    const-string v21, "glucoseRaw7"

    const-string v22, "glucoseRaw8"

    const-string v23, "accelValues"

    const-string v24, "accelTemp"

    filled-new-array/range {v11 .. v24}, [Ljava/lang/String;

    move-result-object v8

    const-string v7, "glucoseReadings"

    const-string v9, "timestamp >= ? AND timestamp <= ? AND glucoseLevel >= 40 AND glucoseLevel <= 400"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "timestamp ASC"

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 727
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v2

    .line 730
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 731
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 733
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 734
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v7, 0x3

    .line 735
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v8, 0x4

    .line 736
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x5

    .line 737
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v15, 0x6

    .line 738
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v15, 0x7

    .line 739
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v15, 0x8

    .line 740
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v8, 0x9

    .line 741
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v7, 0xa

    .line 742
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v5, 0xb

    .line 743
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v3, 0xc

    .line 744
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-short v3, v3

    const/16 v2, 0xd

    .line 745
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-short v2, v2

    .line 747
    new-instance v0, Lcom/senseonics/graph/util/Glucose;

    new-array v15, v15, [I

    const/16 v25, 0x0

    aput v14, v15, v25

    const/16 v24, 0x1

    aput v16, v15, v24

    const/16 v23, 0x2

    aput v17, v15, v23

    const/4 v14, 0x3

    aput v18, v15, v14

    const/4 v14, 0x4

    aput v20, v15, v14

    const/4 v14, 0x5

    aput v8, v15, v14

    const/4 v8, 0x6

    aput v7, v15, v8

    const/4 v7, 0x7

    aput v5, v15, v7

    move-object v8, v0

    move-object v14, v15

    move v15, v3

    move/from16 v16, v2

    invoke-direct/range {v8 .. v16}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII[ISS)V

    .line 752
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v5, v23

    move/from16 v3, v24

    move/from16 v2, v25

    goto/16 :goto_0

    .line 758
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method public getSqlLiteHelper()Lcom/senseonics/db/SenseonicsDBHelper;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    return-object v0
.end method

.method public getStatistics2Between(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 8

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " day\') AND datetime(\'now\')) AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "glucoseLevel"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 679
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "COUNT( glucoseLevel )"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "glucoseReadings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 685
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-lt p2, p4, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 686
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 687
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2

    .line 690
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p3
.end method

.method public getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)[D
    .locals 0

    .line 567
    invoke-virtual {p0, p1, p2, p3}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-virtual {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWithWhere(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getStatisticsBetween(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)[D
    .locals 0

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$TimeRange;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p0, p1}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWithWhere(Ljava/lang/String;)[D

    move-result-object p1

    return-object p1
.end method

.method public getStatisticsBetween(ILjava/lang/String;)[I
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 604
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getStatisticsBetweenWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 606
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "AVG( glucoseLevel )"

    const-string p2, "MIN( glucoseLevel )"

    const-string v2, "MAX( glucoseLevel )"

    const-string v3, "COUNT( glucoseLevel )"

    filled-new-array {p1, p2, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "glucoseReadings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 607
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 624
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 625
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 627
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v0, v2

    .line 628
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 629
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v0, v1

    .line 630
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, v0, p2

    .line 631
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 635
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method getStatisticsBetweenWhereClause(Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 420
    new-instance v2, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;

    move-object/from16 v3, p3

    invoke-direct {v2, v3}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;-><init>(Landroid/content/Context;)V

    .line 425
    sget-object v3, Lcom/senseonics/db/DatabaseManager$1;->$SwitchMap$com$senseonics$gen12androidapp$MealTimeDataHandler$MealType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-wide/32 v4, 0x5265bff

    packed-switch v3, :pswitch_data_0

    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v8, 0x0

    goto/16 :goto_2

    :pswitch_0
    move-wide v2, v4

    goto :goto_0

    .line 443
    :pswitch_1
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 444
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSleepEndtMinute()I

    move-result v2

    goto :goto_1

    .line 439
    :pswitch_2
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 440
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getDinnerEndMinute()I

    move-result v2

    goto :goto_1

    .line 435
    :pswitch_3
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 436
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getSnackEndMinute()I

    move-result v2

    goto :goto_1

    .line 431
    :pswitch_4
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 432
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getLunchEndMinute()I

    move-result v2

    goto :goto_1

    .line 427
    :pswitch_5
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastStartMinute()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    int-to-long v8, v3

    .line 428
    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndHour()I

    move-result v3

    mul-int/lit16 v3, v3, 0xe10

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/MealTimeDataHandler;->getBreakfastEndMinute()I

    move-result v2

    :goto_1
    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v3, v2

    int-to-long v2, v3

    .line 452
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {v10}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v10

    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v8, v14

    sub-long/2addr v8, v10

    sub-long/2addr v8, v12

    mul-long/2addr v2, v14

    sub-long/2addr v2, v10

    sub-long/2addr v2, v12

    .line 459
    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    if-ne v0, v10, :cond_0

    move-wide v2, v4

    .line 465
    :cond_0
    sget-object v10, Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;->ALL:Lcom/senseonics/gen12androidapp/MealTimeDataHandler$MealType;

    const-string v11, " <= "

    const-string v12, " AND "

    const-string v13, " >= "

    const-string v14, "(datetime(timestamp/1000,\'unixepoch\') BETWEEN datetime(\'now\', \'"

    const-string v15, "glucoseLevel"

    if-ne v0, v10, :cond_1

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    const-wide/32 v16, 0x5265c00

    .line 476
    rem-long v8, v8, v16

    add-long v8, v8, v16

    rem-long v8, v8, v16

    .line 477
    rem-long v2, v2, v16

    add-long v2, v2, v16

    rem-long v2, v2, v16

    cmp-long v0, v8, v2

    const-string v10, "/1000,\'unixepoch\') AND time("

    const-string v6, "/1000,\'unixepoch\') BETWEEN time("

    const-string v7, "timestamp"

    if-gtz v0, :cond_2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND  time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 490
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day\') AND datetime(\'now\')) AND  ((time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\')) OR  (time("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/1000,\'unixepoch\'))) AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MIN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/senseonics/util/Utils;->STATISTICS_GLUCOSE_MAX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newWhere:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NewWhereClause"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getStatisticsBetweenWithWhere(Ljava/lang/String;)[D
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [D

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select AVG( glucoseLevel), MIN( glucoseLevel), MAX( glucoseLevel ), COUNT( glucoseLevel), AVG ((glucosereadings.glucoseLevel - sub.a) * (glucosereadings.glucoseLevel - sub.a)) as var from glucosereadings, (SELECT AVG(glucoseLevel)  as a FROM glucoseReadings where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) AS sub where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 582
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 584
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 585
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x0

    .line 587
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v4, v4

    aput-wide v4, v0, v2

    .line 588
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v4, v2

    aput-wide v4, v0, v3

    const/4 v2, 0x2

    .line 589
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v0, v2

    .line 590
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    .line 591
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    .line 592
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 596
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public hideCalibrationEventAndGetNotesDuringSync(JIII)Ljava/lang/String;
    .locals 5

    .line 923
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide p1

    .line 925
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v2, p1, v0

    add-long/2addr p1, v0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 936
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 937
    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 938
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 939
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 940
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 941
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 942
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND glucoseLevel == ? AND (customType == ? OR customType == ?) AND event_synced == 1 AND event_hidden == 0"

    .line 945
    invoke-direct {p0, p1, v0}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSyncSubMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hideCalibrationEventAndGetNotesDuringSync(JIIII)Ljava/lang/String;
    .locals 5

    .line 949
    invoke-direct {p0, p1, p2}, Lcom/senseonics/db/DatabaseManager;->getGMTTimestamp(J)J

    move-result-wide p1

    .line 951
    sget-wide v0, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    sub-long v2, p1, v0

    add-long/2addr p1, v0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 962
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 963
    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 964
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 965
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 966
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 967
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 968
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    .line 969
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    const-string p1, "eventType == ? AND timestamp >= ? AND timestamp <= ? AND glucoseLevel == ? AND (customType == ? OR customType == ? OR customType == ?) AND event_synced == 1 AND event_hidden == 0"

    .line 972
    invoke-direct {p0, p1, v0}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSyncSubMethod(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notificationEventsExistsSince(JLjava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/senseonics/util/TransmitterMessageCode;",
            ">;)Z"
        }
    .end annotation

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$EVENT_TYPE;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp > ? AND eventType IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 2128
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v5, p2

    .line 2130
    iget-object v1, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "timestamp"

    const-string v2, "eventType"

    const-string v3, "customType"

    filled-new-array {p1, v2, v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "events"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2140
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v0, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    .line 2142
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/TransmitterMessageCode;->fromCodeID(I)Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    .line 2143
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2146
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2148
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return p2
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    invoke-virtual {v0}, Lcom/senseonics/db/SenseonicsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public setSqlLiteHelper(Lcom/senseonics/db/SenseonicsDBHelper;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/senseonics/db/DatabaseManager;->sqlLiteHelper:Lcom/senseonics/db/SenseonicsDBHelper;

    return-void
.end method

.method public updateEvent(Lcom/senseonics/events/EventPoint;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 1492
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getDatabaseId()I

    move-result v2

    .line 1491
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1495
    instance-of v2, p1, Lcom/senseonics/events/GlucoseEventPoint;

    if-nez v2, :cond_3

    .line 1496
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/senseonics/db/DatabaseManager;->getGlucoseLevelAt(Ljava/util/Calendar;Z)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1497
    sget v2, Lcom/senseonics/util/Utils;->INT_MAX:I

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_2

    .line 1500
    invoke-virtual {p1, v0}, Lcom/senseonics/events/EventPoint;->setGlucoseLevel(I)V

    goto :goto_1

    .line 1498
    :cond_1
    :goto_0
    sget v0, Lcom/senseonics/util/Utils;->EVENT_POSITION:I

    .line 1502
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "glucose level"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_3
    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->isEventSynced()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/db/DatabaseManager;->createValuesFrom(Lcom/senseonics/events/EventPoint;Z)Landroid/content/ContentValues;

    move-result-object p1

    .line 1506
    iget-object v0, p0, Lcom/senseonics/db/DatabaseManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "events"

    const-string v3, "id = ? "

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " rows"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "updated"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
