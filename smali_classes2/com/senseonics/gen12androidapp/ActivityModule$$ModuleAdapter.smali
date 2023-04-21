.class public final Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "ActivityModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideBluetoothAdapterProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideIsFirstRunProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lcom/senseonics/gen12androidapp/ActivityModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final INCLUDES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final INJECTS:[Ljava/lang/String;

.field private static final STATIC_INJECTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "members/com.senseonics.fragments.StatisticsWeeklyGraphFragment"

    const-string v1, "members/com.senseonics.fragments.StatisticsFragment"

    const-string v2, "members/com.senseonics.gen12androidapp.LandscapeGraphViewActivity"

    const-string v3, "members/com.senseonics.fragments.StatisticsPieChartFragment"

    const-string v4, "members/com.senseonics.fragments.StatisticsListFragment"

    const-string v5, "members/com.senseonics.pairing.BluetoothPairingFragment"

    const-string v6, "members/com.senseonics.gen12androidapp.MainActivity"

    const-string v7, "members/com.senseonics.gen12androidapp.BaseMVPActivity"

    const-string v8, "members/com.senseonics.authentication.UserLoginActivity"

    .line 26
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 28
    sput-object v1, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 30
    sput-object v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 33
    const-class v1, Lcom/senseonics/gen12androidapp/ActivityModule;

    sget-object v2, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/gen12androidapp/ActivityModule;)V
    .locals 2

    .line 42
    new-instance v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesActivityProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V

    const-string v1, "android.app.Activity"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 43
    new-instance v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideIsFirstRunProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideIsFirstRunProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V

    const-string v1, "@javax.inject.Named(value=IS_FIRST_RUN)/java.lang.Boolean"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 44
    new-instance v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideRefreshButtonProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V

    const-string v1, "@javax.inject.Named(value=REFRESH_BUTTON)/android.widget.ImageButton"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 45
    new-instance v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvidesBluetoothServiceProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V

    const-string v1, "com.senseonics.bluetoothle.BluetoothService"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 46
    new-instance v0, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideBluetoothAdapterProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter$ProvideBluetoothAdapterProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/ActivityModule;)V

    const-string p2, "android.bluetooth.BluetoothAdapter"

    invoke-virtual {p1, p2, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/senseonics/gen12androidapp/ActivityModule;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/ActivityModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/gen12androidapp/ActivityModule;)V

    return-void
.end method
