.class Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;ILcom/senseonics/view/InkPageIndicator$StartPredicate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

.field final synthetic val$this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;->val$this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 812
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    invoke-static {v0}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->-$$Nest$fgetdot(Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$msetDotRevealFraction(Lcom/senseonics/view/InkPageIndicator;IF)V

    .line 813
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator$2;->this$1:Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    iget-object p1, p1, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method
