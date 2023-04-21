.class public Lorg/michaelbel/bottomsheet/BottomSheet;
.super Landroid/app/Dialog;
.source "BottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;,
        Lorg/michaelbel/bottomsheet/BottomSheet$Builder;,
        Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;,
        Lorg/michaelbel/bottomsheet/BottomSheet$FabBehavior;,
        Lorg/michaelbel/bottomsheet/BottomSheet$Theme;,
        Lorg/michaelbel/bottomsheet/BottomSheet$Type;
    }
.end annotation


# static fields
.field public static final DARK_THEME:I = 0xb

.field public static final FAB_SHOW_HIDE:I = 0x15

.field public static final FAB_SLIDE_UP:I = 0x14

.field public static final GRID:I = 0x2

.field public static final LIGHT_THEME:I = 0xa

.field public static final LIST:I = 0x1


# instance fields
.field private ICONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private allowCustomAnimation:Z

.field private allowDrawContent:Z

.field private backDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private backgroundColor:I

.field private backgroundPaddingLeft:I

.field private backgroundPaddingTop:I

.field private bottomSheetCallback:Lorg/michaelbel/bottomsheet/BottomSheetCallback;

.field private bottomsheetItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/michaelbel/bottomsheet/BottomSheetItem;",
            ">;"
        }
    .end annotation
.end field

.field private cellHeight:I

.field private container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

.field private containerView:Landroid/widget/LinearLayout;

.field private contentType:I

.field private currentSheetAnimation:Landroid/animation/AnimatorSet;

.field private customView:Landroid/view/View;

.field private darkTheme:Z

.field private dimmingValue:I

.field private dismissed:Z

.field private displaySize:Landroid/graphics/Point;

.field private dividers:Z

.field private fabBehavior:I

.field private floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private focusable:Z

.field private fullWidth:Z

.field private gridView:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private iconColor:I

.field private itemSelector:I

.field private itemTextColor:I

.field private lastInsets:Landroid/view/WindowInsets;

.field private layoutCount:I

.field private listView:Landroid/widget/ListView;

.field private metrics:Landroid/util/DisplayMetrics;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private onShowListener:Landroid/content/DialogInterface$OnShowListener;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private startAnimationRunnable:Ljava/lang/Runnable;

.field private theme:I

.field private titleText:Ljava/lang/CharSequence;

.field private titleTextColor:I

.field private titleTextMultiline:Z

.field private titleTextView:Landroid/widget/TextView;

.field private touchSlop:I

.field private useFastDismiss:Z

.field private useHardwareLayer:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 521
    sget v0, Lorg/michaelbel/bottomsheetdialog/R$style;->TransparentDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x50

    .line 135
    iput v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dimmingValue:I

    const/4 v0, 0x1

    .line 137
    iput v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->contentType:I

    const/16 v1, 0xa

    .line 138
    iput v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->theme:I

    const/16 v1, 0x15

    .line 139
    iput v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ICONS:Ljava/util/List;

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ITEMS:Ljava/util/List;

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->bottomsheetItems:Ljava/util/ArrayList;

    .line 164
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 165
    iput-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowCustomAnimation:Z

    .line 174
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->displaySize:Landroid/graphics/Point;

    .line 175
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->metrics:Landroid/util/DisplayMetrics;

    .line 176
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->handler:Landroid/os/Handler;

    .line 184
    iput-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowDrawContent:Z

    .line 185
    iput-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->useHardwareLayer:Z

    .line 523
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v1, :cond_0

    .line 524
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, -0x7ffeff00

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 531
    :cond_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 532
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->touchSlop:I

    .line 534
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 535
    sget v3, Lorg/michaelbel/bottomsheetdialog/R$drawable;->sheet_shadow:I

    invoke-static {p1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 536
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 537
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 538
    iget p1, v2, Landroid/graphics/Rect;->left:I

    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundPaddingLeft:I

    .line 539
    iget p1, v2, Landroid/graphics/Rect;->top:I

    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundPaddingTop:I

    .line 541
    new-instance p1, Lorg/michaelbel/bottomsheet/BottomSheet$7;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lorg/michaelbel/bottomsheet/BottomSheet$7;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    .line 553
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v2}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 554
    iput-boolean p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->focusable:Z

    .line 556
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_1

    .line 557
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    invoke-virtual {p1, v0}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setFitsSystemWindows(Z)V

    .line 558
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    new-instance p2, Lorg/michaelbel/bottomsheet/BottomSheet$8;

    invoke-direct {p2, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$8;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    invoke-virtual {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 567
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    const/16 p2, 0x500

    invoke-virtual {p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setSystemUiVisibility(I)V

    .line 570
    :cond_1
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ZLorg/michaelbel/bottomsheet/BottomSheet$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$100(Lorg/michaelbel/bottomsheet/BottomSheet;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissWithButtonClick(I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    return p0
.end method

.method static synthetic access$1002(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    return p1
.end method

.method static synthetic access$1100(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowDrawContent:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/WindowInsets;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->lastInsets:Landroid/view/WindowInsets;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissed:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->canDismissWithSwipe()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/LinearLayout;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/michaelbel/bottomsheet/BottomSheet;FZ)F
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->getPixelsInCM(FZ)F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowCustomAnimation:Z

    return p0
.end method

.method static synthetic access$1702(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowCustomAnimation:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->useFastDismiss:Z

    return p1
.end method

.method static synthetic access$200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/lang/Runnable;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet;->onContainerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lorg/michaelbel/bottomsheet/BottomSheet;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->canDismissWithTouchOutside()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->touchSlop:I

    return p0
.end method

.method static synthetic access$2300(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fullWidth:Z

    return p0
.end method

.method static synthetic access$2302(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fullWidth:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/graphics/Point;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->displaySize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$2600(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->layoutCount:I

    return p0
.end method

.method static synthetic access$2610(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 2

    .line 102
    iget v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->layoutCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->layoutCount:I

    return v0
.end method

.method static synthetic access$2700(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->useHardwareLayer:Z

    return p0
.end method

.method static synthetic access$2800(Lorg/michaelbel/bottomsheet/BottomSheet;)Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->startShowAnimation()V

    return-void
.end method

.method static synthetic access$3002(Lorg/michaelbel/bottomsheet/BottomSheet;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ITEMS:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/List;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ICONS:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/view/View;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->customView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3302(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3400(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->contentType:I

    return p0
.end method

.method static synthetic access$3402(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->contentType:I

    return p1
.end method

.method static synthetic access$3500(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    return p0
.end method

.method static synthetic access$3502(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->cellHeight:I

    return p0
.end method

.method static synthetic access$3602(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->cellHeight:I

    return p1
.end method

.method static synthetic access$3700(Lorg/michaelbel/bottomsheet/BottomSheet;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dividers:Z

    return p0
.end method

.method static synthetic access$3702(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dividers:Z

    return p1
.end method

.method static synthetic access$3802(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dimmingValue:I

    return p1
.end method

.method static synthetic access$3902(Lorg/michaelbel/bottomsheet/BottomSheet;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextMultiline:Z

    return p1
.end method

.method static synthetic access$400(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$4002(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundColor:I

    return p1
.end method

.method static synthetic access$402(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4102(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextColor:I

    return p1
.end method

.method static synthetic access$4200(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemTextColor:I

    return p0
.end method

.method static synthetic access$4202(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemTextColor:I

    return p1
.end method

.method static synthetic access$4300(Lorg/michaelbel/bottomsheet/BottomSheet;)I
    .locals 0

    .line 102
    iget p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->iconColor:I

    return p0
.end method

.method static synthetic access$4302(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->iconColor:I

    return p1
.end method

.method static synthetic access$4402(Lorg/michaelbel/bottomsheet/BottomSheet;I)I
    .locals 0

    .line 102
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemSelector:I

    return p1
.end method

.method static synthetic access$4502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnShowListener;)Landroid/content/DialogInterface$OnShowListener;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-object p1
.end method

.method static synthetic access$4602(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method

.method static synthetic access$4702(Lorg/michaelbel/bottomsheet/BottomSheet;Lorg/michaelbel/bottomsheet/BottomSheetCallback;)Lorg/michaelbel/bottomsheet/BottomSheetCallback;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->bottomSheetCallback:Lorg/michaelbel/bottomsheet/BottomSheetCallback;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/ListView;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/widget/GridView;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$502(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/michaelbel/bottomsheet/BottomSheet;)Ljava/util/ArrayList;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->bottomsheetItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$601(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic access$700(Lorg/michaelbel/bottomsheet/BottomSheet;)Landroid/os/Handler;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lorg/michaelbel/bottomsheet/BottomSheet;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissInternal()V

    return-void
.end method

.method static synthetic access$900(Lorg/michaelbel/bottomsheet/BottomSheet;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p0
.end method

.method static synthetic access$902(Lorg/michaelbel/bottomsheet/BottomSheet;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-object p1
.end method

.method private canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private cancelSheetAnimation()V
    .locals 1

    .line 930
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 932
    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private dismissInternal()V
    .locals 0

    .line 995
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private dismissWithButtonClick(I)V
    .locals 12

    .line 407
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissed:Z

    .line 412
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->cancelSheetAnimation()V

    .line 414
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 415
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v3, "alpha"

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x2

    const/16 v6, 0x14

    const-string v7, "translationY"

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    iget v9, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    if-ne v9, v6, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    .line 416
    iget-object v6, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    new-array v9, v0, [F

    .line 417
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v4}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v10, v4

    int-to-float v4, v10

    aput v4, v9, v8

    invoke-static {v6, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-array v6, v0, [I

    aput v8, v6, v8

    .line 418
    invoke-static {v4, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-array v0, v0, [F

    const/4 v4, 0x0

    aput v4, v0, v8

    .line 419
    invoke-static {v3, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v5

    .line 416
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 421
    iget v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    if-eq v2, v6, :cond_3

    :cond_2
    new-array v2, v5, [Landroid/animation/Animator;

    .line 422
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    new-array v6, v0, [F

    .line 423
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v4}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v4

    add-int/2addr v9, v4

    int-to-float v4, v9

    aput v4, v6, v8

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-array v5, v0, [I

    aput v8, v5, v8

    .line 424
    invoke-static {v4, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    .line 422
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 427
    :cond_3
    :goto_0
    new-instance v0, Lorg/michaelbel/bottomsheet/BottomSheet$5;

    invoke-direct {v0, p0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$5;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;I)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 462
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->useFastDismiss:Z

    if-eqz p1, :cond_4

    .line 463
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    const/16 v0, 0x3c

    const/high16 v2, 0x43340000    # 180.0f

    int-to-float p1, p1

    .line 464
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v3

    sub-float v3, p1, v3

    mul-float/2addr v3, v2

    div-float/2addr v3, p1

    float-to-int p1, v3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 465
    iput-boolean v8, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->useFastDismiss:Z

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0xb4

    .line 467
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 470
    :goto_1
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 471
    new-instance p1, Lorg/michaelbel/bottomsheet/BottomSheet$6;

    invoke-direct {p1, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$6;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 508
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 509
    iput-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 511
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->bottomSheetCallback:Lorg/michaelbel/bottomsheet/BottomSheetCallback;

    if-eqz p1, :cond_5

    .line 512
    invoke-interface {p1}, Lorg/michaelbel/bottomsheet/BottomSheetCallback;->onDismissed()V

    .line 515
    :cond_5
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_6

    .line 516
    invoke-interface {p1, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_6
    return-void
.end method

.method private getPixelsInCM(FZ)F
    .locals 1

    const v0, 0x40228f5c    # 2.54f

    div-float/2addr p1, v0

    if-eqz p2, :cond_0

    .line 999
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->metrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->metrics:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    :goto_0
    mul-float/2addr p1, p2

    return p1
.end method

.method private onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private startShowAnimation()V
    .locals 11

    .line 937
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissed:Z

    if-eqz v0, :cond_0

    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 941
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->onCustomOpenAnimation()Z

    move-result v0

    if-nez v0, :cond_5

    .line 942
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const/16 v3, 0x14

    if-lt v0, v3, :cond_1

    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->useHardwareLayer:Z

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 945
    :cond_1
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 946
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 948
    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->floatingActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const-string v5, "alpha"

    const/4 v6, 0x0

    const-string v7, "translationY"

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    iget v9, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    if-ne v9, v3, :cond_2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    new-array v9, v8, [F

    .line 949
    iget-object v10, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    .line 950
    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    new-array v9, v8, [F

    aput v6, v9, v1

    .line 951
    invoke-static {v4, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-array v6, v8, [I

    iget v7, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dimmingValue:I

    aput v7, v6, v1

    .line 952
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v2

    .line 949
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 953
    iget v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->fabBehavior:I

    if-eq v4, v3, :cond_4

    :cond_3
    new-array v2, v2, [Landroid/animation/Animator;

    .line 954
    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    new-array v4, v8, [F

    aput v6, v4, v1

    .line 955
    invoke-static {v3, v7, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    new-array v4, v8, [I

    iget v6, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dimmingValue:I

    aput v6, v4, v1

    .line 956
    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v8

    .line 954
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    :goto_0
    const-wide/16 v1, 0xc8

    .line 959
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x14

    .line 960
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 961
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 962
    new-instance v1, Lorg/michaelbel/bottomsheet/BottomSheet$9;

    invoke-direct {v1, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$9;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 989
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 990
    iput-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    :cond_5
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, -0x1

    .line 403
    invoke-direct {p0, v0}, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissWithButtonClick(I)V

    return-void
.end method

.method public onContainerDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onContainerTranslationYChanged(F)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 191
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 193
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundColor:I

    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 194
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    if-eqz p1, :cond_0

    const p1, -0xbdbdbe

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundColor:I

    .line 197
    :cond_1
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextColor:I

    const/high16 v1, -0x76000000

    if-nez p1, :cond_3

    .line 198
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    if-eqz p1, :cond_2

    const p1, -0x4c000001

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextColor:I

    .line 201
    :cond_3
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemTextColor:I

    if-nez p1, :cond_5

    .line 202
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    const/high16 p1, -0x22000000

    :goto_2
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemTextColor:I

    .line 205
    :cond_5
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->iconColor:I

    if-nez p1, :cond_7

    .line 206
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    if-eqz p1, :cond_6

    move v1, v0

    :cond_6
    iput v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->iconColor:I

    .line 209
    :cond_7
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemSelector:I

    if-nez p1, :cond_9

    .line 210
    iget-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->darkTheme:Z

    if-eqz p1, :cond_8

    sget p1, Lorg/michaelbel/bottomsheetdialog/R$drawable;->selectable_dark:I

    goto :goto_3

    :cond_8
    sget p1, Lorg/michaelbel/bottomsheetdialog/R$drawable;->selectable_light:I

    :goto_3
    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemSelector:I

    .line 213
    :cond_9
    iget p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->cellHeight:I

    if-nez p1, :cond_a

    .line 214
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {p1, v1}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->cellHeight:I

    .line 217
    :cond_a
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 219
    sget v1, Lorg/michaelbel/bottomsheetdialog/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 221
    :cond_b
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lorg/michaelbel/bottomsheet/BottomSheet;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_c

    .line 224
    new-instance v1, Lorg/michaelbel/bottomsheet/BottomSheet$1;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Lorg/michaelbel/bottomsheet/BottomSheet$1;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    .line 236
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundPaddingTop:I

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v1, v3, v5, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 241
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v1, v5, :cond_d

    .line 242
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 245
    :cond_d
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backgroundColor:I

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 248
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v1, v0, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x50

    .line 249
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 251
    iget-object v6, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    iget-object v6, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6, v3}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->addView(Landroid/view/View;I)V

    .line 254
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->customView:Landroid/view/View;

    const/4 v6, 0x0

    const v7, 0x800033

    if-eqz v1, :cond_f

    .line 255
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 256
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 257
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 260
    :cond_e
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 261
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 262
    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 263
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 264
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->customView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 266
    :cond_f
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleText:Ljava/lang/CharSequence;

    const/high16 v8, 0x41800000    # 16.0f

    if-eqz v1, :cond_11

    .line 267
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    .line 268
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 269
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    iget-object v9, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    iget v9, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextColor:I

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    const/16 v9, 0x10

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 273
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 275
    iget-boolean v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextMultiline:Z

    if-eqz v1, :cond_10

    .line 276
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_4

    .line 278
    :cond_10
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 279
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 282
    :goto_4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 283
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 284
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 285
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 286
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 287
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v9

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 289
    iget-object v9, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 290
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    :cond_11
    new-instance v1, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;

    const/4 v9, 0x0

    invoke-direct {v1, p0, v9}, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;Lorg/michaelbel/bottomsheet/BottomSheet$1;)V

    .line 295
    iget-object v10, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ITEMS:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_16

    .line 296
    iget v10, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->contentType:I

    if-ne v10, v4, :cond_12

    .line 297
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 299
    new-instance v5, Landroid/widget/ListView;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    .line 300
    iget v8, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemSelector:I

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setSelector(I)V

    .line 301
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 302
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 304
    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 305
    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    new-instance v4, Lorg/michaelbel/bottomsheet/BottomSheet$2;

    invoke-direct {v4, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$2;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 313
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_5

    :cond_12
    const/4 v4, 0x2

    if-ne v10, v4, :cond_13

    .line 315
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 317
    new-instance v5, Landroid/widget/GridView;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v5, v10}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    .line 318
    iget v10, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->itemSelector:I

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setSelector(I)V

    .line 319
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 320
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    const/4 v10, 0x3

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 321
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v5, v3}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 322
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 323
    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v6}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v2}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Lorg/michaelbel/bottomsheet/Utils;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v10, v2, v11, v8}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 324
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    new-instance v4, Lorg/michaelbel/bottomsheet/BottomSheet$3;

    invoke-direct {v4, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$3;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->gridView:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    :cond_13
    :goto_5
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ITEMS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 336
    :goto_6
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ITEMS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_15

    .line 337
    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->bottomsheetItems:Ljava/util/ArrayList;

    new-instance v4, Lorg/michaelbel/bottomsheet/BottomSheetItem;

    iget-object v5, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ITEMS:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    iget-object v8, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ICONS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->ICONS:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_14
    move-object v8, v9

    :goto_7
    invoke-direct {v4, v5, v8}, Lorg/michaelbel/bottomsheet/BottomSheetItem;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 341
    :cond_15
    invoke-virtual {v1}, Lorg/michaelbel/bottomsheet/BottomSheet$BottomSheetAdapter;->notifyDataSetChanged()V

    .line 345
    :cond_16
    :goto_8
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 346
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 347
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 348
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 349
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 350
    iget-boolean v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->focusable:Z

    if-nez v2, :cond_17

    .line 351
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 353
    :cond_17
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 354
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAllowDrawContent(Z)V
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowDrawContent:Z

    if-eq v0, p1, :cond_1

    .line 1006
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->allowDrawContent:Z

    .line 1007
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1008
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->container:Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;

    invoke-virtual {p1}, Lorg/michaelbel/bottomsheet/BottomSheet$ContainerView;->invalidate()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 5

    .line 359
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 360
    iget-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->focusable:Z

    if-eqz v0, :cond_0

    .line 362
    :try_start_0
    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 368
    iput-boolean v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->dismissed:Z

    .line 369
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->cancelSheetAnimation()V

    .line 370
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 372
    iget-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const/4 v0, 0x2

    .line 375
    iput v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->layoutCount:I

    .line 376
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->containerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 377
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->handler:Landroid/os/Handler;

    new-instance v1, Lorg/michaelbel/bottomsheet/BottomSheet$4;

    invoke-direct {v1, p0}, Lorg/michaelbel/bottomsheet/BottomSheet$4;-><init>(Lorg/michaelbel/bottomsheet/BottomSheet;)V

    iput-object v1, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->startAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 389
    :cond_1
    invoke-direct {p0}, Lorg/michaelbel/bottomsheet/BottomSheet;->startShowAnimation()V

    .line 392
    :goto_1
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->bottomSheetCallback:Lorg/michaelbel/bottomsheet/BottomSheetCallback;

    if-eqz v0, :cond_2

    .line 393
    invoke-interface {v0}, Lorg/michaelbel/bottomsheet/BottomSheetCallback;->onShown()V

    .line 396
    :cond_2
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet;->onShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_3

    .line 397
    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_3
    return-void
.end method
