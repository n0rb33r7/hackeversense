.class public Lcom/senseonics/account/UserProfilePresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "UserProfilePresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/account/UserProfilePresenter$UserProfileView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/account/UserProfilePresenter$UserProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field private accountConstants:Lcom/senseonics/util/AccountConstants;

.field private bitmapUtil:Lcom/senseonics/util/BitmapUtil;

.field private errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private model:Lcom/senseonics/account/UserAccountModel;

.field private repository:Lcom/senseonics/account/UserProfileRepository;


# direct methods
.method static bridge synthetic -$$Nest$fgetaccountConstants(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/util/AccountConstants;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbitmapUtil(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/util/BitmapUtil;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodel(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/account/UserAccountModel;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrepository(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/account/UserProfileRepository;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisplayProfile(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->displayProfile()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDeleteImageListener(Lcom/senseonics/account/UserProfilePresenter;)Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->getDeleteImageListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleLogoutClicked(Lcom/senseonics/account/UserProfilePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->handleLogoutClicked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monCallError(Lcom/senseonics/account/UserProfilePresenter;Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/account/UserProfilePresenter;->onCallError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshUserData(Lcom/senseonics/account/UserProfilePresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/account/UserProfilePresenter;->refreshUserData(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/senseonics/account/UserProfileRepository;Lcom/senseonics/account/UserAccountModel;Lcom/senseonics/view/CommonErrorHandler;Lcom/senseonics/util/AccountConstants;Lcom/senseonics/util/BitmapUtil;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/senseonics/account/UserProfilePresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    .line 40
    iput-object p2, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    .line 41
    iput-object p3, p0, Lcom/senseonics/account/UserProfilePresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    .line 42
    iput-object p4, p0, Lcom/senseonics/account/UserProfilePresenter;->accountConstants:Lcom/senseonics/util/AccountConstants;

    .line 43
    iput-object p5, p0, Lcom/senseonics/account/UserProfilePresenter;->bitmapUtil:Lcom/senseonics/util/BitmapUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/account/UserProfilePresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/account/UserProfilePresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/senseonics/account/UserProfilePresenter;)Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private displayProfile()V
    .locals 4

    .line 82
    iget-boolean v0, p0, Lcom/senseonics/account/UserProfilePresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    iget-object v1, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v1}, Lcom/senseonics/account/UserAccountModel;->getMemberName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v2}, Lcom/senseonics/account/UserAccountModel;->getProfileImage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v3}, Lcom/senseonics/account/UserAccountModel;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->displayProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->hideProgress()V

    :cond_0
    return-void
.end method

.method private getDeleteImageListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
    .locals 1

    .line 120
    new-instance v0, Lcom/senseonics/account/UserProfilePresenter$6;

    invoke-direct {v0, p0}, Lcom/senseonics/account/UserProfilePresenter$6;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    return-object v0
.end method

.method private handleLogoutClicked()V
    .locals 8

    .line 155
    new-instance v4, Lcom/senseonics/account/UserProfilePresenter$7;

    invoke-direct {v4, p0}, Lcom/senseonics/account/UserProfilePresenter$7;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    .line 163
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    const v1, 0x7f11035b

    const v2, 0x7f110190

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v6, 0x7f110212

    const v7, 0x7f110362

    invoke-interface/range {v0 .. v7}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    return-void
.end method

.method private onCallError(Ljava/lang/Throwable;Z)V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lcom/senseonics/account/UserProfilePresenter;->attached:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-interface {v0}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->hideProgress()V

    if-eqz p2, :cond_0

    .line 92
    iget-object p2, p0, Lcom/senseonics/account/UserProfilePresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/view/DialogShowingView;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/senseonics/view/CommonErrorHandler;->showErrorDialog(Lcom/senseonics/view/DialogShowingView;Ljava/lang/Throwable;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :cond_0
    return-void
.end method

.method private refreshUserData(Z)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->repository:Lcom/senseonics/account/UserProfileRepository;

    new-instance v1, Lcom/senseonics/account/UserProfilePresenter$4;

    invoke-direct {v1, p0}, Lcom/senseonics/account/UserProfilePresenter$4;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    new-instance v2, Lcom/senseonics/account/UserProfilePresenter$5;

    invoke-direct {v2, p0, p1}, Lcom/senseonics/account/UserProfilePresenter$5;-><init>(Lcom/senseonics/account/UserProfilePresenter;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/account/UserProfileRepository;->fetchUserProfile(Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 49
    new-instance v0, Lcom/senseonics/account/UserProfilePresenter$1;

    invoke-direct {v0, p0}, Lcom/senseonics/account/UserProfilePresenter$1;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    new-instance v1, Lcom/senseonics/account/UserProfilePresenter$2;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/account/UserProfilePresenter$2;-><init>(Lcom/senseonics/account/UserProfilePresenter;Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V

    new-instance v2, Lcom/senseonics/account/UserProfilePresenter$3;

    invoke-direct {v2, p0}, Lcom/senseonics/account/UserProfilePresenter$3;-><init>(Lcom/senseonics/account/UserProfilePresenter;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;->setupProfileViews(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/senseonics/account/UserProfilePresenter;->loadProfile()V

    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lcom/senseonics/account/UserProfilePresenter$UserProfileView;

    invoke-virtual {p0, p1}, Lcom/senseonics/account/UserProfilePresenter;->attach(Lcom/senseonics/account/UserProfilePresenter$UserProfileView;)V

    return-void
.end method

.method public loadProfile()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/senseonics/account/UserProfilePresenter;->model:Lcom/senseonics/account/UserAccountModel;

    invoke-virtual {v0}, Lcom/senseonics/account/UserAccountModel;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/senseonics/account/UserProfilePresenter;->displayProfile()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/senseonics/account/UserProfilePresenter;->refreshUserData(Z)V

    :goto_0
    return-void
.end method
