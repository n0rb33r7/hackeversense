.class public Lcom/senseonics/util/NotificationEventPersistor;
.super Ljava/lang/Object;
.source "NotificationEventPersistor.java"


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private rssiReader:Lcom/senseonics/bluetoothle/RssiReader;


# direct methods
.method public constructor <init>(Lcom/senseonics/db/DatabaseManager;Lcom/senseonics/bluetoothle/RssiReader;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 22
    iput-object p2, p0, Lcom/senseonics/util/NotificationEventPersistor;->rssiReader:Lcom/senseonics/bluetoothle/RssiReader;

    return-void
.end method


# virtual methods
.method public createConnectionNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;JFIZ)V
    .locals 7

    .line 26
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/senseonics/events/EventPoint;

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p4, v2

    float-to-int p4, p4

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "~"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 p5, p5, 0x3c

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    iget-object v2, p0, Lcom/senseonics/util/NotificationEventPersistor;->rssiReader:Lcom/senseonics/bluetoothle/RssiReader;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/senseonics/bluetoothle/RssiReader;->getRssiString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 32
    sget-object p3, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterDisconnected:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p5, p2

    .line 34
    :goto_0
    invoke-virtual {v1, p5}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, p1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 p1, -0x1

    .line 36
    invoke-virtual {v1, p1, p2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 37
    invoke-virtual {v1, v3}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 38
    iget-object p1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    move-result-wide p1

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "new event "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " created"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationEventPersistor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNotificationEventPoint(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;)Lcom/senseonics/events/EventPoint;
    .locals 4

    .line 43
    new-instance v0, Lcom/senseonics/events/EventPoint;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/senseonics/events/EventPoint;-><init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V

    .line 44
    invoke-virtual {v0, p2}, Lcom/senseonics/events/EventPoint;->setNotes(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/senseonics/events/EventPoint;->setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V

    const-wide/16 p1, -0x1

    .line 46
    invoke-virtual {v0, p1, p2}, Lcom/senseonics/events/EventPoint;->setRecordNumber(J)V

    .line 47
    invoke-virtual {v0, v3}, Lcom/senseonics/events/EventPoint;->setEventHidden(Z)V

    .line 48
    iget-object p1, p0, Lcom/senseonics/util/NotificationEventPersistor;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J

    return-object v0
.end method
