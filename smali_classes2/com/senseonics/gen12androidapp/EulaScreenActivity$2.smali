.class Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;
.super Ljava/lang/Object;
.source "EulaScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/EulaScreenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 31
    invoke-static {}, Lcom/senseonics/account/GermanyManager;->isGermany()Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->-$$Nest$mshowEULAConfirmation(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$2;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->-$$Nest$mEULAAccepted(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    :goto_0
    return-void
.end method
