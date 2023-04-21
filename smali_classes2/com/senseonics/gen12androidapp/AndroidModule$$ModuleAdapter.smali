.class public final Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;
.super Ldagger/internal/ModuleAdapter;
.source "AndroidModule$$ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvidesAlarmManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvidesAppWidgetManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideHandlerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;,
        Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/ModuleAdapter<",
        "Lcom/senseonics/gen12androidapp/AndroidModule;",
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
    .locals 2

    const-string v0, "members/com.senseonics.gen12androidapp.SenseonicsApplication"

    .line 31
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 33
    sput-object v1, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 35
    sput-object v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 38
    const-class v1, Lcom/senseonics/gen12androidapp/AndroidModule;

    sget-object v2, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INJECTS:[Ljava/lang/String;

    sget-object v3, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->STATIC_INJECTIONS:[Ljava/lang/Class;

    sget-object v5, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->INCLUDES:[Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ldagger/internal/ModuleAdapter;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V

    return-void
.end method


# virtual methods
.method public getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/gen12androidapp/AndroidModule;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideContextProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "android.content.Context"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 48
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideDatabaseManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "com.senseonics.db.DatabaseManager"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 49
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideSharedPreferencesProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "android.content.SharedPreferences"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 50
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideHandlerProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideHandlerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "android.os.Handler"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 51
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideNotificationManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "android.app.NotificationManager"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 52
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideAudioManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "android.media.AudioManager"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 53
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideEventBusProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "de.greenrobot.event.EventBus"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 54
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideApplicationForegroundStateProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "com.senseonics.bluetoothle.ApplicationForegroundState"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 55
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvideGraphCacheProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "com.senseonics.graph.GraphCache"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 56
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvidesAppWidgetManagerProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvidesAppWidgetManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string v1, "android.appwidget.AppWidgetManager"

    invoke-virtual {p1, v1, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    .line 57
    new-instance v0, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvidesAlarmManagerProvidesAdapter;

    invoke-direct {v0, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter$ProvidesAlarmManagerProvidesAdapter;-><init>(Lcom/senseonics/gen12androidapp/AndroidModule;)V

    const-string p2, "android.app.AlarmManager"

    invoke-virtual {p1, p2, v0}, Ldagger/internal/BindingsGroup;->contributeProvidesBinding(Ljava/lang/String;Ldagger/internal/ProvidesBinding;)Ldagger/internal/Binding;

    return-void
.end method

.method public bridge synthetic getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lcom/senseonics/gen12androidapp/AndroidModule;

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/gen12androidapp/AndroidModule$$ModuleAdapter;->getBindings(Ldagger/internal/BindingsGroup;Lcom/senseonics/gen12androidapp/AndroidModule;)V

    return-void
.end method
