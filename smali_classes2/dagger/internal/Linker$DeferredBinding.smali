.class Ldagger/internal/Linker$DeferredBinding;
.super Ldagger/internal/Binding;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final classLoader:Ljava/lang/ClassLoader;

.field final deferredKey:Ljava/lang/String;

.field final mustHaveInjections:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 454
    invoke-direct {p0, v0, v0, v1, p3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 455
    iput-object p1, p0, Ldagger/internal/Linker$DeferredBinding;->deferredKey:Ljava/lang/String;

    .line 456
    iput-object p2, p0, Ldagger/internal/Linker$DeferredBinding;->classLoader:Ljava/lang/ClassLoader;

    .line 457
    iput-boolean p4, p0, Ldagger/internal/Linker$DeferredBinding;->mustHaveInjections:Z

    return-void
.end method


# virtual methods
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

    .line 465
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Deferred bindings must resolve first."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 461
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deferred bindings must resolve first."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeferredBinding[deferredKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldagger/internal/Linker$DeferredBinding;->deferredKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
