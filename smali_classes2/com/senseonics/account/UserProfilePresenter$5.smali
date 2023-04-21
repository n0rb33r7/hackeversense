.class Lcom/senseonics/account/UserProfilePresenter$5;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/account/UserProfilePresenter;->refreshUserData(Z)V
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
.field final synthetic this$0:Lcom/senseonics/account/UserProfilePresenter;

.field final synthetic val$isManual:Z


# direct methods
.method constructor <init>(Lcom/senseonics/account/UserProfilePresenter;Z)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter$5;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    iput-boolean p2, p0, Lcom/senseonics/account/UserProfilePresenter$5;->val$isManual:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 108
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter$5;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter$5;->this$0:Lcom/senseonics/account/UserProfilePresenter;

    iget-boolean v1, p0, Lcom/senseonics/account/UserProfilePresenter$5;->val$isManual:Z

    invoke-static {v0, p1, v1}, Lcom/senseonics/account/UserProfilePresenter;->-$$Nest$monCallError(Lcom/senseonics/account/UserProfilePresenter;Ljava/lang/Throwable;Z)V

    return-void
.end method
