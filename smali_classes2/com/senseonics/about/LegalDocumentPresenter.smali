.class public Lcom/senseonics/about/LegalDocumentPresenter;
.super Lcom/senseonics/gen12androidapp/BasePresenter;
.source "LegalDocumentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/senseonics/gen12androidapp/BasePresenter<",
        "Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;",
        ">;"
    }
.end annotation


# instance fields
.field private final VALIDATION_KEYWORD:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final errorHandler:Lcom/senseonics/view/CommonErrorHandler;

.field private final repository:Lcom/senseonics/getFile/GetFileRepository;


# direct methods
.method static bridge synthetic -$$Nest$fgeterrorHandler(Lcom/senseonics/about/LegalDocumentPresenter;)Lcom/senseonics/view/CommonErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcomplete(Lcom/senseonics/about/LegalDocumentPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/about/LegalDocumentPresenter;->complete(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFilesDir(Lcom/senseonics/about/LegalDocumentPresenter;)Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowErrorPopupNoInternet(Lcom/senseonics/about/LegalDocumentPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->showErrorPopupNoInternet()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorPopupUnknownError(Lcom/senseonics/about/LegalDocumentPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->showErrorPopupUnknownError()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/getFile/GetFileRepository;Lcom/senseonics/view/CommonErrorHandler;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BasePresenter;-><init>()V

    const-string v0, "Senseonics"

    .line 28
    iput-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->VALIDATION_KEYWORD:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/senseonics/about/LegalDocumentPresenter;->repository:Lcom/senseonics/getFile/GetFileRepository;

    .line 38
    iput-object p3, p0, Lcom/senseonics/about/LegalDocumentPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/about/LegalDocumentPresenter;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    return-object p0
.end method

.method private complete(Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    invoke-interface {v0}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->hideProgress()V

    if-nez p1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->loadFile()V

    :goto_0
    return-void
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    invoke-interface {v0}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->showProgress()V

    .line 65
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->repository:Lcom/senseonics/getFile/GetFileRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/senseonics/about/LegalDocumentPresenter$1;

    invoke-direct {v1, p0, p2}, Lcom/senseonics/about/LegalDocumentPresenter$1;-><init>(Lcom/senseonics/about/LegalDocumentPresenter;Ljava/lang/String;)V

    new-instance p2, Lcom/senseonics/about/LegalDocumentPresenter$2;

    invoke-direct {p2, p0}, Lcom/senseonics/about/LegalDocumentPresenter$2;-><init>(Lcom/senseonics/about/LegalDocumentPresenter;)V

    invoke-virtual {v0, p1, v1, p2}, Lcom/senseonics/getFile/GetFileRepository;->getFile(Ljava/lang/String;Lrx/functions/Action1;Lrx/functions/Action1;)V

    return-void
.end method

.method private getFilesDir()Ljava/io/File;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getOnDismissListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
    .locals 1

    .line 139
    new-instance v0, Lcom/senseonics/about/LegalDocumentPresenter$3;

    invoke-direct {v0, p0}, Lcom/senseonics/about/LegalDocumentPresenter$3;-><init>(Lcom/senseonics/about/LegalDocumentPresenter;)V

    return-object v0
.end method

.method private loadFile()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v2, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    invoke-interface {v2}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->webViewLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private showErrorPopupNoInternet()V
    .locals 7

    .line 120
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v0, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    invoke-interface {v0}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->alwaysDisplayUpdatedInternetDisconnectedAlertText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    const v2, 0x7f11035e

    const v3, 0x7f110171

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->getOnDismissListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    move-result-object v5

    const/4 v6, 0x0

    .line 122
    invoke-interface/range {v1 .. v6}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->showDialog(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;Z)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->getOnDismissListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showInternetDisconnectedDialog(Lcom/senseonics/view/DialogShowingView;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    :goto_0
    return-void
.end method

.method private showErrorPopupUnknownError()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter;->errorHandler:Lcom/senseonics/view/CommonErrorHandler;

    iget-object v1, p0, Lcom/senseonics/about/LegalDocumentPresenter;->view:Ljava/lang/Object;

    check-cast v1, Lcom/senseonics/view/DialogShowingView;

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->getOnDismissListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/senseonics/view/CommonErrorHandler;->showUnknownErrorDialog(Lcom/senseonics/view/DialogShowingView;Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public attach(Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BasePresenter;->attach(Ljava/lang/Object;)V

    .line 45
    invoke-interface {p1}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->wasPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-interface {p1}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-interface {p1}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->getLocalFolderName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/about/LegalDocumentPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->CopyAssetsFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 56
    :cond_1
    invoke-interface {p1}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->shouldDownload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    invoke-interface {p1}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->getServerFolderUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/senseonics/about/LegalDocumentPresenter;->download(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentPresenter;->loadFile()V

    :goto_0
    return-void
.end method

.method public bridge synthetic attach(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    invoke-virtual {p0, p1}, Lcom/senseonics/about/LegalDocumentPresenter;->attach(Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;)V

    return-void
.end method
