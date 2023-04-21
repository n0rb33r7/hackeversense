.class Lorg/michaelbel/bottomsheet/BottomSheet$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;->startShowAnimation()V
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

    .line 962
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 984
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 985
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 974
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 975
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 976
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2700(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 977
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2800(Lorg/michaelbel/bottomsheet/BottomSheet;)Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 965
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 967
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$900(Lorg/michaelbel/bottomsheet/BottomSheet;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1000(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result p1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    .line 968
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$9;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$900(Lorg/michaelbel/bottomsheet/BottomSheet;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->hide()V

    :cond_0
    return-void
.end method
