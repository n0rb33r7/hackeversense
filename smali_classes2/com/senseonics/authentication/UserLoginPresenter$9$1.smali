.class Lcom/senseonics/authentication/UserLoginPresenter$9$1;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/authentication/UserLoginPresenter$9;->call(Lcom/senseonics/mycircle/model/UserProfileDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/authentication/UserLoginPresenter$9;


# direct methods
.method constructor <init>(Lcom/senseonics/authentication/UserLoginPresenter$9;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter$9$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$9;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$9$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$9;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->-$$Nest$fgetgermanyManager(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/GermanyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/account/GermanyManager;->exitOfflineMode()V

    .line 158
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter$9$1;->this$1:Lcom/senseonics/authentication/UserLoginPresenter$9;

    iget-object v0, v0, Lcom/senseonics/authentication/UserLoginPresenter$9;->this$0:Lcom/senseonics/authentication/UserLoginPresenter;

    invoke-static {v0}, Lcom/senseonics/authentication/UserLoginPresenter;->access$300(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->loadNextPage()V

    return-void
.end method
