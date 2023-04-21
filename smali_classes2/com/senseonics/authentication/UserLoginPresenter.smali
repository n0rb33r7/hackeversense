.class public Lcom/senseonics/authentication/UserLoginPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "UserLoginPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;",
        ">;"
    }
.end annotation


# instance fields
.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private germanyManager:Lcom/senseonics/account/GermanyManager;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private repository:Lcom/senseonics/account/UserProfileRepository;


# direct methods
.method static bridge synthetic -$$Nest$fgeterrorHandler(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/view/CommonErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgermanyManager(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/GermanyManager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->germanyManager:Lcom/senseonics/account/GermanyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/authentication/UserLoginPresenter;)Lcom/senseonics/account/UserAccountModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateAccount(Lcom/senseonics/authentication/UserLoginPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/authentication/UserLoginPresenter;->createAccount()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleLoginClicked(Lcom/senseonics/authentication/UserLoginPresenter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/authentication/UserLoginPresenter;->handleLoginClicked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshLoginButton(Lcom/senseonics/authentication/UserLoginPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/authentication/UserLoginPresenter;->refreshLoginButton()V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/account/GermanyManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    .line 36
    iput-object p2, p0, Lcom/senseonics/authentication/UserLoginPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 37
    iput-object p3, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    .line 38
    iput-object p4, p0, Lcom/senseonics/authentication/UserLoginPresenter;->germanyManager:Lcom/senseonics/account/GermanyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/authentication/UserLoginPresenter;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->attached:Z

    return p0
.end method

.method static synthetic access$200(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/authentication/UserLoginPresenter;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->attached:Z

    return p0
.end method

.method static synthetic access$600(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/senseonics/authentication/UserLoginPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private createAccount()V
    .locals 1

    .line 105
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isGermany()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/senseonics/authentication/UserLoginPresenter;->showCreateAccountConfirmation()V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->openCreateAccount()V

    :goto_0
    return-void
.end method

.method private handleLoginClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const v1, 0x7f110174

    const v2, 0x7f110175

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void

    .line 139
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const v1, 0x7f110177

    const v2, 0x7f110178

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showProgress()V

    .line 147
    new-instance v0, Lcom/senseonics/authentication/UserLoginPresenter$9;

    invoke-direct {v0, p0}, Lcom/senseonics/authentication/UserLoginPresenter$9;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    .line 170
    new-instance v1, Lcom/senseonics/authentication/UserLoginPresenter$10;

    invoke-direct {v1, p0}, Lcom/senseonics/authentication/UserLoginPresenter$10;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    .line 188
    iget-object v2, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v2, p1, p2}, Lcom/senseonics/account/UserAccountModel;->initialize(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    invoke-virtual {p1, v0, v1}, Lcom/senseonics/account/UserProfileRepository;->fetchUserProfile(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private refreshLoginButton()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->getProvidedPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-interface {v1, v0}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setLoginButtonEnabled(Z)V

    return-void
.end method

.method private showCreateAccountConfirmation()V
    .locals 8

    .line 113
    new-instance v4, Lcom/senseonics/authentication/UserLoginPresenter$8;

    invoke-direct {v4, p0}, Lcom/senseonics/authentication/UserLoginPresenter$8;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    const/4 v1, 0x0

    const v2, 0x7f110106

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v6, 0x7f110083

    const v7, 0x7f11001e

    invoke-interface/range {v0 .. v7}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V
    .locals 10

    .line 43
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0}, Lcom/senseonics/authentication/UserLoginPresenter;->refreshLoginButton()V

    .line 45
    iget-object v0, p0, Lcom/senseonics/authentication/UserLoginPresenter;->model:Lcom/senseonics/account/UserAccountModel;

    .line 46
    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->getCurrentUserDisplayName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/senseonics/authentication/UserLoginPresenter$1;

    invoke-direct {v3, p0}, Lcom/senseonics/authentication/UserLoginPresenter$1;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    new-instance v4, Lcom/senseonics/authentication/UserLoginPresenter$2;

    invoke-direct {v4, p0}, Lcom/senseonics/authentication/UserLoginPresenter$2;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;)V

    new-instance v5, Lcom/senseonics/authentication/UserLoginPresenter$3;

    invoke-direct {v5, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$3;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v6, Lcom/senseonics/authentication/UserLoginPresenter$4;

    invoke-direct {v6, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$4;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v7, Lcom/senseonics/authentication/UserLoginPresenter$5;

    invoke-direct {v7, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$5;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v8, Lcom/senseonics/authentication/UserLoginPresenter$6;

    invoke-direct {v8, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$6;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    new-instance v9, Lcom/senseonics/authentication/UserLoginPresenter$7;

    invoke-direct {v9, p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter$7;-><init>(Lcom/senseonics/authentication/UserLoginPresenter;Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    move-object v1, p1

    .line 45
    invoke-interface/range {v1 .. v9}, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;->setupViews(Ljava/lang/String;Landroid/text/TextWatcher;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;

    invoke-virtual {p0, p1}, Lcom/senseonics/authentication/UserLoginPresenter;->attach(Lcom/senseonics/authentication/UserLoginPresenter$UserLoginView;)V

    return-void
.end method
