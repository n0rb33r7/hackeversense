.class public final Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "UserInfoSecureStorer$$InjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Lcom/senseonics/util/UserInfoSecureStorer;",
        ">;"
    }
.end annotation


# instance fields
.field private contextIn:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private saltedSecurePreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/securepreferences/SecurePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private securePreferences:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/securepreferences/SecurePreferences;",
            ">;"
        }
    .end annotation
.end field

.field private timeProvider:Ldagger/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Binding<",
            "Lcom/senseonics/util/TimeProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 32
    const-class v0, Lcom/senseonics/util/UserInfoSecureStorer;

    const-string v1, "com.senseonics.util.UserInfoSecureStorer"

    const-string v2, "members/com.senseonics.util.UserInfoSecureStorer"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3

    .line 42
    const-class v0, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "android.content.Context"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    .line 43
    const-class v0, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.senseonics.util.TimeProvider"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->timeProvider:Ldagger/internal/Binding;

    .line 44
    const-class v0, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=SecurePref)/com.securepreferences.SecurePreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->securePreferences:Ldagger/internal/Binding;

    .line 45
    const-class v0, Lcom/senseonics/util/UserInfoSecureStorer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "@javax.inject.Named(value=SaltedSecurePref)/com.securepreferences.SecurePreferences"

    invoke-virtual {p1, v2, v0, v1}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->saltedSecurePreferences:Ldagger/internal/Binding;

    return-void
.end method

.method public get()Lcom/senseonics/util/UserInfoSecureStorer;
    .locals 5

    .line 66
    new-instance v0, Lcom/senseonics/util/UserInfoSecureStorer;

    iget-object v1, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->timeProvider:Ldagger/internal/Binding;

    invoke-virtual {v2}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/util/TimeProvider;

    iget-object v3, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->securePreferences:Ldagger/internal/Binding;

    invoke-virtual {v3}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/securepreferences/SecurePreferences;

    iget-object v4, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->saltedSecurePreferences:Ldagger/internal/Binding;

    invoke-virtual {v4}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/securepreferences/SecurePreferences;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/senseonics/util/UserInfoSecureStorer;-><init>(Landroid/content/Context;Lcom/senseonics/util/TimeProvider;Lcom/securepreferences/SecurePreferences;Lcom/securepreferences/SecurePreferences;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->get()Lcom/senseonics/util/UserInfoSecureStorer;

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

    .line 54
    iget-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->contextIn:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->timeProvider:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->securePreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object p2, p0, Lcom/senseonics/util/UserInfoSecureStorer$$InjectAdapter;->saltedSecurePreferences:Ldagger/internal/Binding;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
