.class public Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserLoginActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/senseonics/authentication/UserLoginActivity;


# direct methods
.method public constructor <init>(Lcom/senseonics/authentication/UserLoginActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/senseonics/authentication/UserLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;-><init>(Lcom/senseonics/authentication/UserLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/authentication/UserLoginActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;->target:Lcom/senseonics/authentication/UserLoginActivity;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900f9

    const-string v2, "field \'createAccountHyperlink\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09018b

    const-string v2, "field \'forgotPasswordHyperlink\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f09040d

    const-string v2, "field \'username\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    .line 31
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0902cc

    const-string v2, "field \'password\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    .line 32
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f090210

    const-string v2, "field \'loginButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090116

    const-string v2, "field \'deleteAccountHyperlink\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/senseonics/authentication/UserLoginActivity;->deleteAccountHyperlink:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090113

    const-string v2, "field \'declineAccountHyperLink\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/senseonics/authentication/UserLoginActivity;->declineAccountHyperLink:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;->target:Lcom/senseonics/authentication/UserLoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 42
    iput-object v1, p0, Lcom/senseonics/authentication/UserLoginActivity_ViewBinding;->target:Lcom/senseonics/authentication/UserLoginActivity;

    .line 44
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->createAccountHyperlink:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->forgotPasswordHyperlink:Landroid/widget/TextView;

    .line 46
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->username:Landroid/widget/EditText;

    .line 47
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->password:Landroid/widget/EditText;

    .line 48
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->loginButton:Landroid/widget/Button;

    .line 49
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->deleteAccountHyperlink:Landroid/widget/TextView;

    .line 50
    iput-object v1, v0, Lcom/senseonics/authentication/UserLoginActivity;->declineAccountHyperLink:Landroid/widget/TextView;

    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
