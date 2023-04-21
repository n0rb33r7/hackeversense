.class public final Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 17
    const-class v0, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;

    const-string v1, "com.senseonics.model.ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse"

    const-string v2, "members/com.senseonics.model.ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;
    .locals 1

    .line 26
    new-instance v0, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;

    invoke-direct {v0}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/ReadWriteLowGlucoseAlarmRepeatIntervalDayTimeSingleByteMemoryParsedResponse;

    move-result-object v0

    return-object v0
.end method
