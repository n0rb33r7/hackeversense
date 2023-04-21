.class final enum Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;
.super Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
.source "ALERT_LOG_RECORD_TYPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;-><init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE$13;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    .locals 6

    .line 113
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    sget v3, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    const-string v2, ""

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->-$$Nest$smsaveNotification(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;ILjava/util/Calendar;Z)V

    return-void
.end method
