.class public Lcom/senseonics/about/PrivacyActivity;
.super Lcom/senseonics/about/LegalDocumentActivity;
.source "PrivacyActivity.java"


# instance fields
.field webview:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09041e
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/senseonics/about/LegalDocumentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Privacy_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/senseonics/util/AccountConfigurations;->getDocumentLanguageToDisplay(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalFolderName()Ljava/lang/String;
    .locals 1

    const-string v0, "Privacy"

    return-object v0
.end method

.method public getServerFolderUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.eversensedms.com/Privacy/"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Lcom/senseonics/about/LegalDocumentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003c

    .line 21
    invoke-virtual {p0, p1}, Lcom/senseonics/about/PrivacyActivity;->initializeLayout(I)Landroid/view/View;

    .line 22
    invoke-virtual {p0}, Lcom/senseonics/about/PrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11025e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/about/PrivacyActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 25
    iget-object p1, p0, Lcom/senseonics/about/PrivacyActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Lcom/senseonics/about/PrivacyActivity;->setupWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method public webViewLoadUrl(Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/senseonics/about/PrivacyActivity;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
