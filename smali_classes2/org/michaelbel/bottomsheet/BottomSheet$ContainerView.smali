.class Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;
.super Landroid/widget/FrameLayout;
.source "BottomSheet.java"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContainerView"
.end annotation


# instance fields
.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private maybeStartTracking:Z

.field private nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    .line 587
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 579
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 580
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    const/4 p1, 0x0

    .line 582
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 583
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 588
    new-instance p1, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method static synthetic access$1900(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 573
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 573
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private cancelCurrentAnimation()V
    .locals 1

    .line 701
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private checkDismiss(FF)V
    .locals 7

    .line 672
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v0

    .line 673
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1600(Lorg/michaelbel/bottomsheet/BottomSheet;FZ)F

    move-result v1

    cmpg-float v1, v0, v1

    const v4, 0x455ac000    # 3500.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v1, :cond_0

    cmpg-float v1, p2, v4

    if-ltz v1, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v1, p1

    if-ltz p1, :cond_1

    :cond_0
    cmpg-float p1, p2, v5

    if-gez p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_2

    :cond_1
    move p1, v6

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    if-nez p1, :cond_3

    .line 676
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1700(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    .line 677
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p2, v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1702(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    .line 678
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p2, v6}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1802(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    .line 679
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->dismiss()V

    .line 680
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p2, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1702(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z

    goto :goto_1

    .line 682
    :cond_3
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-array p2, v6, [Landroid/animation/Animator;

    .line 683
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-array v4, v6, [F

    aput v5, v4, v3

    const-string v5, "translationY"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, p2, v3

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 684
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    const/high16 p2, 0x43160000    # 150.0f

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1, v2, v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1600(Lorg/michaelbel/bottomsheet/BottomSheet;FZ)F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 685
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 686
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;

    invoke-direct {p2, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView$1;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 696
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getNestedScrollAxes()I
    .locals 1

    .line 668
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 912
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 913
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->onContainerDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 889
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1400(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 893
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    move-object v0, p0

    .line 812
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2610(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    .line 813
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v7, 0x15

    if-eqz v1, :cond_2

    .line 814
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v7, :cond_0

    .line 815
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v1, p2

    .line 816
    iget-object v2, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    sub-int v2, p4, v2

    goto :goto_0

    :cond_0
    move v1, p2

    move/from16 v2, p4

    :goto_0
    sub-int v3, p5, p3

    .line 818
    iget-object v4, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v4}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v1

    .line 819
    iget-object v5, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v5}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 820
    iget-object v5, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v5}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v7, :cond_1

    .line 821
    iget-object v5, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v5}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v5

    add-int/2addr v4, v5

    .line 823
    :cond_1
    iget-object v5, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v5}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v6, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v6}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v8, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v8}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v5, v4, v3, v6, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    move v8, v1

    move v9, v2

    goto :goto_1

    :cond_2
    move v8, p2

    move/from16 v9, p4

    .line 826
    :goto_1
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->getChildCount()I

    move-result v10

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-ge v11, v10, :cond_c

    .line 828
    invoke-virtual {p0, v11}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 829
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-ne v12, v1, :cond_3

    goto/16 :goto_7

    .line 832
    :cond_3
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    move-object v2, v12

    move v3, v8

    move/from16 v4, p3

    move v5, v9

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/michaelbel/bottomsheet/BottomSheet;->onCustomLayout(Landroid/view/View;IIII)Z

    move-result v1

    if-nez v1, :cond_b

    .line 833
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 835
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 836
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 841
    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    const/16 v4, 0x33

    :cond_4
    and-int/lit8 v5, v4, 0x7

    and-int/lit8 v4, v4, 0x70

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5

    .line 858
    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_5
    sub-int v5, v9, v2

    .line 854
    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_6
    sub-int v5, v9, v8

    sub-int/2addr v5, v2

    .line 851
    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v5, v6

    :goto_4
    const/16 v6, 0x10

    if-eq v4, v6, :cond_9

    const/16 v6, 0x30

    if-eq v4, v6, :cond_8

    const/16 v6, 0x50

    if-eq v4, v6, :cond_7

    .line 872
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_7
    sub-int v4, p5, p3

    sub-int/2addr v4, v3

    .line 869
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    .line 863
    :cond_8
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    :cond_9
    sub-int v4, p5, p3

    sub-int/2addr v4, v3

    .line 866
    div-int/lit8 v4, v4, 0x2

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_5
    sub-int v1, v4, v1

    .line 874
    :goto_6
    iget-object v4, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v4}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v4

    if-eqz v4, :cond_a

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_a

    .line 875
    iget-object v4, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v4}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v5, v4

    :cond_a
    add-int/2addr v2, v5

    add-int/2addr v3, v1

    .line 877
    invoke-virtual {v12, v5, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_b
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 880
    :cond_c
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2600(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 881
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$700(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 882
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 883
    iget-object v1, v0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$202(Lorg/michaelbel/bottomsheet/BottomSheet;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_d
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 773
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 774
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 775
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    const/16 v1, 0x15

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 776
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    sub-int/2addr p2, v0

    .line 779
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setMeasuredDimension(II)V

    .line 780
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 781
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_1
    const/4 v0, 0x0

    if-ge p1, p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 785
    :goto_0
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_6

    .line 786
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result v2

    const/high16 v4, -0x80000000

    if-nez v2, :cond_5

    .line 788
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v2, :cond_3

    .line 789
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2500(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 791
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2500(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    goto :goto_1

    :cond_4
    int-to-float v1, p1

    mul-float/2addr v1, v5

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v5, 0x43f00000    # 480.0f

    invoke-static {v2, v5}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2500(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    :goto_1
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 793
    :goto_2
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/LinearLayout;->measure(II)V

    goto :goto_3

    .line 795
    :cond_5
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2500(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->measure(II)V

    .line 798
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->getChildCount()I

    move-result v1

    :goto_4
    if-ge v0, v1, :cond_9

    .line 800
    invoke-virtual {p0, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 801
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_8

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-ne v5, v2, :cond_7

    goto :goto_5

    .line 804
    :cond_7
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {v2, v5, p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->onCustomMeasure(Landroid/view/View;II)Z

    move-result v2

    if-nez v2, :cond_8

    .line 805
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/4 v7, 0x0

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 1

    .line 636
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 640
    :cond_0
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 641
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    if-lez p3, :cond_2

    int-to-float v0, p3

    sub-float/2addr p1, v0

    const/4 v0, 0x1

    .line 645
    aput p3, p4, v0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    .line 649
    aget p1, p4, v0

    int-to-float p1, p1

    add-float/2addr p1, p2

    float-to-int p1, p1

    aput p1, p4, v0

    goto :goto_0

    :cond_1
    move p2, p1

    .line 652
    :goto_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    .line 616
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    if-eqz p5, :cond_2

    .line 623
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    int-to-float p2, p5

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    move p1, p2

    .line 630
    :cond_1
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_2
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    .line 598
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 599
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 602
    :cond_0
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 593
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1400(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->nestedScrollingParentHelper:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 608
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 611
    invoke-direct {p0, p1, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->checkDismiss(FF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 709
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2000(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 715
    :cond_1
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2100(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    :cond_2
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-nez v0, :cond_5

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingX:I

    .line 717
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingY:I

    .line 718
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingX:I

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingX:I

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    if-le v0, v3, :cond_3

    goto :goto_0

    .line 722
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 723
    iput-boolean v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 724
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->cancelCurrentAnimation()V

    .line 725
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_f

    .line 726
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_4

    .line 719
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-virtual {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->dismiss()V

    return v2

    :cond_5
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 728
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_9

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v3, v4, :cond_9

    .line 729
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_6

    .line 730
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 732
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 734
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 735
    iget-boolean v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v5, :cond_7

    cmpl-float v5, v4, v0

    if-lez v5, :cond_7

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, v4, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v5}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$2200(Lorg/michaelbel/bottomsheet/BottomSheet;)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_7

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingY:I

    .line 737
    iput-boolean v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 738
    iput-boolean v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    .line 739
    invoke-virtual {p0, v2}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_4

    .line 740
    :cond_7
    iget-boolean v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    if-eqz v3, :cond_f

    .line 741
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v3

    add-float/2addr v3, v4

    cmpg-float v4, v3, v0

    if-gez v4, :cond_8

    goto :goto_1

    :cond_8
    move v0, v3

    .line 746
    :goto_1
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v3}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 747
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingY:I

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    if-eqz p1, :cond_f

    .line 749
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingPointerId:I

    if-ne v3, v4, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_f

    .line 750
    :cond_a
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_b

    .line 751
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 753
    :cond_b
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 754
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    .line 755
    iget-boolean v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v3, :cond_d

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_c

    goto :goto_2

    .line 759
    :cond_c
    iput-boolean v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    .line 760
    iput-boolean v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    goto :goto_3

    .line 756
    :cond_d
    :goto_2
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->checkDismiss(FF)V

    .line 757
    iput-boolean v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    .line 762
    :goto_3
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_e

    .line 763
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 764
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_e
    const/4 p1, -0x1

    .line 766
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTrackingPointerId:I

    .line 768
    :cond_f
    :goto_4
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1400(Lorg/michaelbel/bottomsheet/BottomSheet;)Z

    move-result p1

    if-nez p1, :cond_11

    :cond_10
    move v1, v2

    :cond_11
    return v1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 898
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->maybeStartTracking:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->startedTracking:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 899
    invoke-virtual {p0, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 902
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method
