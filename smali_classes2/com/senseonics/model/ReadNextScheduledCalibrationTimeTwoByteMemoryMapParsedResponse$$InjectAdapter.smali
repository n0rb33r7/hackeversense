.class public final Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    const-class v0, Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;

    const-string v1, "com.senseonics.model.ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse"

    const-string v2, "members/com.senseonics.model.ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;
    .locals 1

    .line 25
    new-instance v0, Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;

    invoke-direct {v0}, Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/ReadNextScheduledCalibrationTimeTwoByteMemoryMapParsedResponse;

    move-result-object v0

    return-object v0
.end method
