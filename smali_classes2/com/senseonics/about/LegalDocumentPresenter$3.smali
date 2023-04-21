.class Lcom/senseonics/about/LegalDocumentPresenter$3;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "LegalDocumentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/about/LegalDocumentPresenter;->getOnDismissListener()Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/about/LegalDocumentPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/about/LegalDocumentPresenter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$3;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/senseonics/about/LegalDocumentPresenter$3;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-static {v0}, Lcom/senseonics/about/LegalDocumentPresenter;->access$000(Lcom/senseonics/about/LegalDocumentPresenter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;

    invoke-interface {v0}, Lcom/senseonics/about/LegalDocumentPresenter$DocumentView;->finish()V

    return-void
.end method
