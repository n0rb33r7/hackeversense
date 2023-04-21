.class Lorg/michaelbel/bottomsheet/BottomSheet$6;
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


# direct methods
.method constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 501
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 502
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 503
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 479
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 480
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 482
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$700(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet$6$1;

    invoke-direct {v0, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$6$1;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet$6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$900(Lorg/michaelbel/bottomsheet/BottomSheet;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1000(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result p1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    .line 495
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$6;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$900(Lorg/michaelbel/bottomsheet/BottomSheet;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 474
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
