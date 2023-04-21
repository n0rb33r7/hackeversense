.class public interface abstract Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;
.super Ljava/lang/Object;
.source "LegalDocumentPresenter.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/about/LegalDocumentPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DocumentView"
.end annotation


# virtual methods
.method public abstract alwaysDisplayUpdatedInternetDisconnectedAlertText()Z
.end method

.method public abstract finish()V
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getLocalFolderName()Ljava/lang/String;
.end method

.method public abstract getServerFolderUrl()Ljava/lang/String;
.end method

.method public abstract shouldDownload()Z
.end method

.method public abstract wasPaused()Z
.end method

.method public abstract webViewLoadUrl(Ljava/lang/String;)V
.end method
