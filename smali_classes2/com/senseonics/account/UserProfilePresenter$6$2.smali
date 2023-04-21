.class Lcom/senseonics/account/UserProfilePresenter$6$2;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter$6;->onAccept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/account/UserProfilePresenter$6;


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter$6;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$6$2;->this$1:Lcom/senseonics/account/UserProfilePresenter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter$6$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$6$2;->this$1:Lcom/senseonics/account/UserProfilePresenter$6;

    iget-object v0, v0, Lcom/senseonics/account/UserProfilePresenter$6;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$monCallError(Lcom/senseonics/account/UserProfilePresenter;Ljava/lang/Throwable;Z)V

    return-void
.end method
