.class Lcom/senseonics/util/IntentUtils$1;
.super Ljava/lang/Object;
.source "IntentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/IntentUtils;->refreshGraphFromCache(Ljava/util/Calendar;Ljava/util/Calendar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/util/IntentUtils;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/senseonics/util/IntentUtils;Landroid/content/Intent;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/senseonics/util/IntentUtils$1;->this$0:Lcom/senseonics/util/IntentUtils;

    iput-object p2, p0, Lcom/senseonics/util/IntentUtils$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/senseonics/util/IntentUtils$1;->this$0:Lcom/senseonics/util/IntentUtils;

    invoke-static {v0}, Lcom/senseonics/util/IntentUtils;->-$$Nest$fgetcontext(Lcom/senseonics/util/IntentUtils;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/IntentUtils$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
