.class public final Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "BaseFragment$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/fragments/BaseFragment;",
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

.field private alertHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/AlertHelper;",
            ">;"
        }
    .end annotation
.end field

.field private bluetoothServiceCommandClient:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;",
            ">;"
        }
    .end annotation
.end field

.field private calibrationHelper:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/CalibrationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private dialogUtils:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/DialogUtils;",
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

.field private tempProfileManager:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/bluetoothle/TempProfileManager;",
            ">;"
        }
    .end annotation
.end field

.field private transmitterStateModel:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/model/TransmitterStateModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 49
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    const-string v1, "com.senseonics.fragments.BaseFragment"

    const-string v2, "members/com.senseonics.fragments.BaseFragment"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 59
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.TransmitterStateModel"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    .line 60
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.DialogUtils"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    .line 61
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AccountConstants"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    .line 62
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.bluetoothle.TempProfileManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    .line 63
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.AlertHelper"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    .line 64
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.model.CalibrationHelper"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    .line 65
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.gen12androidapp.BluetoothServiceCommandClient"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    .line 66
    const-class v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.account.GermanyManager"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->germanyManager:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/fragments/BaseFragment;
    .locals 1

    .line 91
    new-instance v0, Lcom/senseonics/fragments/BaseFragment;

    invoke-direct {v0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 92
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/BaseFragment;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->get()Lcom/senseonics/fragments/BaseFragment;

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

    .line 75
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->germanyManager:Ldagger/internal/Binding;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public injectMembers(Lcom/senseonics/fragments/BaseFragment;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->transmitterStateModel:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/TransmitterStateModel;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 103
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->dialogUtils:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/DialogUtils;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    .line 104
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->accountConstants:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AccountConstants;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 105
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->tempProfileManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/TempProfileManager;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    .line 106
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->alertHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/util/AlertHelper;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    .line 107
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->calibrationHelper:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/model/CalibrationHelper;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    .line 108
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->bluetoothServiceCommandClient:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;

    .line 109
    iget-object v0, p0, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->germanyManager:Ldagger/internal/Binding;

    invoke-virtual {v0}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/account/GermanyManager;

    iput-object v0, p1, Lcom/senseonics/fragments/BaseFragment;->germanyManager:Lcom/senseonics/account/GermanyManager;

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/senseonics/fragments/BaseFragment;

    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/BaseFragment$$InjectAdapter;->injectMembers(Lcom/senseonics/fragments/BaseFragment;)V

    return-void
.end method
