.class public final Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private sharedPreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 28
    const-class v0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;

    const-string v1, "com.senseonics.model.WriteClinicalModeSingleByteMemoryMapParsedResponse"

    const-string v2, "members/com.senseonics.model.WriteClinicalModeSingleByteMemoryMapParsedResponse"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 38
    const-class v0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.SharedPreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    .line 39
    const-class v0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;
    .locals 3

    .line 58
    new-instance v0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;

    iget-object v1, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    invoke-direct {v0, v1, v2}, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;-><init>(Landroid/content/SharedPreferences;Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->get()Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;",
            "Ljava/util/Set<",
            "Ldagger/internal/Binding<",
            "*>;>;)V"
        }
    .end annotation

    .line 48
    iget-object p2, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->sharedPreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p2, p0, Lcom/senseonics/model/WriteClinicalModeSingleByteMemoryMapParsedResponse$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
