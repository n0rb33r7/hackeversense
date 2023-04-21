.class public final Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "TransmitterModelNoFourByteMemoryMapParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    const-class v0, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;

    const-string v1, "com.senseonics.model.TransmitterModelNoFourByteMemoryMapParsedResponse"

    const-string v2, "members/com.senseonics.model.TransmitterModelNoFourByteMemoryMapParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;
    .locals 1

    .line 25
    new-instance v0, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;

    invoke-direct {v0}, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/TransmitterModelNoFourByteMemoryMapParsedResponse;

    move-result-object v0

    return-object v0
.end method
