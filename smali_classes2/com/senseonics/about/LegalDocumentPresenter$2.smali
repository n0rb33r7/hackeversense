.class Lcom/senseonics/about/LegalDocumentPresenter$2;
.super Ljava/lang/Object;
.source "LegalDocumentPresenter.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/about/LegalDocumentPresenter;->download(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/about/LegalDocumentPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/about/LegalDocumentPresenter;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$2;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 90
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/senseonics/about/LegalDocumentPresenter$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter$2;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-static {v0}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$fgeterrorHandler(Lcom/senseonics/about/LegalDocumentPresenter;)Lcom/senseonics/view/CommonErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/senseonics/view/CommonErrorHandler;->isInternetDisconnectedThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$2;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-static {p1}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mshowErrorPopupNoInternet(Lcom/senseonics/about/LegalDocumentPresenter;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$2;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-static {p1}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mshowErrorPopupUnknownError(Lcom/senseonics/about/LegalDocumentPresenter;)V

    .line 98
    :goto_0
    iget-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$2;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mcomplete(Lcom/senseonics/about/LegalDocumentPresenter;Z)V

    return-void
.end method
