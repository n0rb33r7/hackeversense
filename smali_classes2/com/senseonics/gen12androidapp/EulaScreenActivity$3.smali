.class Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;
.super Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;
.source "EulaScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/EulaScreenActivity;->showEULAConfirmation()V
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

    .line 57
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p0}, Lcom/senseonics/view/SimpleDialogFragment$OnDismissListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$3;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->-$$Nest$mEULAAccepted(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V

    return-void
.end method
