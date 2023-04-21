.class public enum Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
.super Ljava/lang/Enum;
.source "ALERT_LOG_RECORD_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum FALLING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum RISING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOTIFICATION_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

.field public static final enum SENSOR_CALIBRATION_NOW_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;


# instance fields
.field private typeCode:I


# direct methods
.method static bridge synthetic -$$Nest$smgetCalibrationEventNote(II)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getCalibrationEventNote(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsaveAlert(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->saveAlert(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsaveNotification(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->saveNotification(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 31

    .line 13
    new-instance v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;

    const-string v1, "LOW_GLUCOSE_ALARM_ASSERTED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$1-IA;)V

    sput-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 20
    new-instance v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$2;

    const-string v4, "HIGH_GLUCOSE_ALARM_ASSERTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$2;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$2-IA;)V

    sput-object v1, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 27
    new-instance v4, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$3;

    const-string v6, "LOW_GLUCOSE_ALERT_ASSERTED"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$3;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$3-IA;)V

    sput-object v4, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 34
    new-instance v6, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$4;

    const-string v8, "HIGH_GLUCOSE_ALERT_ASSERTED"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v9, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$4;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$4-IA;)V

    sput-object v6, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 41
    new-instance v8, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$5;

    const-string v10, "FALLING_RATE_ALERT_ASSERTED"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v11, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$5;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$5-IA;)V

    sput-object v8, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 49
    new-instance v10, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$6;

    const-string v12, "RISING_RATE_ALERT_ASSERTED"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v13, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$6;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$6-IA;)V

    sput-object v10, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 57
    new-instance v12, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$7;

    const-string v14, "PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v15, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$7;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$7-IA;)V

    sput-object v12, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 65
    new-instance v14, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$8;

    const-string v15, "PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED"

    const/4 v13, 0x7

    invoke-direct {v14, v15, v13, v13, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$8;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$8-IA;)V

    sput-object v14, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 73
    new-instance v15, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$9;

    const-string v13, "SENSOR_CALIBRATION_NOW_ALARM_ASSERTED"

    const/16 v11, 0x8

    invoke-direct {v15, v13, v11, v11, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$9;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$9-IA;)V

    sput-object v15, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 82
    new-instance v13, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$10;

    const-string v11, "SENSOR_CALIBRATION_NOTIFICATION_ASSERTED"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v9, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$10;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$10-IA;)V

    sput-object v13, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 91
    new-instance v11, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$11;

    const-string v9, "SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$11;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$11-IA;)V

    sput-object v11, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 100
    new-instance v9, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$12;

    const-string v7, "SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v5, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$12;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$12-IA;)V

    sput-object v9, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 109
    new-instance v7, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;

    const-string v5, "OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED"

    const/16 v2, 0xc

    invoke-direct {v7, v5, v2, v2, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13-IA;)V

    sput-object v7, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 117
    new-instance v5, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$14;

    const-string v2, "OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v2, v7, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$14;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$14-IA;)V

    sput-object v5, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ASSERTED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 127
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v3, "LOW_GLUCOSE_ALARM_CLEARED"

    const/16 v7, 0xe

    move-object/from16 v17, v5

    const/16 v5, 0xf0

    invoke-direct {v2, v3, v7, v5}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 128
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "HIGH_GLUCOSE_ALARM_CLEARED"

    const/16 v7, 0xf

    move-object/from16 v18, v2

    const/16 v2, 0xf1

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 129
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "LOW_GLUCOSE_ALERT_CLEARED"

    const/16 v7, 0x10

    move-object/from16 v19, v3

    const/16 v3, 0xf2

    invoke-direct {v2, v5, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 130
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "HIGH_GLUCOSE_ALERT_CLEARED"

    const/16 v7, 0x11

    move-object/from16 v20, v2

    const/16 v2, 0xf3

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 131
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "FALLING_RATE_ALERT_CLEARED"

    const/16 v7, 0x12

    move-object/from16 v21, v3

    const/16 v3, 0xf4

    invoke-direct {v2, v5, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->FALLING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 132
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "RISING_RATE_ALERT_CLEARED"

    const/16 v7, 0x13

    move-object/from16 v22, v2

    const/16 v2, 0xf5

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->RISING_RATE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 133
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED"

    const/16 v7, 0x14

    move-object/from16 v23, v3

    const/16 v3, 0xf6

    invoke-direct {v2, v5, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_LOW_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 134
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED"

    const/16 v7, 0x15

    move-object/from16 v24, v2

    const/16 v2, 0xf7

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->PREDICTIVE_HIGH_GLUCOSE_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 135
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "SENSOR_CALIBRATION_NOW_ALARM_CLEARED"

    const/16 v7, 0x16

    move-object/from16 v25, v3

    const/16 v3, 0xf8

    invoke-direct {v2, v5, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOW_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 136
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "SENSOR_CALIBRATION_NOTIFICATION_CLEARED"

    const/16 v7, 0x17

    move-object/from16 v26, v2

    const/16 v2, 0xf9

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_NOTIFICATION_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 137
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED"

    const/16 v7, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0xfa

    invoke-direct {v2, v5, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_GRACE_PERIOD_ALERT_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 138
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED"

    const/16 v7, 0x19

    move-object/from16 v28, v2

    const/16 v2, 0xfb

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->SENSOR_CALIBRATION_EXPIRED_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 139
    new-instance v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED"

    const/16 v7, 0x1a

    move-object/from16 v29, v3

    const/16 v3, 0xfc

    invoke-direct {v2, v5, v7, v3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_LOW_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    .line 140
    new-instance v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const-string v5, "OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED"

    const/16 v7, 0x1b

    move-object/from16 v30, v2

    const/16 v2, 0xfd

    invoke-direct {v3, v5, v7, v2}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->OUT_OF_RANGE_HIGH_GLUCOSE_ALARM_CLEARED:Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v8, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v14, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v13, v2, v0

    const/16 v0, 0xa

    aput-object v11, v2, v0

    const/16 v0, 0xb

    aput-object v9, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v26, v2, v0

    const/16 v0, 0x17

    aput-object v27, v2, v0

    const/16 v0, 0x18

    aput-object v28, v2, v0

    const/16 v0, 0x19

    aput-object v29, v2, v0

    const/16 v0, 0x1a

    aput-object v30, v2, v0

    const/16 v0, 0x1b

    aput-object v3, v2, v0

    .line 12
    sput-object v2, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->$VALUES:[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput p3, p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->typeCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static findBy(I)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
    .locals 5

    .line 186
    invoke-static {}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->values()[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 187
    iget v4, v3, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->typeCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Sensor Glucose Alert Log Record Type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCalibrationEventNote(II)Ljava/lang/String;
    .locals 1

    .line 208
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->suspiciousCalAlertsNewEc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {p0, p1}, Lcom/senseonics/util/Utils;->createCalAlertNote(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private static getGlucoseValue(I)I
    .locals 1

    .line 199
    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt p0, v0, :cond_0

    return p0

    .line 202
    :cond_0
    sget p0, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    return p0
.end method

.method private static saveAlert(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/Utils$EVENT_TYPE;Lcom/senseonics/util/Utils$ALERT_TYPE;Ljava/util/Calendar;IFIIZ)V
    .locals 6

    .line 155
    invoke-static {p4}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getGlucoseValue(I)I

    move-result v3

    .line 156
    new-instance p4, Lcom/senseonics/events/AlertEventPoint;

    sget-object v5, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    int-to-long p1, p7

    .line 158
    invoke-virtual {p4, p1, p2}, Lcom/senseonics/events/AlertEventPoint;->setRecordNumber(J)V

    const/4 p1, 0x0

    .line 160
    invoke-virtual {p4, p1}, Lcom/senseonics/events/AlertEventPoint;->setRateValue(F)V

    const/4 p1, 0x0

    .line 161
    invoke-virtual {p4, p1}, Lcom/senseonics/events/AlertEventPoint;->setPredictiveMinutes(I)V

    .line 162
    invoke-virtual {p4, p8}, Lcom/senseonics/events/AlertEventPoint;->setEventHidden(Z)V

    const/4 p1, 0x1

    .line 163
    invoke-virtual {p0, p4, p1}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-void
.end method

.method private static saveNotification(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V
    .locals 2

    .line 169
    invoke-static {p3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->getGlucoseValue(I)I

    move-result p3

    .line 170
    new-instance v0, Lcom/senseonics/events/EventPoint;

    .line 171
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    invoke-direct {v0, p4, p3, v1}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 172
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 p2, -0x1

    .line 174
    invoke-virtual {v0, p2, p3}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 175
    invoke-virtual {v0, p5}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 177
    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_0

    .line 178
    sget p1, Lcom/senseonics/util/Utils;->currentUnknownErrorCode:I

    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setUnknownErrorCode(I)V

    :cond_0
    const/4 p1, 0x1

    .line 181
    invoke-virtual {p0, v0, p1}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
    .locals 1

    .line 12
    const-class v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
    .locals 1

    .line 12
    sget-object v0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->$VALUES:[Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    return-object v0
.end method


# virtual methods
.method public getTypeCode()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->typeCode:I

    return v0
.end method

.method public save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    .locals 0

    return-void
.end method
