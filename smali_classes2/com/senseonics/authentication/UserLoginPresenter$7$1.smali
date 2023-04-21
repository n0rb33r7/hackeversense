.class Lcom/senseonics/authentication/UserLoginPresenter$7$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter$7;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$7$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$7$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$7;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->-$$Nest$fgetgermanyManager(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/GermanyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->enterOfflineMode()V

    .line 88
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$7$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$7;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$7;->val$view:Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->loadNextPage()V

    return-void
.end method
