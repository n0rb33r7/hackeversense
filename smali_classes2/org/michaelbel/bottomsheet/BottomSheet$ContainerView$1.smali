.class Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->checkDismiss(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;


# direct methods
.method constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;->this$1:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 689
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 691
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;->this$1:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->access$1900(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;->this$1:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->access$1900(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;->this$1:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->access$1902(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
