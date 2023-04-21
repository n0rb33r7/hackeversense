.class public Lcom/senseonics/events/EventPoint;
.super Ljava/lang/Object;
.source "EventPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private calendar:Ljava/util/Calendar;

.field private calendarEventHidden:Ljava/util/Calendar;

.field private customField:I

.field private customField2:I

.field private databaseId:I

.field private eventHidden:Z

.field private eventSynced:Z

.field private eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

.field private glucoseLevel:I

.field private notes:Ljava/lang/String;

.field private notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

.field private predictiveMinutes:I

.field private rateValue:F

.field private recordNumber:J

.field private transmitterName:Ljava/lang/String;

.field private unknownErrorCode:I

.field private x:F

.field private xOnScreen:F

.field private y:F

.field private yOnScreen:F


# direct methods
.method public constructor <init>(ILjava/util/Calendar;I)V
    .locals 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    iput-boolean v0, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    const-wide/16 v1, -0x1

    .line 24
    iput-wide v1, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/senseonics/events/EventPoint;->rateValue:F

    .line 26
    iput v0, p0, Lcom/senseonics/events/EventPoint;->predictiveMinutes:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/senseonics/events/EventPoint;->customField:I

    .line 29
    iput v1, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    .line 31
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    .line 32
    iput v1, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    const-string v0, " "

    .line 34
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    .line 44
    iput p1, p0, Lcom/senseonics/events/EventPoint;->databaseId:I

    .line 45
    iput-object p2, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    .line 46
    iput p3, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    .line 47
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 48
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;I)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/senseonics/events/EventPoint;->databaseId:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    iput-boolean v1, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    const-wide/16 v2, -0x1

    .line 24
    iput-wide v2, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    const/4 v2, 0x0

    .line 25
    iput v2, p0, Lcom/senseonics/events/EventPoint;->rateValue:F

    .line 26
    iput v1, p0, Lcom/senseonics/events/EventPoint;->predictiveMinutes:I

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/senseonics/events/EventPoint;->customField:I

    .line 29
    iput v0, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    .line 31
    iput-object v1, p0, Lcom/senseonics/events/EventPoint;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    .line 32
    iput v0, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    const-string v0, " "

    .line 34
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    .line 38
    iput p2, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    .line 39
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;)V
    .locals 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/senseonics/events/EventPoint;->databaseId:I

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    iput-boolean v1, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    const-wide/16 v2, -0x1

    .line 24
    iput-wide v2, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    const/4 v2, 0x0

    .line 25
    iput v2, p0, Lcom/senseonics/events/EventPoint;->rateValue:F

    .line 26
    iput v1, p0, Lcom/senseonics/events/EventPoint;->predictiveMinutes:I

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    .line 28
    iput v0, p0, Lcom/senseonics/events/EventPoint;->customField:I

    .line 29
    iput v0, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    .line 31
    iput-object v1, p0, Lcom/senseonics/events/EventPoint;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    .line 32
    iput v0, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    const-string v0, " "

    .line 34
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    .line 53
    iput p2, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    .line 54
    iput-object p3, p0, Lcom/senseonics/events/EventPoint;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 55
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 56
    sget-object p1, Lcom/senseonics/util/Utils;->transmitterName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventPoint;->setTransmitterName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;ILcom/senseonics/util/Utils$EVENT_TYPE;JZZLjava/lang/String;III)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/senseonics/events/EventPoint;->databaseId:I

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/senseonics/events/EventPoint;->rateValue:F

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/senseonics/events/EventPoint;->predictiveMinutes:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v0, " "

    .line 34
    iput-object v0, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    .line 63
    iput p2, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    .line 64
    iput-object p3, p0, Lcom/senseonics/events/EventPoint;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    .line 65
    iput-wide p4, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    .line 66
    iput-boolean p6, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    .line 67
    iput-boolean p7, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    .line 68
    iput-object p8, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    .line 69
    iput p9, p0, Lcom/senseonics/events/EventPoint;->customField:I

    .line 70
    iput p10, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    .line 71
    iput p11, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 272
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 273
    :cond_1
    check-cast p1, Lcom/senseonics/events/EventPoint;

    .line 274
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    invoke-virtual {p1}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCalendarEventHidden()Ljava/util/Calendar;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->calendarEventHidden:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCustomField()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/senseonics/events/EventPoint;->customField:I

    return v0
.end method

.method public getCustomField2()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    return v0
.end method

.method public getDatabaseId()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/senseonics/events/EventPoint;->databaseId:I

    return v0
.end method

.method public getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-object v0
.end method

.method public getGlucoseLevel()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    return v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public getPredictiveMinutes()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/senseonics/events/EventPoint;->predictiveMinutes:I

    return v0
.end method

.method public getRateValue()F
    .locals 1

    .line 214
    iget v0, p0, Lcom/senseonics/events/EventPoint;->rateValue:F

    return v0
.end method

.method public getRecordNumber()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransmitterName()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    return-object v0
.end method

.method public getUnknownErrorCode()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/senseonics/events/EventPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/senseonics/events/EventPoint;->y:F

    return v0
.end method

.method public getxOnScreen()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/senseonics/events/EventPoint;->xOnScreen:F

    return v0
.end method

.method public getyOnScreen()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/senseonics/events/EventPoint;->yOnScreen:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 280
    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getEventType()Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/senseonics/events/EventPoint;->getNotificationEventType()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEventHidden()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    return v0
.end method

.method public isEventSynced()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    return v0
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method public setCalendarEventHidden(Ljava/util/Calendar;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->calendarEventHidden:Ljava/util/Calendar;

    return-void
.end method

.method public setCustomField(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/senseonics/events/EventPoint;->customField:I

    return-void
.end method

.method public setCustomField2(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    return-void
.end method

.method public setDatabaseId(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/senseonics/events/EventPoint;->databaseId:I

    return-void
.end method

.method public setEventHidden(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    return-void
.end method

.method public setEventSynced(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    return-void
.end method

.method public setEventType(Lcom/senseonics/util/Utils$EVENT_TYPE;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    return-void
.end method

.method public setGlucoseLevel(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    return-void
.end method

.method public setNotificationEventType(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->notificationEventType:Lcom/senseonics/util/TransmitterMessageCode;

    return-void
.end method

.method public setPredictiveMinutes(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/senseonics/events/EventPoint;->predictiveMinutes:I

    return-void
.end method

.method public setRateValue(F)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/senseonics/events/EventPoint;->rateValue:F

    return-void
.end method

.method public setRecordNumber(J)V
    .locals 0

    .line 210
    iput-wide p1, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    invoke-static {v0, p2, p3, v1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(ILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)F

    move-result p2

    .line 92
    invoke-virtual {p0, p2}, Lcom/senseonics/events/EventPoint;->setX(F)V

    .line 95
    iget p2, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    sget p3, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    if-le p2, p3, :cond_0

    .line 96
    sget p2, Lcom/senseonics/util/Utils;->GLUCOSE_MAX:I

    invoke-static {p2, p1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventPoint;->setY(F)V

    goto :goto_0

    .line 97
    :cond_0
    iget p2, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    sget p3, Lcom/senseonics/util/Utils;->GLUCOSE_MIN:I

    if-ge p2, p3, :cond_1

    .line 98
    sget p2, Lcom/senseonics/util/Utils;->GLUCOSE_MIN:I

    invoke-static {p2, p1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventPoint;->setY(F)V

    goto :goto_0

    .line 100
    :cond_1
    iget p2, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    invoke-static {p2, p1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/events/EventPoint;->setY(F)V

    :goto_0
    return-void
.end method

.method public setTransmitterName(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    return-void
.end method

.method public setUnknownErrorCode(I)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/senseonics/events/EventPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/senseonics/events/EventPoint;->y:F

    return-void
.end method

.method public setxOnScreen(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/senseonics/events/EventPoint;->xOnScreen:F

    return-void
.end method

.method public setyOnScreen(F)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/senseonics/events/EventPoint;->yOnScreen:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<EVENT>GMT Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/EventPoint;->calendar:Ljava/util/Calendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Glucose:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/events/EventPoint;->glucoseLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Event Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/EventPoint;->eventType:Lcom/senseonics/util/Utils$EVENT_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Record#:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/senseonics/events/EventPoint;->recordNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Synced:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/senseonics/events/EventPoint;->eventSynced:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Hidden:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/senseonics/events/EventPoint;->eventHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|TxName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/EventPoint;->transmitterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Custom Field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/events/EventPoint;->customField:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Custom Field2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/events/EventPoint;->customField2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Unknown Error Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/events/EventPoint;->unknownErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|Notes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/events/EventPoint;->notes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</EVENT>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
