.class Lorg/michaelbel/bottomsheet/BottomSheet$8;
.super Ljava/lang/Object;
.source "BottomSheet.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/michaelbel/bottomsheet/BottomSheet;-><init>(Landroid/content/Context;Z)V
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

    .line 558
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/BottomSheet$8;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/BottomSheet$8;->this$0:Lorg/michaelbel/bottomsheet/BottomSheet;

    invoke-static {v0, p2}, Lorg/michaelbel/bottomsheet/BottomSheet;->access$1202(Lorg/michaelbel/bottomsheet/BottomSheet;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 564
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
