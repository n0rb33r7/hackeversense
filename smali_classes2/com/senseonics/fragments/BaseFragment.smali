.class public Lcom/senseonics/fragments/BaseFragment;
.super Landroid/app/Fragment;
.source "BaseFragment.java"


# instance fields
.field protected accountConstants:Lcom/senseonics/util/AccountConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected alertHelper:Lcom/senseonics/util/AlertHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected bluetoothServiceCommandClient:Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected calibrationHelper:Lcom/senseonics/model/CalibrationHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected germanyManager:Lcom/senseonics/account/GermanyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;

    invoke-virtual {p1, p0}, Lcom/senseonics/gen12androidapp/ObjectGraphActivity;->inject(Ljava/lang/Object;)V

    .line 42
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/senseonics/fragments/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    const-string v1, "Fragments"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
