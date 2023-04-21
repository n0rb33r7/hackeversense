.class public Lcom/senseonics/graph/util/Glucose;
.super Ljava/lang/Object;
.source "Glucose.java"


# instance fields
.field private accelTemp:S

.field private accelValues:S

.field private glucoseLevel:I

.field private groupId:I

.field private rawValues:[I

.field private recordNumber:I

.field private timestamp:J

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    .line 16
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    .line 42
    invoke-virtual {p0, p1}, Lcom/senseonics/graph/util/Glucose;->setX(F)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/senseonics/graph/util/Glucose;->setY(F)V

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    .line 16
    iput v0, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    .line 23
    invoke-virtual {p0, p3}, Lcom/senseonics/graph/util/Glucose;->setGlucoseLevel(I)V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/senseonics/graph/util/Glucose;->setTimestamp(J)V

    .line 25
    invoke-virtual {p0, p4}, Lcom/senseonics/graph/util/Glucose;->setGroupId(I)V

    .line 26
    invoke-virtual {p0, p5}, Lcom/senseonics/graph/util/Glucose;->setRecordNumber(I)V

    const/16 p1, 0x8

    new-array p1, p1, [I

    .line 28
    iput-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 p1, 0x0

    .line 29
    iput-short p1, p0, Lcom/senseonics/graph/util/Glucose;->accelValues:S

    .line 30
    iput-short p1, p0, Lcom/senseonics/graph/util/Glucose;->accelTemp:S

    return-void
.end method

.method public constructor <init>(JIII[ISS)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    .line 35
    iput-object p6, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    .line 36
    iput-short p7, p0, Lcom/senseonics/graph/util/Glucose;->accelValues:S

    .line 37
    iput-short p8, p0, Lcom/senseonics/graph/util/Glucose;->accelTemp:S

    return-void
.end method


# virtual methods
.method public getAccelTemp()S
    .locals 1

    .line 143
    iget-short v0, p0, Lcom/senseonics/graph/util/Glucose;->accelTemp:S

    return v0
.end method

.method public getAccelValues()S
    .locals 1

    .line 139
    iget-short v0, p0, Lcom/senseonics/graph/util/Glucose;->accelValues:S

    return v0
.end method

.method public getGlucoseLevel()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    return v0
.end method

.method public getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I
    .locals 1

    .line 102
    sget-object v0, Lcom/senseonics/graph/util/Glucose$1;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 132
    :pswitch_0
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x7

    aget v0, p1, v0

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x6

    aget v0, p1, v0

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x5

    aget v0, p1, v0

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x4

    aget v0, p1, v0

    goto :goto_0

    .line 116
    :pswitch_4
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x3

    aget v0, p1, v0

    goto :goto_0

    .line 112
    :pswitch_5
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x2

    aget v0, p1, v0

    goto :goto_0

    .line 108
    :pswitch_6
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    const/4 v0, 0x1

    aget v0, p1, v0

    goto :goto_0

    .line 104
    :pswitch_7
    iget-object p1, p0, Lcom/senseonics/graph/util/Glucose;->rawValues:[I

    aget v0, p1, v0

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRecordNumber()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    return-wide v0
.end method

.method public getX()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/senseonics/graph/util/Glucose;->y:F

    return v0
.end method

.method public setGlucoseLevel(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    return-void
.end method

.method public setRect(Landroid/graphics/Rect;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 7

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    invoke-static/range {v0 .. v6}, Lcom/senseonics/graph/util/GraphUtils;->getPositionX(IJJJ)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/senseonics/graph/util/Glucose;->setX(F)V

    .line 48
    iget p2, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    invoke-static {p2, p1}, Lcom/senseonics/graph/util/GraphUtils;->getPositionYForGlucose(ILandroid/graphics/Rect;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/graph/util/Glucose;->setY(F)V

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/senseonics/graph/util/Glucose;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 148
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/graph/util/Glucose;->glucoseLevel:I

    const-string v2, "glucoseLevel"

    .line 149
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/graph/util/Glucose;->x:F

    const-string v2, "x"

    .line 150
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;F)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/graph/util/Glucose;->y:F

    const-string v2, "y"

    .line 151
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;F)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/senseonics/graph/util/Glucose;->timestamp:J

    const-string v3, "timestamp"

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/graph/util/Glucose;->groupId:I

    const-string v2, "groupId"

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/senseonics/graph/util/Glucose;->recordNumber:I

    const-string v2, "recordNumber"

    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_1:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 155
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw1"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_2:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 156
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw2"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_3:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 157
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw3"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_4:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 158
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw4"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_5:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 159
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw5"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_6:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 160
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw6"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_7:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 161
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw7"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    sget-object v1, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->RAW_DATA_INDEX_8:Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;

    .line 162
    invoke-virtual {p0, v1}, Lcom/senseonics/graph/util/Glucose;->getRawValuesAtIndex(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;)I

    move-result v1

    const-string v2, "raw8"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-short v1, p0, Lcom/senseonics/graph/util/Glucose;->accelValues:S

    const-string v2, "accelValues"

    .line 163
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-short v1, p0, Lcom/senseonics/graph/util/Glucose;->accelTemp:S

    const-string v2, "accelTemp"

    .line 164
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
