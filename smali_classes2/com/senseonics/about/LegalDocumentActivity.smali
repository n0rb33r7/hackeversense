.class public Lcom/senseonics/about/LegalDocumentActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "LegalDocumentActivity.java"

# interfaces
.implements Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;


# instance fields
.field presenter:Lcom/senseonics/about/LegalDocumentPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public alwaysDisplayUpdatedInternetDisconnectedAlertText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected attachToPresenter()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentActivity;->presenter:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/about/LegalDocumentPresenter;->attach(Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 0

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getLocalFolderName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getServerFolderUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentActivity;->presenter:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-virtual {v0}, Lcom/senseonics/about/LegalDocumentPresenter;->detach()V

    .line 32
    invoke-super {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onDestroy()V

    return-void
.end method

.method protected setupWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 73
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method public shouldDownload()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public wasPaused()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/senseonics/about/LegalDocumentActivity;->wasPaused:Z

    return v0
.end method

.method public webViewLoadUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
