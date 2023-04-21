.class public final Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SplashActivity$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/gen12androidapp/SplashActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AccountConstants;",
            ">;"
        }
    .end annotation
.end field

.field private alarmRingtoneManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlarmRingtoneManager;",
            ">;"
        }
    .end annotation
.end field

.field private germanyManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/account/GermanyManager;",
            ">;"
        }
    .end annotation
.end field

.field private repository:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/compatibility/DeviceCompatibilityRepository;",
            ">;"
        }
    .end annotation
.end field

.field private supertype:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/ObjectGraphActivity;",
            ">;"
        }
    .end annotation
.end field

.field private tempProfileManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 42
    const-class v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    const-string v1, "com.senseonics.gen12androidapp.SplashActivity"

    const-string v2, "members/com.senseonics.gen12androidapp.SplashActivity"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 7

    .line 52
    const-class v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AccountConstants"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    .line 53
    const-class v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AlarmRingtoneManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    .line 54
    const-class v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TempProfileManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    .line 55
    const-class v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.compatibility.DeviceCompatibilityRepository"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->repository:Ldagger/internal/Binding;

    .line 56
    const-class v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.account.GermanyManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->germanyManager:Ldagger/internal/Binding;

    .line 57
    const-class v3, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v2, "members/com.senseonics.gen12androidapp.ObjectGraphActivity"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/gen12androidapp/SplashActivity;
    .locals 1

    .line 80
    new-instance v0, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-direct {v0}, Lcom/senseonics/gen12androidapp/SplashActivity;-><init>()V

    .line 81
    invoke-virtual {p0, v0}, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->get()Lcom/senseonics/gen12androidapp/SplashActivity;

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

    .line 66
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->germanyManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/gen12androidapp/SplashActivity;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AccountConstants;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 92
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->alarmRingtoneManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AlarmRingtoneManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->alarmRingtoneManager:Lcom/senseonics/util/AlarmRingtoneManager;

    .line 93
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 94
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->repository:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/compatibility/DeviceCompatibilityRepository;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->repository:Lcom/senseonics/compatibility/DeviceCompatibilityRepository;

    .line 95
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->germanyManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/account/GermanyManager;

    iput-object v0, p1, Lcom/senseonics/gen12androidapp/SplashActivity;->germanyManager:Lcom/senseonics/account/GermanyManager;

    .line 96
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->supertype:Ldagger/internal/Binding;

    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->injectMembers(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/senseonics/gen12androidapp/SplashActivity;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/SplashActivity$$InjectAdapter;->injectMembers(Lcom/senseonics/gen12androidapp/SplashActivity;)V

    return-void
.end method
