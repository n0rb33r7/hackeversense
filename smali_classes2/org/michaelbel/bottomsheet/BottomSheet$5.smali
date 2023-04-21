.class Lorg/michaelbel/bottomsheet/BottomSheet$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;->dismissWithButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;I)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    iput p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->val$viewId:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 430
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 431
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 438
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 439
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 440
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 442
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->val$viewId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 443
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    iget v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->val$viewId:I

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 448
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$5;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$700(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet$5$1;

    invoke-direct {v0, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$5$1;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet$5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
