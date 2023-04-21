.class public Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "WriteClinicalModeSingleByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/SingleByteMemoryMapParsedResponse;


# instance fields
.field private bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 19
    iput-object p2, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    return-void
.end method


# virtual methods
.method public apply(ILcom/senseonics/model/TransmitterStateModel;)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 34
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setClinicalMode(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p2, p1}, Lcom/senseonics/model/TransmitterStateModel;->setClinicalMode(Z)V

    .line 38
    :goto_0
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->isClinicalMode()Z

    move-result p1

    const-string p2, "ClinicalModeStartTime"

    if-eqz p1, :cond_2

    .line 39
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v0

    .line 41
    iget-object p1, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    iget-object p1, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-virtual {p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadClinicalModeDuration()V

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Save time in milli: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WriteClinicalModeSingleByteMemoryMapParsedResponse"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 24
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalMode:[I

    return-object v0
.end method
