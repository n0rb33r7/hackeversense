.class Lcom/senseonics/view/InkPageIndicator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/view/InkPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method constructor <init>(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$4;->this$0:Lcom/senseonics/view/InkPageIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 630
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$4;->this$0:Lcom/senseonics/view/InkPageIndicator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fputselectedDotInPosition(Lcom/senseonics/view/InkPageIndicator;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 623
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator$4;->this$0:Lcom/senseonics/view/InkPageIndicator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fputselectedDotInPosition(Lcom/senseonics/view/InkPageIndicator;Z)V

    return-void
.end method
