.class public final Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;
.super Ldagger/internal/ProvidesBinding;
.source "ActivityModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvidesActivityProvidesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ProvidesBinding<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/senseonics/gen12androidapp/ActivityModule;


# direct methods
.method public constructor <init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V
    .locals 4

    const-string v0, "android.app.Activity"

    const/4 v1, 0x0

    const-string v2, "com.senseonics.gen12androidapp.ActivityModule"

    const-string v3, "providesActivity"

    .line 60
    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/ProvidesBinding;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ActivityModule;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;->setLibrary(Z)V

    return-void
.end method


# virtual methods
.method public get()Landroid/app/Activity;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;->module:Lcom/senseonics/gen12androidapp/ActivityModule;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/ActivityModule;->providesActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;->get()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
