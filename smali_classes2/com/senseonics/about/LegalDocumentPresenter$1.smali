.class Lcom/senseonics/about/LegalDocumentPresenter$1;
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
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/about/LegalDocumentPresenter;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/about/LegalDocumentPresenter;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    iput-object p2, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/senseonics/about/LegalDocumentPresenter$1;->call(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public call(Lokhttp3/ResponseBody;)V
    .locals 3

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 72
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "Senseonics"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-static {v2}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mgetFilesDir(Lcom/senseonics/about/LegalDocumentPresenter;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 80
    invoke-static {v1, v0}, Lcom/senseonics/util/Utils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 83
    iget-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mcomplete(Lcom/senseonics/about/LegalDocumentPresenter;Z)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    iget-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    invoke-static {p1}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mshowErrorPopupUnknownError(Lcom/senseonics/about/LegalDocumentPresenter;)V

    .line 87
    iget-object p1, p0, Lcom/senseonics/about/LegalDocumentPresenter$1;->this$0:Lcom/senseonics/about/LegalDocumentPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/senseonics/about/LegalDocumentPresenter;->-$$Nest$mcomplete(Lcom/senseonics/about/LegalDocumentPresenter;Z)V

    :goto_0
    return-void
.end method
