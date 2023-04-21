.class public Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;
.super Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;
.source "InkPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/view/InkPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRetreatAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/view/InkPageIndicator;


# direct methods
.method public constructor <init>(Lcom/senseonics/view/InkPageIndicator;IIILcom/senseonics/view/InkPageIndicator$StartPredicate;)V
    .locals 7

    .line 700
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->this$0:Lcom/senseonics/view/InkPageIndicator;

    .line 701
    invoke-direct {p0, p1, p5}, Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;Lcom/senseonics/view/InkPageIndicator$StartPredicate;)V

    .line 702
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetanimHalfDuration(Lcom/senseonics/view/InkPageIndicator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 703
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetinterpolator(Lcom/senseonics/view/InkPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-le p3, p2, :cond_0

    .line 708
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p2

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetselectedDotX(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    goto :goto_0

    .line 709
    :cond_0
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p3

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    :goto_0
    sub-float/2addr p5, v0

    move v4, p5

    if-le p3, p2, :cond_1

    .line 710
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p3

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    goto :goto_1

    .line 711
    :cond_1
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object p5

    aget p5, p5, p3

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    :goto_1
    sub-float/2addr p5, v0

    if-le p3, p2, :cond_2

    .line 712
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object v0

    aget v0, v0, p3

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v1

    goto :goto_2

    .line 713
    :cond_2
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object v0

    aget v0, v0, p2

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetselectedDotX(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v1

    :goto_2
    add-float/2addr v0, v1

    move v5, v0

    if-le p3, p2, :cond_3

    .line 714
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object v0

    aget p3, v0, p3

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    goto :goto_3

    .line 715
    :cond_3
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object v0

    aget p3, v0, p3

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F

    move-result v0

    :goto_3
    add-float/2addr p3, v0

    .line 717
    new-array v0, p4, [Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    invoke-static {p1, v0}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fputrevealAnimations(Lcom/senseonics/view/InkPageIndicator;[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;)V

    .line 721
    new-array v3, p4, [I

    cmpl-float v0, v4, p5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    new-array p3, v1, [F

    aput v4, p3, v6

    aput p5, p3, v2

    .line 723
    invoke-virtual {p0, p3}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    :goto_4
    if-ge v6, p4, :cond_4

    .line 726
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetrevealAnimations(Lcom/senseonics/view/InkPageIndicator;)[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    move-result-object p3

    new-instance p5, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    add-int v0, p2, v6

    new-instance v1, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-direct {v1, p1, v2}, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    invoke-direct {p5, p1, v0, v1}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;ILcom/senseonics/view/InkPageIndicator$StartPredicate;)V

    aput-object p5, p3, v6

    .line 728
    aput v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 730
    :cond_4
    new-instance p2, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;

    invoke-direct {p2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$1;-><init>(Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_6

    :cond_5
    new-array p5, v1, [F

    aput v5, p5, v6

    aput p3, p5, v2

    .line 743
    invoke-virtual {p0, p5}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    :goto_5
    if-ge v6, p4, :cond_6

    .line 746
    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetrevealAnimations(Lcom/senseonics/view/InkPageIndicator;)[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    move-result-object p3

    new-instance p5, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    sub-int v0, p2, v6

    new-instance v1, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;

    invoke-static {p1}, Lcom/senseonics/view/InkPageIndicator;->-$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-direct {v1, p1, v2}, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    invoke-direct {p5, p1, v0, v1}, Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;ILcom/senseonics/view/InkPageIndicator$StartPredicate;)V

    aput-object p5, p3, v6

    .line 748
    aput v0, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 750
    :cond_6
    new-instance p2, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$2;

    invoke-direct {p2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$2;-><init>(Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p0, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 764
    :goto_6
    new-instance p2, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator$3;-><init>(Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;Lcom/senseonics/view/InkPageIndicator;[IFF)V

    invoke-virtual {p0, p2}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
