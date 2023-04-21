.class public Lcom/senseonics/view/InkPageIndicator;
.super Landroid/view/View;
.source "InkPageIndicator.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/view/InkPageIndicator$SavedState;,
        Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;,
        Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;,
        Lcom/senseonics/view/InkPageIndicator$StartPredicate;,
        Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;,
        Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;,
        Lcom/senseonics/view/InkPageIndicator$PendingStartAnimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIM_DURATION:I = 0x190

.field private static final DEFAULT_DOT_SIZE:I = 0x8

.field private static final DEFAULT_GAP:I = 0xc

.field private static final DEFAULT_SELECTED_COLOUR:I = -0x1

.field private static final DEFAULT_UNSELECTED_COLOUR:I = -0x7f000001

.field private static final INVALID_FRACTION:F = -1.0f

.field private static final MINIMAL_REVEAL:F = 1.0E-5f


# instance fields
.field private animDuration:J

.field private animHalfDuration:J

.field private combinedUnselectedPath:Landroid/graphics/Path;

.field controlX1:F

.field controlX2:F

.field controlY1:F

.field controlY2:F

.field private currentPage:I

.field private dotBottomY:F

.field private dotCenterX:[F

.field private dotCenterY:F

.field private dotDiameter:I

.field private dotRadius:F

.field private dotRevealFractions:[F

.field private dotTopY:F

.field endX1:F

.field endX2:F

.field endY1:F

.field endY2:F

.field private gap:I

.field private halfDotRadius:F

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private isAttachedToWindow:Z

.field private joiningAnimationSet:Landroid/animation/AnimatorSet;

.field private joiningFractions:[F

.field private moveAnimation:Landroid/animation/ValueAnimator;

.field private pageChanging:Z

.field private pageCount:I

.field private previousPage:I

.field private final rectF:Landroid/graphics/RectF;

.field private retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

.field private retreatingJoinX1:F

.field private retreatingJoinX2:F

.field private revealAnimations:[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

.field private selectedColour:I

.field private selectedDotInPosition:Z

.field private selectedDotX:F

.field private final selectedPaint:Landroid/graphics/Paint;

.field private unselectedColour:I

.field private final unselectedDotLeftPath:Landroid/graphics/Path;

.field private final unselectedDotPath:Landroid/graphics/Path;

.field private final unselectedDotRightPath:Landroid/graphics/Path;

.field private final unselectedPaint:Landroid/graphics/Paint;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static bridge synthetic -$$Nest$fgetanimHalfDuration(Lcom/senseonics/view/InkPageIndicator;)J
    .locals 2

    iget-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animHalfDuration:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetdotCenterX(Lcom/senseonics/view/InkPageIndicator;)[F
    .locals 0

    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdotRadius(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinterpolator(Lcom/senseonics/view/InkPageIndicator;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetretreatAnimation(Lcom/senseonics/view/InkPageIndicator;)Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetretreatingJoinX1(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetretreatingJoinX2(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrevealAnimations(Lcom/senseonics/view/InkPageIndicator;)[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->revealAnimations:[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedDotX(Lcom/senseonics/view/InkPageIndicator;)F
    .locals 0

    iget p0, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetviewPager(Lcom/senseonics/view/InkPageIndicator;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputpageChanging(Lcom/senseonics/view/InkPageIndicator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->pageChanging:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputretreatingJoinX1(Lcom/senseonics/view/InkPageIndicator;F)V
    .locals 0

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputretreatingJoinX2(Lcom/senseonics/view/InkPageIndicator;F)V
    .locals 0

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrevealAnimations(Lcom/senseonics/view/InkPageIndicator;[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->revealAnimations:[Lcom/senseonics/view/InkPageIndicator$PendingRevealAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedDotInPosition(Lcom/senseonics/view/InkPageIndicator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedDotX(Lcom/senseonics/view/InkPageIndicator;F)V
    .locals 0

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelJoiningAnimations(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->cancelJoiningAnimations()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearJoiningFractions(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->clearJoiningFractions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetState(Lcom/senseonics/view/InkPageIndicator;)V
    .locals 0

    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->resetState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDotRevealFraction(Lcom/senseonics/view/InkPageIndicator;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/senseonics/view/InkPageIndicator;->setDotRevealFraction(IF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPageCount(Lcom/senseonics/view/InkPageIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->setPageCount(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, v0, v1}, Lcom/senseonics/view/InkPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, v0}, Lcom/senseonics/view/InkPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-int p1, p1

    .line 137
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/senseonics/gen12androidapp/R$styleable;->InkPageIndicator:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    mul-int/lit8 p3, p1, 0x8

    const/4 v0, 0x2

    .line 140
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    .line 142
    div-int/2addr p3, v0

    int-to-float p3, p3

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    .line 143
    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    mul-int/lit8 p1, p1, 0xc

    const/4 p3, 0x3

    .line 144
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    const/16 p1, 0x190

    .line 146
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    const-wide/16 v2, 0x2

    .line 148
    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/senseonics/view/InkPageIndicator;->animHalfDuration:J

    const/4 p1, 0x4

    const p3, -0x7f000001

    .line 149
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedColour:I

    const/4 p1, 0x1

    const/4 p3, -0x1

    .line 151
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedColour:I

    .line 154
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 156
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    .line 157
    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedColour:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    .line 159
    iget p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedColour:I

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    .line 163
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    .line 164
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    .line 165
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    .line 166
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    .line 167
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    .line 169
    invoke-virtual {p0, p0}, Lcom/senseonics/view/InkPageIndicator;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private calculateDotPositions(II)V
    .locals 4

    .line 229
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingLeft()I

    move-result p2

    .line 230
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingTop()I

    move-result v0

    .line 231
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    .line 232
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingBottom()I

    .line 234
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getRequiredWidth()I

    move-result v1

    sub-int/2addr p1, p2

    sub-int/2addr p1, v1

    .line 235
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    int-to-float p1, p2

    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr p1, p2

    .line 237
    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    const/4 p2, 0x0

    .line 238
    :goto_0
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    if-ge p2, v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    add-int/2addr v2, v3

    mul-int/2addr v2, p2

    int-to-float v2, v2

    add-float/2addr v2, p1

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    int-to-float p1, v0

    .line 242
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    .line 243
    iget p2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    .line 244
    iget p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    .line 246
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method

.method private cancelJoiningAnimations()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private clearJoiningFractions()V
    .locals 2

    .line 654
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 655
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 595
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 598
    new-instance v7, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    const/high16 v1, 0x3e800000    # 0.25f

    if-le p3, p2, :cond_0

    .line 600
    new-instance v2, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    sub-float v3, p1, v3

    mul-float/2addr v3, v1

    sub-float/2addr p1, v3

    invoke-direct {v2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$RightwardStartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    goto :goto_0

    .line 601
    :cond_0
    new-instance v2, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    sub-float/2addr v3, p1

    mul-float/2addr v3, v1

    add-float/2addr p1, v3

    invoke-direct {v2, p0, p1}, Lcom/senseonics/view/InkPageIndicator$LeftwardStartPredicate;-><init>(Lcom/senseonics/view/InkPageIndicator;F)V

    :goto_0
    move-object v6, v2

    move-object v1, v7

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;-><init>(Lcom/senseonics/view/InkPageIndicator;IIILcom/senseonics/view/InkPageIndicator$StartPredicate;)V

    iput-object v7, p0, Lcom/senseonics/view/InkPageIndicator;->retreatAnimation:Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;

    .line 602
    new-instance p1, Lcom/senseonics/view/InkPageIndicator$2;

    invoke-direct {p1, p0}, Lcom/senseonics/view/InkPageIndicator$2;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {v7, p1}, Lcom/senseonics/view/InkPageIndicator$PendingRetreatAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 609
    new-instance p1, Lcom/senseonics/view/InkPageIndicator$3;

    invoke-direct {p1, p0}, Lcom/senseonics/view/InkPageIndicator$3;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 618
    new-instance p1, Lcom/senseonics/view/InkPageIndicator$4;

    invoke-direct {p1, p0}, Lcom/senseonics/view/InkPageIndicator$4;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 635
    iget-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    const-wide/16 p2, 0x4

    if-eqz p1, :cond_1

    iget-wide v1, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    div-long/2addr v1, p2

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 636
    iget-wide v1, p0, Lcom/senseonics/view/InkPageIndicator;->animDuration:J

    const-wide/16 v3, 0x3

    mul-long/2addr v1, v3

    div-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 637
    iget-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private drawSelected(Landroid/graphics/Canvas;)V
    .locals 4

    .line 560
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    iget-object v3, p0, Lcom/senseonics/view/InkPageIndicator;->selectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnselected(Landroid/graphics/Canvas;)V
    .locals 8

    .line 335
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    const/4 v0, 0x0

    .line 338
    :goto_0
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    const/high16 v2, -0x40800000    # -1.0f

    if-ge v0, v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 340
    :goto_1
    iget-object v4, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v5, v4, v0

    aget v4, v4, v3

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    move v6, v2

    goto :goto_2

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    aget v1, v1, v0

    move v6, v1

    :goto_2
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    aget v7, v1, v0

    move-object v1, p0

    move v2, v0

    move v3, v5

    move v5, v6

    move v6, v7

    .line 340
    invoke-direct/range {v1 .. v6}, Lcom/senseonics/view/InkPageIndicator;->getUnselectedPath(IFFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 345
    iget-object v2, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 346
    iget-object v2, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_2
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 350
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getRetreatingJoinPath()Landroid/graphics/Path;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->combinedUnselectedPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDesiredHeight()I
    .locals 2

    .line 305
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getDesiredWidth()I
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getRequiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getRequiredWidth()I
    .locals 3

    .line 309
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotDiameter:I

    mul-int/2addr v1, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method private getRetreatingJoinPath()Landroid/graphics/Path;
    .locals 5

    .line 553
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 554
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    iget v4, p0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 555
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 556
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v0
.end method

.method private getUnselectedPath(IFFFF)Landroid/graphics/Path;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 383
    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    const/4 v2, 0x0

    cmpl-float v3, p4, v2

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    cmpl-float v4, p4, v10

    if-nez v4, :cond_2

    :cond_0
    cmpl-float v2, p5, v2

    if-nez v2, :cond_2

    .line 385
    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    if-ne v1, v2, :cond_1

    iget-boolean v2, v0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    if-eq v2, v11, :cond_2

    .line 390
    :cond_1
    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v1, v4, v1

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    :cond_2
    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x43340000    # 180.0f

    const/high16 v14, 0x42b40000    # 90.0f

    if-lez v3, :cond_3

    cmpg-float v1, p4, v12

    if-gtz v1, :cond_3

    .line 393
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v1, v1, v10

    if-nez v1, :cond_3

    .line 399
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 402
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 405
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v3, v8, v2

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    add-float/2addr v2, v8

    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 406
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v14, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 409
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float/2addr v1, v8

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    add-float/2addr v1, v2

    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    .line 410
    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 411
    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float v4, v8, v3

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 412
    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 413
    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    sub-float v3, v2, v3

    .line 414
    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 415
    iget-object v15, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v1

    move/from16 v21, v2

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 420
    iput v8, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 421
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 422
    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 423
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float v4, v1, v3

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    add-float v5, v8, v3

    .line 424
    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 425
    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 426
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    move v3, v4

    move v4, v5

    move v5, v7

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 430
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotLeftPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 433
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 436
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v9, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 439
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v3, v9, v2

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    add-float/2addr v2, v9

    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 440
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v3, -0x3ccc0000    # -180.0f

    invoke-virtual {v1, v2, v14, v3, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 443
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v1, v9, v1

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    int-to-float v2, v2

    mul-float v2, v2, p4

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    .line 444
    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 445
    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    sub-float v4, v9, v3

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 446
    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    .line 447
    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    sub-float v3, v2, v3

    .line 448
    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 449
    iget-object v15, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v1

    move/from16 v21, v2

    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 454
    iput v9, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 455
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 456
    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 457
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->halfDotRadius:F

    add-float v4, v1, v3

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    sub-float v5, v9, v3

    .line 458
    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 459
    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 460
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    move v3, v4

    move v4, v5

    move v5, v7

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 463
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotRightPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_3
    cmpl-float v1, p4, v12

    const/high16 v12, 0x3f800000    # 1.0f

    if-lez v1, :cond_4

    cmpg-float v1, p4, v12

    if-gez v1, :cond_4

    .line 466
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v1, v1, v10

    if-nez v1, :cond_4

    const v1, 0x3e4ccccd    # 0.2f

    sub-float v1, p4, v1

    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float v15, v1, v2

    .line 475
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 478
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v3, v8, v2

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    add-float/2addr v2, v8

    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 479
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2, v14, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 482
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    add-float v2, v8, v1

    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->gap:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    .line 483
    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    mul-float v4, v15, v1

    sub-float/2addr v3, v4

    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    mul-float v4, v15, v1

    sub-float v4, v2, v4

    .line 484
    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 485
    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    sub-float v14, v12, v15

    mul-float/2addr v1, v14

    sub-float v1, v2, v1

    .line 486
    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 487
    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 488
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move-object/from16 v16, v6

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v1

    move/from16 v20, v3

    move/from16 v21, v2

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 493
    iput v9, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 494
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 495
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v3, v14, v2

    add-float/2addr v3, v1

    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 496
    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    mul-float/2addr v2, v15

    add-float v5, v1, v2

    .line 497
    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 498
    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 499
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 504
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v3, v9, v2

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    add-float/2addr v2, v9

    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 505
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v1, v2, v3, v13, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 509
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v3, v15, v2

    add-float/2addr v1, v3

    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    .line 510
    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    mul-float v4, v15, v2

    add-float/2addr v4, v3

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 511
    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    mul-float/2addr v2, v14

    add-float/2addr v2, v3

    .line 512
    iput v2, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 513
    iput v1, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 514
    iget-object v6, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move-object/from16 v16, v6

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v2

    move/from16 v20, v1

    move/from16 v21, v3

    move/from16 v22, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 519
    iput v8, v0, Lcom/senseonics/view/InkPageIndicator;->endX2:F

    .line 520
    iget v7, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->endY2:F

    .line 521
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->endX1:F

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float/2addr v14, v2

    sub-float v3, v1, v14

    iput v3, v0, Lcom/senseonics/view/InkPageIndicator;->controlX1:F

    .line 522
    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->endY1:F

    iput v4, v0, Lcom/senseonics/view/InkPageIndicator;->controlY1:F

    mul-float/2addr v15, v2

    sub-float v5, v1, v15

    .line 523
    iput v5, v0, Lcom/senseonics/view/InkPageIndicator;->controlX2:F

    .line 524
    iput v7, v0, Lcom/senseonics/view/InkPageIndicator;->controlY2:F

    .line 525
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v7

    move/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :cond_4
    cmpl-float v1, p4, v12

    if-nez v1, :cond_5

    .line 529
    iget v1, v0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    cmpl-float v1, v1, v10

    if-nez v1, :cond_5

    .line 534
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sub-float v3, v8, v2

    iget v4, v0, Lcom/senseonics/view/InkPageIndicator;->dotTopY:F

    add-float/2addr v2, v9

    iget v5, v0, Lcom/senseonics/view/InkPageIndicator;->dotBottomY:F

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 535
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/senseonics/view/InkPageIndicator;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :cond_5
    const v1, 0x3727c5ac    # 1.0E-5f

    cmpl-float v1, p5, v1

    if-lez v1, :cond_6

    .line 545
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    iget v2, v0, Lcom/senseonics/view/InkPageIndicator;->dotCenterY:F

    iget v3, v0, Lcom/senseonics/view/InkPageIndicator;->dotRadius:F

    mul-float v3, v3, p5

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v8, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 549
    :cond_6
    iget-object v1, v0, Lcom/senseonics/view/InkPageIndicator;->unselectedDotPath:Landroid/graphics/Path;

    return-object v1
.end method

.method private resetState()V
    .locals 3

    .line 261
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :goto_0
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    const/4 v2, 0x0

    .line 262
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 263
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    .line 264
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const/high16 v0, -0x40800000    # -1.0f

    .line 265
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX1:F

    .line 266
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->retreatingJoinX2:F

    .line 267
    iput-boolean v1, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotInPosition:Z

    return-void
.end method

.method private setCurrentPageImmediate()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    aget v0, v0, v1

    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->selectedDotX:F

    :cond_2
    return-void
.end method

.method private setDotRevealFraction(IF)V
    .locals 2

    .line 659
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->dotRevealFractions:[F

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 660
    aput p2, v0, p1

    .line 662
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private setJoiningFraction(IF)V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->joiningFractions:[F

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 648
    aput p2, v0, p1

    .line 649
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setPageCount(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    .line 224
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->resetState()V

    .line 225
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->requestLayout()V

    return-void
.end method

.method private setSelectedPage(I)V
    .locals 4

    .line 564
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    if-eqz v1, :cond_3

    array-length v1, v1

    if-gt v1, p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 566
    iput-boolean v1, p0, Lcom/senseonics/view/InkPageIndicator;->pageChanging:Z

    .line 567
    iput v0, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    .line 568
    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    sub-int v0, p1, v0

    .line 569
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 572
    iget v1, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-le p1, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 574
    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/InkPageIndicator;->setJoiningFraction(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    neg-int v3, v0

    if-le v1, v3, :cond_2

    .line 578
    iget v3, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/InkPageIndicator;->setJoiningFraction(IF)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/senseonics/view/InkPageIndicator;->dotCenterX:[F

    aget v1, v1, p1

    iget v2, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/senseonics/view/InkPageIndicator;->createMoveSelectedAnimator(FIII)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->moveAnimation:Landroid/animation/ValueAnimator;

    .line 588
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->pageCount:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->drawUnselected(Landroid/graphics/Canvas;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->drawSelected(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 273
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getDesiredHeight()I

    move-result v0

    .line 275
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 280
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 287
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->getDesiredWidth()I

    move-result p2

    .line 289
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_1

    .line 291
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_1

    .line 294
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 300
    :goto_1
    invoke-virtual {p0, p2, v0}, Lcom/senseonics/view/InkPageIndicator;->setMeasuredDimension(II)V

    .line 301
    invoke-direct {p0, p2, v0}, Lcom/senseonics/view/InkPageIndicator;->calculateDotPositions(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 187
    iget-boolean p3, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    if-eqz p3, :cond_2

    .line 189
    iget-boolean p3, p0, Lcom/senseonics/view/InkPageIndicator;->pageChanging:Z

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->previousPage:I

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    :goto_0
    if-eq p3, p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 202
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/senseonics/view/InkPageIndicator;->setJoiningFraction(IF)V

    :cond_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/senseonics/view/InkPageIndicator;->setSelectedPage(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->setCurrentPageImmediate()V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 864
    check-cast p1, Lcom/senseonics/view/InkPageIndicator$SavedState;

    .line 865
    invoke-virtual {p1}, Lcom/senseonics/view/InkPageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 866
    iget p1, p1, Lcom/senseonics/view/InkPageIndicator$SavedState;->currentPage:I

    iput p1, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    .line 867
    invoke-virtual {p0}, Lcom/senseonics/view/InkPageIndicator;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 872
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 873
    new-instance v1, Lcom/senseonics/view/InkPageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/senseonics/view/InkPageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 874
    iget v0, p0, Lcom/senseonics/view/InkPageIndicator;->currentPage:I

    iput v0, v1, Lcom/senseonics/view/InkPageIndicator$SavedState;->currentPage:I

    return-object v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 318
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/senseonics/view/InkPageIndicator;->isAttachedToWindow:Z

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 173
    iput-object p1, p0, Lcom/senseonics/view/InkPageIndicator;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 174
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 175
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/senseonics/view/InkPageIndicator;->setPageCount(I)V

    .line 176
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    new-instance v0, Lcom/senseonics/view/InkPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/senseonics/view/InkPageIndicator$1;-><init>(Lcom/senseonics/view/InkPageIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 182
    invoke-direct {p0}, Lcom/senseonics/view/InkPageIndicator;->setCurrentPageImmediate()V

    return-void
.end method
