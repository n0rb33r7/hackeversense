.class Lcom/senseonics/authentication/UserLoginPresenter$10$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter$10;->call(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/authentication/UserLoginPresenter$10;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter$10;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$10$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$10;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$10$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$10;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$10;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$700(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    return-void
.end method
