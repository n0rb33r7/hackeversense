.class public final enum Lcom/senseonics/util/Utils$EVENT_TYPE;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EVENT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/senseonics/util/Utils$EVENT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field public static final enum RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 406
    new-instance v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v1, "CALIBRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATION:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 407
    new-instance v1, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v3, "GROUP_EVENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->GROUP_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 408
    new-instance v3, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v5, "GLUCOSE_EVENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->GLUCOSE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 409
    new-instance v5, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v7, "MEAL_EVENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/senseonics/util/Utils$EVENT_TYPE;->MEAL_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 410
    new-instance v7, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v9, "INSULIN_EVENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/senseonics/util/Utils$EVENT_TYPE;->INSULIN_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 411
    new-instance v9, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v11, "HEALTH_EVENT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/senseonics/util/Utils$EVENT_TYPE;->HEALTH_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 412
    new-instance v11, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v13, "EXERCISE_EVENT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/senseonics/util/Utils$EVENT_TYPE;->EXERCISE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 413
    new-instance v13, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v15, "NOTIFICATION_EVENT_RED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_RED:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 414
    new-instance v15, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v14, "NOTIFICATION_EVENT_YELLOW"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_YELLOW:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 415
    new-instance v14, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v12, "NOTIFICATION_EVENT_BLUE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/senseonics/util/Utils$EVENT_TYPE;->NOTIFICATION_EVENT_BLUE:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 416
    new-instance v12, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v10, "ALERT_EVENT"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 417
    new-instance v10, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v8, "ALARM_EVENT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALARM_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 418
    new-instance v8, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v6, "PREDICTIVE_ALERT_EVENT_FALLING"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 419
    new-instance v6, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v4, "PREDICTIVE_ALERT_EVENT_RISING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->PREDICTIVE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 420
    new-instance v4, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v2, "RATE_ALERT_EVENT_FALLING"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_FALLING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 421
    new-instance v2, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v6, "RATE_ALERT_EVENT_RISING"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->RATE_ALERT_EVENT_RISING:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 422
    new-instance v6, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v4, "CALIBRATE_NOW_EVENT"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 423
    new-instance v4, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v2, "CALIBRATE_GRACE_EVENT"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 424
    new-instance v2, Lcom/senseonics/util/Utils$EVENT_TYPE;

    const-string v6, "CALIBRATE_EXPIRED_EVENT"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/senseonics/util/Utils$EVENT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v6, 0x13

    new-array v6, v6, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    const/16 v0, 0xf

    aput-object v19, v6, v0

    const/16 v0, 0x10

    aput-object v20, v6, v0

    const/16 v0, 0x11

    aput-object v21, v6, v0

    aput-object v2, v6, v4

    .line 405
    sput-object v6, Lcom/senseonics/util/Utils$EVENT_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$EVENT_TYPE;
    .locals 1

    .line 405
    const-class v0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/senseonics/util/Utils$EVENT_TYPE;
    .locals 1

    .line 405
    sget-object v0, Lcom/senseonics/util/Utils$EVENT_TYPE;->$VALUES:[Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v0}, [Lcom/senseonics/util/Utils$EVENT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-object v0
.end method
