.class Lcom/senseonics/util/Emailer$1;
.super Landroid/content/Intent;
.source "Emailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/Emailer;->formShareEmail(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/util/Emailer;

.field final synthetic val$emailBody:Ljava/lang/String;

.field final synthetic val$emailTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/senseonics/util/Emailer;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/senseonics/util/Emailer$1;->this$0:Lcom/senseonics/util/Emailer;

    iput-object p4, p0, Lcom/senseonics/util/Emailer$1;->val$emailTitle:Ljava/lang/String;

    iput-object p5, p0, Lcom/senseonics/util/Emailer$1;->val$emailBody:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "EMAIL_TITLE"

    .line 32
    invoke-virtual {p0, p2, p4}, Lcom/senseonics/util/Emailer$1;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EMAIL_BODY"

    .line 33
    invoke-virtual {p0, p2, p5}, Lcom/senseonics/util/Emailer$1;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    invoke-static {p1}, Lcom/senseonics/util/Emailer;->-$$Nest$mgetInternalScreenshotPath(Lcom/senseonics/util/Emailer;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EMAIL_BITMAP_PATH"

    invoke-virtual {p0, p2, p1}, Lcom/senseonics/util/Emailer$1;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
