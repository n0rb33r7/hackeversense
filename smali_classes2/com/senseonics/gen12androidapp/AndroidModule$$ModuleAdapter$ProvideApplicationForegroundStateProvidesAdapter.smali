.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "AndroidModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideApplicationForegroundStateProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Lcom/senseonics/bluetoothle/ApplicationForegroundState;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/AndroidModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 4

    const-string v0, "com.senseonics.bluetoothle.ApplicationForegroundState"

    const/4 v1, 0x1

    const-string v2, "com.senseonics.gen12androidapp.AndroidModule"

    const-string v3, "provideApplicationForegroundState"

    .line 253
    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    .line 255
    invoke-virtual {p0, v1}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Lcom/senseonics/bluetoothle/ApplicationForegroundState;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/AndroidModule;->provideApplicationForegroundState()Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;->get()Lcom/senseonics/bluetoothle/ApplicationForegroundState;

    move-result-object v0

    return-object v0
.end method
